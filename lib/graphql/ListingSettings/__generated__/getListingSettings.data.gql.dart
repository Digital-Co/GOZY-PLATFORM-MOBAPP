// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/listing_settings_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getListingSettings.data.gql.g.dart';

abstract class GgetListingSettingsData
    implements Built<GgetListingSettingsData, GgetListingSettingsDataBuilder> {
  GgetListingSettingsData._();

  factory GgetListingSettingsData(
          [void Function(GgetListingSettingsDataBuilder b) updates]) =
      _$GgetListingSettingsData;

  static void _initializeBuilder(GgetListingSettingsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetListingSettingsData_getListingSettings? get getListingSettings;
  static Serializer<GgetListingSettingsData> get serializer =>
      _$ggetListingSettingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings
    implements
        Built<GgetListingSettingsData_getListingSettings,
            GgetListingSettingsData_getListingSettingsBuilder> {
  GgetListingSettingsData_getListingSettings._();

  factory GgetListingSettingsData_getListingSettings(
      [void Function(GgetListingSettingsData_getListingSettingsBuilder b)
          updates]) = _$GgetListingSettingsData_getListingSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettingsBuilder b) =>
      b..G__typename = 'listingSettingsCommonTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetListingSettingsData_getListingSettings_results? get results;
  static Serializer<GgetListingSettingsData_getListingSettings>
      get serializer => _$ggetListingSettingsDataGetListingSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results
    implements
        Built<GgetListingSettingsData_getListingSettings_results,
            GgetListingSettingsData_getListingSettings_resultsBuilder> {
  GgetListingSettingsData_getListingSettings_results._();

  factory GgetListingSettingsData_getListingSettings_results(
      [void Function(
              GgetListingSettingsData_getListingSettings_resultsBuilder b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_resultsBuilder b) =>
      b..G__typename = 'settingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  GgetListingSettingsData_getListingSettings_results_minNight? get minNight;
  GgetListingSettingsData_getListingSettings_results_maxNight? get maxNight;
  GgetListingSettingsData_getListingSettings_results_carRules? get carRules;
  GgetListingSettingsData_getListingSettings_results_carFeatures?
      get carFeatures;
  GgetListingSettingsData_getListingSettings_results_guestRequirements?
      get guestRequirements;
  GgetListingSettingsData_getListingSettings_results_reviewGuestBook?
      get reviewGuestBook;
  GgetListingSettingsData_getListingSettings_results_carType? get carType;
  GgetListingSettingsData_getListingSettings_results_year? get year;
  GgetListingSettingsData_getListingSettings_results_odometer? get odometer;
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_cancellationPolicy?>?
      get cancellationPolicy;
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_availabilityWindow?>?
      get availabilityWindow;
  static Serializer<GgetListingSettingsData_getListingSettings_results>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_minNight
    implements
        Built<GgetListingSettingsData_getListingSettings_results_minNight,
            GgetListingSettingsData_getListingSettings_results_minNightBuilder> {
  GgetListingSettingsData_getListingSettings_results_minNight._();

  factory GgetListingSettingsData_getListingSettings_results_minNight(
      [void Function(
              GgetListingSettingsData_getListingSettings_results_minNightBuilder
                  b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results_minNight;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_minNightBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get isEnable;
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_minNight_listSettings?>?
      get listSettings;
  static Serializer<GgetListingSettingsData_getListingSettings_results_minNight>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsMinNightSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_minNight.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_minNight? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results_minNight.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_minNight_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_minNight_listSettings,
            GgetListingSettingsData_getListingSettings_results_minNight_listSettingsBuilder> {
  GgetListingSettingsData_getListingSettings_results_minNight_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_minNight_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_minNight_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_minNight_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_minNight_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get isEnable;
  int? get startValue;
  int? get endValue;
  String? get itemName;
  String? get otherItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_minNight_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsMinNightListSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_minNight_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_minNight_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_minNight_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_maxNight
    implements
        Built<GgetListingSettingsData_getListingSettings_results_maxNight,
            GgetListingSettingsData_getListingSettings_results_maxNightBuilder> {
  GgetListingSettingsData_getListingSettings_results_maxNight._();

  factory GgetListingSettingsData_getListingSettings_results_maxNight(
      [void Function(
              GgetListingSettingsData_getListingSettings_results_maxNightBuilder
                  b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results_maxNight;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_maxNightBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get isEnable;
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_maxNight_listSettings?>?
      get listSettings;
  static Serializer<GgetListingSettingsData_getListingSettings_results_maxNight>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsMaxNightSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_maxNight.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_maxNight? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results_maxNight.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_maxNight_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_maxNight_listSettings,
            GgetListingSettingsData_getListingSettings_results_maxNight_listSettingsBuilder> {
  GgetListingSettingsData_getListingSettings_results_maxNight_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_maxNight_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_maxNight_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_maxNight_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_maxNight_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get isEnable;
  int? get startValue;
  int? get endValue;
  String? get itemName;
  String? get otherItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_maxNight_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsMaxNightListSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_maxNight_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_maxNight_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_maxNight_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carRules
    implements
        Built<GgetListingSettingsData_getListingSettings_results_carRules,
            GgetListingSettingsData_getListingSettings_results_carRulesBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_carRules._();

  factory GgetListingSettingsData_getListingSettings_results_carRules(
      [void Function(
              GgetListingSettingsData_getListingSettings_results_carRulesBuilder
                  b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results_carRules;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carRulesBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_carRules_listSettings?>?
      get listSettings;
  static Serializer<GgetListingSettingsData_getListingSettings_results_carRules>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results_carRules.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_carRules_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_carRules_listSettings,
            GgetListingSettingsData_getListingSettings_results_carRules_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_carRules_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_carRules_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carRules_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carRules_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carRules_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carRules_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarRulesListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carRules_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carRules_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carRules_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarRulesListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carRules_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carFeatures
    implements
        Built<GgetListingSettingsData_getListingSettings_results_carFeatures,
            GgetListingSettingsData_getListingSettings_results_carFeaturesBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_carFeatures._();

  factory GgetListingSettingsData_getListingSettings_results_carFeatures(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carFeatures;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carFeaturesBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings?>?
      get listSettings;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carFeatures>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings,
            GgetListingSettingsData_getListingSettings_results_carFeatures_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carFeatures_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carFeatures_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarFeaturesListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarFeaturesListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carFeatures_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_guestRequirements
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_guestRequirements,
            GgetListingSettingsData_getListingSettings_results_guestRequirementsBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_guestRequirements._();

  factory GgetListingSettingsData_getListingSettings_results_guestRequirements(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_guestRequirementsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_guestRequirements;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_guestRequirementsBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings?>?
      get listSettings;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_guestRequirements>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsGuestRequirementsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_guestRequirements
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_guestRequirements?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_guestRequirements
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings,
            GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsGuestRequirementsListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsGuestRequirementsListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_guestRequirements_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_reviewGuestBook
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook,
            GgetListingSettingsData_getListingSettings_results_reviewGuestBookBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_reviewGuestBook._();

  factory GgetListingSettingsData_getListingSettings_results_reviewGuestBook(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_reviewGuestBookBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_reviewGuestBook;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_reviewGuestBookBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings?>?
      get listSettings;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_reviewGuestBook>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsReviewGuestBookSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_reviewGuestBook
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_reviewGuestBook?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings,
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsReviewGuestBookListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsReviewGuestBookListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_reviewGuestBook_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carType
    implements
        Built<GgetListingSettingsData_getListingSettings_results_carType,
            GgetListingSettingsData_getListingSettings_results_carTypeBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_carType._();

  factory GgetListingSettingsData_getListingSettings_results_carType(
      [void Function(
              GgetListingSettingsData_getListingSettings_results_carTypeBuilder
                  b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results_carType;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carTypeBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_carType_listSettings?>?
      get listSettings;
  static Serializer<GgetListingSettingsData_getListingSettings_results_carType>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results_carType.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_carType_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_carType_listSettings,
            GgetListingSettingsData_getListingSettings_results_carType_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_carType_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_carType_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carType_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carType_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carType_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carType_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarTypeListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carType_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carType_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carType_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCarTypeListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_carType_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_year
    implements
        Built<GgetListingSettingsData_getListingSettings_results_year,
            GgetListingSettingsData_getListingSettings_results_yearBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_year._();

  factory GgetListingSettingsData_getListingSettings_results_year(
      [void Function(
              GgetListingSettingsData_getListingSettings_results_yearBuilder b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results_year;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_yearBuilder b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_year_listSettings?>?
      get listSettings;
  static Serializer<GgetListingSettingsData_getListingSettings_results_year>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_year.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_year? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results_year.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_year_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_year_listSettings,
            GgetListingSettingsData_getListingSettings_results_year_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_year_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_year_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_year_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_year_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_year_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_year_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsYearListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_year_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_year_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_year_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsYearListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_year_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_odometer
    implements
        Built<GgetListingSettingsData_getListingSettings_results_odometer,
            GgetListingSettingsData_getListingSettings_results_odometerBuilder>,
        _i2.GlistingSettingsTypesFragment {
  GgetListingSettingsData_getListingSettings_results_odometer._();

  factory GgetListingSettingsData_getListingSettings_results_odometer(
      [void Function(
              GgetListingSettingsData_getListingSettings_results_odometerBuilder
                  b)
          updates]) = _$GgetListingSettingsData_getListingSettings_results_odometer;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_odometerBuilder
              b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<
          GgetListingSettingsData_getListingSettings_results_odometer_listSettings?>?
      get listSettings;
  static Serializer<GgetListingSettingsData_getListingSettings_results_odometer>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_odometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_odometer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsData_getListingSettings_results_odometer.serializer,
        json,
      );
}

abstract class GgetListingSettingsData_getListingSettings_results_odometer_listSettings
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_odometer_listSettings,
            GgetListingSettingsData_getListingSettings_results_odometer_listSettingsBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings,
        _i2.GlistingSettingsFragment {
  GgetListingSettingsData_getListingSettings_results_odometer_listSettings._();

  factory GgetListingSettingsData_getListingSettings_results_odometer_listSettings(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_odometer_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_odometer_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_odometer_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_odometer_listSettings>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsOdometerListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_odometer_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_odometer_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_odometer_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName,
            GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemNameBuilder>,
        _i2.GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        _i2.GlistingSettingsFragment_dynamicItemName {
  GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName._();

  factory GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsOdometerListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_odometer_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_cancellationPolicy
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_cancellationPolicy,
            GgetListingSettingsData_getListingSettings_results_cancellationPolicyBuilder>,
        _i2.GcancellationFragment {
  GgetListingSettingsData_getListingSettings_results_cancellationPolicy._();

  factory GgetListingSettingsData_getListingSettings_results_cancellationPolicy(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_cancellationPolicyBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_cancellationPolicy;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_cancellationPolicyBuilder
              b) =>
      b..G__typename = 'Cancellation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get policyName;
  @override
  String? get policyContent;
  @override
  int? get priorDays;
  @override
  double? get accommodationPriorCheckIn;
  @override
  double? get accommodationBeforeCheckIn;
  @override
  double? get accommodationDuringCheckIn;
  @override
  double? get guestFeePriorCheckIn;
  @override
  double? get guestFeeBeforeCheckIn;
  @override
  double? get guestFeeDuringCheckIn;
  @override
  double? get hostFeePriorCheckIn;
  @override
  double? get hostFeeBeforeCheckIn;
  @override
  double? get hostFeeDuringCheckIn;
  @override
  bool? get isEnable;
  @override
  String? get status;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_cancellationPolicy>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsCancellationPolicySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_cancellationPolicy
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_cancellationPolicy?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_cancellationPolicy
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsData_getListingSettings_results_availabilityWindow
    implements
        Built<
            GgetListingSettingsData_getListingSettings_results_availabilityWindow,
            GgetListingSettingsData_getListingSettings_results_availabilityWindowBuilder>,
        _i2.GavailabilityFragment {
  GgetListingSettingsData_getListingSettings_results_availabilityWindow._();

  factory GgetListingSettingsData_getListingSettings_results_availabilityWindow(
          [void Function(
                  GgetListingSettingsData_getListingSettings_results_availabilityWindowBuilder
                      b)
              updates]) =
      _$GgetListingSettingsData_getListingSettings_results_availabilityWindow;

  static void _initializeBuilder(
          GgetListingSettingsData_getListingSettings_results_availabilityWindowBuilder
              b) =>
      b..G__typename = 'availabilityWindowType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get itemValue;
  @override
  String? get itemName;
  static Serializer<
          GgetListingSettingsData_getListingSettings_results_availabilityWindow>
      get serializer =>
          _$ggetListingSettingsDataGetListingSettingsResultsAvailabilityWindowSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsData_getListingSettings_results_availabilityWindow
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsData_getListingSettings_results_availabilityWindow?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsData_getListingSettings_results_availabilityWindow
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData
    implements
        Built<GgetStep1ListingDetailsData, GgetStep1ListingDetailsDataBuilder> {
  GgetStep1ListingDetailsData._();

  factory GgetStep1ListingDetailsData(
          [void Function(GgetStep1ListingDetailsDataBuilder b) updates]) =
      _$GgetStep1ListingDetailsData;

  static void _initializeBuilder(GgetStep1ListingDetailsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetStep1ListingDetailsData_getListingDetails? get getListingDetails;
  static Serializer<GgetStep1ListingDetailsData> get serializer =>
      _$ggetStep1ListingDetailsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStep1ListingDetailsData.serializer,
        json,
      );
}

abstract class GgetStep1ListingDetailsData_getListingDetails
    implements
        Built<GgetStep1ListingDetailsData_getListingDetails,
            GgetStep1ListingDetailsData_getListingDetailsBuilder> {
  GgetStep1ListingDetailsData_getListingDetails._();

  factory GgetStep1ListingDetailsData_getListingDetails(
      [void Function(GgetStep1ListingDetailsData_getListingDetailsBuilder b)
          updates]) = _$GgetStep1ListingDetailsData_getListingDetails;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetailsBuilder b) =>
      b..G__typename = 'AllListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetStep1ListingDetailsData_getListingDetails_results? get results;
  static Serializer<GgetStep1ListingDetailsData_getListingDetails>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStep1ListingDetailsData_getListingDetails.serializer,
        json,
      );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results
    implements
        Built<GgetStep1ListingDetailsData_getListingDetails_results,
            GgetStep1ListingDetailsData_getListingDetails_resultsBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results._();

  factory GgetStep1ListingDetailsData_getListingDetails_results(
      [void Function(
              GgetStep1ListingDetailsData_getListingDetails_resultsBuilder b)
          updates]) = _$GgetStep1ListingDetailsData_getListingDetails_results;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_resultsBuilder b) =>
      b..G__typename = 'ShowListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get userId;
  String? get carType;
  String? get make;
  String? get makeId;
  String? get model;
  String? get year;
  String? get odometer;
  String? get country;
  String? get street;
  String? get buildingName;
  String? get city;
  String? get state;
  String? get zipcode;
  double? get lat;
  double? get lng;
  bool? get isMapTouched;
  String? get transmission;
  int? get personCapacity;
  GgetStep1ListingDetailsData_getListingDetails_results_user? get user;
  BuiltList<GgetStep1ListingDetailsData_getListingDetails_results_carFeatures?>?
      get carFeatures;
  BuiltList<
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData?>?
      get settingsData;
  static Serializer<GgetStep1ListingDetailsData_getListingDetails_results>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results.serializer,
        json,
      );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_user
    implements
        Built<GgetStep1ListingDetailsData_getListingDetails_results_user,
            GgetStep1ListingDetailsData_getListingDetails_results_userBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_user._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_user(
      [void Function(
              GgetStep1ListingDetailsData_getListingDetails_results_userBuilder
                  b)
          updates]) = _$GgetStep1ListingDetailsData_getListingDetails_results_user;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_userBuilder
              b) =>
      b..G__typename = 'user';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get email;
  int? get userBanStatus;
  GgetStep1ListingDetailsData_getListingDetails_results_user_profile?
      get profile;
  static Serializer<GgetStep1ListingDetailsData_getListingDetails_results_user>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_user.serializer,
        json,
      );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_user_profile
    implements
        Built<
            GgetStep1ListingDetailsData_getListingDetails_results_user_profile,
            GgetStep1ListingDetailsData_getListingDetails_results_user_profileBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_user_profile._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_user_profile(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_user_profileBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_user_profile;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_user_profileBuilder
              b) =>
      b..G__typename = 'profile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_user_profile>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsUserProfileSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_user_profile
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_user_profile?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_user_profile
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_carFeatures
    implements
        Built<GgetStep1ListingDetailsData_getListingDetails_results_carFeatures,
            GgetStep1ListingDetailsData_getListingDetails_results_carFeaturesBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_carFeatures._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_carFeatures(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_carFeatures;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get itemName;
  GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_carFeatures>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsCarFeaturesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName
    implements
        Built<
            GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName,
            GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemNameBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get ar;
  String? get en;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsCarFeaturesDynamicItemNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_settingsData
    implements
        Built<
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData,
            GgetStep1ListingDetailsData_getListingDetails_results_settingsDataBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_settingsData(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_settingsDataBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_settingsData;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_settingsDataBuilder
              b) =>
      b..G__typename = 'userListingData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get settingsId;
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings?
      get listsettings;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsSettingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_settingsData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_settingsData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings
    implements
        Built<
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings,
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettingsBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettingsBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettingsBuilder
              b) =>
      b..G__typename = 'singleListSettings';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get itemName;
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName?
      get dynamicItemName;
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType?
      get settingsType;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsSettingsDataListsettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName
    implements
        Built<
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName,
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemNameBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get ar;
  String? get en;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsSettingsDataListsettingsDynamicItemNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType
    implements
        Built<
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType,
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsTypeBuilder> {
  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType._();

  factory GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType(
          [void Function(
                  GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsTypeBuilder
                      b)
              updates]) =
      _$GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType;

  static void _initializeBuilder(
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsTypeBuilder
              b) =>
      b..G__typename = 'listSettingsTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get typeName;
  static Serializer<
          GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType>
      get serializer =>
          _$ggetStep1ListingDetailsDataGetListingDetailsResultsSettingsDataListsettingsSettingsTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetStep1ListingDetailsData_getListingDetails_results_settingsData_listsettings_settingsType
                .serializer,
            json,
          );
}
