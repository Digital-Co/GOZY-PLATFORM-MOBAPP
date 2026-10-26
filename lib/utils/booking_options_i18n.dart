import 'package:get/get.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_texts.dart';

/// Translates a booking options key. The texts are downloaded with the
/// language files; while a key is missing there, the French or English
/// fallback of booking_options_texts.dart is used instead of the raw key.
String boText(String key, [Map<String, String>? params]) {
  final translated = params == null ? key.tr : key.trParams(params);
  if (translated != key && translated.isNotEmpty) return translated;
  return boFallbackText(key, languageCode: Get.locale?.languageCode, params: params);
}

/// Fallback text for [key] (French for `fr`, English otherwise).
String boFallbackText(String key, {String? languageCode, Map<String, String>? params}) {
  final map = languageCode == 'fr' ? bookingOptionsTextFr : bookingOptionsTextEn;
  var text = map[key] ?? bookingOptionsTextEn[key] ?? key;
  params?.forEach((name, value) {
    text = text.replaceAll('@$name', value);
  });
  return text;
}

String _fixedKey(String? code, String suffix) {
  if (code == bookingOptionDelivery) return 'bo_delivery_$suffix';
  if (code == bookingOptionChauffeur) return 'bo_chauffeur_$suffix';
  return '';
}

/// Fixed services have no stored label: it is translated from their code.
/// Custom labels are shown as typed by the owner (never translated).
String bookingOptionLabel(BookingOption option) {
  if (option.isFixed && _fixedKey(option.code, 'label').isNotEmpty) {
    return boText(_fixedKey(option.code, 'label'));
  }
  return option.label ?? '';
}

String bookingOptionDescription(BookingOption option) {
  if (option.isFixed && _fixedKey(option.code, 'description').isNotEmpty) {
    return boText(_fixedKey(option.code, 'description'));
  }
  return option.description ?? '';
}

/// Extra sentence of the fixed services shown in the info tooltip.
String bookingOptionExtraInfo(BookingOption option) {
  final key = _fixedKey(option.code, 'info');
  return key.isEmpty ? '' : boText(key);
}

String bookingOptionLineLabel(BookingOptionLine line) {
  final fixed = line.fixedCode;
  if (fixed != null) return boText(_fixedKey(fixed, 'label'));
  return line.label ?? '';
}

/// "Baby seat (3 days)" or "Delivery (flat fee)".
String bookingOptionLineTitle(BookingOptionLine line) {
  final label = bookingOptionLineLabel(line);
  if (line.isPerDay) {
    return boText('bo_line_days', {'label': label, 'count': '${line.quantity}'});
  }
  return boText('bo_line_flat', {'label': label});
}

String bookingModeShort(String billingMode) => billingMode == bookingBillingPerDay
    ? boText('bo_per_day_short')
    : boText('bo_flat_short');

String bookingModeLong(String billingMode) => billingMode == bookingBillingPerDay
    ? boText('bo_billing_per_day')
    : boText('bo_billing_flat');

/// Receipt label: the line title, then the delivery location when there is one.
String bookingOptionReceiptLabel(BookingOptionLine line) {
  final title = bookingOptionLineTitle(line);
  final location = (line.userInput ?? '').trim();
  if (location.isEmpty) return title;
  return '$title\n${boText('bo_delivery_location_shown')}: $location';
}
