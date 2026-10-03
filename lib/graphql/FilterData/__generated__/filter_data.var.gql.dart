// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'filter_data.var.gql.g.dart';

abstract class GgetListingSettingsCommonVars
    implements
        Built<GgetListingSettingsCommonVars,
            GgetListingSettingsCommonVarsBuilder> {
  GgetListingSettingsCommonVars._();

  factory GgetListingSettingsCommonVars(
          [void Function(GgetListingSettingsCommonVarsBuilder b) updates]) =
      _$GgetListingSettingsCommonVars;

  bool? get isValue;
  static Serializer<GgetListingSettingsCommonVars> get serializer =>
      _$ggetListingSettingsCommonVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsCommonVars.serializer,
        json,
      );
}

abstract class GgetListSettingsItemNameVars
    implements
        Built<GgetListSettingsItemNameVars,
            GgetListSettingsItemNameVarsBuilder> {
  GgetListSettingsItemNameVars._();

  factory GgetListSettingsItemNameVars(
          [void Function(GgetListSettingsItemNameVarsBuilder b) updates]) =
      _$GgetListSettingsItemNameVars;

  String? get typeName;
  String? get searchList;
  int? get currentPage;
  int? get makeId;
  static Serializer<GgetListSettingsItemNameVars> get serializer =>
      _$ggetListSettingsItemNameVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListSettingsItemNameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListSettingsItemNameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListSettingsItemNameVars.serializer,
        json,
      );
}
