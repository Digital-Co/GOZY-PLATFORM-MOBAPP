// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getPurchaseServicePlan.data.gql.g.dart';

abstract class GgetPurchaseServicePlanData
    implements
        Built<GgetPurchaseServicePlanData, GgetPurchaseServicePlanDataBuilder> {
  GgetPurchaseServicePlanData._();

  factory GgetPurchaseServicePlanData(
          [void Function(GgetPurchaseServicePlanDataBuilder b) updates]) =
      _$GgetPurchaseServicePlanData;

  static void _initializeBuilder(GgetPurchaseServicePlanDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPurchaseServicePlanData_getPurchaseServicePlan?
      get getPurchaseServicePlan;
  static Serializer<GgetPurchaseServicePlanData> get serializer =>
      _$ggetPurchaseServicePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPurchaseServicePlanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPurchaseServicePlanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPurchaseServicePlanData.serializer,
        json,
      );
}

abstract class GgetPurchaseServicePlanData_getPurchaseServicePlan
    implements
        Built<GgetPurchaseServicePlanData_getPurchaseServicePlan,
            GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder> {
  GgetPurchaseServicePlanData_getPurchaseServicePlan._();

  factory GgetPurchaseServicePlanData_getPurchaseServicePlan(
      [void Function(
              GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder b)
          updates]) = _$GgetPurchaseServicePlanData_getPurchaseServicePlan;

  static void _initializeBuilder(
          GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder b) =>
      b..G__typename = 'PurchaseServicePlanCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result? get result;
  static Serializer<GgetPurchaseServicePlanData_getPurchaseServicePlan>
      get serializer =>
          _$ggetPurchaseServicePlanDataGetPurchaseServicePlanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPurchaseServicePlanData_getPurchaseServicePlan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPurchaseServicePlanData_getPurchaseServicePlan? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPurchaseServicePlanData_getPurchaseServicePlan.serializer,
        json,
      );
}

abstract class GgetPurchaseServicePlanData_getPurchaseServicePlan_result
    implements
        Built<GgetPurchaseServicePlanData_getPurchaseServicePlan_result,
            GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder> {
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result._();

  factory GgetPurchaseServicePlanData_getPurchaseServicePlan_result(
      [void Function(
              GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder
                  b)
          updates]) = _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result;

  static void _initializeBuilder(
          GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder b) =>
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
  double? get serviceFee;
  String? get duration;
  int? get servicePlanId;
  String? get servicePlanName;
  String? get serviceDescription;
  bool? get serviceAIFeature;
  int? get paymentType;
  String? get servicePlanStatus;
  String? get paymentState;
  BuiltList<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?>?
      get features;
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData?
      get PurchaserData;
  String? get createdAt;
  String? get updatedAt;
  static Serializer<GgetPurchaseServicePlanData_getPurchaseServicePlan_result>
      get serializer =>
          _$ggetPurchaseServicePlanDataGetPurchaseServicePlanResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPurchaseServicePlanData_getPurchaseServicePlan_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPurchaseServicePlanData_getPurchaseServicePlan_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPurchaseServicePlanData_getPurchaseServicePlan_result.serializer,
        json,
      );
}

abstract class GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
    implements
        Built<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features,
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder> {
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features._();

  factory GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features(
          [void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder
                      b)
              updates]) =
      _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features;

  static void _initializeBuilder(
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder
              b) =>
      b..G__typename = 'PurchaseSpecialFeaturesType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double? get serviceFee;
  bool? get serviceAIFeature;
  static Serializer<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features>
      get serializer =>
          _$ggetPurchaseServicePlanDataGetPurchaseServicePlanResultFeaturesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
                .serializer,
            json,
          );
}

abstract class GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
    implements
        Built<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData,
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder> {
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData._();

  factory GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData(
          [void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder
                      b)
              updates]) =
      _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData;

  static void _initializeBuilder(
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get createdAt;
  String? get firstName;
  String? get lastName;
  static Serializer<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData>
      get serializer =>
          _$ggetPurchaseServicePlanDataGetPurchaseServicePlanResultPurchaserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
                .serializer,
            json,
          );
}
