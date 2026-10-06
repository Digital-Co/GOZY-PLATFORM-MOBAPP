import 'package:gozy/widgets/common_extension_functions.dart';

enum MonthFormats { FULL, SHORT, MONTH_ONLY }

final monthFormat = const {
  MonthFormats.FULL: 'MMMM y',
  MonthFormats.SHORT: 'MMM y',
  MonthFormats.MONTH_ONLY: 'MMMM',
};

enum CalendarOptions { RANGE_SELECTION, SINGLE }

bool checkInvalidDate(int index, List<DateTime?> days, {DateTime? current}) {
  if (current != null) {
    return index >= days.length ||
        days[index] == null ||
        (!current.isSameDate(days[index]!) && days[index]!.isBefore(current));
  } else {
    return index >= days.length || days[index] == null;
  }
}

bool checkInRange(int currentDate, int? startDate, int? endDate) {
  if (startDate == null || endDate == null) return false;

  return
      //(currentDate.isBefore(endDate) && currentDate.isAfter(startDate) ||
      (currentDate < endDate && currentDate > startDate ||
          currentDate == endDate ||
          currentDate == startDate);
}

bool checkIsFirstOrLast(int currentDate, int startDate, int endDate) {
  return (currentDate == startDate || currentDate == endDate);
}

List<DateTime?> populateDate(DateTime firstDayThisMonth,
    [int firstDayOfWeekIndex = 0]) {
  var firstDayNextMonth = DateTime(firstDayThisMonth.year,
      firstDayThisMonth.month + 1, firstDayThisMonth.day);
  List<DateTime?> dt = <DateTime?>[];
  for (var i = 0;
      i < firstDayNextMonth.difference(firstDayThisMonth).inDays;
      i++) {
    dt.add(DateTime(firstDayThisMonth.year, firstDayThisMonth.month, 1 + i));
  }
  final sundayBasedWeekday = dt.first!.weekday % 7;
  final leadingDays = (sundayBasedWeekday - firstDayOfWeekIndex + 7) % 7;
  if (leadingDays > 0) {
    dt.insertAll(0, List<DateTime?>.generate(leadingDays, (index) => null));
  }
  return dt;
}
