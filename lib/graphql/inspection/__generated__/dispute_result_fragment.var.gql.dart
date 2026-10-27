// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'dispute_result_fragment.var.gql.g.dart';

abstract class GdisputeResultFragmentVars
    implements
        Built<GdisputeResultFragmentVars, GdisputeResultFragmentVarsBuilder> {
  GdisputeResultFragmentVars._();

  factory GdisputeResultFragmentVars(
          [void Function(GdisputeResultFragmentVarsBuilder b) updates]) =
      _$GdisputeResultFragmentVars;

  static Serializer<GdisputeResultFragmentVars> get serializer =>
      _$gdisputeResultFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisputeResultFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisputeResultFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisputeResultFragmentVars.serializer,
        json,
      );
}
