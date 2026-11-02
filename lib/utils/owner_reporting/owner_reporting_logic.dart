import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:intl/intl.dart';

// Pure presentation logic of the owner reporting. Nothing here computes an
// amount, a variation or a period: those come from the API.

const String orpPeriodToday = 'today';
const String orpPeriod7d = '7d';
const String orpPeriod30d = '30d';
const String orpPeriodYear = 'year';
const String orpPeriodCustom = 'custom';

const List<String> orpPeriodPresets = [
  orpPeriodToday,
  orpPeriod7d,
  orpPeriod30d,
  orpPeriodYear,
  orpPeriodCustom,
];

const List<String> orpGranularities = ['day', 'week', 'month', 'year'];
const List<String> orpTabs = ['all', 'upcoming', 'pendingPayout', 'paid'];
const List<String> orpSortFields = [
  'checkIn',
  'confirmationCode',
  'vehicle',
  'grossAmount',
  'netRevenue',
  'status',
];

const int orpSearchMaxLength = 100;
const int orpDefaultPageSize = 10;

/// Filters of both screens. Only the custom preset carries dates.
class OwnerReportingFilters {
  const OwnerReportingFilters({
    this.preset = orpPeriod30d,
    this.startDate,
    this.endDate,
    this.listId,
    this.granularity = 'month',
    this.tab = 'all',
    this.search = '',
    this.sortBy = 'checkIn',
    this.sortDir = 'desc',
    this.page = 1,
    this.pageSize = orpDefaultPageSize,
  });

  final String preset;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? listId;
  final String granularity;
  final String tab;
  final String search;
  final String sortBy;
  final String sortDir;
  final int page;
  final int pageSize;

  bool get isCustom => preset == orpPeriodCustom;

  /// A custom period cannot be requested before both dates are chosen.
  bool get canRequest => !isCustom || (startDate != null && endDate != null);

  /// Local hint only (the date picker keeps the end after the start); the
  /// server stays the judge of the 366 days limit and answers with a message.
  bool get hasEndBeforeStart =>
      isCustom &&
      startDate != null &&
      endDate != null &&
      endDate!.isBefore(startDate!);

  /// `startDate` sent to the API: only with the custom preset.
  String? get startArgument =>
      isCustom && startDate != null ? LocalizedDateTime.isoDate(startDate!) : null;

  String? get endArgument =>
      isCustom && endDate != null ? LocalizedDateTime.isoDate(endDate!) : null;

  /// Search text trimmed and cut to the 100 characters accepted by the API.
  String? get searchArgument {
    final text = search.trim();
    if (text.isEmpty) return null;
    return text.length > orpSearchMaxLength
        ? text.substring(0, orpSearchMaxLength)
        : text;
  }

