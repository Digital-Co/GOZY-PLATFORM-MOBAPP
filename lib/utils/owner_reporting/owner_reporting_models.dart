// Models of the owner reporting (dashboard and "Revenues & payouts").
//
// The app never computes anything: these classes only hold what the API
// returned, tolerating null everywhere (every field of the schema is nullable).

int? _toInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString());
}

double? _toDouble(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString());
}

bool? _toBool(dynamic value) => value is bool ? value : null;

String? _toStr(dynamic value) {
  final text = value?.toString();
  return text == null || text.isEmpty ? null : text;
}

Map<String, dynamic>? _toMap(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : null;

List<Map<String, dynamic>> _toMapList(dynamic value) => value is Iterable
    ? value.whereType<Map>().map((e) => Map<String, dynamic>.from(e)).toList()
    : <Map<String, dynamic>>[];

class OwnerReportingPeriod {
  const OwnerReportingPeriod({
    this.preset,
    this.start,
    this.end,
    this.days,
    this.previousStart,
    this.previousEnd,
    this.previousDays,
  });

  final String? preset;
  final String? start;
  final String? end;
  final int? days;
  final String? previousStart;
  final String? previousEnd;
  final int? previousDays;

  static OwnerReportingPeriod? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerReportingPeriod(
      preset: _toStr(json['preset']),
      start: _toStr(json['start']),
      end: _toStr(json['end']),
      days: _toInt(json['days']),
      previousStart: _toStr(json['previousStart']),
      previousEnd: _toStr(json['previousEnd']),
      previousDays: _toInt(json['previousDays']),
    );
  }
}

/// value, previous value and variation, all computed by the server.
class OwnerIndicator {
  const OwnerIndicator({
    this.value,
    this.previous,
    this.change,
    this.trend,
    this.favorable,
  });

  final double? value;
  final double? previous;

  /// Signed percentage (12.5 = +12.5 %). Null for `new` and `none`.
  final double? change;

  /// up | down | flat | new | none.
  final String? trend;

  /// true = good news, false = bad news, null = no judgement.
  final bool? favorable;

  static OwnerIndicator? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerIndicator(
      value: _toDouble(json['value']),
      previous: _toDouble(json['previous']),
      change: _toDouble(json['change']),
      trend: _toStr(json['trend']),
      favorable: _toBool(json['favorable']),
    );
  }
}

class OwnerRevenue {
  const OwnerRevenue({
    this.netRevenue,
    this.upcoming,
    this.pendingPayout,
    this.paid,
    this.paidAmount,
  });

  final double? netRevenue;
  final double? upcoming;
  final double? pendingPayout;
  final double? paid;
  final double? paidAmount;

  static OwnerRevenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerRevenue(
      netRevenue: _toDouble(json['netRevenue']),
      upcoming: _toDouble(json['upcoming']),
      pendingPayout: _toDouble(json['pendingPayout']),
      paid: _toDouble(json['paid']),
      paidAmount: _toDouble(json['paidAmount']),
    );
  }
}

class OwnerSeriesPoint {
  const OwnerSeriesPoint({
    this.key,
    this.start,
    this.end,
    this.netRevenue,
    this.bookings,
  });

  final String? key;
  final String? start;
  final String? end;
  final double? netRevenue;
  final int? bookings;

  static OwnerSeriesPoint fromJson(Map<String, dynamic> json) =>
      OwnerSeriesPoint(
        key: _toStr(json['key']),
        start: _toStr(json['start']),
        end: _toStr(json['end']),
        netRevenue: _toDouble(json['netRevenue']),
        bookings: _toInt(json['bookings']),
      );
}

class OwnerSeries {
  const OwnerSeries({
    this.granularity,
    this.start,
    this.end,
    this.points = const [],
  });

  final String? granularity;
  final String? start;
  final String? end;
  final List<OwnerSeriesPoint> points;

  static OwnerSeries? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerSeries(
      granularity: _toStr(json['granularity']),
      start: _toStr(json['start']),
      end: _toStr(json['end']),
      points: _toMapList(json['points']).map(OwnerSeriesPoint.fromJson).toList(),
    );
  }
}

/// A vehicle of the owner offered in the filter ("All my vehicles").
class OwnerVehicleOption {
  const OwnerVehicleOption({this.listId, this.title, this.isOnline});

