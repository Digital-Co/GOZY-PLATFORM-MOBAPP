// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getPurchaseServicePlan.var.gql.g.dart';

abstract class GgetPurchaseServicePlanVars
    implements
        Built<GgetPurchaseServicePlanVars, GgetPurchaseServicePlanVarsBuilder> {
  GgetPurchaseServicePlanVars._();

  factory GgetPurchaseServicePlanVars(
          [void Function(GgetPurchaseServicePlanVarsBuilder b) updates]) =
      _$GgetPurchaseServicePlanVars;

  int get id;
  static Serializer<GgetPurchaseServicePlanVars> get serializer =>
      _$ggetPurchaseServicePlanVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPurchaseServicePlanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPurchaseServicePlanVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPurchaseServicePlanVars.serializer,
        json,
      );
}
