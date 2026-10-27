// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'contest_inspection.var.gql.g.dart';

abstract class GcontestInspectionVars
    implements Built<GcontestInspectionVars, GcontestInspectionVarsBuilder> {
  GcontestInspectionVars._();

  factory GcontestInspectionVars(
          [void Function(GcontestInspectionVarsBuilder b) updates]) =
      _$GcontestInspectionVars;

  int get reservationId;
  String get type;
  String get comment;
  static Serializer<GcontestInspectionVars> get serializer =>
      _$gcontestInspectionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontestInspectionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcontestInspectionVars.serializer,
        json,
      );
}
