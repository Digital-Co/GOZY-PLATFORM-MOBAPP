// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'inspection_fragment.var.gql.g.dart';

abstract class GinspectionFragmentVars
    implements Built<GinspectionFragmentVars, GinspectionFragmentVarsBuilder> {
  GinspectionFragmentVars._();

  factory GinspectionFragmentVars(
          [void Function(GinspectionFragmentVarsBuilder b) updates]) =
      _$GinspectionFragmentVars;

  static Serializer<GinspectionFragmentVars> get serializer =>
      _$ginspectionFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinspectionFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinspectionFragmentVars.serializer,
        json,
      );
}
