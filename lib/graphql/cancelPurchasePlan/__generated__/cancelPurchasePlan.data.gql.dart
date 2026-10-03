// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'cancelPurchasePlan.data.gql.g.dart';

abstract class GcancelPurchasePlanData
    implements Built<GcancelPurchasePlanData, GcancelPurchasePlanDataBuilder> {
  GcancelPurchasePlanData._();

  factory GcancelPurchasePlanData(
          [void Function(GcancelPurchasePlanDataBuilder b) updates]) =
      _$GcancelPurchasePlanData;

  static void _initializeBuilder(GcancelPurchasePlanDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcancelPurchasePlanData_cancelPurchasePlan? get cancelPurchasePlan;
  static Serializer<GcancelPurchasePlanData> get serializer =>
      _$gcancelPurchasePlanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancelPurchasePlanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancelPurchasePlanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancelPurchasePlanData.serializer,
        json,
      );
}

abstract class GcancelPurchasePlanData_cancelPurchasePlan
    implements
        Built<GcancelPurchasePlanData_cancelPurchasePlan,
            GcancelPurchasePlanData_cancelPurchasePlanBuilder> {
  GcancelPurchasePlanData_cancelPurchasePlan._();

  factory GcancelPurchasePlanData_cancelPurchasePlan(
      [void Function(GcancelPurchasePlanData_cancelPurchasePlanBuilder b)
          updates]) = _$GcancelPurchasePlanData_cancelPurchasePlan;

  static void _initializeBuilder(
          GcancelPurchasePlanData_cancelPurchasePlanBuilder b) =>
      b..G__typename = 'PurchaseServicePlanCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GcancelPurchasePlanData_cancelPurchasePlan>
      get serializer => _$gcancelPurchasePlanDataCancelPurchasePlanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancelPurchasePlanData_cancelPurchasePlan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancelPurchasePlanData_cancelPurchasePlan? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancelPurchasePlanData_cancelPurchasePlan.serializer,
        json,
      );
}
