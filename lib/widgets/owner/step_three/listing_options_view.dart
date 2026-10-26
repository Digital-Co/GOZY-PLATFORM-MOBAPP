import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/owner/step_three/listing_options_controller.dart';
import 'package:gozy/screens/views/owner/step_three/step_three_controller.dart';
import 'package:gozy/utils/booking_option_icons.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

TextStyle _style(double size, FontWeight weight, {Color? color}) => TextStyle(
      fontSize: size,
      fontWeight: weight,
      fontFamily: AppFont.font,
      fontFamilyFallback: const ['Roboto'],
      color: color ?? appColors.customTextColor,
      height: 1.25,
    );

/// "Options and services" block of the "Set prices" step: the two fixed
/// services (delivery, driver) and the custom options, within the limit set
/// by the admin (read from the API, never assumed). Every change is saved at
/// once through the API, which stays the judge of every rule.
class ListingOptionsView extends StatefulWidget {
  const ListingOptionsView({super.key, required this.controller});

  final StepThreeController controller;

  @override
  State<ListingOptionsView> createState() => _ListingOptionsViewState();
}

class _ListingOptionsViewState extends State<ListingOptionsView> {
  late final ListingOptionsController _options;
  final Map<String, TextEditingController> _priceControllers = {};
  final Map<String, FocusNode> _priceFocus = {};
  Worker? _stateWorker;

  @override
  void initState() {
    super.initState();
    _options = widget.controller.listingOptionsController;
    final listId = widget.controller.itemInfo?.id as int?;
    if (listId != null && (_options.listId != listId || !_options.hasLoaded.value)) {
      _options.load(listId);
    }
    _stateWorker = ever(_options.state, (_) => _syncPriceFields());
    _syncPriceFields();
  }

  @override
  void dispose() {
    _stateWorker?.dispose();
    for (final controller in _priceControllers.values) {
      controller.dispose();
    }
    for (final node in _priceFocus.values) {
      node.dispose();
    }
    super.dispose();
  }

  String get _currencyCode =>
      (widget.controller.selectedCurrency?.itemValue ?? '').toString();

  String get _currencySymbol => _currencyCode.isEmpty
      ? ''
      : widget.controller.getCurrencySymbol(currency: _currencyCode);

  String _priceText(double price) => price <= 0
      ? ''
      : (price % 1 == 0 ? price.toInt().toString() : price.toString());

  void _syncPriceFields() {
    for (final option in _options.state.value.fixedOptions) {
      final slot = option.slot;
      if (slot == null) continue;
      final controller =
          _priceControllers.putIfAbsent(slot, () => TextEditingController());
      final focus = _priceFocus.putIfAbsent(slot, () => FocusNode());
      if (!focus.hasFocus) controller.text = _priceText(option.price);
    }
  }

  Future<void> _toast(String message) async {
    widget.controller.showToast(message);
  }

  Future<void> _toggleActive(BookingOption option, bool value) async {
    if (option.adminDisabled) return;
    if (value && option.price <= 0) {
      // The price is needed first: it is typed in the field of the service.
      final slot = option.slot;
      final typed = slot == null
          ? null
          : parseOptionPrice(_priceControllers[slot]?.text);
      if (option.isFixed && typed != null && typed > 0) {
        final error = await _options.save(
            slot: option.slot, price: typed, isActive: true);
        if (error != null) _toast(error);
        return;
      }
      _toast(boText('bo_err_price'));
      if (slot != null) _priceFocus[slot]?.requestFocus();
      return;
    }
    final error = await _options.setActive(option, value);
    if (error != null) _toast(error);
  }

  Future<void> _saveFixedPrice(BookingOption option) async {
    final slot = option.slot;
    if (slot == null) return;
    final typed = parseOptionPrice(_priceControllers[slot]?.text);
    if (typed == null || typed < 0 || typed > bookingOptionMaxPrice) {
      _toast(boText('bo_err_price'));
      return;
    }
    if (option.isActive && typed <= 0) {
      _toast(boText('bo_err_price'));
      return;
    }
    if (typed == option.price) return;
    final error =
        await _options.save(slot: slot, price: typed, isActive: option.isActive);
    if (error != null) _toast(error);
  }

