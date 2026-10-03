// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'servicePlan.data.gql.g.dart';

abstract class GgetAllUserServicePlanData
    implements
        Built<GgetAllUserServicePlanData, GgetAllUserServicePlanDataBuilder> {
  GgetAllUserServicePlanData._();

  factory GgetAllUserServicePlanData(
          [void Function(GgetAllUserServicePlanDataBuilder b) updates]) =
      _$GgetAllUserServicePlanData;

  static void _initializeBuilder(GgetAllUserServicePlanDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAllUserServicePlanData_getAllUserServicePlan? get getAllUserServicePlan;
  static Serializer<GgetAllUserServicePlanData> get serializer =>
      _$ggetAllUserServicePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllUserServicePlanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllUserServicePlanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllUserServicePlanData.serializer,
        json,
      );
}

abstract class GgetAllUserServicePlanData_getAllUserServicePlan
    implements
        Built<GgetAllUserServicePlanData_getAllUserServicePlan,
            GgetAllUserServicePlanData_getAllUserServicePlanBuilder> {
  GgetAllUserServicePlanData_getAllUserServicePlan._();

  factory GgetAllUserServicePlanData_getAllUserServicePlan(
      [void Function(GgetAllUserServicePlanData_getAllUserServicePlanBuilder b)
          updates]) = _$GgetAllUserServicePlanData_getAllUserServicePlan;

  static void _initializeBuilder(
          GgetAllUserServicePlanData_getAllUserServicePlanBuilder b) =>
      b..G__typename = 'ServicePlanCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  BuiltList<GgetAllUserServicePlanData_getAllUserServicePlan_results?>?
      get results;
  static Serializer<GgetAllUserServicePlanData_getAllUserServicePlan>
      get serializer =>
          _$ggetAllUserServicePlanDataGetAllUserServicePlanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllUserServicePlanData_getAllUserServicePlan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllUserServicePlanData_getAllUserServicePlan? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllUserServicePlanData_getAllUserServicePlan.serializer,
        json,
      );
}

abstract class GgetAllUserServicePlanData_getAllUserServicePlan_results
    implements
        Built<GgetAllUserServicePlanData_getAllUserServicePlan_results,
            GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder> {
  GgetAllUserServicePlanData_getAllUserServicePlan_results._();

  factory GgetAllUserServicePlanData_getAllUserServicePlan_results(
      [void Function(
              GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder b)
          updates]) = _$GgetAllUserServicePlanData_getAllUserServicePlan_results;

  static void _initializeBuilder(
          GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder b) =>
      b..G__typename = 'ServicePlansType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get userType;
  String? get planName;
  String? get duration;
  String? get currency;
  String? get description;
  double? get price;
  bool? get aiFeaturesStatus;
  double? get serviceFee;
  bool? get purchaseStatus;
  String? get servicePlanStartDate;
  String? get servicePlanEndDate;
  String? get serviceType;
  bool? get isEnable;
  String? get createdAt;
  String? get updatedAt;
  String? get mediaImage;
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData?
      get PurchaseData;
  static Serializer<GgetAllUserServicePlanData_getAllUserServicePlan_results>
      get serializer =>
          _$ggetAllUserServicePlanDataGetAllUserServicePlanResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllUserServicePlanData_getAllUserServicePlan_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllUserServicePlanData_getAllUserServicePlan_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllUserServicePlanData_getAllUserServicePlan_results.serializer,
        json,
      );
}

abstract class GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
    implements
        Built<
            GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData,
            GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder> {
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData._();

  factory GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData(
          [void Function(
                  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder
                      b)
              updates]) =
      _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData;

  static void _initializeBuilder(
          GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder
              b) =>
      b..G__typename = 'PurchaseServicePlanType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get servicePlanId;
  static Serializer<
          GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData>
      get serializer =>
          _$ggetAllUserServicePlanDataGetAllUserServicePlanResultsPurchaseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
                .serializer,
            json,
          );
}
