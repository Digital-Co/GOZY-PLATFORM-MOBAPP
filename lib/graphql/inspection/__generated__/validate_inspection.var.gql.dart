// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'validate_inspection.var.gql.g.dart';

abstract class GvalidateInspectionVars
    implements Built<GvalidateInspectionVars, GvalidateInspectionVarsBuilder> {
  GvalidateInspectionVars._();

  factory GvalidateInspectionVars(
          [void Function(GvalidateInspectionVarsBuilder b) updates]) =
      _$GvalidateInspectionVars;

  int get reservationId;
  String get type;
  int get version;
  static Serializer<GvalidateInspectionVars> get serializer =>
      _$gvalidateInspectionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidateInspectionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidateInspectionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidateInspectionVars.serializer,
        json,
      );
}
