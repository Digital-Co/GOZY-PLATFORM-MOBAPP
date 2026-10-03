// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'layout_settings.var.gql.g.dart';

abstract class GgetLayoutSettingsVars
    implements Built<GgetLayoutSettingsVars, GgetLayoutSettingsVarsBuilder> {
  GgetLayoutSettingsVars._();

  factory GgetLayoutSettingsVars(
          [void Function(GgetLayoutSettingsVarsBuilder b) updates]) =
      _$GgetLayoutSettingsVars;

  static Serializer<GgetLayoutSettingsVars> get serializer =>
      _$ggetLayoutSettingsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetLayoutSettingsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetLayoutSettingsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetLayoutSettingsVars.serializer,
        json,
      );
}
