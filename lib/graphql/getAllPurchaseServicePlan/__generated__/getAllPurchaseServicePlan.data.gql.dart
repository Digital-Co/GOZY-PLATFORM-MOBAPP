// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getAllPurchaseServicePlan.data.gql.g.dart';

abstract class GgetAllPurchaseServicePlanData
    implements
        Built<GgetAllPurchaseServicePlanData,
            GgetAllPurchaseServicePlanDataBuilder> {
  GgetAllPurchaseServicePlanData._();

  factory GgetAllPurchaseServicePlanData(
          [void Function(GgetAllPurchaseServicePlanDataBuilder b) updates]) =
      _$GgetAllPurchaseServicePlanData;

  static void _initializeBuilder(GgetAllPurchaseServicePlanDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan?
      get getAllPurchaseServicePlan;
  static Serializer<GgetAllPurchaseServicePlanData> get serializer =>
      _$ggetAllPurchaseServicePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllPurchaseServicePlanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllPurchaseServicePlanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllPurchaseServicePlanData.serializer,
        json,
      );
}

abstract class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan
    implements
        Built<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder> {
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan._();

  factory GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan(
      [void Function(
              GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder b)
          updates]) = _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan;

  static void _initializeBuilder(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder b) =>
      b..G__typename = 'PurchaseServicePlanCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  BuiltList<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?>?
      get results;
  static Serializer<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan>
      get serializer =>
          _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan.serializer,
        json,
      );
}

abstract class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
    implements
        Built<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder> {
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results._();

  factory GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder
                      b)
              updates]) =
      _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results;

  static void _initializeBuilder(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder
              b) =>
      b..G__typename = 'PurchaseServicePlanType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get userId;
  double? get price;
  String? get currency;
  String? get userType;
  String? get startDate;
  String? get endDate;
  String? get duration;
  int? get servicePlanId;
  double? get serviceFee;
  String? get servicePlanName;
  String? get serviceDescription;
  bool? get serviceAIFeature;
  String? get servicePlanStatus;
  int? get paymentType;
  String? get paymentState;
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData?
      get servicePlanData;
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData?
      get PurchaserData;
  String? get createdAt;
  String? get updatedAt;
  static Serializer<
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results>
      get serializer =>
          _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
                .serializer,
            json,
          );
}

abstract class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
    implements
        Built<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder> {
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData._();

  factory GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder
                      b)
              updates]) =
      _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData;

  static void _initializeBuilder(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder
              b) =>
      b..G__typename = 'ServicePlansType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get mediaImage;
  static Serializer<
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData>
      get serializer =>
          _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanResultsServicePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
                .serializer,
            json,
          );
}

abstract class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
    implements
        Built<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder> {
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData._();

  factory GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder
                      b)
              updates]) =
      _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData;

  static void _initializeBuilder(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  static Serializer<
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData>
      get serializer =>
          _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanResultsPurchaserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
                .serializer,
            json,
          );
}
