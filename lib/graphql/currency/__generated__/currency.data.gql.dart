// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'currency.data.gql.g.dart';

abstract class GpriceSettingsData
    implements Built<GpriceSettingsData, GpriceSettingsDataBuilder> {
  GpriceSettingsData._();

  factory GpriceSettingsData(
          [void Function(GpriceSettingsDataBuilder b) updates]) =
      _$GpriceSettingsData;

  static void _initializeBuilder(GpriceSettingsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GpriceSettingsData_getSearchSettings? get getSearchSettings;
  static Serializer<GpriceSettingsData> get serializer =>
      _$gpriceSettingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpriceSettingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpriceSettingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpriceSettingsData.serializer,
        json,
      );
}

abstract class GpriceSettingsData_getSearchSettings
    implements
        Built<GpriceSettingsData_getSearchSettings,
            GpriceSettingsData_getSearchSettingsBuilder> {
  GpriceSettingsData_getSearchSettings._();

  factory GpriceSettingsData_getSearchSettings(
      [void Function(GpriceSettingsData_getSearchSettingsBuilder b)
          updates]) = _$GpriceSettingsData_getSearchSettings;

  static void _initializeBuilder(
          GpriceSettingsData_getSearchSettingsBuilder b) =>
      b..G__typename = 'AllSearchSettingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GpriceSettingsData_getSearchSettings_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GpriceSettingsData_getSearchSettings> get serializer =>
      _$gpriceSettingsDataGetSearchSettingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpriceSettingsData_getSearchSettings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpriceSettingsData_getSearchSettings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpriceSettingsData_getSearchSettings.serializer,
        json,
      );
}

abstract class GpriceSettingsData_getSearchSettings_results
    implements
        Built<GpriceSettingsData_getSearchSettings_results,
            GpriceSettingsData_getSearchSettings_resultsBuilder> {
  GpriceSettingsData_getSearchSettings_results._();

  factory GpriceSettingsData_getSearchSettings_results(
      [void Function(GpriceSettingsData_getSearchSettings_resultsBuilder b)
          updates]) = _$GpriceSettingsData_getSearchSettings_results;

  static void _initializeBuilder(
          GpriceSettingsData_getSearchSettings_resultsBuilder b) =>
      b..G__typename = 'SearchSettingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  double? get minPrice;
  double? get maxPrice;
  String? get priceRangeCurrency;
  static Serializer<GpriceSettingsData_getSearchSettings_results>
      get serializer => _$gpriceSettingsDataGetSearchSettingsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpriceSettingsData_getSearchSettings_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpriceSettingsData_getSearchSettings_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpriceSettingsData_getSearchSettings_results.serializer,
        json,
      );
}

abstract class GgetCurrenciesListData
    implements Built<GgetCurrenciesListData, GgetCurrenciesListDataBuilder> {
  GgetCurrenciesListData._();

  factory GgetCurrenciesListData(
          [void Function(GgetCurrenciesListDataBuilder b) updates]) =
      _$GgetCurrenciesListData;

  static void _initializeBuilder(GgetCurrenciesListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetCurrenciesListData_getCurrencies? get getCurrencies;
  static Serializer<GgetCurrenciesListData> get serializer =>
      _$ggetCurrenciesListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrenciesListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrenciesListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrenciesListData.serializer,
        json,
      );
}

abstract class GgetCurrenciesListData_getCurrencies
    implements
        Built<GgetCurrenciesListData_getCurrencies,
            GgetCurrenciesListData_getCurrenciesBuilder> {
  GgetCurrenciesListData_getCurrencies._();

  factory GgetCurrenciesListData_getCurrencies(
      [void Function(GgetCurrenciesListData_getCurrenciesBuilder b)
          updates]) = _$GgetCurrenciesListData_getCurrencies;

  static void _initializeBuilder(
          GgetCurrenciesListData_getCurrenciesBuilder b) =>
      b..G__typename = 'AllCurrenciesType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetCurrenciesListData_getCurrencies_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetCurrenciesListData_getCurrencies> get serializer =>
      _$ggetCurrenciesListDataGetCurrenciesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrenciesListData_getCurrencies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrenciesListData_getCurrencies? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrenciesListData_getCurrencies.serializer,
        json,
      );
}

abstract class GgetCurrenciesListData_getCurrencies_results
    implements
        Built<GgetCurrenciesListData_getCurrencies_results,
            GgetCurrenciesListData_getCurrencies_resultsBuilder> {
  GgetCurrenciesListData_getCurrencies_results._();

  factory GgetCurrenciesListData_getCurrencies_results(
      [void Function(GgetCurrenciesListData_getCurrencies_resultsBuilder b)
          updates]) = _$GgetCurrenciesListData_getCurrencies_results;

  static void _initializeBuilder(
          GgetCurrenciesListData_getCurrencies_resultsBuilder b) =>
      b..G__typename = 'Currencies';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get symbol;
  bool? get isEnable;
  bool? get isPayment;
  bool? get isBaseCurrency;
  static Serializer<GgetCurrenciesListData_getCurrencies_results>
      get serializer => _$ggetCurrenciesListDataGetCurrenciesResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrenciesListData_getCurrencies_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrenciesListData_getCurrencies_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrenciesListData_getCurrencies_results.serializer,
        json,
      );
}

