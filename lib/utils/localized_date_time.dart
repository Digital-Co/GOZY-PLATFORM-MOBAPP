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