  Future<void> _confirmDelete(BookingOption option) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(boText('bo_delete_confirm'),
            style: _style(AppDimen.textSize_14, AppFont.regular)),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(boText('bo_cancel'))),
          TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(boText('bo_delete'),
                  style: TextStyle(color: appColors.errorRed))),
        ],
      ),
    );
    if (confirmed != true) return;
    final error = await _options.delete(option);
    if (error != null) _toast(error);
  }

  Future<void> _openForm({BookingOption? option}) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: appColors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
      builder: (context) => _OptionFormSheet(
        controller: _options,
        option: option,
        currencySymbol: _currencySymbol,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final state = _options.state.value;
      final loading = _options.isLoading.value && !_options.hasLoaded.value;
      final error = _options.loadError.value;
      return MediaQuery(
        data: MediaQuery.of(context).copyWith(
            textScaler:
                MediaQuery.textScalerOf(context).clamp(maxScaleFactor: 1.2)),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: appColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: appColors.customBorderColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(boText('bo_title'),
                  style: _style(AppDimen.textSize_18, AppFont.semiBold)),
              const SizedBox(height: 2),
              Text(boText('bo_owner_subtitle'),
                  style: _style(12, AppFont.regular,
                      color: appColors.textfieldHintColor)),
              const SizedBox(height: 12),
              if (loading)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                      child: SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2))),
                )
              else if (error != null && !_options.hasLoaded.value)
                _buildLoadError(error)
              else ...[
                if (state.fixedOptions.isNotEmpty) ...[
                  _sectionTitle(boText('bo_fixed_services')),
                  for (final option in state.fixedOptions) _buildFixedRow(option),
                  const SizedBox(height: 12),
                ],
                _buildCustomSection(state),
              ],
            ],
          ),
        ),
      );
    });
  }

  Widget _sectionTitle(String text, {String? trailing}) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Row(
          children: [
            Expanded(
                child: Text(text,
                    style: _style(AppDimen.textSize_14, AppFont.semiBold))),
            if (trailing != null)
              Text(trailing,
                  style: _style(12.5, AppFont.medium,
                      color: appColors.secondaryColor)),
          ],
        ),
      );

  Widget _buildLoadError(String message) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message,
              style: _style(13, AppFont.regular, color: appColors.errorRed)),
          TextButton.icon(
            onPressed: () {
              final id = widget.controller.itemInfo?.id as int?;
              if (id != null) _options.load(id);
            },
            icon: const Icon(Icons.refresh, size: 18),
            label: Text(boText('bo_retry')),
          ),
        ],
      );

  Widget _buildFixedRow(BookingOption option) {
    final slot = option.slot ?? '';
    final controller =
        _priceControllers.putIfAbsent(slot, () => TextEditingController());
    final focus = _priceFocus.putIfAbsent(slot, () => FocusNode());
    final disabledByAdmin = option.adminDisabled;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appColors.commonDividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(bookingOptionIconData(option.iconKey),
                  size: 22, color: appColors.secondaryColor),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(bookingOptionLabel(option),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: _style(14, AppFont.medium)),
                    Text(bookingModeLong(option.billingMode),
                        style: _style(11.5, AppFont.regular,
                            color: appColors.textfieldHintColor)),
                  ],
                ),
              ),
              Switch.adaptive(
                value: option.isActive && !disabledByAdmin,
                activeTrackColor: appColors.secondaryColor,
                onChanged: disabledByAdmin || _options.isBusy.value
                    ? null
                    : (value) => _toggleActive(option, value),
              ),
            ],
          ),
          if (disabledByAdmin) _adminBadge(),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  focusNode: focus,
                  enabled: !disabledByAdmin,
                  maxLength: 13,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*[.,]?\d{0,2}')),
                  ],
                  textInputAction: TextInputAction.done,
                  style: _style(14, AppFont.regular),
                  onSubmitted: (_) => _saveFixedPrice(option),
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  decoration: _fieldDecoration(
                      label: boText('bo_field_price'), suffix: _currencySymbol),
                ),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: disabledByAdmin ? null : () => _saveFixedPrice(option),
                child: Text(boText('bo_save')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _adminBadge() => Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: appColors.cancelTripNonRefundableBGColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(boText('bo_disabled_by_gozy'),
              style: _style(11.5, AppFont.medium, color: appColors.errorRed)),
        ),
      );

  Widget _buildCustomSection(OwnerOptionsState state) {
    final customs = state.customOptions;
    String? counter;
    if (state.hasLimit && !state.customDisabled) {
      counter = boText('bo_count_added', {
        'count': '${state.customTotal}',
        'max': '${state.maxCustom}',
      });
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle(
          state.hasLimit && !state.customDisabled
              ? boText('bo_custom_options', {'max': '${state.maxCustom}'})
              : boText('bo_custom_options_title'),
          trailing: counter,
        ),
        if (state.customDisabled && customs.isEmpty)
          _hint(boText('bo_no_custom_allowed'))
        else if (customs.isEmpty)
          _hint(boText('bo_empty_custom'))
        else
          for (final option in customs) _buildCustomRow(option),
        if (state.isOverLimit)
          _hint(boText('bo_over_limit', {'max': '${state.maxCustom}'}),
              color: appColors.errorRed),
        if (!state.customDisabled || customs.isNotEmpty) ...[
          const SizedBox(height: 6),
          _buildAddButton(state),
        ],
      ],
    );
  }

  Widget _hint(String text, {Color? color}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(text,
            style: _style(12.5, AppFont.regular,
                color: color ?? appColors.textfieldHintColor)),
      );

  Widget _buildAddButton(OwnerOptionsState state) {
    final canAdd = state.canAdd && !state.customDisabled;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: canAdd ? () => _openForm() : null,
            icon: const Icon(Icons.add, size: 18),
            label: Text(boText('bo_add_option')),
            style: OutlinedButton.styleFrom(
              foregroundColor: appColors.secondaryColor,
              side: BorderSide(
                  color: canAdd
                      ? appColors.secondaryColor
                      : appColors.customBorderColor),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        if (state.hasLimit && !state.customDisabled && !state.isOverLimit)
          _hint(state.canAdd
              ? boText('bo_remaining', {'count': '${state.remaining}'})
              : boText('bo_limit_reached', {'max': '${state.maxCustom}'})),
      ],
    );
  }

  Widget _buildCustomRow(BookingOption option) {
    final disabledByAdmin = option.adminDisabled;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.fromLTRB(10, 8, 4, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appColors.commonDividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(bookingOptionIconData(option.iconKey),
                  size: 22, color: appColors.secondaryColor),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(option.label ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: _style(14, AppFont.medium)),
                    Text(
                      '${option.price.toNumberFormat(symbol: _currencySymbol)} · ${bookingModeLong(option.billingMode)}',
                      style: _style(11.5, AppFont.regular,
                          color: appColors.textfieldHintColor),
                    ),
                  ],
                ),
              ),
              Switch.adaptive(
                value: option.isActive && !disabledByAdmin,
                activeTrackColor: appColors.secondaryColor,
                onChanged: disabledByAdmin || _options.isBusy.value
                    ? null
                    : (value) => _toggleActive(option, value),
              ),
              IconButton(
                visualDensity: VisualDensity.compact,
                tooltip: boText('bo_edit'),
                icon: const Icon(Icons.edit_outlined, size: 20),
                onPressed: () => _openForm(option: option),
              ),
              IconButton(
                visualDensity: VisualDensity.compact,
                tooltip: boText('bo_delete'),
                icon: Icon(Icons.delete_outline,
                    size: 20, color: appColors.errorRed),
                onPressed: () => _confirmDelete(option),
              ),
            ],
          ),
          if (disabledByAdmin) _adminBadge(),
        ],
      ),
    );
  }
}

