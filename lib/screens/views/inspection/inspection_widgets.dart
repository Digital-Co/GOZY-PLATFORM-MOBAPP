import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/inspection/inspection_context.dart';
import 'package:gozy/utils/inspection/inspection_format.dart';
import 'package:gozy/utils/inspection/inspection_http.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';
import 'package:gozy/utils/inspection/inspection_upload_queue.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

// Shared building blocks of the check-in, check-out and dispute screens.
// Colors come from the app theme (dark mode included); every state is shown
// with a text and an icon, never by color alone.

TextStyle inspStyle(double size, FontWeight weight, {Color? color, double height = 1.3}) =>
    TextStyle(
      fontSize: size,
      fontWeight: weight,
      fontFamily: AppFont.font,
      fontFamilyFallback: const ['Roboto'],
      color: color ?? appColors.customTextColor,
      height: height,
    );

Color toneColor(BadgeTone tone) => switch (tone) {
      BadgeTone.success => appColors.approvedStatusColor,
      BadgeTone.warning => appColors.reflectionStatusColor,
      BadgeTone.danger => appColors.errorRed,
      BadgeTone.info => appColors.pendingStatusColor,
      BadgeTone.neutral => appColors.textfieldHintColor,
    };

IconData toneIcon(BadgeTone tone) => switch (tone) {
      BadgeTone.success => Icons.check_circle,
      BadgeTone.warning => Icons.schedule,
      BadgeTone.danger => Icons.error,
      BadgeTone.info => Icons.info_outline,
      BadgeTone.neutral => Icons.remove_circle_outline,
    };

/// Text scale is capped so the forms stay usable with a very large system font.
Widget inspScale(BuildContext context, Widget child) => MediaQuery(
      data: MediaQuery.of(context).copyWith(
          textScaler: MediaQuery.textScalerOf(context).clamp(maxScaleFactor: 1.3)),
      child: child,
    );

/// Status chip: icon + text, colored by tone.
class InspBadge extends StatelessWidget {
  const InspBadge({super.key, required this.text, required this.tone});
  final String text;
  final BadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final color = toneColor(tone);
    return Semantics(
      label: text,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withValues(alpha: 0.6)),
        ),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(toneIcon(tone), size: 14, color: color),
          const SizedBox(width: 5),
          Flexible(
            child: Text(text,
                style: inspStyle(12, AppFont.semiBold, color: color), maxLines: 2),
          ),
        ]),
      ),
    );
  }
}

/// Information, warning or error banner.
class InspBanner extends StatelessWidget {
  const InspBanner({super.key, required this.text, this.title, this.tone = BadgeTone.info});
  final String text;
  final String? title;
  final BadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final color = toneColor(tone);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(toneIcon(tone), size: 20, color: color),
        const SizedBox(width: 10),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (title != null)
              Text(title!, style: inspStyle(14, AppFont.semiBold, color: color)),
            Text(text, style: inspStyle(13, AppFont.regular)),
          ]),
        ),
      ]),
    );
  }
}

/// Numbered block of a form ("1. Photos of the vehicle").
class InspCard extends StatelessWidget {
  const InspCard({super.key, required this.title, required this.child, this.number, this.subtitle, this.trailing});
  final int? number;
  final String title;
  final String? subtitle;
  final Widget child;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: appColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: appColors.customBorderColor),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: Semantics(
              header: true,
              child: Text(number == null ? title : '$number. $title',
                  style: inspStyle(AppDimen.textSize_16, AppFont.semiBold)),
            ),
          ),
          if (trailing != null) trailing!,
        ]),
        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(subtitle!,
                style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
          ),
        const SizedBox(height: 10),
        child,
      ]),
    );
  }
}

class InspErrorText extends StatelessWidget {
  const InspErrorText(this.text, {super.key});
  final String? text;

  @override
  Widget build(BuildContext context) {
    if (text == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(children: [
        Icon(Icons.error_outline, size: 14, color: appColors.errorRed),
        const SizedBox(width: 5),
        Expanded(child: Text(text!, style: inspStyle(12, AppFont.regular, color: appColors.errorRed))),
      ]),
    );
  }
}

