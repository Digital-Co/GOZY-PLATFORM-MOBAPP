import 'package:intl/intl.dart';

class LocalizedDateTime {
  const LocalizedDateTime._();

  static String shortDate(DateTime value, String locale) =>
      DateFormat.yMd(locale).format(value);

  static String mediumDate(DateTime value, String locale) =>
      DateFormat.yMMMd(locale).format(value);

  static String dateWithWeekday(DateTime value, String locale) =>
      DateFormat.yMMMEd(locale).format(value);

  static String time(DateTime value, String locale) =>
      DateFormat.jm(locale).format(value);

  static String monthYear(DateTime value, String locale) =>
      DateFormat.yMMMM(locale).format(value);

  static String weekday(DateTime value, String locale) =>
      DateFormat.E(locale).format(value);

  static String monthDay(DateTime value, String locale) =>
      DateFormat.MMMMd(locale).format(value);

  static DateTime? tryParseTime(String value, String locale) {
    final hasMeridiem = RegExp(r'\b(?:AM|PM)\b', caseSensitive: false)
        .hasMatch(value.trim());
    final formatters = hasMeridiem
        ? [DateFormat('h:mm a', 'en'), DateFormat.jm(locale)]
        : [DateFormat.jm(locale), DateFormat.Hm(locale), DateFormat.Hm('en')];
    for (final formatter in formatters) {
      try {
        return formatter.parseStrict(value);
      } catch (_) {
        try {
          return formatter.parse(value);
        } catch (_) {
          // Keep compatibility with selections produced before localization.
        }
      }
    }
    return null;
  }

  /// Returns the wheel-picker tokens in the order used by [locale].
  ///
  /// The picker only understands year/month/day tokens separated by dashes,
  /// so locale-specific punctuation is intentionally discarded here.
  static String pickerDateFormat(String locale) {
    final pattern = DateFormat.yMMMd(locale).pattern ?? '';
    final tokens = <String>[];

    for (final match in RegExp(r'[yMd]+').allMatches(pattern)) {
      final token = match.group(0)!;
      final normalized = token.contains('y')
          ? 'yyyy'
          : token.contains('M')
              ? 'MMM'
              : 'dd';
      if (!tokens.contains(normalized)) {
        tokens.add(normalized);
      }
    }

    return tokens.length == 3 ? tokens.join('-') : 'dd-MMM-yyyy';
  }

  static String apiDate(DateTime value) =>
      DateFormat('MM/yyyy/dd', 'en').format(value);

  static String isoDate(DateTime value) =>
      DateFormat('yyyy-MM-dd', 'en').format(value);

  static DateTime? tryParseDisplayDate(String value, String locale) {
    for (final formatter in [
      DateFormat.yMd(locale),
      DateFormat('MMM-dd-yyyy', 'en'),
      DateFormat('MM / dd / yyyy', 'en'),
    ]) {
      try {
        return formatter.parseStrict(value);
      } catch (_) {
        // Try the next supported display format.
      }
    }
    return null;
  }
}
