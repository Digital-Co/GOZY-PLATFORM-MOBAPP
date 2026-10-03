// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user_verified_info_fragment.var.gql.g.dart';

abstract class GuserVerifiedInfoFragmentVars
    implements
        Built<GuserVerifiedInfoFragmentVars,
            GuserVerifiedInfoFragmentVarsBuilder> {
  GuserVerifiedInfoFragmentVars._();

  factory GuserVerifiedInfoFragmentVars(
          [void Function(GuserVerifiedInfoFragmentVarsBuilder b) updates]) =
      _$GuserVerifiedInfoFragmentVars;

  static Serializer<GuserVerifiedInfoFragmentVars> get serializer =>
      _$guserVerifiedInfoFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserVerifiedInfoFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserVerifiedInfoFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserVerifiedInfoFragmentVars.serializer,
        json,
      );
}