abstract class GgetCurrencyData
    implements Built<GgetCurrencyData, GgetCurrencyDataBuilder> {
  GgetCurrencyData._();

  factory GgetCurrencyData([void Function(GgetCurrencyDataBuilder b) updates]) =
      _$GgetCurrencyData;

  static void _initializeBuilder(GgetCurrencyDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetCurrencyData_Currency? get Currency;
  static Serializer<GgetCurrencyData> get serializer =>
      _$ggetCurrencyDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrencyData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrencyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrencyData.serializer,
        json,
      );
}

abstract class GgetCurrencyData_Currency
    implements
        Built<GgetCurrencyData_Currency, GgetCurrencyData_CurrencyBuilder> {
  GgetCurrencyData_Currency._();

  factory GgetCurrencyData_Currency(
          [void Function(GgetCurrencyData_CurrencyBuilder b) updates]) =
      _$GgetCurrencyData_Currency;

  static void _initializeBuilder(GgetCurrencyData_CurrencyBuilder b) =>
      b..G__typename = 'Currency';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetCurrencyData_Currency_result? get result;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetCurrencyData_Currency> get serializer =>
      _$ggetCurrencyDataCurrencySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrencyData_Currency.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrencyData_Currency? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrencyData_Currency.serializer,
        json,
      );
}

abstract class GgetCurrencyData_Currency_result
    implements
        Built<GgetCurrencyData_Currency_result,
            GgetCurrencyData_Currency_resultBuilder> {
  GgetCurrencyData_Currency_result._();

  factory GgetCurrencyData_Currency_result(
          [void Function(GgetCurrencyData_Currency_resultBuilder b) updates]) =
      _$GgetCurrencyData_Currency_result;

  static void _initializeBuilder(GgetCurrencyData_Currency_resultBuilder b) =>
      b..G__typename = 'AllRatesType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get base;
  String? get rates;
  static Serializer<GgetCurrencyData_Currency_result> get serializer =>
      _$ggetCurrencyDataCurrencyResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetCurrencyData_Currency_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrencyData_Currency_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetCurrencyData_Currency_result.serializer,
        json,
      );
}

abstract class GgetVersionData
    implements Built<GgetVersionData, GgetVersionDataBuilder> {
  GgetVersionData._();

  factory GgetVersionData([void Function(GgetVersionDataBuilder b) updates]) =
      _$GgetVersionData;

  static void _initializeBuilder(GgetVersionDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetVersionData_getApplicationVersionInfo? get getApplicationVersionInfo;
  static Serializer<GgetVersionData> get serializer =>
      _$ggetVersionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetVersionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetVersionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetVersionData.serializer,
        json,
      );
}

abstract class GgetVersionData_getApplicationVersionInfo
    implements
        Built<GgetVersionData_getApplicationVersionInfo,
            GgetVersionData_getApplicationVersionInfoBuilder> {
  GgetVersionData_getApplicationVersionInfo._();

  factory GgetVersionData_getApplicationVersionInfo(
      [void Function(GgetVersionData_getApplicationVersionInfoBuilder b)
          updates]) = _$GgetVersionData_getApplicationVersionInfo;

  static void _initializeBuilder(
          GgetVersionData_getApplicationVersionInfoBuilder b) =>
      b..G__typename = 'SiteSettingsCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetVersionData_getApplicationVersionInfo_result? get result;
  static Serializer<GgetVersionData_getApplicationVersionInfo> get serializer =>
      _$ggetVersionDataGetApplicationVersionInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetVersionData_getApplicationVersionInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetVersionData_getApplicationVersionInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetVersionData_getApplicationVersionInfo.serializer,
        json,
      );
}

abstract class GgetVersionData_getApplicationVersionInfo_result
    implements
        Built<GgetVersionData_getApplicationVersionInfo_result,
            GgetVersionData_getApplicationVersionInfo_resultBuilder> {
  GgetVersionData_getApplicationVersionInfo_result._();

  factory GgetVersionData_getApplicationVersionInfo_result(
      [void Function(GgetVersionData_getApplicationVersionInfo_resultBuilder b)
          updates]) = _$GgetVersionData_getApplicationVersionInfo_result;

  static void _initializeBuilder(
          GgetVersionData_getApplicationVersionInfo_resultBuilder b) =>
      b..G__typename = 'ApplicationVersion';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get appStoreUrl;
  String? get playStoreUrl;
  static Serializer<GgetVersionData_getApplicationVersionInfo_result>
      get serializer =>
          _$ggetVersionDataGetApplicationVersionInfoResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetVersionData_getApplicationVersionInfo_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetVersionData_getApplicationVersionInfo_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetVersionData_getApplicationVersionInfo_result.serializer,
        json,
      );
}
