// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'filter_data.data.gql.g.dart';

abstract class GgetListingSettingsCommonData
    implements
        Built<GgetListingSettingsCommonData,
            GgetListingSettingsCommonDataBuilder> {
  GgetListingSettingsCommonData._();

  factory GgetListingSettingsCommonData(
          [void Function(GgetListingSettingsCommonDataBuilder b) updates]) =
      _$GgetListingSettingsCommonData;

  static void _initializeBuilder(GgetListingSettingsCommonDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetListingSettingsCommonData_getListingSettingsCommon?
      get getListingSettingsCommon;
  GgetListingSettingsCommonData_getSearchSettings? get getSearchSettings;
  static Serializer<GgetListingSettingsCommonData> get serializer =>
      _$ggetListingSettingsCommonDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsCommonData.serializer,
        json,
      );
}

abstract class GgetListingSettingsCommonData_getListingSettingsCommon
    implements
        Built<GgetListingSettingsCommonData_getListingSettingsCommon,
            GgetListingSettingsCommonData_getListingSettingsCommonBuilder> {
  GgetListingSettingsCommonData_getListingSettingsCommon._();

  factory GgetListingSettingsCommonData_getListingSettingsCommon(
      [void Function(
              GgetListingSettingsCommonData_getListingSettingsCommonBuilder b)
          updates]) = _$GgetListingSettingsCommonData_getListingSettingsCommon;

  static void _initializeBuilder(
          GgetListingSettingsCommonData_getListingSettingsCommonBuilder b) =>
      b..G__typename = 'listingSettingCommonTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  BuiltList<GgetListingSettingsCommonData_getListingSettingsCommon_results?>?
      get results;
  static Serializer<GgetListingSettingsCommonData_getListingSettingsCommon>
      get serializer =>
          _$ggetListingSettingsCommonDataGetListingSettingsCommonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData_getListingSettingsCommon.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData_getListingSettingsCommon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsCommonData_getListingSettingsCommon.serializer,
        json,
      );
}

abstract class GgetListingSettingsCommonData_getListingSettingsCommon_results
    implements
        Built<GgetListingSettingsCommonData_getListingSettingsCommon_results,
            GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder> {
  GgetListingSettingsCommonData_getListingSettingsCommon_results._();

  factory GgetListingSettingsCommonData_getListingSettingsCommon_results(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsCommonData_getListingSettingsCommon_results;

  static void _initializeBuilder(
          GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder
              b) =>
      b..G__typename = 'listingSettingsTypesCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get typeName;
  String? get typeLabel;
  String? get isEnable;
  int? get count;
  BuiltList<
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?>?
      get listSettings;
  static Serializer<
          GgetListingSettingsCommonData_getListingSettingsCommon_results>
      get serializer =>
          _$ggetListingSettingsCommonDataGetListingSettingsCommonResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData_getListingSettingsCommon_results
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData_getListingSettingsCommon_results?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsCommonData_getListingSettingsCommon_results
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
    implements
        Built<
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings,
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder> {
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings._();

  factory GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder
                      b)
              updates]) =
      _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings;

  static void _initializeBuilder(
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder
              b) =>
      b..G__typename = 'listingSettingsCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get typeId;
  String? get itemName;
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName?
      get dynamicItemName;
  String? get isEnable;
  static Serializer<
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings>
      get serializer =>
          _$ggetListingSettingsCommonDataGetListingSettingsCommonResultsListSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
    implements
        Built<
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName,
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder> {
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName._();

  factory GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder
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
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName>
      get serializer =>
          _$ggetListingSettingsCommonDataGetListingSettingsCommonResultsListSettingsDynamicItemNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetListingSettingsCommonData_getSearchSettings
    implements
        Built<GgetListingSettingsCommonData_getSearchSettings,
            GgetListingSettingsCommonData_getSearchSettingsBuilder> {
  GgetListingSettingsCommonData_getSearchSettings._();

  factory GgetListingSettingsCommonData_getSearchSettings(
      [void Function(GgetListingSettingsCommonData_getSearchSettingsBuilder b)
          updates]) = _$GgetListingSettingsCommonData_getSearchSettings;

  static void _initializeBuilder(
          GgetListingSettingsCommonData_getSearchSettingsBuilder b) =>
      b..G__typename = 'AllSearchSettingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetListingSettingsCommonData_getSearchSettings_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetListingSettingsCommonData_getSearchSettings>
      get serializer =>
          _$ggetListingSettingsCommonDataGetSearchSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData_getSearchSettings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData_getSearchSettings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsCommonData_getSearchSettings.serializer,
        json,
      );
}

