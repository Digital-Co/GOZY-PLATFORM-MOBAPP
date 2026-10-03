// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'secure_site_settings.var.gql.g.dart';

abstract class GgetSecureSiteSettingsVars
    implements
        Built<GgetSecureSiteSettingsVars, GgetSecureSiteSettingsVarsBuilder> {
  GgetSecureSiteSettingsVars._();

  factory GgetSecureSiteSettingsVars(
          [void Function(GgetSecureSiteSettingsVarsBuilder b) updates]) =
      _$GgetSecureSiteSettingsVars;

  String? get settingsType;
  String get securityKey;
  String? get appType;
  bool? get isFormDropDown;
  static Serializer<GgetSecureSiteSettingsVars> get serializer =>
      _$ggetSecureSiteSettingsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSecureSiteSettingsVars.serializer,
        json,
      );
}

abstract class GgetImageBannerVars
    implements Built<GgetImageBannerVars, GgetImageBannerVarsBuilder> {
  GgetImageBannerVars._();

  factory GgetImageBannerVars(
          [void Function(GgetImageBannerVarsBuilder b) updates]) =
      _$GgetImageBannerVars;

  static Serializer<GgetImageBannerVars> get serializer =>
      _$ggetImageBannerVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageBannerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageBannerVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageBannerVars.serializer,
        json,
      );
}
