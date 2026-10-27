// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_checklist.var.gql.g.dart';

abstract class GgetChecklistVars
    implements Built<GgetChecklistVars, GgetChecklistVarsBuilder> {
  GgetChecklistVars._();

  factory GgetChecklistVars(
          [void Function(GgetChecklistVarsBuilder b) updates]) =
      _$GgetChecklistVars;

  int get reservationId;
  static Serializer<GgetChecklistVars> get serializer =>
      _$ggetChecklistVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetChecklistVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetChecklistVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetChecklistVars.serializer,
        json,
      );
}
