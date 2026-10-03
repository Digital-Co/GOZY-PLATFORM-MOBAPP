// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'validate_promo_code.var.gql.g.dart';

abstract class GvalidatePromoCodeVars
    implements Built<GvalidatePromoCodeVars, GvalidatePromoCodeVarsBuilder> {
  GvalidatePromoCodeVars._();

  factory GvalidatePromoCodeVars(
          [void Function(GvalidatePromoCodeVarsBuilder b) updates]) =
      _$GvalidatePromoCodeVars;

  String get code;
  static Serializer<GvalidatePromoCodeVars> get serializer =>
      _$gvalidatePromoCodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidatePromoCodeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidatePromoCodeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidatePromoCodeVars.serializer,
        json,
      );
}
