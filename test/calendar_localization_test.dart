import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/widgets/calendar/helper.dart';

void main() {
  test('October 2026 aligns with a Monday-first French calendar', () {
    final days = populateDate(DateTime(2026, 10, 1), 1);
    expect(days.take(3), everyElement(isNull));
    expect(days[3], DateTime(2026, 10, 1));
  });

  test('October 2026 keeps Sunday-first alignment for English', () {
    final days = populateDate(DateTime(2026, 10, 1), 0);
    expect(days.take(4), everyElement(isNull));
    expect(days[4], DateTime(2026, 10, 1));
  });
}
