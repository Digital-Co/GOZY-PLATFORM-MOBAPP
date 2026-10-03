// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'createServicePlan.data.gql.g.dart';

abstract class GCreatePurchaseServicePlanData
    implements
        Built<GCreatePurchaseServicePlanData,
            GCreatePurchaseServicePlanDataBuilder> {
  GCreatePurchaseServicePlanData._();

  factory GCreatePurchaseServicePlanData(
          [void Function(GCreatePurchaseServicePlanDataBuilder b) updates]) =
      _$GCreatePurchaseServicePlanData;

  static void _initializeBuilder(GCreatePurchaseServicePlanDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePurchaseServicePlanData_createPurchaseServicePlan?
      get createPurchaseServicePlan;
  static Serializer<GCreatePurchaseServicePlanData> get serializer =>
      _$gCreatePurchaseServicePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePurchaseServicePlanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePurchaseServicePlanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePurchaseServicePlanData.serializer,
        json,
      );
}

abstract class GCreatePurchaseServicePlanData_createPurchaseServicePlan
    implements
        Built<GCreatePurchaseServicePlanData_createPurchaseServicePlan,
            GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder> {
  GCreatePurchaseServicePlanData_createPurchaseServicePlan._();

  factory GCreatePurchaseServicePlanData_createPurchaseServicePlan(
      [void Function(
              GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder b)
          updates]) = _$GCreatePurchaseServicePlanData_createPurchaseServicePlan;

  static void _initializeBuilder(
          GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder b) =>
      b..G__typename = 'PurchaseServicePlanCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_result? get result;
  String? get errorMessage;
  bool? get requireAdditionalAction;
  String? get paymentIntentSecret;
  String? get redirectUrl;
  static Serializer<GCreatePurchaseServicePlanData_createPurchaseServicePlan>
      get serializer =>
          _$gCreatePurchaseServicePlanDataCreatePurchaseServicePlanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePurchaseServicePlanData_createPurchaseServicePlan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePurchaseServicePlanData_createPurchaseServicePlan? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePurchaseServicePlanData_createPurchaseServicePlan.serializer,
        json,
      );
}

abstract class GCreatePurchaseServicePlanData_createPurchaseServicePlan_result
    implements
        Built<GCreatePurchaseServicePlanData_createPurchaseServicePlan_result,
            GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder> {
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_result._();

  factory GCreatePurchaseServicePlanData_createPurchaseServicePlan_result(
          [void Function(
                  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder
                      b)
              updates]) =
      _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result;

  static void _initializeBuilder(
          GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder
              b) =>
      b..G__typename = 'PurchaseServicePlanType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  static Serializer<
          GCreatePurchaseServicePlanData_createPurchaseServicePlan_result>
      get serializer =>
          _$gCreatePurchaseServicePlanDataCreatePurchaseServicePlanResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePurchaseServicePlanData_createPurchaseServicePlan_result
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePurchaseServicePlanData_createPurchaseServicePlan_result?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCreatePurchaseServicePlanData_createPurchaseServicePlan_result
                .serializer,
            json,
          );
}