/// Large button (48 pt high). [primary] fills it with the brand color.
class InspButton extends StatelessWidget {
  const InspButton({
    super.key,
    required this.label,
    required this.onTap,
    this.primary = true,
    this.loading = false,
    this.icon,
    this.danger = false,
  });
  final String label;
  final VoidCallback? onTap;
  final bool primary;
  final bool loading;
  final IconData? icon;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null && !loading;
    final base = danger ? appColors.errorRed : appColors.primaryColor;
    final fill = primary ? base : Colors.transparent;
    final textColor = primary ? appColors.buttonTextColor : base;
    return Semantics(
      button: true,
      enabled: enabled,
      label: label,
      child: Opacity(
        opacity: enabled || loading ? 1 : 0.5,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: enabled ? onTap : null,
          child: Container(
            constraints: const BoxConstraints(minHeight: AppDimen.button_height),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: fill,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: base),
            ),
            alignment: Alignment.center,
            child: loading
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2, color: textColor))
                : Row(mainAxisSize: MainAxisSize.min, children: [
                    if (icon != null) ...[
                      Icon(icon, size: 18, color: textColor),
                      const SizedBox(width: 6),
                    ],
                    Flexible(
                      child: Text(label,
                          textAlign: TextAlign.center,
                          style: inspStyle(AppDimen.textSize_14, AppFont.medium, color: textColor)),
                    ),
                  ]),
          ),
        ),
      ),
    );
  }
}

/// Multi-line text field with a counter ("12/500").
class InspTextField extends StatelessWidget {
  const InspTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.maxLength = 500,
    this.maxLines = 4,
    this.enabled = true,
    this.onChanged,
    this.errorText,
    this.keyboardType,
    this.counter = true,
  });
  final TextEditingController controller;
  final String hint;
  final int maxLength;
  final int maxLines;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final TextInputType? keyboardType;
  final bool counter;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextField(
        controller: controller,
        enabled: enabled,
        maxLines: maxLines,
        minLines: maxLines > 1 ? 2 : 1,
        maxLength: maxLength,
        keyboardType: keyboardType ?? (maxLines > 1 ? TextInputType.multiline : TextInputType.text),
        onChanged: onChanged,
        style: inspStyle(14, AppFont.regular),
        buildCounter: counter
            ? (context, {required currentLength, required isFocused, maxLength}) => Text(
                '$currentLength/$maxLength',
                style: inspStyle(11, AppFont.regular, color: appColors.textfieldHintColor))
            : (context, {required currentLength, required isFocused, maxLength}) => null,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: inspStyle(13, AppFont.regular, color: appColors.hintTextColor),
          isDense: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: appColors.customBorderColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: errorText != null ? appColors.errorRed : appColors.customBorderColor)),
        ),
      ),
      InspErrorText(errorText),
    ]);
  }
}

/// Fuel selector: Reserve, 1/4, 1/2, 3/4, Full (five marks, as in the mock-ups).
class FuelSelector extends StatelessWidget {
  const FuelSelector({super.key, required this.value, required this.onChanged, this.enabled = true});
  final String? value;
  final ValueChanged<String> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (final level in fuelLevels)
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: _SelectTile(
              selected: value == level,
              enabled: enabled,
              label: inspText(fuelTextKey(level)),
              icon: Icons.local_gas_station,
              onTap: () => onChanged(level),
            ),
          ),
        ),
    ]);
  }
}

