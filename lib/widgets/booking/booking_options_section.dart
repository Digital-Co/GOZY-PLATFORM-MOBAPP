import 'package:flutter/material.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/booking_option_icons.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'package:gozy/widgets/checkbox_group.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

/// Formats an amount for display. [fromCurrency] is the currency the amount is
/// expressed in (the listing currency for option prices); billing lines
/// returned by the API are already in the display currency and need none.
String formatBookingAmount(num amount, {String? fromCurrency}) {
  try {
    var text = amount.toDouble().toStringAsFixed(2);
    if (fromCurrency != null && fromCurrency.isNotEmpty) {
      final converted =
          amount.toDouble().currencyConverted(convertedCurrency: fromCurrency);
      if (double.tryParse(converted) == null) {
        return '${amount.toDouble().toNumberFormat(symbol: '')} $fromCurrency'
            .trim();
      }
      text = converted;
    }
    return text.toNumberFormat(symbol: basecontroller.getCurrencySymbol());
  } catch (_) {
    return amount.toString();
  }
}

/// Compact "Options and services" panel: one checkbox per bookable option,
/// none ticked by default. Each option fits on two lines at most: checkbox,
/// icon, name (two lines max) and, at the end, price and billing mode. The
/// description is not shown inline: it opens from the "i" icon.
///
/// The widget is stateless: the caller owns the selection (see
/// HomeItemDetailController) and rebuilds it when it changes.
class BookingOptionsSection extends StatelessWidget {
  const BookingOptionsSection({
    super.key,
    required this.options,
    required this.isSelected,
    required this.onToggle,
    required this.locationController,
    required this.onLocationChanged,
    this.onLocationSubmitted,
    this.listingCurrency,
    this.title,
    this.showSubtitle = true,
    this.showLocationError = false,
    this.enabled = true,
  });

  final List<BookingOption> options;
  final bool Function(int optionId) isSelected;
  final void Function(BookingOption option, bool selected) onToggle;
  final TextEditingController locationController;
  final ValueChanged<String> onLocationChanged;
  final ValueChanged<String>? onLocationSubmitted;
  final String? listingCurrency;
  final String? title;
  final bool showSubtitle;