  final int? listId;
  final String? title;
  final bool? isOnline;

  static OwnerVehicleOption fromJson(Map<String, dynamic> json) =>
      OwnerVehicleOption(
        listId: _toInt(json['listId']),
        title: _toStr(json['title']),
        isOnline: _toBool(json['isOnline']),
      );
}

class OwnerVehiclePerformance {
  const OwnerVehiclePerformance({
    this.listId,
    this.title,
    this.photo,
    this.isOnline,
    this.bookings,
    this.rentedDays,
    this.occupancy,
    this.netRevenue,
  });

  final int? listId;
  final String? title;
  final String? photo;
  final bool? isOnline;
  final int? bookings;
  final int? rentedDays;
  final double? occupancy;
  final double? netRevenue;

  static OwnerVehiclePerformance fromJson(Map<String, dynamic> json) =>
      OwnerVehiclePerformance(
        listId: _toInt(json['listId']),
        title: _toStr(json['title']),
        photo: _toStr(json['photo']),
        isOnline: _toBool(json['isOnline']),
        bookings: _toInt(json['bookings']),
        rentedDays: _toInt(json['rentedDays']),
        occupancy: _toDouble(json['occupancy']),
        netRevenue: _toDouble(json['netRevenue']),
      );
}

class OwnerReservationsSplit {
  const OwnerReservationsSplit({this.completed, this.upcoming, this.cancelled});

  final int? completed;
  final int? upcoming;
  final int? cancelled;

  static OwnerReservationsSplit? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerReservationsSplit(
      completed: _toInt(json['completed']),
      upcoming: _toInt(json['upcoming']),
      cancelled: _toInt(json['cancelled']),
    );
  }
}

class OwnerRecentActivity {
  const OwnerRecentActivity({
    this.reservationId,
    this.confirmationCode,
    this.listId,
    this.title,
    this.photo,
    this.guestName,
    this.checkIn,
    this.checkOut,
    this.state,
    this.revenueStatus,
    this.netRevenue,
  });

  final int? reservationId;
  final int? confirmationCode;
  final int? listId;
  final String? title;
  final String? photo;

  /// "First name X." as sent by the server, shown as is.
  final String? guestName;
  final String? checkIn;
  final String? checkOut;
  final String? state;
  final String? revenueStatus;
  final double? netRevenue;

  static OwnerRecentActivity fromJson(Map<String, dynamic> json) =>
      OwnerRecentActivity(
        reservationId: _toInt(json['reservationId']),
        confirmationCode: _toInt(json['confirmationCode']),
        listId: _toInt(json['listId']),
        title: _toStr(json['title']),
        photo: _toStr(json['photo']),
        guestName: _toStr(json['guestName']),
        checkIn: _toStr(json['checkIn']),
        checkOut: _toStr(json['checkOut']),
        state: _toStr(json['state']),
        revenueStatus: _toStr(json['revenueStatus']),
        netRevenue: _toDouble(json['netRevenue']),
      );
}

class OwnerOperational {
  const OwnerOperational({
    this.onlineVehicles,
    this.pausedVehicles,
    this.totalDuration,
    this.averageDuration,
  });

  final int? onlineVehicles;
  final int? pausedVehicles;
  final int? totalDuration;
  final double? averageDuration;

  static OwnerOperational? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerOperational(
      onlineVehicles: _toInt(json['onlineVehicles']),
      pausedVehicles: _toInt(json['pausedVehicles']),
      totalDuration: _toInt(json['totalDuration']),
      averageDuration: _toDouble(json['averageDuration']),
    );
  }
}

class OwnerDashboardData {
  const OwnerDashboardData({
    this.currency,
    this.period,
    this.netRevenue,
    this.volume,
    this.bookings,
    this.rentedDays,
    this.occupancy,
    this.cancellations,
    this.revenue,
    this.series,
    this.vehicleCount,
    this.vehicles = const [],
    this.vehicleOptions = const [],
    this.split,
    this.recentActivity = const [],
    this.operational,
  });

