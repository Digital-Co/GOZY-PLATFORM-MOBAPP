// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;

part 'submit_checkout.var.gql.g.dart';

abstract class GsubmitCheckoutVars
    implements Built<GsubmitCheckoutVars, GsubmitCheckoutVarsBuilder> {
  GsubmitCheckoutVars._();

  factory GsubmitCheckoutVars(
          [void Function(GsubmitCheckoutVarsBuilder b) updates]) =
      _$GsubmitCheckoutVars;

  int get reservationId;
  bool get hasDamage;
  _i1.GCheckoutInput get input;
  static Serializer<GsubmitCheckoutVars> get serializer =>
      _$gsubmitCheckoutVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GsubmitCheckoutVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GsubmitCheckoutVars.serializer,
        json,
      );
}
