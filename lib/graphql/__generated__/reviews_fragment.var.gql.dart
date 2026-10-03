// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reviews_fragment.var.gql.g.dart';

abstract class GreviewsFragmentVars
    implements Built<GreviewsFragmentVars, GreviewsFragmentVarsBuilder> {
  GreviewsFragmentVars._();

  factory GreviewsFragmentVars(
          [void Function(GreviewsFragmentVarsBuilder b) updates]) =
      _$GreviewsFragmentVars;

  static Serializer<GreviewsFragmentVars> get serializer =>
      _$greviewsFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreviewsFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreviewsFragmentVars.serializer,
        json,
      );
}
