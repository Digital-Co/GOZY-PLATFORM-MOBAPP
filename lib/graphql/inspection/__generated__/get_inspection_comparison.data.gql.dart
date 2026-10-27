// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_inspection_comparison.data.gql.g.dart';

abstract class GgetInspectionComparisonData
    implements
        Built<GgetInspectionComparisonData,
            GgetInspectionComparisonDataBuilder> {
  GgetInspectionComparisonData._();

  factory GgetInspectionComparisonData(
          [void Function(GgetInspectionComparisonDataBuilder b) updates]) =
      _$GgetInspectionComparisonData;

  static void _initializeBuilder(GgetInspectionComparisonDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetInspectionComparisonData_getInspectionComparison?
      get getInspectionComparison;
  static Serializer<GgetInspectionComparisonData> get serializer =>
      _$ggetInspectionComparisonDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionComparisonData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionComparisonData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionComparisonData.serializer,
        json,
      );
}

abstract class GgetInspectionComparisonData_getInspectionComparison
    implements
        Built<GgetInspectionComparisonData_getInspectionComparison,
            GgetInspectionComparisonData_getInspectionComparisonBuilder> {
  GgetInspectionComparisonData_getInspectionComparison._();

  factory GgetInspectionComparisonData_getInspectionComparison(
      [void Function(
              GgetInspectionComparisonData_getInspectionComparisonBuilder b)
          updates]) = _$GgetInspectionComparisonData_getInspectionComparison;

  static void _initializeBuilder(
          GgetInspectionComparisonData_getInspectionComparisonBuilder b) =>
      b..G__typename = 'InspectionComparison';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get kmDriven;
  int? get fuelDelta;
  bool? get hasDamage;
  int? get newDamagePhotos;
  String? get globalStatus;
  BuiltList<GgetInspectionComparisonData_getInspectionComparison_alerts?>?
      get alerts;
  static Serializer<GgetInspectionComparisonData_getInspectionComparison>
      get serializer =>
          _$ggetInspectionComparisonDataGetInspectionComparisonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionComparisonData_getInspectionComparison.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionComparisonData_getInspectionComparison? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionComparisonData_getInspectionComparison.serializer,
        json,
      );
}

abstract class GgetInspectionComparisonData_getInspectionComparison_alerts
    implements
        Built<GgetInspectionComparisonData_getInspectionComparison_alerts,
            GgetInspectionComparisonData_getInspectionComparison_alertsBuilder> {
  GgetInspectionComparisonData_getInspectionComparison_alerts._();

  factory GgetInspectionComparisonData_getInspectionComparison_alerts(
      [void Function(
              GgetInspectionComparisonData_getInspectionComparison_alertsBuilder
                  b)
          updates]) = _$GgetInspectionComparisonData_getInspectionComparison_alerts;

  static void _initializeBuilder(
          GgetInspectionComparisonData_getInspectionComparison_alertsBuilder
              b) =>
      b..G__typename = 'InspectionAlert';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get code;
  String? get severity;
  double? get value;
  static Serializer<GgetInspectionComparisonData_getInspectionComparison_alerts>
      get serializer =>
          _$ggetInspectionComparisonDataGetInspectionComparisonAlertsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionComparisonData_getInspectionComparison_alerts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionComparisonData_getInspectionComparison_alerts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionComparisonData_getInspectionComparison_alerts.serializer,
        json,
      );
}