  /// Currency actually used by the server: shown with every amount.
  final String? currency;
  final OwnerReportingPeriod? period;
  final OwnerIndicator? netRevenue;
  final OwnerIndicator? volume;
  final OwnerIndicator? bookings;
  final OwnerIndicator? rentedDays;
  final OwnerIndicator? occupancy;
  final OwnerIndicator? cancellations;
  final OwnerRevenue? revenue;
  final OwnerSeries? series;
  final int? vehicleCount;
  final List<OwnerVehiclePerformance> vehicles;
  final List<OwnerVehicleOption> vehicleOptions;
  final OwnerReservationsSplit? split;
  final List<OwnerRecentActivity> recentActivity;
  final OwnerOperational? operational;

  static OwnerDashboardData fromJson(Map<String, dynamic> json) {
    final indicators = _toMap(json['indicators']);
    OwnerIndicator? indicator(String name) =>
        OwnerIndicator.fromJson(_toMap(indicators?[name]));
    return OwnerDashboardData(
      currency: _toStr(json['convertCurrency']),
      period: OwnerReportingPeriod.fromJson(_toMap(json['period'])),
      netRevenue: indicator('netRevenue'),
      volume: indicator('volume'),
      bookings: indicator('bookings'),
      rentedDays: indicator('rentedDays'),
      occupancy: indicator('occupancy'),
      cancellations: indicator('cancellations'),
      revenue: OwnerRevenue.fromJson(_toMap(json['revenue'])),
      series: OwnerSeries.fromJson(_toMap(json['series'])),
      vehicleCount: _toInt(json['vehicleCount']),
      vehicles: _toMapList(json['vehicles'])
          .map(OwnerVehiclePerformance.fromJson)
          .toList(),
      vehicleOptions: _toMapList(json['vehicleOptions'])
          .map(OwnerVehicleOption.fromJson)
          .toList(),
      split: OwnerReservationsSplit.fromJson(_toMap(json['reservationsSplit'])),
      recentActivity: _toMapList(json['recentActivity'])
          .map(OwnerRecentActivity.fromJson)
          .toList(),
      operational: OwnerOperational.fromJson(_toMap(json['operational'])),
    );
  }
}

/// Result of one `getOwnerDashboard` call. Status 200 carries [data]; any
/// other status carries only [errorMessage] (already translated by the API).
class OwnerDashboardOutcome {
  const OwnerDashboardOutcome({this.status, this.errorMessage, this.data});

  final int? status;
  final String? errorMessage;
  final OwnerDashboardData? data;

  bool get isOk => status == 200 && data != null;

  factory OwnerDashboardOutcome.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const OwnerDashboardOutcome();
    final status = _toInt(json['status']);
    return OwnerDashboardOutcome(
      status: status,
      errorMessage: _toStr(json['errorMessage']),
      data: status == 200 ? OwnerDashboardData.fromJson(json) : null,
    );
  }
}

/// Split of an amount into rental, options, delivery and other.
class OwnerComponents {
  const OwnerComponents({this.rental, this.options, this.delivery, this.other});

  final double? rental;
  final double? options;
  final double? delivery;
  final double? other;

  static OwnerComponents? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerComponents(
      rental: _toDouble(json['rental']),
      options: _toDouble(json['options']),
      delivery: _toDouble(json['delivery']),
      other: _toDouble(json['other']),
    );
  }
}

/// Payout line that really exists. Never invented: a row without payout has a
/// null [OwnerEarningsRow.payment].
class OwnerPayment {
  const OwnerPayment({
    this.method,
    this.reference,
    this.providerStatus,
    this.paidAmount,
  });

  final String? method;
  final String? reference;
  final String? providerStatus;
  final double? paidAmount;

  static OwnerPayment? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return OwnerPayment(
      method: _toStr(json['method']),
      reference: _toStr(json['reference']),
      providerStatus: _toStr(json['providerStatus']),
      paidAmount: _toDouble(json['paidAmount']),
    );
  }
}

class OwnerEarningsRow {
  const OwnerEarningsRow({
    this.reservationId,
    this.confirmationCode,
    this.listId,
    this.title,
    this.photo,
    this.guestName,
    this.checkIn,
    this.checkOut,
    this.state,
    this.revenueStatus,
    this.grossAmount,
    this.netRevenue,
    this.commission,
    this.promoAdjustment,
    this.components,
    this.payment,
  });

