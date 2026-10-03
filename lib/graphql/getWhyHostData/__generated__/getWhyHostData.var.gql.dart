// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getWhyHostData.var.gql.g.dart';

abstract class GgetWhyHostDataVars
    implements Built<GgetWhyHostDataVars, GgetWhyHostDataVarsBuilder> {
  GgetWhyHostDataVars._();

  factory GgetWhyHostDataVars(
          [void Function(GgetWhyHostDataVarsBuilder b) updates]) =
      _$GgetWhyHostDataVars;

  static Serializer<GgetWhyHostDataVars> get serializer =>
      _$ggetWhyHostDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWhyHostDataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWhyHostDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWhyHostDataVars.serializer,
        json,
      );
}
