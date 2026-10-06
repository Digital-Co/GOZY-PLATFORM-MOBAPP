import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:gozy/utils/localized_date_time.dart';

void main() {
  setUpAll(() async => initializeDateFormatting());

  test('display formats follow locale while API values remain canonical', () {
    final date = DateTime(2026, 10, 6, 17, 30);
    expect(LocalizedDateTime.shortDate(date, 'fr'), '06/10/2026');
    expect(LocalizedDateTime.time(DateTime(2026, 10, 6), 'fr'), '00:00');
    expect(LocalizedDateTime.time(DateTime(2026, 10, 6, 23, 59), 'fr'),
        '23:59');
    expect(LocalizedDateTime.shortDate(date, 'en'),
        isNot(LocalizedDateTime.shortDate(date, 'fr')));
    expect(LocalizedDateTime.shortDate(date, 'ar'), isNotEmpty);
    expect(LocalizedDateTime.time(date, 'en'), contains(RegExp(r'5:30|17:30')));
    expect(LocalizedDateTime.apiDate(date), '10/2026/06');
    expect(LocalizedDateTime.isoDate(date), '2026-10-06');
  });

  test('localized date parsing does not affect canonical serialization', () {
    final parsed = LocalizedDateTime.tryParseDisplayDate('06/10/2026', 'fr');
    expect(parsed, isNotNull);
    expect(LocalizedDateTime.isoDate(parsed!), '2026-10-06');
  });

  test('date picker columns follow locale order', () {
    expect(LocalizedDateTime.pickerDateFormat('fr'), 'dd-MMM-yyyy');
    expect(LocalizedDateTime.pickerDateFormat('en'), 'MMM-dd-yyyy');
  });

  test('time parsing accepts localized and legacy English values', () {
    expect(LocalizedDateTime.tryParseTime('12:30', 'fr')?.hour, 12);
    expect(LocalizedDateTime.tryParseTime('11:59 PM', 'fr')?.hour, 23);
  });
}
