// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getListingSettings.var.gql.g.dart';

abstract class GgetListingSettingsVars
    implements Built<GgetListingSettingsVars, GgetListingSettingsVarsBuilder> {
  GgetListingSettingsVars._();

  factory GgetListingSettingsVars(
          [void Function(GgetListingSettingsVarsBuilder b) updates]) =
      _$GgetListingSettingsVars;

  static Serializer<GgetListingSettingsVars> get serializer =>
      _$ggetListingSettingsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsVars.serializer,
        json,
      );
}

abstract class GgetStep1ListingDetailsVars
    implements
        Built<GgetStep1ListingDetailsVars, GgetStep1ListingDetailsVarsBuilder> {
  GgetStep1ListingDetailsVars._();

  factory GgetStep1ListingDetailsVars(
          [void Function(GgetStep1ListingDetailsVarsBuilder b) updates]) =
      _$GgetStep1ListingDetailsVars;

  int get listId;
  bool? get preview;
  static Serializer<GgetStep1ListingDetailsVars> get serializer =>
      _$ggetStep1ListingDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStep1ListingDetailsVars.serializer,
        json,
      );
}
