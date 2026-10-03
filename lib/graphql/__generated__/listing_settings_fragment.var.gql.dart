// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_settings_fragment.var.gql.g.dart';

abstract class GlistingSettingsFragmentVars
    implements
        Built<GlistingSettingsFragmentVars,
            GlistingSettingsFragmentVarsBuilder> {
  GlistingSettingsFragmentVars._();

  factory GlistingSettingsFragmentVars(
          [void Function(GlistingSettingsFragmentVarsBuilder b) updates]) =
      _$GlistingSettingsFragmentVars;

  static Serializer<GlistingSettingsFragmentVars> get serializer =>
      _$glistingSettingsFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingSettingsFragmentVars.serializer,
        json,
      );
}

abstract class GcancellationFragmentVars
    implements
        Built<GcancellationFragmentVars, GcancellationFragmentVarsBuilder> {
  GcancellationFragmentVars._();

  factory GcancellationFragmentVars(
          [void Function(GcancellationFragmentVarsBuilder b) updates]) =
      _$GcancellationFragmentVars;

  static Serializer<GcancellationFragmentVars> get serializer =>
      _$gcancellationFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancellationFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancellationFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancellationFragmentVars.serializer,
        json,
      );
}

abstract class GavailabilityFragmentVars
    implements
        Built<GavailabilityFragmentVars, GavailabilityFragmentVarsBuilder> {
  GavailabilityFragmentVars._();

  factory GavailabilityFragmentVars(
          [void Function(GavailabilityFragmentVarsBuilder b) updates]) =
      _$GavailabilityFragmentVars;

  static Serializer<GavailabilityFragmentVars> get serializer =>
      _$gavailabilityFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GavailabilityFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GavailabilityFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GavailabilityFragmentVars.serializer,
        json,
      );
}

abstract class GlistingSettingsTypesFragmentVars
    implements
        Built<GlistingSettingsTypesFragmentVars,
            GlistingSettingsTypesFragmentVarsBuilder> {
  GlistingSettingsTypesFragmentVars._();

  factory GlistingSettingsTypesFragmentVars(
          [void Function(GlistingSettingsTypesFragmentVarsBuilder b) updates]) =
      _$GlistingSettingsTypesFragmentVars;

  static Serializer<GlistingSettingsTypesFragmentVars> get serializer =>
      _$glistingSettingsTypesFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsTypesFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsTypesFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingSettingsTypesFragmentVars.serializer,
        json,
      );
}
