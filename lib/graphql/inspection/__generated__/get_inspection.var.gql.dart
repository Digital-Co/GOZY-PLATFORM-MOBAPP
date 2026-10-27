// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_inspection.var.gql.g.dart';

abstract class GgetInspectionVars
    implements Built<GgetInspectionVars, GgetInspectionVarsBuilder> {
  GgetInspectionVars._();

  factory GgetInspectionVars(
          [void Function(GgetInspectionVarsBuilder b) updates]) =
      _$GgetInspectionVars;

  int get reservationId;
  String get type;
  static Serializer<GgetInspectionVars> get serializer =>
      _$ggetInspectionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionVars.serializer,
        json,
      );
}
