// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_option_fragment.var.gql.g.dart';

abstract class GlistingOptionFragmentVars
    implements
        Built<GlistingOptionFragmentVars, GlistingOptionFragmentVarsBuilder> {
  GlistingOptionFragmentVars._();

  factory GlistingOptionFragmentVars(
          [void Function(GlistingOptionFragmentVarsBuilder b) updates]) =
      _$GlistingOptionFragmentVars;

  static Serializer<GlistingOptionFragmentVars> get serializer =>
      _$glistingOptionFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionFragmentVars.serializer,
        json,
      );
}
