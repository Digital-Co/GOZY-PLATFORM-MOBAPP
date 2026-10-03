// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user_auth.var.gql.g.dart';

abstract class GLoginVars implements Built<GLoginVars, GLoginVarsBuilder> {
  GLoginVars._();

  factory GLoginVars([void Function(GLoginVarsBuilder b) updates]) =
      _$GLoginVars;

  String get email;
  String get password;
  String get deviceType;
  String? get deviceDetail;
  String get deviceId;
  static Serializer<GLoginVars> get serializer => _$gLoginVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginVars.serializer,
        json,
      );
}

abstract class GSignupVars implements Built<GSignupVars, GSignupVarsBuilder> {
  GSignupVars._();

  factory GSignupVars([void Function(GSignupVarsBuilder b) updates]) =
      _$GSignupVars;

  String? get firstName;
  String? get lastName;
  String get email;
  String get password;
  String? get dateOfBirth;
  String get deviceType;
  String? get deviceDetail;
  String get deviceId;
  String? get registerType;
  static Serializer<GSignupVars> get serializer => _$gSignupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupVars.serializer,
        json,
      );
}

abstract class GSocialLoginVars
    implements Built<GSocialLoginVars, GSocialLoginVarsBuilder> {
  GSocialLoginVars._();

  factory GSocialLoginVars([void Function(GSocialLoginVarsBuilder b) updates]) =
      _$GSocialLoginVars;

  String? get firstName;
  String? get lastName;
  String get email;
  String? get dateOfBirth;
  String get deviceType;
  String? get deviceDetail;
  String get deviceId;
  String? get registerType;
  String? get gender;
  String? get profilePicture;
  static Serializer<GSocialLoginVars> get serializer =>
      _$gSocialLoginVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginVars.serializer,
        json,
      );
}

abstract class GLogoutVars implements Built<GLogoutVars, GLogoutVarsBuilder> {
  GLogoutVars._();

  factory GLogoutVars([void Function(GLogoutVarsBuilder b) updates]) =
      _$GLogoutVars;

  String get deviceType;
  String get deviceId;
  static Serializer<GLogoutVars> get serializer => _$gLogoutVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLogoutVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLogoutVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLogoutVars.serializer,
        json,
      );
}

abstract class GForgotPasswordVars
    implements Built<GForgotPasswordVars, GForgotPasswordVarsBuilder> {
  GForgotPasswordVars._();

  factory GForgotPasswordVars(
          [void Function(GForgotPasswordVarsBuilder b) updates]) =
      _$GForgotPasswordVars;

  String get email;
  static Serializer<GForgotPasswordVars> get serializer =>
      _$gForgotPasswordVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgotPasswordVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgotPasswordVars.serializer,
        json,
      );
}

abstract class GForgotPasswordVerificationVars
    implements
        Built<GForgotPasswordVerificationVars,
            GForgotPasswordVerificationVarsBuilder> {
  GForgotPasswordVerificationVars._();

  factory GForgotPasswordVerificationVars(
          [void Function(GForgotPasswordVerificationVarsBuilder b) updates]) =
      _$GForgotPasswordVerificationVars;

  String get email;
  String get token;
  static Serializer<GForgotPasswordVerificationVars> get serializer =>
      _$gForgotPasswordVerificationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgotPasswordVerificationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordVerificationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgotPasswordVerificationVars.serializer,
        json,
      );
}

abstract class GResetPasswordVars
    implements Built<GResetPasswordVars, GResetPasswordVarsBuilder> {
  GResetPasswordVars._();

  factory GResetPasswordVars(
          [void Function(GResetPasswordVarsBuilder b) updates]) =
      _$GResetPasswordVars;

  String get email;
  String get password;
  String get token;
  static Serializer<GResetPasswordVars> get serializer =>
      _$gResetPasswordVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPasswordVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPasswordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPasswordVars.serializer,
        json,
      );
}

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
