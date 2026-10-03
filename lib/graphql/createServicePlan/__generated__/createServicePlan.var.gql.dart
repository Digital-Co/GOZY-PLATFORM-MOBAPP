// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'createServicePlan.var.gql.g.dart';

abstract class GCreatePurchaseServicePlanVars
    implements
        Built<GCreatePurchaseServicePlanVars,
            GCreatePurchaseServicePlanVarsBuilder> {
  GCreatePurchaseServicePlanVars._();

  factory GCreatePurchaseServicePlanVars(
          [void Function(GCreatePurchaseServicePlanVarsBuilder b) updates]) =
      _$GCreatePurchaseServicePlanVars;

  int get servicePlanId;
  String get startDate;
  String get endDate;
  int? get paymentType;
  String? get cardToken;
  String? get paymentCurrency;
  static Serializer<GCreatePurchaseServicePlanVars> get serializer =>
      _$gCreatePurchaseServicePlanVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePurchaseServicePlanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePurchaseServicePlanVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePurchaseServicePlanVars.serializer,
        json,
      );
}
