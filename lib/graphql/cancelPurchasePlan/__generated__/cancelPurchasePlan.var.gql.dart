// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'cancelPurchasePlan.var.gql.g.dart';

abstract class GcancelPurchasePlanVars
    implements Built<GcancelPurchasePlanVars, GcancelPurchasePlanVarsBuilder> {
  GcancelPurchasePlanVars._();

  factory GcancelPurchasePlanVars(
          [void Function(GcancelPurchasePlanVarsBuilder b) updates]) =
      _$GcancelPurchasePlanVars;

  int get id;
  static Serializer<GcancelPurchasePlanVars> get serializer =>
      _$gcancelPurchasePlanVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancelPurchasePlanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancelPurchasePlanVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancelPurchasePlanVars.serializer,
        json,
      );
}