abstract class GgetListingSettingsCommonData_getSearchSettings_results
    implements
        Built<GgetListingSettingsCommonData_getSearchSettings_results,
            GgetListingSettingsCommonData_getSearchSettings_resultsBuilder> {
  GgetListingSettingsCommonData_getSearchSettings_results._();

  factory GgetListingSettingsCommonData_getSearchSettings_results(
      [void Function(
              GgetListingSettingsCommonData_getSearchSettings_resultsBuilder b)
          updates]) = _$GgetListingSettingsCommonData_getSearchSettings_results;

  static void _initializeBuilder(
          GgetListingSettingsCommonData_getSearchSettings_resultsBuilder b) =>
      b..G__typename = 'SearchSettingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  double? get minPrice;
  double? get maxPrice;
  String? get priceRangeCurrency;
  static Serializer<GgetListingSettingsCommonData_getSearchSettings_results>
      get serializer =>
          _$ggetListingSettingsCommonDataGetSearchSettingsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSettingsCommonData_getSearchSettings_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonData_getSearchSettings_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSettingsCommonData_getSearchSettings_results.serializer,
        json,
      );
}

abstract class GgetListSettingsItemNameData
    implements
        Built<GgetListSettingsItemNameData,
            GgetListSettingsItemNameDataBuilder> {
  GgetListSettingsItemNameData._();

  factory GgetListSettingsItemNameData(
          [void Function(GgetListSettingsItemNameDataBuilder b) updates]) =
      _$GgetListSettingsItemNameData;

  static void _initializeBuilder(GgetListSettingsItemNameDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetListSettingsItemNameData_getListSettingsItemName?
      get getListSettingsItemName;
  static Serializer<GgetListSettingsItemNameData> get serializer =>
      _$ggetListSettingsItemNameDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListSettingsItemNameData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListSettingsItemNameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListSettingsItemNameData.serializer,
        json,
      );
}

abstract class GgetListSettingsItemNameData_getListSettingsItemName
    implements
        Built<GgetListSettingsItemNameData_getListSettingsItemName,
            GgetListSettingsItemNameData_getListSettingsItemNameBuilder> {
  GgetListSettingsItemNameData_getListSettingsItemName._();

  factory GgetListSettingsItemNameData_getListSettingsItemName(
      [void Function(
              GgetListSettingsItemNameData_getListSettingsItemNameBuilder b)
          updates]) = _$GgetListSettingsItemNameData_getListSettingsItemName;

  static void _initializeBuilder(
          GgetListSettingsItemNameData_getListSettingsItemNameBuilder b) =>
      b..G__typename = 'GetListSettingsItemNameType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  BuiltList<GgetListSettingsItemNameData_getListSettingsItemName_results?>?
      get results;
  static Serializer<GgetListSettingsItemNameData_getListSettingsItemName>
      get serializer =>
          _$ggetListSettingsItemNameDataGetListSettingsItemNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListSettingsItemNameData_getListSettingsItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListSettingsItemNameData_getListSettingsItemName? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListSettingsItemNameData_getListSettingsItemName.serializer,
        json,
      );
}

abstract class GgetListSettingsItemNameData_getListSettingsItemName_results
    implements
        Built<GgetListSettingsItemNameData_getListSettingsItemName_results,
            GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder> {
  GgetListSettingsItemNameData_getListSettingsItemName_results._();

  factory GgetListSettingsItemNameData_getListSettingsItemName_results(
          [void Function(
                  GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder
                      b)
              updates]) =
      _$GgetListSettingsItemNameData_getListSettingsItemName_results;

  static void _initializeBuilder(
          GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder
              b) =>
      b..G__typename = 'GetListSettingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get typeId;
  String? get itemName;
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName?
      get dynamicItemName;
  static Serializer<
          GgetListSettingsItemNameData_getListSettingsItemName_results>
      get serializer =>
          _$ggetListSettingsItemNameDataGetListSettingsItemNameResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListSettingsItemNameData_getListSettingsItemName_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListSettingsItemNameData_getListSettingsItemName_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListSettingsItemNameData_getListSettingsItemName_results.serializer,
        json,
      );
}

abstract class GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
    implements
        Built<
            GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName,
            GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder> {
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName._();

  factory GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName(
          [void Function(
                  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName;

  static void _initializeBuilder(
          GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder
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
          GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName>
      get serializer =>
          _$ggetListSettingsItemNameDataGetListSettingsItemNameResultsDynamicItemNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
                .serializer,
            json,
          );
}