class _SelectTile extends StatelessWidget {
  const _SelectTile({required this.selected, required this.enabled, required this.label, required this.icon, required this.onTap});
  final bool selected;
  final bool enabled;
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? appColors.primaryColor : appColors.textfieldHintColor;
    return Semantics(
      button: true,
      selected: selected,
      enabled: enabled,
      label: label,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: enabled ? onTap : null,
        child: Container(
          constraints: const BoxConstraints(minHeight: 56),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
          decoration: BoxDecoration(
            color: selected ? appColors.primaryColor.withValues(alpha: 0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: selected ? appColors.primaryColor : appColors.customBorderColor, width: selected ? 1.6 : 1),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(selected ? Icons.check_circle : icon, size: 20, color: color),
            const SizedBox(height: 3),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(label, style: inspStyle(12, selected ? AppFont.semiBold : AppFont.regular, color: color)),
            ),
          ]),
        ),
      ),
    );
  }
}

/// General state: Clean, Average, Dirty (icon + text + description).
class GeneralStateSelector extends StatelessWidget {
  const GeneralStateSelector({super.key, required this.value, required this.onChanged, this.enabled = true});
  final String? value;
  final ValueChanged<String> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (final state in generalStates)
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: _StateTile(state: state, selected: value == state, enabled: enabled, onTap: () => onChanged(state)),
        ),
    ]);
  }
}

class _StateTile extends StatelessWidget {
  const _StateTile({required this.state, required this.selected, required this.enabled, required this.onTap});
  final String state;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tone = switch (state) {
      'clean' => BadgeTone.success,
      'average' => BadgeTone.warning,
      _ => BadgeTone.danger,
    };
    final color = toneColor(tone);
    final label = inspText(generalStateTextKey(state));
    final description = inspText('${generalStateTextKey(state)}_help');
    return Semantics(
      button: true,
      selected: selected,
      enabled: enabled,
      label: '$label. $description',
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: enabled ? onTap : null,
        child: Container(
          constraints: const BoxConstraints(minHeight: 56),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: selected ? color.withValues(alpha: 0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: selected ? color : appColors.customBorderColor, width: selected ? 1.6 : 1),
          ),
          child: Row(children: [
            Icon(selected ? Icons.radio_button_checked : Icons.radio_button_unchecked, color: selected ? color : appColors.textfieldHintColor, size: 22),
            const SizedBox(width: 10),
            Icon(Icons.directions_car, color: color, size: 22),
            const SizedBox(width: 10),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(label, style: inspStyle(14, AppFont.semiBold, color: color)),
                Text(description, style: inspStyle(12, AppFont.regular, color: appColors.textfieldHintColor)),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

/// Read-only line "label  value".
class InspValueRow extends StatelessWidget {
  const InspValueRow({super.key, required this.label, required this.value, this.tone});
  final String label;
  final String value;
  final BadgeTone? tone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(flex: 4, child: Text(label, style: inspStyle(13, AppFont.regular, color: appColors.textfieldHintColor))),
        Expanded(
          flex: 5,
          child: Text(value, textAlign: TextAlign.end, style: inspStyle(14, AppFont.medium, color: tone == null ? null : toneColor(tone!))),
        ),
      ]),
    );
  }
}

/// Stars of a review (1 to 5). Tap to rate unless [onChanged] is null.
class InspStars extends StatelessWidget {
  const InspStars({super.key, required this.rating, this.onChanged});
  final double rating;
  final ValueChanged<double>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      for (var i = 1; i <= 5; i++)
        Semantics(
          button: onChanged != null,
          label: inspText('insp_stars_n', {'n': '$i'}),
          selected: rating >= i,
          child: InkWell(
            onTap: onChanged == null ? null : () => onChanged!(i.toDouble()),
            child: SizedBox(
              width: 44,
              height: 44,
              child: Icon(rating >= i ? Icons.star : Icons.star_border,
                  size: 32, color: rating >= i ? const Color(0xFFF5A623) : appColors.ratingBarDefaultColor),
            ),
          ),
        ),
    ]);
  }
}

/// Reservation summary shown at the top of every screen: vehicle, place,
/// period, renter and owner.
class InspSummaryCard extends StatelessWidget {
  const InspSummaryCard({super.key, required this.ctx});
  final InspectionContext ctx;

