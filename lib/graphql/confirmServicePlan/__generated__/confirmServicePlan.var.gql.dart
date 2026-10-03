// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'confirmServicePlan.var.gql.g.dart';

abstract class GconfirmPurchaseServicePlanVars
    implements
        Built<GconfirmPurchaseServicePlanVars,
            GconfirmPurchaseServicePlanVarsBuilder> {
  GconfirmPurchaseServicePlanVars._();

  factory GconfirmPurchaseServicePlanVars(
          [void Function(GconfirmPurchaseServicePlanVarsBuilder b) updates]) =
      _$GconfirmPurchaseServicePlanVars;

  int get servicePlanId;
  String get paymentIntentId;
  static Serializer<GconfirmPurchaseServicePlanVars> get serializer =>
      _$gconfirmPurchaseServicePlanVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPurchaseServicePlanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPurchaseServicePlanVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPurchaseServicePlanVars.serializer,
        json,
      );
}
