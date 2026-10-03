// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user_profile_fragment.var.gql.g.dart';

abstract class GuserProfileFragmentVars
    implements
        Built<GuserProfileFragmentVars, GuserProfileFragmentVarsBuilder> {
  GuserProfileFragmentVars._();

  factory GuserProfileFragmentVars(
          [void Function(GuserProfileFragmentVarsBuilder b) updates]) =
      _$GuserProfileFragmentVars;

  static Serializer<GuserProfileFragmentVars> get serializer =>
      _$guserProfileFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserProfileFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserProfileFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserProfileFragmentVars.serializer,
        json,
      );
}