  String _date(dynamic value) {
    if (value == null) return '';
    try {
      return getDateFormat(dateFormat: reservationDateformat, milliSec: value).$1;
    } catch (_) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final from = _date(ctx.checkIn);
    final to = _date(ctx.checkOut);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: appColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: appColors.customBorderColor),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          if (ctx.photoUrl.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ExcludeSemantics(
                child: CachedNetworkImage(
                    imageUrl: ctx.photoUrl, width: 76, height: 56, fit: BoxFit.cover,
                    errorWidget: (_, __, ___) => const SizedBox(width: 76, height: 56)),
              ),
            ),
          if (ctx.photoUrl.isNotEmpty) const SizedBox(width: 10),
          Expanded(
            child: Text(ctx.title.isEmpty ? '#${ctx.reservationId}' : ctx.title,
                maxLines: 2, overflow: TextOverflow.ellipsis,
                style: inspStyle(AppDimen.textSize_16, AppFont.semiBold)),
          ),
        ]),
        const SizedBox(height: 8),
        if (ctx.place.isNotEmpty) InspValueRow(label: inspText('insp_departure_place'), value: ctx.place),
        if (from.isNotEmpty || to.isNotEmpty)
          InspValueRow(label: inspText('insp_period'), value: '$from  →  $to'),
        if (ctx.guestName.isNotEmpty) InspValueRow(label: inspText('insp_renter'), value: ctx.guestName),
        if (ctx.hostName.isNotEmpty) InspValueRow(label: inspText('insp_owner'), value: ctx.hostName),
      ]),
    );
  }
}

/// Auth headers for the protected photo route.
Map<String, String> inspPhotoHeaders() {
  final AppPreference preference = Get.find();
  return inspectionPhotoHeaders(preference.accessToken);
}

/// Thumbnail of a stored photo.
class InspNetworkPhoto extends StatelessWidget {
  const InspNetworkPhoto({super.key, required this.photoId, this.thumbnail = true, this.fit = BoxFit.cover});
  final int photoId;
  final bool thumbnail;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: inspectionPhotoUrl(photoId, thumbnail: thumbnail),
      httpHeaders: inspPhotoHeaders(),
      cacheKey: 'insp_${thumbnail ? 't' : 'f'}_$photoId',
      fit: fit,
      placeholder: (_, __) => Container(color: appColors.shimmerplaceholderColor),
      errorWidget: (_, __, ___) => Container(
        color: appColors.shimmerplaceholderColor,
        child: Icon(Icons.broken_image_outlined, color: appColors.textfieldHintColor),
      ),
    );
  }
}

/// Grid of 4 columns: stored photos, pictures waiting for upload, add tile.
class InspPhotoGrid extends StatelessWidget {
  const InspPhotoGrid({
    super.key,
    required this.stored,
    required this.queued,
    required this.maxCount,
    required this.editable,
    this.processing = false,
    this.onAdd,
    this.onRemove,
    this.onCancel,
    this.onRetry,
    this.onOpen,
  });

  final List<InspectionPhotoItem> stored;
  final List<UploadItem> queued;
  final int maxCount;
  final bool editable;
  final bool processing;
  final VoidCallback? onAdd;
  final ValueChanged<int>? onRemove;
  final ValueChanged<String>? onCancel;
  final ValueChanged<String>? onRetry;
  final ValueChanged<int>? onOpen;

