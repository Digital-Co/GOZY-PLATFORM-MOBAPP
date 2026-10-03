// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'verify_phone_number.var.gql.g.dart';

abstract class GVerifyPhoneNumberVars
    implements Built<GVerifyPhoneNumberVars, GVerifyPhoneNumberVarsBuilder> {
  GVerifyPhoneNumberVars._();

  factory GVerifyPhoneNumberVars(
          [void Function(GVerifyPhoneNumberVarsBuilder b) updates]) =
      _$GVerifyPhoneNumberVars;

  int get verificationCode;
  static Serializer<GVerifyPhoneNumberVars> get serializer =>
      _$gVerifyPhoneNumberVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVerifyPhoneNumberVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPhoneNumberVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVerifyPhoneNumberVars.serializer,
        json,
      );
}
