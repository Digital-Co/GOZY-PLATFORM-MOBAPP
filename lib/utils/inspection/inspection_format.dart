import 'package:gozy/utils/localized_date_time.dart';

/// Date and time of an ISO timestamp sent by the API, in the user language
/// and local time zone ("" when the value is missing or unreadable).
String formatInspectionDateTime(String? iso, String locale) {
  if (iso == null || iso.isEmpty) return '';
  final value = DateTime.tryParse(iso)?.toLocal();
  if (value == null) return '';
  return '${LocalizedDateTime.mediumDate(value, locale)} ${LocalizedDateTime.time(value, locale)}';
}

/// Date only.
String formatInspectionDate(String? iso, String locale) {
  if (iso == null || iso.isEmpty) return '';
  final value = DateTime.tryParse(iso)?.toLocal();
  if (value == null) return '';
  return LocalizedDateTime.mediumDate(value, locale);
}

/// "45 230" for 45230: thousands separated by a thin space.
String formatMileage(int? value) {
  if (value == null) return '';
  final digits = value.toString();
  final buffer = StringBuffer();
  for (var i = 0; i < digits.length; i++) {
    if (i > 0 && (digits.length - i) % 3 == 0) buffer.write(' ');
    buffer.write(digits[i]);
  }
  return buffer.toString();
}

/// Key of the label of a fuel level.
String fuelTextKey(String? level) => switch (level) {
      'reserve' => 'insp_fuel_reserve',
      'quarter' => 'insp_fuel_quarter',
      'half' => 'insp_fuel_half',
      'three_quarters' => 'insp_fuel_three_quarters',
      'full' => 'insp_fuel_full',
      _ => '',
    };

String generalStateTextKey(String? state) => switch (state) {
      'clean' => 'insp_state_clean',
      'average' => 'insp_state_average',
      'dirty' => 'insp_state_dirty',
      _ => '',
    };

/// Texts of the documents / equipment of the checklist: the server sends a
/// label key (inspectionChecklist*); a key without translation falls back on
/// a readable version of the item key.
String checklistFallbackKey(String key) => 'insp_check_$key';