  @override
  Widget build(BuildContext context) {
    final total = stored.length + queued.length;
    final tiles = <Widget>[];
    for (var i = 0; i < stored.length; i++) {
      final photo = stored[i];
      tiles.add(_Tile(
        semantics: inspText('insp_photo_n_of', {'n': '${i + 1}', 'total': '$total'}),
        onTap: onOpen == null ? null : () => onOpen!(i),
        badge: editable && onRemove != null
            ? _CornerButton(
                icon: Icons.close,
                label: inspText('insp_photo_remove'),
                onTap: () => onRemove!(photo.id))
            : null,
        child: InspNetworkPhoto(photoId: photo.id),
      ));
    }
    for (var i = 0; i < queued.length; i++) {
      final item = queued[i];
      tiles.add(_QueuedTile(
        item: item,
        label: inspText('insp_photo_n_of', {'n': '${stored.length + i + 1}', 'total': '$total'}),
        onCancel: onCancel == null ? null : () => onCancel!(item.localId),
        onRetry: onRetry == null ? null : () => onRetry!(item.localId),
      ));
    }
    if (editable && total < maxCount && onAdd != null) {
      tiles.add(_AddTile(onTap: processing ? null : onAdd!, busy: processing));
    }
    if (tiles.isEmpty) {
      return Text(inspText('insp_photos_none'),
          style: inspStyle(13, AppFont.regular, color: appColors.textfieldHintColor));
    }
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: tiles,
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({required this.child, required this.semantics, this.onTap, this.badge});
  final Widget child;
  final String semantics;
  final VoidCallback? onTap;
  final Widget? badge;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, fit: StackFit.expand, children: [
      Semantics(
        label: semantics,
        image: true,
        button: onTap != null,
        child: GestureDetector(
          onTap: onTap,
          child: ClipRRect(borderRadius: BorderRadius.circular(8), child: ExcludeSemantics(child: child)),
        ),
      ),
      if (badge != null) PositionedDirectional(top: -6, end: -6, child: badge!),
    ]);
  }
}

class _CornerButton extends StatelessWidget {
  const _CornerButton({required this.icon, required this.label, required this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Container(
          width: 44,
          height: 44,
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 22,
            height: 22,
            decoration: const BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
            child: Icon(icon, size: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _AddTile extends StatelessWidget {
  const _AddTile({required this.onTap, required this.busy});
  final VoidCallback? onTap;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    final color = appColors.primaryColor;
    return Semantics(
      button: true,
      label: inspText('insp_photo_add'),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color, width: 1.2),
          ),
          child: busy
              ? const Center(child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)))
              : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.add_a_photo_outlined, color: color, size: 22),
                  const SizedBox(height: 2),
                  Text(inspText('insp_photo_add_short'),
                      textAlign: TextAlign.center,
                      style: inspStyle(10, AppFont.medium, color: color)),
                ]),
        ),
      ),
    );
  }
}

class _QueuedTile extends StatelessWidget {
  const _QueuedTile({required this.item, required this.label, this.onCancel, this.onRetry});
  final UploadItem item;
  final String label;
  final VoidCallback? onCancel;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final failed = item.status == UploadStatus.failed;
    final sending = item.status == UploadStatus.uploading;
    final statusText = failed
        ? (item.errorMessage?.isNotEmpty ?? false
            ? item.errorMessage!
            : inspText('insp_upload_failed'))
        : sending
            ? inspText('insp_upload_sending')
            : inspText('insp_upload_waiting');
    return Stack(clipBehavior: Clip.none, fit: StackFit.expand, children: [
      Semantics(
        label: '$label. $statusText',
        image: true,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ExcludeSemantics(
            child: Stack(fit: StackFit.expand, children: [
              Image.file(File(item.filePath), fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(color: appColors.shimmerplaceholderColor)),
              Container(color: Colors.black38),
              Center(
                child: failed
                    ? GestureDetector(
                        onTap: onRetry,
                        child: const Icon(Icons.refresh, color: Colors.white, size: 26))
                    : sending
                        ? const SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                        : const Icon(Icons.schedule, color: Colors.white, size: 24),
              ),
              if (failed)
                Positioned(
                  left: 0, right: 0, bottom: 2,
                  child: Text(inspText('insp_upload_failed_short'),
                      textAlign: TextAlign.center,
                      style: inspStyle(9, AppFont.medium, color: Colors.white)),
                ),
            ]),
          ),
        ),
      ),
      if (onCancel != null)
        PositionedDirectional(
            top: -6, end: -6,
            child: _CornerButton(icon: Icons.close, label: inspText('insp_upload_cancel'), onTap: onCancel!)),
    ]);
  }
}