InputDecoration _fieldDecoration(
    {String? label, String? hint, String? suffix, String? errorText}) {
  OutlineInputBorder border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color),
      );
  return InputDecoration(
    isDense: true,
    labelText: label,
    hintText: hint,
    suffixText: suffix,
    errorText: errorText,
    labelStyle: _style(13, AppFont.regular, color: appColors.textfieldHintColor),
    hintStyle: _style(13, AppFont.regular, color: appColors.textfieldHintColor),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
    enabledBorder: border(appColors.customBorderColor),
    disabledBorder: border(appColors.commonDividerColor),
    focusedBorder: border(appColors.black),
    errorBorder: border(appColors.errorRed),
    focusedErrorBorder: border(appColors.errorRed),
  );
}

/// Bottom sheet to add or edit a custom option.
class _OptionFormSheet extends StatefulWidget {
  const _OptionFormSheet({
    required this.controller,
    required this.currencySymbol,
    this.option,
  });

  final ListingOptionsController controller;
  final BookingOption? option;
  final String currencySymbol;

  @override
  State<_OptionFormSheet> createState() => _OptionFormSheetState();
}

class _OptionFormSheetState extends State<_OptionFormSheet> {
  late final TextEditingController _label;
  late final TextEditingController _description;
  late final TextEditingController _price;
  late String _billingMode;
  late String _icon;
  late bool _isActive;
  String? _error;
  bool _saving = false;

  bool get _isEdit => widget.option != null;

  @override
  void initState() {
    super.initState();
    final option = widget.option;
    _label = TextEditingController(text: option?.label ?? '');
    _description = TextEditingController(text: option?.description ?? '');
    final price = option?.price ?? 0;
    _price = TextEditingController(
        text: price <= 0 ? '' : (price % 1 == 0 ? price.toInt().toString() : price.toString()));
    _billingMode = option?.billingMode ?? bookingBillingFlat;
    _icon = isKnownBookingOptionIcon(option?.icon)
        ? option!.icon!
        : bookingOptionFallbackIcon;
    _isActive = option?.isActive ?? true;
  }

