// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_earnings_components_fragment.data.gql.dart'
    as _i5;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_indicator_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_period_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_revenue_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_series_fragment.data.gql.dart'
    as _i6;

part 'get_owner_earnings.data.gql.g.dart';

abstract class GgetOwnerEarningsData
    implements Built<GgetOwnerEarningsData, GgetOwnerEarningsDataBuilder> {
  GgetOwnerEarningsData._();

  factory GgetOwnerEarningsData(
          [void Function(GgetOwnerEarningsDataBuilder b) updates]) =
      _$GgetOwnerEarningsData;

  static void _initializeBuilder(GgetOwnerEarningsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetOwnerEarningsData_getOwnerEarnings? get getOwnerEarnings;
  static Serializer<GgetOwnerEarningsData> get serializer =>
      _$ggetOwnerEarningsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings,
            GgetOwnerEarningsData_getOwnerEarningsBuilder> {
  GgetOwnerEarningsData_getOwnerEarnings._();

  factory GgetOwnerEarningsData_getOwnerEarnings(
      [void Function(GgetOwnerEarningsData_getOwnerEarningsBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarningsBuilder b) =>
      b..G__typename = 'OwnerEarnings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get convertCurrency;
  GgetOwnerEarningsData_getOwnerEarnings_period? get period;
  GgetOwnerEarningsData_getOwnerEarnings_summary? get summary;
  GgetOwnerEarningsData_getOwnerEarnings_revenue? get revenue;
  GgetOwnerEarningsData_getOwnerEarnings_breakdown? get breakdown;
  GgetOwnerEarningsData_getOwnerEarnings_series? get series;
  BuiltList<GgetOwnerEarningsData_getOwnerEarnings_vehicles?>? get vehicles;
  String? get tab;
  String? get sortBy;
  String? get sortDir;
  int? get page;
  int? get pageSize;
  int? get count;
  int? get pageCount;
  BuiltList<GgetOwnerEarningsData_getOwnerEarnings_rows?>? get rows;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings> get serializer =>
      _$ggetOwnerEarningsDataGetOwnerEarningsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_period
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_period,
            GgetOwnerEarningsData_getOwnerEarnings_periodBuilder>,
        _i2.GownerReportingPeriodFragment {
  GgetOwnerEarningsData_getOwnerEarnings_period._();

  factory GgetOwnerEarningsData_getOwnerEarnings_period(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_periodBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_period;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_periodBuilder b) =>
      b..G__typename = 'OwnerReportingPeriod';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get preset;
  @override
  String? get start;
  @override
  String? get end;
  @override
  int? get days;
  @override
  String? get previousStart;
  @override
  String? get previousEnd;
  @override
  int? get previousDays;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_period>
      get serializer => _$ggetOwnerEarningsDataGetOwnerEarningsPeriodSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_period.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_period? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_period.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_summary
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_summary,
            GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder> {
  GgetOwnerEarningsData_getOwnerEarnings_summary._();

  factory GgetOwnerEarningsData_getOwnerEarnings_summary(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_summary;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_summaryBuilder b) =>
      b..G__typename = 'OwnerEarningsSummary';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue? get netRevenue;
  GgetOwnerEarningsData_getOwnerEarnings_summary_volume? get volume;
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount?
      get optionsAmount;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsSummarySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_summary? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue,
            GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue._();

  factory GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue(
      [void Function(
              GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder
                  b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenueBuilder b) =>
      b..G__typename = 'OwnerReportingIndicator';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get value;
  @override
  double? get previous;
  @override
  double? get change;
  @override
  String? get trend;
  @override
  bool? get favorable;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsSummaryNetRevenueSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary_netRevenue.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_summary_volume
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_summary_volume,
            GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerEarningsData_getOwnerEarnings_summary_volume._();

  factory GgetOwnerEarningsData_getOwnerEarnings_summary_volume(
      [void Function(
              GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_summary_volume;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_summary_volumeBuilder b) =>
      b..G__typename = 'OwnerReportingIndicator';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get value;
  @override
  double? get previous;
  @override
  double? get change;
  @override
  String? get trend;
  @override
  bool? get favorable;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_summary_volume>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsSummaryVolumeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary_volume.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_summary_volume? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary_volume.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount,
            GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount._();

  factory GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount(
          [void Function(
                  GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder
                      b)
              updates]) =
      _$GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmountBuilder
              b) =>
      b..G__typename = 'OwnerReportingIndicator';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get value;
  @override
  double? get previous;
  @override
  double? get change;
  @override
  String? get trend;
  @override
  bool? get favorable;
  static Serializer<
          GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsSummaryOptionsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_summary_optionsAmount.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_revenue
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_revenue,
            GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder>,
        _i4.GownerReportingRevenueFragment {
  GgetOwnerEarningsData_getOwnerEarnings_revenue._();

  factory GgetOwnerEarningsData_getOwnerEarnings_revenue(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_revenue;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_revenueBuilder b) =>
      b..G__typename = 'OwnerReportingRevenue';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get netRevenue;
  @override
  double? get upcoming;
  @override
  double? get pendingPayout;
  @override
  double? get paid;
  @override
  double? get paidAmount;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_revenue>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsRevenueSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_revenue.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_revenue? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_revenue.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_breakdown
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_breakdown,
            GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder>,
        _i5.GownerEarningsComponentsFragment {
  GgetOwnerEarningsData_getOwnerEarnings_breakdown._();

  factory GgetOwnerEarningsData_getOwnerEarnings_breakdown(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_breakdown;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_breakdownBuilder b) =>
      b..G__typename = 'OwnerEarningsBreakdown';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get rental;
  @override
  double? get options;
  @override
  double? get delivery;
  @override
  double? get other;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_breakdown>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsBreakdownSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_breakdown.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_breakdown? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_breakdown.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_series
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_series,
            GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder>,
        _i6.GownerReportingSeriesFragment {
  GgetOwnerEarningsData_getOwnerEarnings_series._();

  factory GgetOwnerEarningsData_getOwnerEarnings_series(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_series;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_seriesBuilder b) =>
      b..G__typename = 'OwnerReportingSeries';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get granularity;
  @override
  String? get start;
  @override
  String? get end;
  @override
  BuiltList<GgetOwnerEarningsData_getOwnerEarnings_series_points?>? get points;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_series>
      get serializer => _$ggetOwnerEarningsDataGetOwnerEarningsSeriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_series.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_series? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_series.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_series_points
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_series_points,
            GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder>,
        _i6.GownerReportingSeriesFragment_points {
  GgetOwnerEarningsData_getOwnerEarnings_series_points._();

  factory GgetOwnerEarningsData_getOwnerEarnings_series_points(
      [void Function(
              GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_series_points;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_series_pointsBuilder b) =>
      b..G__typename = 'OwnerReportingSeriesPoint';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get key;
  @override
  String? get start;
  @override
  String? get end;
  @override
  double? get netRevenue;
  @override
  int? get bookings;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_series_points>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsSeriesPointsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_series_points.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_series_points? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_series_points.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_vehicles
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_vehicles,
            GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder> {
  GgetOwnerEarningsData_getOwnerEarnings_vehicles._();

  factory GgetOwnerEarningsData_getOwnerEarnings_vehicles(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_vehicles;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_vehiclesBuilder b) =>
      b..G__typename = 'OwnerEarningsVehicle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get listId;
  String? get title;
  bool? get isOnline;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_vehicles>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsVehiclesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_vehicles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_vehicles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_vehicles.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_rows
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_rows,
            GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder> {
  GgetOwnerEarningsData_getOwnerEarnings_rows._();

  factory GgetOwnerEarningsData_getOwnerEarnings_rows(
      [void Function(GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_rows;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_rowsBuilder b) =>
      b..G__typename = 'OwnerEarningsRow';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get reservationId;
  int? get confirmationCode;
  int? get listId;
  String? get title;
  String? get photo;
  String? get guestName;
  String? get checkIn;
  String? get checkOut;
  String? get state;
  String? get revenueStatus;
  double? get grossAmount;
  double? get netRevenue;
  double? get commission;
  double? get promoAdjustment;
  GgetOwnerEarningsData_getOwnerEarnings_rows_components? get components;
  GgetOwnerEarningsData_getOwnerEarnings_rows_payment? get payment;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_rows>
      get serializer => _$ggetOwnerEarningsDataGetOwnerEarningsRowsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_rows.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_rows? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_rows.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_rows_components
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_rows_components,
            GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder>,
        _i5.GownerEarningsComponentsFragment {
  GgetOwnerEarningsData_getOwnerEarnings_rows_components._();

  factory GgetOwnerEarningsData_getOwnerEarnings_rows_components(
      [void Function(
              GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_rows_components;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_rows_componentsBuilder b) =>
      b..G__typename = 'OwnerEarningsBreakdown';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get rental;
  @override
  double? get options;
  @override
  double? get delivery;
  @override
  double? get other;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_rows_components>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsRowsComponentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_rows_components.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_rows_components? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_rows_components.serializer,
        json,
      );
}

abstract class GgetOwnerEarningsData_getOwnerEarnings_rows_payment
    implements
        Built<GgetOwnerEarningsData_getOwnerEarnings_rows_payment,
            GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder> {
  GgetOwnerEarningsData_getOwnerEarnings_rows_payment._();

  factory GgetOwnerEarningsData_getOwnerEarnings_rows_payment(
      [void Function(
              GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder b)
          updates]) = _$GgetOwnerEarningsData_getOwnerEarnings_rows_payment;

  static void _initializeBuilder(
          GgetOwnerEarningsData_getOwnerEarnings_rows_paymentBuilder b) =>
      b..G__typename = 'OwnerEarningsPayment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get method;
  String? get reference;
  String? get providerStatus;
  double? get paidAmount;
  static Serializer<GgetOwnerEarningsData_getOwnerEarnings_rows_payment>
      get serializer =>
          _$ggetOwnerEarningsDataGetOwnerEarningsRowsPaymentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_rows_payment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsData_getOwnerEarnings_rows_payment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerEarningsData_getOwnerEarnings_rows_payment.serializer,
        json,
      );
}
