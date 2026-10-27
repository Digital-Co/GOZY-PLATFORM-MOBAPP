// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'inspection_photo_fragment.var.gql.g.dart';

abstract class GinspectionPhotoFragmentVars
    implements
        Built<GinspectionPhotoFragmentVars,
            GinspectionPhotoFragmentVarsBuilder> {
  GinspectionPhotoFragmentVars._();

  factory GinspectionPhotoFragmentVars(
          [void Function(GinspectionPhotoFragmentVarsBuilder b) updates]) =
      _$GinspectionPhotoFragmentVars;

  static Serializer<GinspectionPhotoFragmentVars> get serializer =>
      _$ginspectionPhotoFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinspectionPhotoFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionPhotoFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinspectionPhotoFragmentVars.serializer,
        json,
      );
}