/// Full-screen viewer of stored photos (zoom with two fingers).
class InspPhotoViewer extends StatefulWidget {
  const InspPhotoViewer({super.key, required this.photoIds, this.initial = 0});
  final List<int> photoIds;
  final int initial;

  @override
  State<InspPhotoViewer> createState() => _InspPhotoViewerState();
}

class _InspPhotoViewerState extends State<InspPhotoViewer> {
  late final PageController _controller = PageController(initialPage: widget.initial);
  late int _index = widget.initial;

  @override
  Widget build(BuildContext context) {
    final total = widget.photoIds.length;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(inspText('insp_photo_n_of', {'n': '${_index + 1}', 'total': '$total'}),
            style: const TextStyle(fontSize: 15)),
      ),
      body: PageView.builder(
        controller: _controller,
        itemCount: total,
        onPageChanged: (i) => setState(() => _index = i),
        itemBuilder: (context, i) => Semantics(
          label: inspText('insp_photo_n_of', {'n': '${i + 1}', 'total': '$total'}),
          image: true,
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 5,
            child: Center(child: InspNetworkPhoto(photoId: widget.photoIds[i], thumbnail: false, fit: BoxFit.contain)),
          ),
        ),
      ),
    );
  }
}

/// Camera or gallery choice (bottom sheet). Returns 'camera' or 'gallery'.
Future<String?> showPhotoSourceSheet(BuildContext context) {
  return showModalBottomSheet<String>(
    context: context,
    backgroundColor: appColors.white,
    builder: (sheetContext) => SafeArea(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ListTile(
          leading: Icon(Icons.photo_camera_outlined, color: appColors.primaryColor),
          title: Text(inspText('insp_photo_camera'), style: inspStyle(15, AppFont.medium)),
          onTap: () => Navigator.of(sheetContext).pop('camera'),
        ),
        ListTile(
          leading: Icon(Icons.photo_library_outlined, color: appColors.primaryColor),
          title: Text(inspText('insp_photo_gallery'), style: inspStyle(15, AppFont.medium)),
          onTap: () => Navigator.of(sheetContext).pop('gallery'),
        ),
      ]),
    ),
  );
}

/// Date and time stamp line, used for "Validated by ... on ...".
String inspStamp(String? iso) => formatInspectionDateTime(iso, Get.locale?.toString() ?? 'en');

/// Label of a document / equipment line. The server sends a label key; the
/// text comes from the language files, then from the built-in fallback, then
/// from a readable version of the item key.
String inspChecklistLabel(String key, String? labelKey) {
  if (labelKey != null && labelKey.isNotEmpty) {
    final translated = labelKey.tr;
    if (translated != labelKey && translated.isNotEmpty) return translated;
  }
  final fallbackKey = checklistFallbackKey(key);
  final text = inspText(fallbackKey);
  if (text != fallbackKey) return text;
  final words = key.replaceAll('_', ' ').trim();
  return words.isEmpty ? key : '${words[0].toUpperCase()}${words.substring(1)}';
}

/// "Why can't I use it now" explanation of a stage that blocks the screen.
String? inspStageMessage(InspectionStage stage, {String? opensAt, String? closesAt, required String type}) {
  final locale = Get.locale?.toString() ?? 'en';
  switch (stage) {
    case InspectionStage.disabled:
      return inspText('insp_msg_disabled');
    case InspectionStage.notOpen:
      final date = formatInspectionDate(opensAt, locale);
      return date.isEmpty
          ? inspText(type == inspectionTypeCheckin ? 'insp_msg_checkin_not_open' : 'insp_msg_checkout_not_open')
          : inspText(type == inspectionTypeCheckin ? 'insp_msg_checkin_opens_on' : 'insp_msg_checkout_opens_on', {'date': date});
    case InspectionStage.windowClosed:
      return inspText('insp_msg_window_closed');
    case InspectionStage.waitingForOwner:
      return inspText('insp_msg_waiting_owner');
    case InspectionStage.notAvailable:
      return inspText('insp_msg_not_available');
    default:
      return null;
  }
}
