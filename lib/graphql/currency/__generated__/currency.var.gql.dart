// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'currency.var.gql.g.dart';

abstract class GpriceSettingsVars
    implements Built<GpriceSettingsVars, GpriceSettingsVarsBuilder> {
  GpriceSettingsVars._();

  factory GpriceSettingsVars(
          [void Function(GpriceSettingsVarsBuilder b) updates]) =
      _$GpriceSettingsVars;

  static Serializer<GpriceSettingsVars> get serializer =>
      _$gpriceSettingsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpriceSettingsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpriceSettingsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpriceSettingsVars.serializer,
        json,
      );
}

abstract class GgetCurrenciesListVars
    implements Built<GgetCurrenciesListVars, GgetCurrenciesListVarsBuilder> {
  GgetCurrenciesListVars._();

  factory GgetCurrenciesListVars(
          [void Function(GgetCurrenciesListVarsBuilder b) updates]) =
      _$GgetCurrenciesListVars;

  static Serializer<GgetCurrenciesListVars> get serializer =>
      _$ggetCurrenciesListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrenciesListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrenciesListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrenciesListVars.serializer,
        json,
      );
}

abstract class GgetCurrencyVars
    implements Built<GgetCurrencyVars, GgetCurrencyVarsBuilder> {
  GgetCurrencyVars._();

  factory GgetCurrencyVars([void Function(GgetCurrencyVarsBuilder b) updates]) =
      _$GgetCurrencyVars;

  static Serializer<GgetCurrencyVars> get serializer =>
      _$ggetCurrencyVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrencyVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrencyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrencyVars.serializer,
        json,
      );
}

abstract class GgetVersionVars
    implements Built<GgetVersionVars, GgetVersionVarsBuilder> {
  GgetVersionVars._();

  factory GgetVersionVars([void Function(GgetVersionVarsBuilder b) updates]) =
      _$GgetVersionVars;

  String get appType;
  String get version;
  static Serializer<GgetVersionVars> get serializer =>
      _$ggetVersionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetVersionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetVersionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetVersionVars.serializer,
        json,
      );
}
