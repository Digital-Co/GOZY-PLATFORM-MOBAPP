// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'layout_settings.data.gql.g.dart';

abstract class GgetLayoutSettingsData
    implements Built<GgetLayoutSettingsData, GgetLayoutSettingsDataBuilder> {
  GgetLayoutSettingsData._();

  factory GgetLayoutSettingsData(
          [void Function(GgetLayoutSettingsDataBuilder b) updates]) =
      _$GgetLayoutSettingsData;

  static void _initializeBuilder(GgetLayoutSettingsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetLayoutSettingsData_getLayoutSettings? get getLayoutSettings;
  static Serializer<GgetLayoutSettingsData> get serializer =>
      _$ggetLayoutSettingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetLayoutSettingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetLayoutSettingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetLayoutSettingsData.serializer,
        json,
      );
}

abstract class GgetLayoutSettingsData_getLayoutSettings
    implements
        Built<GgetLayoutSettingsData_getLayoutSettings,
            GgetLayoutSettingsData_getLayoutSettingsBuilder> {
  GgetLayoutSettingsData_getLayoutSettings._();

  factory GgetLayoutSettingsData_getLayoutSettings(
      [void Function(GgetLayoutSettingsData_getLayoutSettingsBuilder b)
          updates]) = _$GgetLayoutSettingsData_getLayoutSettings;

  static void _initializeBuilder(
          GgetLayoutSettingsData_getLayoutSettingsBuilder b) =>
      b..G__typename = 'LayoutSettingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  GgetLayoutSettingsData_getLayoutSettings_result? get result;
  static Serializer<GgetLayoutSettingsData_getLayoutSettings> get serializer =>
      _$ggetLayoutSettingsDataGetLayoutSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetLayoutSettingsData_getLayoutSettings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetLayoutSettingsData_getLayoutSettings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetLayoutSettingsData_getLayoutSettings.serializer,
        json,
      );
}

abstract class GgetLayoutSettingsData_getLayoutSettings_result
    implements
        Built<GgetLayoutSettingsData_getLayoutSettings_result,
            GgetLayoutSettingsData_getLayoutSettings_resultBuilder> {
  GgetLayoutSettingsData_getLayoutSettings_result._();

  factory GgetLayoutSettingsData_getLayoutSettings_result(
      [void Function(GgetLayoutSettingsData_getLayoutSettings_resultBuilder b)
          updates]) = _$GgetLayoutSettingsData_getLayoutSettings_result;

  static void _initializeBuilder(
          GgetLayoutSettingsData_getLayoutSettings_resultBuilder b) =>
      b..G__typename = 'themePage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetLayoutSettingsData_getLayoutSettings_result_theme?>? get theme;
  BuiltList<GgetLayoutSettingsData_getLayoutSettings_result_explore?>?
      get explore;
  static Serializer<GgetLayoutSettingsData_getLayoutSettings_result>
      get serializer =>
          _$ggetLayoutSettingsDataGetLayoutSettingsResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetLayoutSettingsData_getLayoutSettings_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetLayoutSettingsData_getLayoutSettings_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetLayoutSettingsData_getLayoutSettings_result.serializer,
        json,
      );
}

abstract class GgetLayoutSettingsData_getLayoutSettings_result_theme
    implements
        Built<GgetLayoutSettingsData_getLayoutSettings_result_theme,
            GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder> {
  GgetLayoutSettingsData_getLayoutSettings_result_theme._();

  factory GgetLayoutSettingsData_getLayoutSettings_result_theme(
      [void Function(
              GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder b)
          updates]) = _$GgetLayoutSettingsData_getLayoutSettings_result_theme;

  static void _initializeBuilder(
          GgetLayoutSettingsData_getLayoutSettings_result_themeBuilder b) =>
      b..G__typename = 'LayoutSettings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  int? get themeType;
  int? get orderType;
  bool? get isEnable;
  static Serializer<GgetLayoutSettingsData_getLayoutSettings_result_theme>
      get serializer =>
          _$ggetLayoutSettingsDataGetLayoutSettingsResultThemeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetLayoutSettingsData_getLayoutSettings_result_theme.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetLayoutSettingsData_getLayoutSettings_result_theme? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetLayoutSettingsData_getLayoutSettings_result_theme.serializer,
        json,
      );
}

abstract class GgetLayoutSettingsData_getLayoutSettings_result_explore
    implements
        Built<GgetLayoutSettingsData_getLayoutSettings_result_explore,
            GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder> {
  GgetLayoutSettingsData_getLayoutSettings_result_explore._();

  factory GgetLayoutSettingsData_getLayoutSettings_result_explore(
      [void Function(
              GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder b)
          updates]) = _$GgetLayoutSettingsData_getLayoutSettings_result_explore;

  static void _initializeBuilder(
          GgetLayoutSettingsData_getLayoutSettings_result_exploreBuilder b) =>
      b..G__typename = 'LayoutSettings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  int? get themeType;
  int? get orderType;
  bool? get isEnable;
  static Serializer<GgetLayoutSettingsData_getLayoutSettings_result_explore>
      get serializer =>
          _$ggetLayoutSettingsDataGetLayoutSettingsResultExploreSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetLayoutSettingsData_getLayoutSettings_result_explore.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetLayoutSettingsData_getLayoutSettings_result_explore? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetLayoutSettingsData_getLayoutSettings_result_explore.serializer,
        json,
      );
}
