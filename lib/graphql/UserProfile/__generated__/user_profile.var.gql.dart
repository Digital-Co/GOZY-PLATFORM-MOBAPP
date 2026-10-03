// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user_profile.var.gql.g.dart';

abstract class GuserUpdateVars
    implements Built<GuserUpdateVars, GuserUpdateVarsBuilder> {
  GuserUpdateVars._();

  factory GuserUpdateVars([void Function(GuserUpdateVarsBuilder b) updates]) =
      _$GuserUpdateVars;

  String get userId;
  String get fieldName;
  String? get fieldValue;
  String get deviceType;
  String get deviceId;
  static Serializer<GuserUpdateVars> get serializer =>
      _$guserUpdateVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserUpdateVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserUpdateVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserUpdateVars.serializer,
        json,
      );
}

abstract class GSendConfirmEmailVars
    implements Built<GSendConfirmEmailVars, GSendConfirmEmailVarsBuilder> {
  GSendConfirmEmailVars._();

  factory GSendConfirmEmailVars(
          [void Function(GSendConfirmEmailVarsBuilder b) updates]) =
      _$GSendConfirmEmailVars;

  static Serializer<GSendConfirmEmailVars> get serializer =>
      _$gSendConfirmEmailVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendConfirmEmailVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendConfirmEmailVars.serializer,
        json,
      );
}

abstract class GCodeVerificationVars
    implements Built<GCodeVerificationVars, GCodeVerificationVarsBuilder> {
  GCodeVerificationVars._();

  factory GCodeVerificationVars(
          [void Function(GCodeVerificationVarsBuilder b) updates]) =
      _$GCodeVerificationVars;

  String get token;
  String get email;
  static Serializer<GCodeVerificationVars> get serializer =>
      _$gCodeVerificationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCodeVerificationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCodeVerificationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCodeVerificationVars.serializer,
        json,
      );
}

abstract class GSocialLoginVerifyVars
    implements Built<GSocialLoginVerifyVars, GSocialLoginVerifyVarsBuilder> {
  GSocialLoginVerifyVars._();

  factory GSocialLoginVerifyVars(
          [void Function(GSocialLoginVerifyVarsBuilder b) updates]) =
      _$GSocialLoginVerifyVars;

  String get verificationType;
  String get actionType;
  static Serializer<GSocialLoginVerifyVars> get serializer =>
      _$gSocialLoginVerifyVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginVerifyVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginVerifyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginVerifyVars.serializer,
        json,
      );
}

abstract class GshowUserProfileVars
    implements Built<GshowUserProfileVars, GshowUserProfileVarsBuilder> {
  GshowUserProfileVars._();

  factory GshowUserProfileVars(
          [void Function(GshowUserProfileVarsBuilder b) updates]) =
      _$GshowUserProfileVars;

  int? get profileId;
  bool? get isUser;
  static Serializer<GshowUserProfileVars> get serializer =>
      _$gshowUserProfileVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GshowUserProfileVars.serializer,
        json,
      );
}

abstract class GuserAccountVars
    implements Built<GuserAccountVars, GuserAccountVarsBuilder> {
  GuserAccountVars._();

  factory GuserAccountVars([void Function(GuserAccountVarsBuilder b) updates]) =
      _$GuserAccountVars;

  static Serializer<GuserAccountVars> get serializer =>
      _$guserAccountVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserAccountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserAccountVars.serializer,
        json,
      );
}