  final int? reservationId;
  final int? confirmationCode;
  final int? listId;
  final String? title;
  final String? photo;
  final String? guestName;
  final String? checkIn;
  final String? checkOut;
  final String? state;
  final String? revenueStatus;
  final double? grossAmount;
  final double? netRevenue;
  final double? commission;
  final double? promoAdjustment;
  final OwnerComponents? components;
  final OwnerPayment? payment;

  static OwnerEarningsRow fromJson(Map<String, dynamic> json) =>
      OwnerEarningsRow(
        reservationId: _toInt(json['reservationId']),
        confirmationCode: _toInt(json['confirmationCode']),
        listId: _toInt(json['listId']),
        title: _toStr(json['title']),
        photo: _toStr(json['photo']),
        guestName: _toStr(json['guestName']),
        checkIn: _toStr(json['checkIn']),
        checkOut: _toStr(json['checkOut']),
        state: _toStr(json['state']),
        revenueStatus: _toStr(json['revenueStatus']),
        grossAmount: _toDouble(json['grossAmount']),
        netRevenue: _toDouble(json['netRevenue']),
        commission: _toDouble(json['commission']),
        promoAdjustment: _toDouble(json['promoAdjustment']),
        components: OwnerComponents.fromJson(_toMap(json['components'])),
        payment: OwnerPayment.fromJson(_toMap(json['payment'])),
      );
}

class OwnerEarningsData {
  const OwnerEarningsData({
    this.currency,
    this.period,
    this.netRevenue,
    this.volume,
    this.optionsAmount,
    this.revenue,
    this.breakdown,
    this.series,
    this.vehicles = const [],
    this.tab,
    this.sortBy,
    this.sortDir,
    this.page,
    this.pageSize,
    this.count,
    this.pageCount,
    this.rows = const [],
  });

  final String? currency;
  final OwnerReportingPeriod? period;
  final OwnerIndicator? netRevenue;
  final OwnerIndicator? volume;
  final OwnerIndicator? optionsAmount;
  final OwnerRevenue? revenue;
  final OwnerComponents? breakdown;
  final OwnerSeries? series;
  final List<OwnerVehicleOption> vehicles;
  final String? tab;
  final String? sortBy;
  final String? sortDir;
  final int? page;
  final int? pageSize;
  final int? count;
  final int? pageCount;
  final List<OwnerEarningsRow> rows;

  static OwnerEarningsData fromJson(Map<String, dynamic> json) {
    final summary = _toMap(json['summary']);
    OwnerIndicator? indicator(String name) =>
        OwnerIndicator.fromJson(_toMap(summary?[name]));
    return OwnerEarningsData(
      currency: _toStr(json['convertCurrency']),
      period: OwnerReportingPeriod.fromJson(_toMap(json['period'])),
      netRevenue: indicator('netRevenue'),
      volume: indicator('volume'),
      optionsAmount: indicator('optionsAmount'),
      revenue: OwnerRevenue.fromJson(_toMap(json['revenue'])),
      breakdown: OwnerComponents.fromJson(_toMap(json['breakdown'])),
      series: OwnerSeries.fromJson(_toMap(json['series'])),
      vehicles:
          _toMapList(json['vehicles']).map(OwnerVehicleOption.fromJson).toList(),
      tab: _toStr(json['tab']),
      sortBy: _toStr(json['sortBy']),
      sortDir: _toStr(json['sortDir']),
      page: _toInt(json['page']),
      pageSize: _toInt(json['pageSize']),
      count: _toInt(json['count']),
      pageCount: _toInt(json['pageCount']),
      rows: _toMapList(json['rows']).map(OwnerEarningsRow.fromJson).toList(),
    );
  }
}

class OwnerEarningsOutcome {
  const OwnerEarningsOutcome({this.status, this.errorMessage, this.data});

  final int? status;
  final String? errorMessage;
  final OwnerEarningsData? data;

  bool get isOk => status == 200 && data != null;

  factory OwnerEarningsOutcome.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const OwnerEarningsOutcome();
    final status = _toInt(json['status']);
    return OwnerEarningsOutcome(
      status: status,
      errorMessage: _toStr(json['errorMessage']),
      data: status == 200 ? OwnerEarningsData.fromJson(json) : null,
    );
  }
}
