// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'secure_site_settings.data.gql.g.dart';

abstract class GgetSecureSiteSettingsData
    implements
        Built<GgetSecureSiteSettingsData, GgetSecureSiteSettingsDataBuilder> {
  GgetSecureSiteSettingsData._();

  factory GgetSecureSiteSettingsData(
          [void Function(GgetSecureSiteSettingsDataBuilder b) updates]) =
      _$GgetSecureSiteSettingsData;

  static void _initializeBuilder(GgetSecureSiteSettingsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetSecureSiteSettingsData_getSecureSiteSettings? get getSecureSiteSettings;
  static Serializer<GgetSecureSiteSettingsData> get serializer =>
      _$ggetSecureSiteSettingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSecureSiteSettingsData.serializer,
        json,
      );
}

abstract class GgetSecureSiteSettingsData_getSecureSiteSettings
    implements
        Built<GgetSecureSiteSettingsData_getSecureSiteSettings,
            GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder> {
  GgetSecureSiteSettingsData_getSecureSiteSettings._();

  factory GgetSecureSiteSettingsData_getSecureSiteSettings(
      [void Function(GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder b)
          updates]) = _$GgetSecureSiteSettingsData_getSecureSiteSettings;

  static void _initializeBuilder(
          GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder b) =>
      b..G__typename = 'SiteSettingsCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  BuiltList<GgetSecureSiteSettingsData_getSecureSiteSettings_results?>?
      get results;
  BuiltList<GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?>?
      get mobileLanguage;
  BuiltList<GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?>?
      get travelReasons;
  BuiltList<GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?>?
      get targetedGuests;
  static Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings>
      get serializer =>
          _$ggetSecureSiteSettingsDataGetSecureSiteSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsData_getSecureSiteSettings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings.serializer,
        json,
      );
}

abstract class GgetSecureSiteSettingsData_getSecureSiteSettings_results
    implements
        Built<GgetSecureSiteSettingsData_getSecureSiteSettings_results,
            GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder> {
  GgetSecureSiteSettingsData_getSecureSiteSettings_results._();

  factory GgetSecureSiteSettingsData_getSecureSiteSettings_results(
      [void Function(
              GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder b)
          updates]) = _$GgetSecureSiteSettingsData_getSecureSiteSettings_results;

  static void _initializeBuilder(
          GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder b) =>
      b..G__typename = 'SiteSettings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get title;
  String? get name;
  String? get value;
  String? get type;
  String? get status;
  static Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings_results>
      get serializer =>
          _$ggetSecureSiteSettingsDataGetSecureSiteSettingsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsData_getSecureSiteSettings_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings_results.serializer,
        json,
      );
}

abstract class GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage
    implements
        Built<GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage,
            GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder> {
  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage._();

  factory GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder
                      b)
              updates]) =
      _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage;

  static void _initializeBuilder(
          GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder
              b) =>
      b..G__typename = 'MobileLanguageType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get language;
  String? get languageCode;
  bool? get isActive;
  bool? get isEnable;
  String? get jsonFile;
  static Serializer<
          GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage>
      get serializer =>
          _$ggetSecureSiteSettingsDataGetSecureSiteSettingsMobileLanguageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage
                .serializer,
            json,
          );
}

abstract class GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons
    implements
        Built<GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons,
            GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder> {
  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons._();

  factory GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder
                      b)
              updates]) =
      _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons;

  static void _initializeBuilder(
          GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder
              b) =>
      b..G__typename = 'TravelReasonsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get label;
  String? get value;
  static Serializer<
          GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons>
      get serializer =>
          _$ggetSecureSiteSettingsDataGetSecureSiteSettingsTravelReasonsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons
                .serializer,
            json,
          );
}

abstract class GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests
    implements
        Built<GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests,
            GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder> {
  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests._();

  factory GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder
                      b)
              updates]) =
      _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests;

  static void _initializeBuilder(
          GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder
              b) =>
      b..G__typename = 'TargetedGuestType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get label;
  String? get value;
  static Serializer<
          GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests>
      get serializer =>
          _$ggetSecureSiteSettingsDataGetSecureSiteSettingsTargetedGuestsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests
                .serializer,
            json,
          );
}

abstract class GgetImageBannerData
    implements Built<GgetImageBannerData, GgetImageBannerDataBuilder> {
  GgetImageBannerData._();

  factory GgetImageBannerData(
          [void Function(GgetImageBannerDataBuilder b) updates]) =
      _$GgetImageBannerData;

  static void _initializeBuilder(GgetImageBannerDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetImageBannerData_getImageBanner? get getImageBanner;
  static Serializer<GgetImageBannerData> get serializer =>
      _$ggetImageBannerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageBannerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageBannerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageBannerData.serializer,
        json,
      );
}

abstract class GgetImageBannerData_getImageBanner
    implements
        Built<GgetImageBannerData_getImageBanner,
            GgetImageBannerData_getImageBannerBuilder> {
  GgetImageBannerData_getImageBanner._();

  factory GgetImageBannerData_getImageBanner(
      [void Function(GgetImageBannerData_getImageBannerBuilder b)
          updates]) = _$GgetImageBannerData_getImageBanner;

  static void _initializeBuilder(GgetImageBannerData_getImageBannerBuilder b) =>
      b..G__typename = 'ImageBannerType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetImageBannerData_getImageBanner_result? get result;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetImageBannerData_getImageBanner> get serializer =>
      _$ggetImageBannerDataGetImageBannerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageBannerData_getImageBanner.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageBannerData_getImageBanner? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageBannerData_getImageBanner.serializer,
        json,
      );
}

abstract class GgetImageBannerData_getImageBanner_result
    implements
        Built<GgetImageBannerData_getImageBanner_result,
            GgetImageBannerData_getImageBanner_resultBuilder> {
  GgetImageBannerData_getImageBanner_result._();

  factory GgetImageBannerData_getImageBanner_result(
      [void Function(GgetImageBannerData_getImageBanner_resultBuilder b)
          updates]) = _$GgetImageBannerData_getImageBanner_result;

  static void _initializeBuilder(
          GgetImageBannerData_getImageBanner_resultBuilder b) =>
      b..G__typename = 'ImageBanner';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get title;
  String? get description;
  String? get buttonLabel;
  String? get image;
  static Serializer<GgetImageBannerData_getImageBanner_result> get serializer =>
      _$ggetImageBannerDataGetImageBannerResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageBannerData_getImageBanner_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageBannerData_getImageBanner_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageBannerData_getImageBanner_result.serializer,
        json,
      );
}
