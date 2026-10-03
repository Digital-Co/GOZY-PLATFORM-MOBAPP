// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'deleteUser.var.gql.g.dart';

abstract class GdeleteUserVars
    implements Built<GdeleteUserVars, GdeleteUserVarsBuilder> {
  GdeleteUserVars._();

  factory GdeleteUserVars([void Function(GdeleteUserVarsBuilder b) updates]) =
      _$GdeleteUserVars;

  static Serializer<GdeleteUserVars> get serializer =>
      _$gdeleteUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserVars.serializer,
        json,
      );
}
