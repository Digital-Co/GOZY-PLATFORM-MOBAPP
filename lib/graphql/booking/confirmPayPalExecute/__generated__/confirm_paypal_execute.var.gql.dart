// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'confirm_paypal_execute.var.gql.g.dart';

abstract class GconfirmPayPalExecuteVars
    implements
        Built<GconfirmPayPalExecuteVars, GconfirmPayPalExecuteVarsBuilder> {
  GconfirmPayPalExecuteVars._();

  factory GconfirmPayPalExecuteVars(
          [void Function(GconfirmPayPalExecuteVarsBuilder b) updates]) =
      _$GconfirmPayPalExecuteVars;

  String get paymentId;
  String get payerId;
  bool? get isServicePlan;
  String? get userType;
  static Serializer<GconfirmPayPalExecuteVars> get serializer =>
      _$gconfirmPayPalExecuteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmPayPalExecuteVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPayPalExecuteVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmPayPalExecuteVars.serializer,
        json,
      );
}
