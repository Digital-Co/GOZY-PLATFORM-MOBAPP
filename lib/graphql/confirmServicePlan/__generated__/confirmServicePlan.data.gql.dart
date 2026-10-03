// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'confirmServicePlan.data.gql.g.dart';

abstract class GconfirmPurchaseServicePlanData
    implements
        Built<GconfirmPurchaseServicePlanData,
            GconfirmPurchaseServicePlanDataBuilder> {
  GconfirmPurchaseServicePlanData._();

  factory GconfirmPurchaseServicePlanData(
          [void Function(GconfirmPurchaseServicePlanDataBuilder b) updates]) =
      _$GconfirmPurchaseServicePlanData;

  static void _initializeBuilder(GconfirmPurchaseServicePlanDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan?
      get confirmPurchaseServicePlan;
  static Serializer<GconfirmPurchaseServicePlanData> get serializer =>
      _$gconfirmPurchaseServicePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPurchaseServicePlanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPurchaseServicePlanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPurchaseServicePlanData.serializer,
        json,
      );
}

abstract class GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan
    implements
        Built<GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan,
            GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder> {
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan._();

  factory GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan(
      [void Function(
              GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder
                  b)
          updates]) = _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan;

  static void _initializeBuilder(
          GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder
              b) =>
      b..G__typename = 'PurchaseServicePlanCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  int? get status;
  String? get errorMessage;
  bool? get requireAdditionalAction;
  String? get paymentIntentSecret;
  String? get redirectUrl;
  static Serializer<GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan>
      get serializer =>
          _$gconfirmPurchaseServicePlanDataConfirmPurchaseServicePlanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan.serializer,
        json,
      );
}