  OwnerReportingFilters copyWith({
    String? preset,
    DateTime? startDate,
    DateTime? endDate,
    int? listId,
    bool clearListId = false,
    String? granularity,
    String? tab,
    String? search,
    String? sortBy,
    String? sortDir,
    int? page,
    int? pageSize,
  }) {
    return OwnerReportingFilters(
      preset: preset ?? this.preset,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      listId: clearListId ? null : (listId ?? this.listId),
      granularity: granularity ?? this.granularity,
      tab: tab ?? this.tab,
      search: search ?? this.search,
      sortBy: sortBy ?? this.sortBy,
      sortDir: sortDir ?? this.sortDir,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  /// Back to the first page after any change of period, vehicle, tab, search or sort.
  OwnerReportingFilters firstPage() => copyWith(page: 1);
}

/// Text key to explain which period an indicator is compared with. Chosen
/// from what the server returned ([OwnerReportingPeriod.preset] and
/// previousDays); the app does not compute the previous period.
String comparisonTextKey(OwnerReportingPeriod? period) {
  switch (period?.preset) {
    case orpPeriodToday:
      return 'orp_vs_yesterday';
    case orpPeriod7d:
      return 'orp_vs_prev_7';
    case orpPeriod30d:
      return 'orp_vs_prev_30';
    case orpPeriodYear:
      return 'orp_vs_last_year';
    default:
      return period?.previousDays == null ? 'orp_vs_previous' : 'orp_vs_prev_n';
  }
}

enum OwnerTrendArrow { up, down, flat, none }

enum OwnerTrendTone { good, bad, neutral }

enum OwnerTrendLabel { percent, newItem, dash }

/// How an indicator's variation is shown: arrow from `trend`, color from
/// `favorable` (already inverted by the server for cancellations).
class OwnerTrendView {
  const OwnerTrendView(this.arrow, this.tone, this.label);

  final OwnerTrendArrow arrow;
  final OwnerTrendTone tone;
  final OwnerTrendLabel label;
}

OwnerTrendView trendView(OwnerIndicator? indicator) {
  final trend = indicator?.trend;
  final tone = indicator?.favorable == true
      ? OwnerTrendTone.good
      : indicator?.favorable == false
          ? OwnerTrendTone.bad
          : OwnerTrendTone.neutral;
  switch (trend) {
    case 'up':
      return OwnerTrendView(OwnerTrendArrow.up, tone, _percentOrDash(indicator));
    case 'down':
      return OwnerTrendView(
          OwnerTrendArrow.down, tone, _percentOrDash(indicator));
    case 'flat':
      return OwnerTrendView(
          OwnerTrendArrow.flat, tone, _percentOrDash(indicator));
    case 'new':
      return OwnerTrendView(OwnerTrendArrow.up, tone, OwnerTrendLabel.newItem);
    default:
      return const OwnerTrendView(
          OwnerTrendArrow.none, OwnerTrendTone.neutral, OwnerTrendLabel.dash);
  }
}

OwnerTrendLabel _percentOrDash(OwnerIndicator? indicator) =>
    indicator?.change == null ? OwnerTrendLabel.dash : OwnerTrendLabel.percent;

/// "+12,5 %" / "-66,7 %" from the variation returned by the API.
String formatChangePercent(double change, String locale) {
  final format = NumberFormat('0.0', _safeLocale(locale));
  final sign = change > 0 ? '+' : '';
  return '$sign${format.format(change)} %';
}

/// Occupancy rate with one decimal ("52,2 %").
String formatPercent(double value, String locale) =>
    '${NumberFormat('0.0', _safeLocale(locale)).format(value)} %';

String _safeLocale(String locale) {
  final code = locale.split(RegExp('[_-]')).first;
  return ['ar', 'he', 'fa', 'ur'].contains(code) ? 'en' : locale;
}

/// Whole percentages for a donut legend, rounded with the largest remainder
/// method so they add up to exactly 100 (same rule as the Web). Negative and
/// null values count as 0; with no positive value every share is 0.
List<int> largestRemainderPercentages(List<double?> values) {
  final cleaned = values.map((v) => (v != null && v > 0) ? v : 0.0).toList();
  final total = cleaned.fold<double>(0, (sum, v) => sum + v);
  if (total <= 0) return List<int>.filled(values.length, 0);
  final exact = cleaned.map((v) => v * 100 / total).toList();
  final result = exact.map((v) => v.floor()).toList();
  var missing = 100 - result.fold<int>(0, (sum, v) => sum + v);
  final order = List<int>.generate(values.length, (i) => i)
    ..sort((a, b) {
      final byRemainder =
          (exact[b] - result[b]).compareTo(exact[a] - result[a]);
      return byRemainder != 0 ? byRemainder : a.compareTo(b);
    });
  for (final index in order) {
    if (missing <= 0) break;
    if (cleaned[index] > 0) {
      result[index] += 1;
      missing -= 1;
    }
  }
  return result;
}

/// Parses an API day ("YYYY-MM-DD") as a calendar day with no time zone.
DateTime? parseApiDay(String? value) {
  if (value == null) return null;
  final match = RegExp(r'^(\d{4})-(\d{2})-(\d{2})').firstMatch(value);
  if (match == null) return null;
  final year = int.parse(match.group(1)!);
  final month = int.parse(match.group(2)!);
  final day = int.parse(match.group(3)!);
  final date = DateTime(year, month, day);
  if (date.year != year || date.month != month || date.day != day) return null;
  return date;
}

/// A day of the API shown in the user's language ("12 nov. 2026"); empty when unknown.
String formatApiDay(String? value, String locale) {
  final date = parseApiDay(value);
  if (date == null) return '';
  try {
    return LocalizedDateTime.mediumDate(date, locale);
  } catch (_) {
    return LocalizedDateTime.mediumDate(date, 'en');
  }
}

/// Short label of a chart point, from its key (day, ISO week Monday, month or year).
String seriesPointLabel(OwnerSeriesPoint point, String granularity, String locale) {
  final start = parseApiDay(point.start) ?? parseApiDay(point.key);
  switch (granularity) {
    case 'year':
      return point.key ?? (start == null ? '' : '${start.year}');
    case 'month':
      if (start == null) return point.key ?? '';
      return DateFormat.MMM(_safeDateLocale(locale)).format(start);
    default:
      if (start == null) return point.key ?? '';
      return DateFormat.Md(_safeDateLocale(locale)).format(start);
  }
}

String _safeDateLocale(String locale) {
  try {
    DateFormat.Md(locale);
    return locale;
  } catch (_) {
    return 'en';
  }
}

/// Title of a vehicle, or null when the API sent none (the screen then shows
/// the translated "Vehicle #id").
String? vehicleTitleOrNull(String? title) =>
    (title == null || title.trim().isEmpty) ? null : title.trim();

/// Kinds of revenue present in a row, in display order: rental, options, delivery.
List<String> rowComponentKinds(OwnerComponents? components) {
  if (components == null) return const [];
  return [
    if ((components.rental ?? 0) > 0) 'rental',
    if ((components.options ?? 0) > 0) 'options',
    if ((components.delivery ?? 0) > 0) 'delivery',
  ];
}

/// Text key of a revenue status (`upcoming`, `pendingPayout`, `paid`).
String? revenueStatusKey(String? status) {
  switch (status) {
    case 'upcoming':
      return 'orp_status_upcoming';
    case 'pendingPayout':
      return 'orp_status_pending';
    case 'paid':
      return 'orp_status_paid';
    default:
      return null;
  }
}

/// Text key of a reservation state (`upcoming`, `completed`, `cancelled`).
String? reservationStateKey(String? state) {
  switch (state) {
    case 'upcoming':
      return 'orp_state_upcoming';
    case 'completed':
      return 'orp_state_completed';
    case 'cancelled':
      return 'orp_state_cancelled';
    default:
      return null;
  }
}
