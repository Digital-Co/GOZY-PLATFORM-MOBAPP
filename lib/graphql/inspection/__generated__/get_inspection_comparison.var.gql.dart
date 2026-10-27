// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_inspection_comparison.var.gql.g.dart';

abstract class GgetInspectionComparisonVars
    implements
        Built<GgetInspectionComparisonVars,
            GgetInspectionComparisonVarsBuilder> {
  GgetInspectionComparisonVars._();

  factory GgetInspectionComparisonVars(
          [void Function(GgetInspectionComparisonVarsBuilder b) updates]) =
      _$GgetInspectionComparisonVars;

  int get reservationId;
  static Serializer<GgetInspectionComparisonVars> get serializer =>
      _$ggetInspectionComparisonVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionComparisonVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionComparisonVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionComparisonVars.serializer,
        json,
      );
}
