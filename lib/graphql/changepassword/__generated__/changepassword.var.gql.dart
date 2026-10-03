// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'changepassword.var.gql.g.dart';

abstract class GchangePasswordVars
    implements Built<GchangePasswordVars, GchangePasswordVarsBuilder> {
  GchangePasswordVars._();

  factory GchangePasswordVars(
          [void Function(GchangePasswordVarsBuilder b) updates]) =
      _$GchangePasswordVars;

  String? get oldPassword;
  String? get newPassword;
  String? get confirmPassword;
  static Serializer<GchangePasswordVars> get serializer =>
      _$gchangePasswordVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchangePasswordVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangePasswordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchangePasswordVars.serializer,
        json,
      );
}
