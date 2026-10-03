// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_user_fragment.var.gql.g.dart';

abstract class GlistingUserFragmentVars
    implements
        Built<GlistingUserFragmentVars, GlistingUserFragmentVarsBuilder> {
  GlistingUserFragmentVars._();

  factory GlistingUserFragmentVars(
          [void Function(GlistingUserFragmentVarsBuilder b) updates]) =
      _$GlistingUserFragmentVars;

  static Serializer<GlistingUserFragmentVars> get serializer =>
      _$glistingUserFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingUserFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingUserFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingUserFragmentVars.serializer,
        json,
      );
}
