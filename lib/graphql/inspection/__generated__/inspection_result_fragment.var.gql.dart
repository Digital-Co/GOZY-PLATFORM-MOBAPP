// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'inspection_result_fragment.var.gql.g.dart';

abstract class GinspectionResultFragmentVars
    implements
        Built<GinspectionResultFragmentVars,
            GinspectionResultFragmentVarsBuilder> {
  GinspectionResultFragmentVars._();

  factory GinspectionResultFragmentVars(
          [void Function(GinspectionResultFragmentVarsBuilder b) updates]) =
      _$GinspectionResultFragmentVars;

  static Serializer<GinspectionResultFragmentVars> get serializer =>
      _$ginspectionResultFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinspectionResultFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionResultFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinspectionResultFragmentVars.serializer,
        json,
      );
}