  /// Show the delivery location error even if the field was not edited.
  final bool showLocationError;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final bookable = bookableOptions(options);
    if (bookable.isEmpty) return const SizedBox.shrink();
    final deliverySelected =
        bookable.any((option) => option.isDelivery && isSelected(option.id));
    final location = locationController.text;
    final locationInvalid = deliverySelected && !isDeliveryLocationValid(location);
    final showError =
        locationInvalid && (showLocationError || location.trim().isNotEmpty);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
          textScaler:
              MediaQuery.textScalerOf(context).clamp(maxScaleFactor: 1.2)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 12, 8),
        decoration: BoxDecoration(
          color: appColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: appColors.customBorderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? boText('bo_title'),
              style: _style(AppDimen.textSize_16, AppFont.semiBold),
            ),
            if (showSubtitle)
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  boText('bo_renter_subtitle'),
                  style: _style(12, AppFont.regular,
                      color: appColors.textfieldHintColor),
                ),
              ),
            const SizedBox(height: 4),
            for (var i = 0; i < bookable.length; i++) ...[
              if (i > 0)
                Divider(
                    height: 1, thickness: 0.6, color: appColors.commonDividerColor),
              _OptionRow(
                option: bookable[i],
                selected: isSelected(bookable[i].id),
                enabled: enabled,
                listingCurrency: listingCurrency,
                onTap: () => onToggle(bookable[i], !isSelected(bookable[i].id)),
              ),
            ],
            if (deliverySelected) ...[
              const SizedBox(height: 8),
              _LocationField(
                controller: locationController,
                enabled: enabled,
                showError: showError,
                onChanged: onLocationChanged,
                onSubmitted: onLocationSubmitted,
              ),
            ],
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline,
                    size: 14, color: appColors.textfieldHintColor),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    boText('bo_provided_by_owner'),
                    style: _style(11.5, AppFont.regular,
                        color: appColors.textfieldHintColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle _style(double size, FontWeight weight, {Color? color}) => TextStyle(
      fontSize: size,
      fontWeight: weight,
      fontFamily: AppFont.font,
      fontFamilyFallback: const ['Roboto'],
      color: color ?? appColors.customTextColor,
      height: 1.25,
    );

class _OptionRow extends StatelessWidget {
  const _OptionRow({
    required this.option,
    required this.selected,
    required this.enabled,
    required this.onTap,
    this.listingCurrency,
  });

  final BookingOption option;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;
  final String? listingCurrency;

  @override
  Widget build(BuildContext context) {
    final label = bookingOptionLabel(option);
    final tip = _tooltipText(option);
    final price = formatBookingAmount(option.price, fromCurrency: listingCurrency);

    return InkWell(
      onTap: enabled ? onTap : null,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 44),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Semantics(
              checked: selected,
              label: label,
              child: ExcludeSemantics(
                child: CustomCheckBox(
                  ischeckCondition: !selected,
                  isNeedEndPadding: false,
                  isNeedTopMargin: false,
                  borderColor: appColors.myTripsDividerColor,
                  boxshape: BoxShape.rectangle,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Icon(bookingOptionIconData(option.iconKey),
                size: 20, color: appColors.secondaryColor),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: _style(13.5, AppFont.medium),
              ),
            ),
            if (tip.isNotEmpty)
              Tooltip(
                message: tip,
                triggerMode: TooltipTriggerMode.tap,
                showDuration: const Duration(seconds: 6),
                preferBelow: false,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: appColors.black.withValues(alpha: 0.92),
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 12.5, height: 1.3),
                child: SizedBox(
                  width: 32,
                  height: 36,
                  child: Center(
                    child: Icon(Icons.info_outline,
                        size: 18, color: appColors.textfieldHintColor),
                  ),
                ),
              )
            else
              const SizedBox(width: 6),
            const SizedBox(width: 2),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 110),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(price, style: _style(13.5, AppFont.semiBold)),
                  ),
                  Text(
                    bookingModeShort(option.billingMode),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _style(11, AppFont.regular,
                        color: appColors.textfieldHintColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Description (and, for the fixed services, the extra sentence) shown in
  /// the "i" tooltip. Empty when there is nothing to say.
  static String _tooltipText(BookingOption option) {
    final parts = <String>[
      bookingOptionDescription(option).trim(),
      bookingOptionExtraInfo(option).trim(),
    ].where((part) => part.isNotEmpty).toList();
    return parts.join('\n');
  }
}

class _LocationField extends StatelessWidget {
  const _LocationField({
    required this.controller,
    required this.enabled,
    required this.showError,
    required this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final bool enabled;
  final bool showError;
  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final borderColor =
        showError ? appColors.errorRed : appColors.customBorderColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(children: [
            TextSpan(text: boText('bo_delivery_location')),
            TextSpan(text: ' *', style: TextStyle(color: appColors.errorRed)),
          ]),
          style: _style(13, AppFont.medium),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          enabled: enabled,
          maxLength: bookingOptionLocationMax,
          maxLines: 1,
          textInputAction: TextInputAction.done,
          autocorrect: false,
          style: _style(14, AppFont.regular),
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          buildCounter: (context,
                  {required currentLength, required isFocused, maxLength}) =>
              null,
          decoration: InputDecoration(
            isDense: true,
            hintText: boText('bo_delivery_location_placeholder'),
            hintStyle: _style(13, AppFont.regular,
                color: appColors.textfieldHintColor),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: borderColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: showError ? appColors.errorRed : appColors.black),
            ),
          ),
        ),
        if (showError)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              boText('bo_err_delivery_location'),
              style: _style(12, AppFont.regular, color: appColors.errorRed),
            ),
          ),
      ],
    );
  }
}
