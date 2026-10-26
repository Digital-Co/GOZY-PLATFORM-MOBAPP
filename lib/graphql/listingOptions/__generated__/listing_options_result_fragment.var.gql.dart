// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_options_result_fragment.var.gql.g.dart';

abstract class GlistingOptionsResultFragmentVars
    implements
        Built<GlistingOptionsResultFragmentVars,
            GlistingOptionsResultFragmentVarsBuilder> {
  GlistingOptionsResultFragmentVars._();

  factory GlistingOptionsResultFragmentVars(
          [void Function(GlistingOptionsResultFragmentVarsBuilder b) updates]) =
      _$GlistingOptionsResultFragmentVars;

  static Serializer<GlistingOptionsResultFragmentVars> get serializer =>
      _$glistingOptionsResultFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionsResultFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionsResultFragmentVars.serializer,
        json,
      );
}
