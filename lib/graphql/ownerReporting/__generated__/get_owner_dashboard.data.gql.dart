// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_indicator_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_period_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_revenue_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_series_fragment.data.gql.dart'
    as _i5;

part 'get_owner_dashboard.data.gql.g.dart';

abstract class GgetOwnerDashboardData
    implements Built<GgetOwnerDashboardData, GgetOwnerDashboardDataBuilder> {
  GgetOwnerDashboardData._();

  factory GgetOwnerDashboardData(
          [void Function(GgetOwnerDashboardDataBuilder b) updates]) =
      _$GgetOwnerDashboardData;

  static void _initializeBuilder(GgetOwnerDashboardDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetOwnerDashboardData_getOwnerDashboard? get getOwnerDashboard;
  static Serializer<GgetOwnerDashboardData> get serializer =>
      _$ggetOwnerDashboardDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard,
            GgetOwnerDashboardData_getOwnerDashboardBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard._();

  factory GgetOwnerDashboardData_getOwnerDashboard(
      [void Function(GgetOwnerDashboardData_getOwnerDashboardBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboardBuilder b) =>
      b..G__typename = 'OwnerDashboard';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get convertCurrency;
  GgetOwnerDashboardData_getOwnerDashboard_period? get period;
  GgetOwnerDashboardData_getOwnerDashboard_indicators? get indicators;
  GgetOwnerDashboardData_getOwnerDashboard_revenue? get revenue;
  GgetOwnerDashboardData_getOwnerDashboard_series? get series;
  int? get vehicleCount;
  BuiltList<GgetOwnerDashboardData_getOwnerDashboard_vehicles?>? get vehicles;
  BuiltList<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions?>?
      get vehicleOptions;
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit?
      get reservationsSplit;
  BuiltList<GgetOwnerDashboardData_getOwnerDashboard_recentActivity?>?
      get recentActivity;
  GgetOwnerDashboardData_getOwnerDashboard_operational? get operational;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard> get serializer =>
      _$ggetOwnerDashboardDataGetOwnerDashboardSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_period
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_period,
            GgetOwnerDashboardData_getOwnerDashboard_periodBuilder>,
        _i2.GownerReportingPeriodFragment {
  GgetOwnerDashboardData_getOwnerDashboard_period._();

  factory GgetOwnerDashboardData_getOwnerDashboard_period(
      [void Function(GgetOwnerDashboardData_getOwnerDashboard_periodBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_period;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_periodBuilder b) =>
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
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_period>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardPeriodSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_period.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_period? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_period.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators,
            GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard_indicators._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_indicators;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicatorsBuilder b) =>
      b..G__typename = 'OwnerDashboardIndicators';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue?
      get netRevenue;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volume? get volume;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings? get bookings;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays?
      get rentedDays;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy? get occupancy;
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations?
      get cancellations;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder
                      b)
              updates]) =
      _$GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenueBuilder
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
          GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsNetRevenueSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetOwnerDashboardData_getOwnerDashboard_indicators_netRevenue
                .serializer,
            json,
          );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators_volume
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators_volume,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerDashboardData_getOwnerDashboard_indicators_volume._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators_volume(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder
                  b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_indicators_volume;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_volumeBuilder
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
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_indicators_volume>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsVolumeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_volume.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators_volume? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_volume.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder
                      b)
              updates]) =
      _$GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_bookingsBuilder
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
          GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsBookingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_bookings.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder
                      b)
              updates]) =
      _$GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDaysBuilder
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
          GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsRentedDaysSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetOwnerDashboardData_getOwnerDashboard_indicators_rentedDays
                .serializer,
            json,
          );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder
                      b)
              updates]) =
      _$GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancyBuilder
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
          GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsOccupancySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetOwnerDashboardData_getOwnerDashboard_indicators_occupancy
                .serializer,
            json,
          );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations,
            GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder>,
        _i3.GownerReportingIndicatorFragment {
  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations._();

  factory GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations(
          [void Function(
                  GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder
                      b)
              updates]) =
      _$GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellationsBuilder
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
          GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardIndicatorsCancellationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetOwnerDashboardData_getOwnerDashboard_indicators_cancellations
                .serializer,
            json,
          );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_revenue
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_revenue,
            GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder>,
        _i4.GownerReportingRevenueFragment {
  GgetOwnerDashboardData_getOwnerDashboard_revenue._();

  factory GgetOwnerDashboardData_getOwnerDashboard_revenue(
      [void Function(GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_revenue;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_revenueBuilder b) =>
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
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_revenue>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardRevenueSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_revenue.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_revenue? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_revenue.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_series
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_series,
            GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder>,
        _i5.GownerReportingSeriesFragment {
  GgetOwnerDashboardData_getOwnerDashboard_series._();

  factory GgetOwnerDashboardData_getOwnerDashboard_series(
      [void Function(GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_series;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_seriesBuilder b) =>
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
  BuiltList<GgetOwnerDashboardData_getOwnerDashboard_series_points?>?
      get points;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_series>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardSeriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_series.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_series? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_series.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_series_points
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_series_points,
            GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder>,
        _i5.GownerReportingSeriesFragment_points {
  GgetOwnerDashboardData_getOwnerDashboard_series_points._();

  factory GgetOwnerDashboardData_getOwnerDashboard_series_points(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_series_points;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_series_pointsBuilder b) =>
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
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_series_points>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardSeriesPointsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_series_points.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_series_points? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_series_points.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_vehicles
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_vehicles,
            GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard_vehicles._();

  factory GgetOwnerDashboardData_getOwnerDashboard_vehicles(
      [void Function(GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_vehicles;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_vehiclesBuilder b) =>
      b..G__typename = 'OwnerDashboardVehicle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get listId;
  String? get title;
  String? get photo;
  bool? get isOnline;
  int? get bookings;
  int? get rentedDays;
  double? get occupancy;
  double? get netRevenue;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_vehicles>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardVehiclesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_vehicles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_vehicles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_vehicles.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions,
            GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions._();

  factory GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_vehicleOptionsBuilder b) =>
      b..G__typename = 'OwnerDashboardVehicleOption';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get listId;
  String? get title;
  bool? get isOnline;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardVehicleOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_vehicleOptions.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit,
            GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit._();

  factory GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder
                  b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_reservationsSplitBuilder
              b) =>
      b..G__typename = 'OwnerDashboardReservationsSplit';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get completed;
  int? get upcoming;
  int? get cancelled;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardReservationsSplitSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_reservationsSplit.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_recentActivity
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_recentActivity,
            GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard_recentActivity._();

  factory GgetOwnerDashboardData_getOwnerDashboard_recentActivity(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_recentActivity;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_recentActivityBuilder b) =>
      b..G__typename = 'OwnerDashboardActivity';

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
  double? get netRevenue;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_recentActivity>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardRecentActivitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_recentActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_recentActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_recentActivity.serializer,
        json,
      );
}

abstract class GgetOwnerDashboardData_getOwnerDashboard_operational
    implements
        Built<GgetOwnerDashboardData_getOwnerDashboard_operational,
            GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder> {
  GgetOwnerDashboardData_getOwnerDashboard_operational._();

  factory GgetOwnerDashboardData_getOwnerDashboard_operational(
      [void Function(
              GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder b)
          updates]) = _$GgetOwnerDashboardData_getOwnerDashboard_operational;

  static void _initializeBuilder(
          GgetOwnerDashboardData_getOwnerDashboard_operationalBuilder b) =>
      b..G__typename = 'OwnerDashboardOperational';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get onlineVehicles;
  int? get pausedVehicles;
  int? get totalDuration;
  double? get averageDuration;
  static Serializer<GgetOwnerDashboardData_getOwnerDashboard_operational>
      get serializer =>
          _$ggetOwnerDashboardDataGetOwnerDashboardOperationalSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_operational.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerDashboardData_getOwnerDashboard_operational? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetOwnerDashboardData_getOwnerDashboard_operational.serializer,
        json,
      );
}
