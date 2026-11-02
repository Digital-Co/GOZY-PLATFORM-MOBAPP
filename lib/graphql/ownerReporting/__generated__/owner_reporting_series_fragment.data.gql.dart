// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_series_fragment.data.gql.g.dart';

abstract class GownerReportingSeriesFragment {
  String get G__typename;
  String? get granularity;
  String? get start;
  String? get end;
  BuiltList<GownerReportingSeriesFragment_points?>? get points;
  Map<String, dynamic> toJson();
}

abstract class GownerReportingSeriesFragment_points {
  String get G__typename;
  String? get key;
  String? get start;
  String? get end;
  double? get netRevenue;
  int? get bookings;
  Map<String, dynamic> toJson();
}

abstract class GownerReportingSeriesFragmentData
    implements
        Built<GownerReportingSeriesFragmentData,
            GownerReportingSeriesFragmentDataBuilder>,
        GownerReportingSeriesFragment {
  GownerReportingSeriesFragmentData._();

  factory GownerReportingSeriesFragmentData(
          [void Function(GownerReportingSeriesFragmentDataBuilder b) updates]) =
      _$GownerReportingSeriesFragmentData;

  static void _initializeBuilder(GownerReportingSeriesFragmentDataBuilder b) =>
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
  BuiltList<GownerReportingSeriesFragmentData_points?>? get points;
  static Serializer<GownerReportingSeriesFragmentData> get serializer =>
      _$gownerReportingSeriesFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingSeriesFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingSeriesFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingSeriesFragmentData.serializer,
        json,
      );
}

abstract class GownerReportingSeriesFragmentData_points
    implements
        Built<GownerReportingSeriesFragmentData_points,
            GownerReportingSeriesFragmentData_pointsBuilder>,
        GownerReportingSeriesFragment_points {
  GownerReportingSeriesFragmentData_points._();

  factory GownerReportingSeriesFragmentData_points(
      [void Function(GownerReportingSeriesFragmentData_pointsBuilder b)
          updates]) = _$GownerReportingSeriesFragmentData_points;

  static void _initializeBuilder(
          GownerReportingSeriesFragmentData_pointsBuilder b) =>
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
  static Serializer<GownerReportingSeriesFragmentData_points> get serializer =>
      _$gownerReportingSeriesFragmentDataPointsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingSeriesFragmentData_points.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingSeriesFragmentData_points? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingSeriesFragmentData_points.serializer,
        json,
      );
}