  @override
  void dispose() {
    _label.dispose();
    _description.dispose();
    _price.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final errorKey = validateOptionForm(
      label: _label.text,
      description: _description.text,
      price: _price.text,
      billingMode: _billingMode,
    );
    if (errorKey != null) {
      setState(() => _error = boText(errorKey));
      return;
    }
    setState(() {
      _error = null;
      _saving = true;
    });
    final message = await widget.controller.save(
      slot: widget.option?.slot,
      label: _label.text.trim(),
      description: _description.text.trim(),
      price: parseOptionPrice(_price.text)!,
      billingMode: _billingMode,
      icon: _icon,
      isActive: _isActive,
    );
    if (!mounted) return;
    if (message == null) {
      Navigator.of(context).pop();
    } else {
      // The server refused: its (translated) message is shown, the sheet stays.
      setState(() {
        _saving = false;
        _error = message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 12 + bottom),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(boText(_isEdit ? 'bo_edit_title' : 'bo_new_title'),
                  style: _style(AppDimen.textSize_18, AppFont.semiBold)),
              const SizedBox(height: 14),
              TextField(
                controller: _label,
                maxLength: bookingOptionLabelMax,
                style: _style(14, AppFont.regular),
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) =>
                    null,
                decoration: _fieldDecoration(label: boText('bo_field_name')),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _description,
                maxLength: bookingOptionDescriptionMax,
                maxLines: 2,
                style: _style(14, AppFont.regular),
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) =>
                    Text('$currentLength/$maxLength',
                        style: _style(11, AppFont.regular,
                            color: appColors.textfieldHintColor)),
                decoration:
                    _fieldDecoration(label: boText('bo_field_description')),
              ),
              const SizedBox(height: 12),
              Text(boText('bo_field_icon'),
                  style: _style(13, AppFont.medium)),
              const SizedBox(height: 6),
              _buildIconPicker(),
              const SizedBox(height: 12),
              Text(boText('bo_field_billing'),
                  style: _style(13, AppFont.medium)),
              const SizedBox(height: 6),
              Row(
                children: [
                  for (final mode in const [bookingBillingPerDay, bookingBillingFlat])
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8),
                      child: ChoiceChip(
                        label: Text(bookingModeLong(mode)),
                        selected: _billingMode == mode,
                        selectedColor:
                            appColors.secondaryColor.withValues(alpha: 0.15),
                        onSelected: (_) => setState(() => _billingMode = mode),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _price,
                maxLength: 13,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*[.,]?\d{0,2}')),
                ],
                style: _style(14, AppFont.regular),
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) =>
                    null,
                decoration: _fieldDecoration(
                    label: boText('bo_field_price'),
                    suffix: widget.currencySymbol),
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(boText('bo_field_active'),
                          style: _style(13.5, AppFont.regular))),
                  Switch.adaptive(
                    value: _isActive,
                    activeTrackColor: appColors.secondaryColor,
                    onChanged: (value) => setState(() => _isActive = value),
                  ),
                ],
              ),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(_error!,
                      style: _style(12.5, AppFont.regular,
                          color: appColors.errorRed)),
                ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed:
                          _saving ? null : () => Navigator.of(context).pop(),
                      child: Text(boText('bo_cancel')),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: FilledButton(
                      onPressed: _saving ? null : _submit,
                      style: FilledButton.styleFrom(
                          backgroundColor: appColors.secondaryColor),
                      child: _saving
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2, color: Colors.white))
                          : Text(boText('bo_save')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Icons grouped by theme in a scrollable area.
  Widget _buildIconPicker() {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        border: Border.all(color: appColors.commonDividerColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            for (final group in bookingOptionIconGroups) ...[
              Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 2),
                child: Text(boText(group.titleKey),
                    style: _style(12, AppFont.medium,
                        color: appColors.textfieldHintColor)),
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final key in group.keys) _iconTile(key),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ],
        ),
      ),
    );
  }

  Widget _iconTile(String key) {
    final selected = _icon == key;
    return Semantics(
      button: true,
      selected: selected,
      label: key,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => setState(() => _icon = key),
        child: Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selected
                ? appColors.secondaryColor.withValues(alpha: 0.15)
                : null,
            border: Border.all(
                color: selected
                    ? appColors.secondaryColor
                    : appColors.commonDividerColor,
                width: selected ? 1.6 : 1),
          ),
          child: Icon(bookingOptionIconData(key),
              size: 22,
              color: selected
                  ? appColors.secondaryColor
                  : appColors.customTextColor),
        ),
      ),
    );
  }
}
