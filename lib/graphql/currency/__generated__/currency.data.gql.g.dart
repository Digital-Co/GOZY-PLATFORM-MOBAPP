// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpriceSettingsData> _$gpriceSettingsDataSerializer =
    new _$GpriceSettingsDataSerializer();
Serializer<GpriceSettingsData_getSearchSettings>
    _$gpriceSettingsDataGetSearchSettingsSerializer =
    new _$GpriceSettingsData_getSearchSettingsSerializer();
Serializer<GpriceSettingsData_getSearchSettings_results>
    _$gpriceSettingsDataGetSearchSettingsResultsSerializer =
    new _$GpriceSettingsData_getSearchSettings_resultsSerializer();
Serializer<GgetCurrenciesListData> _$ggetCurrenciesListDataSerializer =
    new _$GgetCurrenciesListDataSerializer();
Serializer<GgetCurrenciesListData_getCurrencies>
    _$ggetCurrenciesListDataGetCurrenciesSerializer =
    new _$GgetCurrenciesListData_getCurrenciesSerializer();
Serializer<GgetCurrenciesListData_getCurrencies_results>
    _$ggetCurrenciesListDataGetCurrenciesResultsSerializer =
    new _$GgetCurrenciesListData_getCurrencies_resultsSerializer();
Serializer<GgetCurrencyData> _$ggetCurrencyDataSerializer =
    new _$GgetCurrencyDataSerializer();
Serializer<GgetCurrencyData_Currency> _$ggetCurrencyDataCurrencySerializer =
    new _$GgetCurrencyData_CurrencySerializer();
Serializer<GgetCurrencyData_Currency_result>
    _$ggetCurrencyDataCurrencyResultSerializer =
    new _$GgetCurrencyData_Currency_resultSerializer();
Serializer<GgetVersionData> _$ggetVersionDataSerializer =
    new _$GgetVersionDataSerializer();
Serializer<GgetVersionData_getApplicationVersionInfo>
    _$ggetVersionDataGetApplicationVersionInfoSerializer =
    new _$GgetVersionData_getApplicationVersionInfoSerializer();
Serializer<GgetVersionData_getApplicationVersionInfo_result>
    _$ggetVersionDataGetApplicationVersionInfoResultSerializer =
    new _$GgetVersionData_getApplicationVersionInfo_resultSerializer();

class _$GpriceSettingsDataSerializer
    implements StructuredSerializer<GpriceSettingsData> {
  @override
  final Iterable<Type> types = const [GpriceSettingsData, _$GpriceSettingsData];
  @override
  final String wireName = 'GpriceSettingsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GpriceSettingsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getSearchSettings;
    if (value != null) {
      result
        ..add('getSearchSettings')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GpriceSettingsData_getSearchSettings)));
    }
    return result;
  }

  @override
  GpriceSettingsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpriceSettingsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getSearchSettings':
          result.getSearchSettings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GpriceSettingsData_getSearchSettings))!
              as GpriceSettingsData_getSearchSettings);
          break;
      }
    }

    return result.build();
  }
}

class _$GpriceSettingsData_getSearchSettingsSerializer
    implements StructuredSerializer<GpriceSettingsData_getSearchSettings> {
  @override
  final Iterable<Type> types = const [
    GpriceSettingsData_getSearchSettings,
    _$GpriceSettingsData_getSearchSettings
  ];
  @override
  final String wireName = 'GpriceSettingsData_getSearchSettings';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GpriceSettingsData_getSearchSettings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GpriceSettingsData_getSearchSettings_results)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GpriceSettingsData_getSearchSettings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpriceSettingsData_getSearchSettingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GpriceSettingsData_getSearchSettings_results))!
              as GpriceSettingsData_getSearchSettings_results);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GpriceSettingsData_getSearchSettings_resultsSerializer
    implements
        StructuredSerializer<GpriceSettingsData_getSearchSettings_results> {
  @override
  final Iterable<Type> types = const [
    GpriceSettingsData_getSearchSettings_results,
    _$GpriceSettingsData_getSearchSettings_results
  ];
  @override
  final String wireName = 'GpriceSettingsData_getSearchSettings_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GpriceSettingsData_getSearchSettings_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minPrice;
    if (value != null) {
      result
        ..add('minPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxPrice;
    if (value != null) {
      result
        ..add('maxPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.priceRangeCurrency;
    if (value != null) {
      result
        ..add('priceRangeCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GpriceSettingsData_getSearchSettings_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpriceSettingsData_getSearchSettings_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minPrice':
          result.minPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxPrice':
          result.maxPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'priceRangeCurrency':
          result.priceRangeCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCurrenciesListDataSerializer
    implements StructuredSerializer<GgetCurrenciesListData> {
  @override
  final Iterable<Type> types = const [
    GgetCurrenciesListData,
    _$GgetCurrenciesListData
  ];
  @override
  final String wireName = 'GgetCurrenciesListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCurrenciesListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getCurrencies;
    if (value != null) {
      result
        ..add('getCurrencies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetCurrenciesListData_getCurrencies)));
    }
    return result;
  }

  @override
  GgetCurrenciesListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCurrenciesListDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getCurrencies':
          result.getCurrencies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetCurrenciesListData_getCurrencies))!
              as GgetCurrenciesListData_getCurrencies);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCurrenciesListData_getCurrenciesSerializer
    implements StructuredSerializer<GgetCurrenciesListData_getCurrencies> {
  @override
  final Iterable<Type> types = const [
    GgetCurrenciesListData_getCurrencies,
    _$GgetCurrenciesListData_getCurrencies
  ];
  @override
  final String wireName = 'GgetCurrenciesListData_getCurrencies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCurrenciesListData_getCurrencies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetCurrenciesListData_getCurrencies_results)
            ])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetCurrenciesListData_getCurrencies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCurrenciesListData_getCurrenciesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetCurrenciesListData_getCurrencies_results)
              ]))! as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCurrenciesListData_getCurrencies_resultsSerializer
    implements
        StructuredSerializer<GgetCurrenciesListData_getCurrencies_results> {
  @override
  final Iterable<Type> types = const [
    GgetCurrenciesListData_getCurrencies_results,
    _$GgetCurrenciesListData_getCurrencies_results
  ];
  @override
  final String wireName = 'GgetCurrenciesListData_getCurrencies_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetCurrenciesListData_getCurrencies_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.symbol;
    if (value != null) {
      result
        ..add('symbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPayment;
    if (value != null) {
      result
        ..add('isPayment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isBaseCurrency;
    if (value != null) {
      result
        ..add('isBaseCurrency')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetCurrenciesListData_getCurrencies_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCurrenciesListData_getCurrencies_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPayment':
          result.isPayment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isBaseCurrency':
          result.isBaseCurrency = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCurrencyDataSerializer
    implements StructuredSerializer<GgetCurrencyData> {
  @override
  final Iterable<Type> types = const [GgetCurrencyData, _$GgetCurrencyData];
  @override
  final String wireName = 'GgetCurrencyData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetCurrencyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Currency;
    if (value != null) {
      result
        ..add('Currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetCurrencyData_Currency)));
    }
    return result;
  }

  @override
  GgetCurrencyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCurrencyDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Currency':
          result.Currency.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GgetCurrencyData_Currency))!
              as GgetCurrencyData_Currency);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCurrencyData_CurrencySerializer
    implements StructuredSerializer<GgetCurrencyData_Currency> {
  @override
  final Iterable<Type> types = const [
    GgetCurrencyData_Currency,
    _$GgetCurrencyData_Currency
  ];
  @override
  final String wireName = 'GgetCurrencyData_Currency';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCurrencyData_Currency object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetCurrencyData_Currency_result)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetCurrencyData_Currency deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCurrencyData_CurrencyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetCurrencyData_Currency_result))!
              as GgetCurrencyData_Currency_result);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetCurrencyData_Currency_resultSerializer
    implements StructuredSerializer<GgetCurrencyData_Currency_result> {
  @override
  final Iterable<Type> types = const [
    GgetCurrencyData_Currency_result,
    _$GgetCurrencyData_Currency_result
  ];
  @override
  final String wireName = 'GgetCurrencyData_Currency_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetCurrencyData_Currency_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.base;
    if (value != null) {
      result
        ..add('base')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rates;
    if (value != null) {
      result
        ..add('rates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetCurrencyData_Currency_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetCurrencyData_Currency_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rates':
          result.rates = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetVersionDataSerializer
    implements StructuredSerializer<GgetVersionData> {
  @override
  final Iterable<Type> types = const [GgetVersionData, _$GgetVersionData];
  @override
  final String wireName = 'GgetVersionData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetVersionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getApplicationVersionInfo;
    if (value != null) {
      result
        ..add('getApplicationVersionInfo')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GgetVersionData_getApplicationVersionInfo)));
    }
    return result;
  }

  @override
  GgetVersionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetVersionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getApplicationVersionInfo':
          result.getApplicationVersionInfo.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GgetVersionData_getApplicationVersionInfo))!
              as GgetVersionData_getApplicationVersionInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetVersionData_getApplicationVersionInfoSerializer
    implements StructuredSerializer<GgetVersionData_getApplicationVersionInfo> {
  @override
  final Iterable<Type> types = const [
    GgetVersionData_getApplicationVersionInfo,
    _$GgetVersionData_getApplicationVersionInfo
  ];
  @override
  final String wireName = 'GgetVersionData_getApplicationVersionInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetVersionData_getApplicationVersionInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetVersionData_getApplicationVersionInfo_result)));
    }
    return result;
  }

  @override
  GgetVersionData_getApplicationVersionInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetVersionData_getApplicationVersionInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetVersionData_getApplicationVersionInfo_result))!
              as GgetVersionData_getApplicationVersionInfo_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetVersionData_getApplicationVersionInfo_resultSerializer
    implements
        StructuredSerializer<GgetVersionData_getApplicationVersionInfo_result> {
  @override
  final Iterable<Type> types = const [
    GgetVersionData_getApplicationVersionInfo_result,
    _$GgetVersionData_getApplicationVersionInfo_result
  ];
  @override
  final String wireName = 'GgetVersionData_getApplicationVersionInfo_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetVersionData_getApplicationVersionInfo_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.appStoreUrl;
    if (value != null) {
      result
        ..add('appStoreUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playStoreUrl;
    if (value != null) {
      result
        ..add('playStoreUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetVersionData_getApplicationVersionInfo_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetVersionData_getApplicationVersionInfo_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'appStoreUrl':
          result.appStoreUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'playStoreUrl':
          result.playStoreUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GpriceSettingsData extends GpriceSettingsData {
  @override
  final String G__typename;
  @override
  final GpriceSettingsData_getSearchSettings? getSearchSettings;

  factory _$GpriceSettingsData(
          [void Function(GpriceSettingsDataBuilder)? updates]) =>
      (new GpriceSettingsDataBuilder()..update(updates))._build();

  _$GpriceSettingsData._({required this.G__typename, this.getSearchSettings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpriceSettingsData', 'G__typename');
  }

  @override
  GpriceSettingsData rebuild(
          void Function(GpriceSettingsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpriceSettingsDataBuilder toBuilder() =>
      new GpriceSettingsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpriceSettingsData &&
        G__typename == other.G__typename &&
        getSearchSettings == other.getSearchSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getSearchSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpriceSettingsData')
          ..add('G__typename', G__typename)
          ..add('getSearchSettings', getSearchSettings))
        .toString();
  }
}

class GpriceSettingsDataBuilder
    implements Builder<GpriceSettingsData, GpriceSettingsDataBuilder> {
  _$GpriceSettingsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GpriceSettingsData_getSearchSettingsBuilder? _getSearchSettings;
  GpriceSettingsData_getSearchSettingsBuilder get getSearchSettings =>
      _$this._getSearchSettings ??=
          new GpriceSettingsData_getSearchSettingsBuilder();
  set getSearchSettings(
          GpriceSettingsData_getSearchSettingsBuilder? getSearchSettings) =>
      _$this._getSearchSettings = getSearchSettings;

  GpriceSettingsDataBuilder() {
    GpriceSettingsData._initializeBuilder(this);
  }

  GpriceSettingsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getSearchSettings = $v.getSearchSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpriceSettingsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpriceSettingsData;
  }

  @override
  void update(void Function(GpriceSettingsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpriceSettingsData build() => _build();

  _$GpriceSettingsData _build() {
    _$GpriceSettingsData _$result;
    try {
      _$result = _$v ??
          new _$GpriceSettingsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GpriceSettingsData', 'G__typename'),
              getSearchSettings: _getSearchSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getSearchSettings';
        _getSearchSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpriceSettingsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GpriceSettingsData_getSearchSettings
    extends GpriceSettingsData_getSearchSettings {
  @override
  final String G__typename;
  @override
  final GpriceSettingsData_getSearchSettings_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GpriceSettingsData_getSearchSettings(
          [void Function(GpriceSettingsData_getSearchSettingsBuilder)?
              updates]) =>
      (new GpriceSettingsData_getSearchSettingsBuilder()..update(updates))
          ._build();

  _$GpriceSettingsData_getSearchSettings._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpriceSettingsData_getSearchSettings', 'G__typename');
  }

  @override
  GpriceSettingsData_getSearchSettings rebuild(
          void Function(GpriceSettingsData_getSearchSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpriceSettingsData_getSearchSettingsBuilder toBuilder() =>
      new GpriceSettingsData_getSearchSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpriceSettingsData_getSearchSettings &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpriceSettingsData_getSearchSettings')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GpriceSettingsData_getSearchSettingsBuilder
    implements
        Builder<GpriceSettingsData_getSearchSettings,
            GpriceSettingsData_getSearchSettingsBuilder> {
  _$GpriceSettingsData_getSearchSettings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GpriceSettingsData_getSearchSettings_resultsBuilder? _results;
  GpriceSettingsData_getSearchSettings_resultsBuilder get results =>
      _$this._results ??=
          new GpriceSettingsData_getSearchSettings_resultsBuilder();
  set results(GpriceSettingsData_getSearchSettings_resultsBuilder? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GpriceSettingsData_getSearchSettingsBuilder() {
    GpriceSettingsData_getSearchSettings._initializeBuilder(this);
  }

  GpriceSettingsData_getSearchSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpriceSettingsData_getSearchSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpriceSettingsData_getSearchSettings;
  }

  @override
  void update(
      void Function(GpriceSettingsData_getSearchSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpriceSettingsData_getSearchSettings build() => _build();

  _$GpriceSettingsData_getSearchSettings _build() {
    _$GpriceSettingsData_getSearchSettings _$result;
    try {
      _$result = _$v ??
          new _$GpriceSettingsData_getSearchSettings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GpriceSettingsData_getSearchSettings', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpriceSettingsData_getSearchSettings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GpriceSettingsData_getSearchSettings_results
    extends GpriceSettingsData_getSearchSettings_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final String? priceRangeCurrency;

  factory _$GpriceSettingsData_getSearchSettings_results(
          [void Function(GpriceSettingsData_getSearchSettings_resultsBuilder)?
              updates]) =>
      (new GpriceSettingsData_getSearchSettings_resultsBuilder()
            ..update(updates))
          ._build();

  _$GpriceSettingsData_getSearchSettings_results._(
      {required this.G__typename,
      this.id,
      this.minPrice,
      this.maxPrice,
      this.priceRangeCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GpriceSettingsData_getSearchSettings_results', 'G__typename');
  }

  @override
  GpriceSettingsData_getSearchSettings_results rebuild(
          void Function(GpriceSettingsData_getSearchSettings_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpriceSettingsData_getSearchSettings_resultsBuilder toBuilder() =>
      new GpriceSettingsData_getSearchSettings_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpriceSettingsData_getSearchSettings_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        minPrice == other.minPrice &&
        maxPrice == other.maxPrice &&
        priceRangeCurrency == other.priceRangeCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, minPrice.hashCode);
    _$hash = $jc(_$hash, maxPrice.hashCode);
    _$hash = $jc(_$hash, priceRangeCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GpriceSettingsData_getSearchSettings_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('minPrice', minPrice)
          ..add('maxPrice', maxPrice)
          ..add('priceRangeCurrency', priceRangeCurrency))
        .toString();
  }
}

class GpriceSettingsData_getSearchSettings_resultsBuilder
    implements
        Builder<GpriceSettingsData_getSearchSettings_results,
            GpriceSettingsData_getSearchSettings_resultsBuilder> {
  _$GpriceSettingsData_getSearchSettings_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  double? _minPrice;
  double? get minPrice => _$this._minPrice;
  set minPrice(double? minPrice) => _$this._minPrice = minPrice;

  double? _maxPrice;
  double? get maxPrice => _$this._maxPrice;
  set maxPrice(double? maxPrice) => _$this._maxPrice = maxPrice;

  String? _priceRangeCurrency;
  String? get priceRangeCurrency => _$this._priceRangeCurrency;
  set priceRangeCurrency(String? priceRangeCurrency) =>
      _$this._priceRangeCurrency = priceRangeCurrency;

  GpriceSettingsData_getSearchSettings_resultsBuilder() {
    GpriceSettingsData_getSearchSettings_results._initializeBuilder(this);
  }

  GpriceSettingsData_getSearchSettings_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _minPrice = $v.minPrice;
      _maxPrice = $v.maxPrice;
      _priceRangeCurrency = $v.priceRangeCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpriceSettingsData_getSearchSettings_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpriceSettingsData_getSearchSettings_results;
  }

  @override
  void update(
      void Function(GpriceSettingsData_getSearchSettings_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GpriceSettingsData_getSearchSettings_results build() => _build();

  _$GpriceSettingsData_getSearchSettings_results _build() {
    final _$result = _$v ??
        new _$GpriceSettingsData_getSearchSettings_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GpriceSettingsData_getSearchSettings_results', 'G__typename'),
            id: id,
            minPrice: minPrice,
            maxPrice: maxPrice,
            priceRangeCurrency: priceRangeCurrency);
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrenciesListData extends GgetCurrenciesListData {
  @override
  final String G__typename;
  @override
  final GgetCurrenciesListData_getCurrencies? getCurrencies;

  factory _$GgetCurrenciesListData(
          [void Function(GgetCurrenciesListDataBuilder)? updates]) =>
      (new GgetCurrenciesListDataBuilder()..update(updates))._build();

  _$GgetCurrenciesListData._({required this.G__typename, this.getCurrencies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCurrenciesListData', 'G__typename');
  }

  @override
  GgetCurrenciesListData rebuild(
          void Function(GgetCurrenciesListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrenciesListDataBuilder toBuilder() =>
      new GgetCurrenciesListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrenciesListData &&
        G__typename == other.G__typename &&
        getCurrencies == other.getCurrencies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getCurrencies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCurrenciesListData')
          ..add('G__typename', G__typename)
          ..add('getCurrencies', getCurrencies))
        .toString();
  }
}

class GgetCurrenciesListDataBuilder
    implements Builder<GgetCurrenciesListData, GgetCurrenciesListDataBuilder> {
  _$GgetCurrenciesListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetCurrenciesListData_getCurrenciesBuilder? _getCurrencies;
  GgetCurrenciesListData_getCurrenciesBuilder get getCurrencies =>
      _$this._getCurrencies ??=
          new GgetCurrenciesListData_getCurrenciesBuilder();
  set getCurrencies(
          GgetCurrenciesListData_getCurrenciesBuilder? getCurrencies) =>
      _$this._getCurrencies = getCurrencies;

  GgetCurrenciesListDataBuilder() {
    GgetCurrenciesListData._initializeBuilder(this);
  }

  GgetCurrenciesListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getCurrencies = $v.getCurrencies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCurrenciesListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrenciesListData;
  }

  @override
  void update(void Function(GgetCurrenciesListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrenciesListData build() => _build();

  _$GgetCurrenciesListData _build() {
    _$GgetCurrenciesListData _$result;
    try {
      _$result = _$v ??
          new _$GgetCurrenciesListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetCurrenciesListData', 'G__typename'),
              getCurrencies: _getCurrencies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getCurrencies';
        _getCurrencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetCurrenciesListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrenciesListData_getCurrencies
    extends GgetCurrenciesListData_getCurrencies {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetCurrenciesListData_getCurrencies_results?>? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GgetCurrenciesListData_getCurrencies(
          [void Function(GgetCurrenciesListData_getCurrenciesBuilder)?
              updates]) =>
      (new GgetCurrenciesListData_getCurrenciesBuilder()..update(updates))
          ._build();

  _$GgetCurrenciesListData_getCurrencies._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCurrenciesListData_getCurrencies', 'G__typename');
  }

  @override
  GgetCurrenciesListData_getCurrencies rebuild(
          void Function(GgetCurrenciesListData_getCurrenciesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrenciesListData_getCurrenciesBuilder toBuilder() =>
      new GgetCurrenciesListData_getCurrenciesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrenciesListData_getCurrencies &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCurrenciesListData_getCurrencies')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GgetCurrenciesListData_getCurrenciesBuilder
    implements
        Builder<GgetCurrenciesListData_getCurrencies,
            GgetCurrenciesListData_getCurrenciesBuilder> {
  _$GgetCurrenciesListData_getCurrencies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetCurrenciesListData_getCurrencies_results?>? _results;
  ListBuilder<GgetCurrenciesListData_getCurrencies_results?> get results =>
      _$this._results ??=
          new ListBuilder<GgetCurrenciesListData_getCurrencies_results?>();
  set results(
          ListBuilder<GgetCurrenciesListData_getCurrencies_results?>?
              results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetCurrenciesListData_getCurrenciesBuilder() {
    GgetCurrenciesListData_getCurrencies._initializeBuilder(this);
  }

  GgetCurrenciesListData_getCurrenciesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCurrenciesListData_getCurrencies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrenciesListData_getCurrencies;
  }

  @override
  void update(
      void Function(GgetCurrenciesListData_getCurrenciesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrenciesListData_getCurrencies build() => _build();

  _$GgetCurrenciesListData_getCurrencies _build() {
    _$GgetCurrenciesListData_getCurrencies _$result;
    try {
      _$result = _$v ??
          new _$GgetCurrenciesListData_getCurrencies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetCurrenciesListData_getCurrencies', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetCurrenciesListData_getCurrencies',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrenciesListData_getCurrencies_results
    extends GgetCurrenciesListData_getCurrencies_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? symbol;
  @override
  final bool? isEnable;
  @override
  final bool? isPayment;
  @override
  final bool? isBaseCurrency;

  factory _$GgetCurrenciesListData_getCurrencies_results(
          [void Function(GgetCurrenciesListData_getCurrencies_resultsBuilder)?
              updates]) =>
      (new GgetCurrenciesListData_getCurrencies_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetCurrenciesListData_getCurrencies_results._(
      {required this.G__typename,
      this.id,
      this.symbol,
      this.isEnable,
      this.isPayment,
      this.isBaseCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetCurrenciesListData_getCurrencies_results', 'G__typename');
  }

  @override
  GgetCurrenciesListData_getCurrencies_results rebuild(
          void Function(GgetCurrenciesListData_getCurrencies_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrenciesListData_getCurrencies_resultsBuilder toBuilder() =>
      new GgetCurrenciesListData_getCurrencies_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrenciesListData_getCurrencies_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        symbol == other.symbol &&
        isEnable == other.isEnable &&
        isPayment == other.isPayment &&
        isBaseCurrency == other.isBaseCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, isPayment.hashCode);
    _$hash = $jc(_$hash, isBaseCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetCurrenciesListData_getCurrencies_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('symbol', symbol)
          ..add('isEnable', isEnable)
          ..add('isPayment', isPayment)
          ..add('isBaseCurrency', isBaseCurrency))
        .toString();
  }
}

class GgetCurrenciesListData_getCurrencies_resultsBuilder
    implements
        Builder<GgetCurrenciesListData_getCurrencies_results,
            GgetCurrenciesListData_getCurrencies_resultsBuilder> {
  _$GgetCurrenciesListData_getCurrencies_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  bool? _isPayment;
  bool? get isPayment => _$this._isPayment;
  set isPayment(bool? isPayment) => _$this._isPayment = isPayment;

  bool? _isBaseCurrency;
  bool? get isBaseCurrency => _$this._isBaseCurrency;
  set isBaseCurrency(bool? isBaseCurrency) =>
      _$this._isBaseCurrency = isBaseCurrency;

  GgetCurrenciesListData_getCurrencies_resultsBuilder() {
    GgetCurrenciesListData_getCurrencies_results._initializeBuilder(this);
  }

  GgetCurrenciesListData_getCurrencies_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _symbol = $v.symbol;
      _isEnable = $v.isEnable;
      _isPayment = $v.isPayment;
      _isBaseCurrency = $v.isBaseCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCurrenciesListData_getCurrencies_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrenciesListData_getCurrencies_results;
  }

  @override
  void update(
      void Function(GgetCurrenciesListData_getCurrencies_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrenciesListData_getCurrencies_results build() => _build();

  _$GgetCurrenciesListData_getCurrencies_results _build() {
    final _$result = _$v ??
        new _$GgetCurrenciesListData_getCurrencies_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetCurrenciesListData_getCurrencies_results', 'G__typename'),
            id: id,
            symbol: symbol,
            isEnable: isEnable,
            isPayment: isPayment,
            isBaseCurrency: isBaseCurrency);
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrencyData extends GgetCurrencyData {
  @override
  final String G__typename;
  @override
  final GgetCurrencyData_Currency? Currency;

  factory _$GgetCurrencyData(
          [void Function(GgetCurrencyDataBuilder)? updates]) =>
      (new GgetCurrencyDataBuilder()..update(updates))._build();

  _$GgetCurrencyData._({required this.G__typename, this.Currency}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCurrencyData', 'G__typename');
  }

  @override
  GgetCurrencyData rebuild(void Function(GgetCurrencyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrencyDataBuilder toBuilder() =>
      new GgetCurrencyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrencyData &&
        G__typename == other.G__typename &&
        Currency == other.Currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCurrencyData')
          ..add('G__typename', G__typename)
          ..add('Currency', Currency))
        .toString();
  }
}

class GgetCurrencyDataBuilder
    implements Builder<GgetCurrencyData, GgetCurrencyDataBuilder> {
  _$GgetCurrencyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetCurrencyData_CurrencyBuilder? _Currency;
  GgetCurrencyData_CurrencyBuilder get Currency =>
      _$this._Currency ??= new GgetCurrencyData_CurrencyBuilder();
  set Currency(GgetCurrencyData_CurrencyBuilder? Currency) =>
      _$this._Currency = Currency;

  GgetCurrencyDataBuilder() {
    GgetCurrencyData._initializeBuilder(this);
  }

  GgetCurrencyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Currency = $v.Currency?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCurrencyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrencyData;
  }

  @override
  void update(void Function(GgetCurrencyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrencyData build() => _build();

  _$GgetCurrencyData _build() {
    _$GgetCurrencyData _$result;
    try {
      _$result = _$v ??
          new _$GgetCurrencyData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetCurrencyData', 'G__typename'),
              Currency: _Currency?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Currency';
        _Currency?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetCurrencyData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrencyData_Currency extends GgetCurrencyData_Currency {
  @override
  final String G__typename;
  @override
  final GgetCurrencyData_Currency_result? result;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GgetCurrencyData_Currency(
          [void Function(GgetCurrencyData_CurrencyBuilder)? updates]) =>
      (new GgetCurrencyData_CurrencyBuilder()..update(updates))._build();

  _$GgetCurrencyData_Currency._(
      {required this.G__typename, this.result, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCurrencyData_Currency', 'G__typename');
  }

  @override
  GgetCurrencyData_Currency rebuild(
          void Function(GgetCurrencyData_CurrencyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrencyData_CurrencyBuilder toBuilder() =>
      new GgetCurrencyData_CurrencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrencyData_Currency &&
        G__typename == other.G__typename &&
        result == other.result &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCurrencyData_Currency')
          ..add('G__typename', G__typename)
          ..add('result', result)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GgetCurrencyData_CurrencyBuilder
    implements
        Builder<GgetCurrencyData_Currency, GgetCurrencyData_CurrencyBuilder> {
  _$GgetCurrencyData_Currency? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetCurrencyData_Currency_resultBuilder? _result;
  GgetCurrencyData_Currency_resultBuilder get result =>
      _$this._result ??= new GgetCurrencyData_Currency_resultBuilder();
  set result(GgetCurrencyData_Currency_resultBuilder? result) =>
      _$this._result = result;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetCurrencyData_CurrencyBuilder() {
    GgetCurrencyData_Currency._initializeBuilder(this);
  }

  GgetCurrencyData_CurrencyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCurrencyData_Currency other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrencyData_Currency;
  }

  @override
  void update(void Function(GgetCurrencyData_CurrencyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrencyData_Currency build() => _build();

  _$GgetCurrencyData_Currency _build() {
    _$GgetCurrencyData_Currency _$result;
    try {
      _$result = _$v ??
          new _$GgetCurrencyData_Currency._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetCurrencyData_Currency', 'G__typename'),
              result: _result?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetCurrencyData_Currency', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetCurrencyData_Currency_result
    extends GgetCurrencyData_Currency_result {
  @override
  final String G__typename;
  @override
  final String? base;
  @override
  final String? rates;

  factory _$GgetCurrencyData_Currency_result(
          [void Function(GgetCurrencyData_Currency_resultBuilder)? updates]) =>
      (new GgetCurrencyData_Currency_resultBuilder()..update(updates))._build();

  _$GgetCurrencyData_Currency_result._(
      {required this.G__typename, this.base, this.rates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetCurrencyData_Currency_result', 'G__typename');
  }

  @override
  GgetCurrencyData_Currency_result rebuild(
          void Function(GgetCurrencyData_Currency_resultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetCurrencyData_Currency_resultBuilder toBuilder() =>
      new GgetCurrencyData_Currency_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetCurrencyData_Currency_result &&
        G__typename == other.G__typename &&
        base == other.base &&
        rates == other.rates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, base.hashCode);
    _$hash = $jc(_$hash, rates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetCurrencyData_Currency_result')
          ..add('G__typename', G__typename)
          ..add('base', base)
          ..add('rates', rates))
        .toString();
  }
}

class GgetCurrencyData_Currency_resultBuilder
    implements
        Builder<GgetCurrencyData_Currency_result,
            GgetCurrencyData_Currency_resultBuilder> {
  _$GgetCurrencyData_Currency_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _base;
  String? get base => _$this._base;
  set base(String? base) => _$this._base = base;

  String? _rates;
  String? get rates => _$this._rates;
  set rates(String? rates) => _$this._rates = rates;

  GgetCurrencyData_Currency_resultBuilder() {
    GgetCurrencyData_Currency_result._initializeBuilder(this);
  }

  GgetCurrencyData_Currency_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _base = $v.base;
      _rates = $v.rates;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetCurrencyData_Currency_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetCurrencyData_Currency_result;
  }

  @override
  void update(void Function(GgetCurrencyData_Currency_resultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetCurrencyData_Currency_result build() => _build();

  _$GgetCurrencyData_Currency_result _build() {
    final _$result = _$v ??
        new _$GgetCurrencyData_Currency_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetCurrencyData_Currency_result', 'G__typename'),
            base: base,
            rates: rates);
    replace(_$result);
    return _$result;
  }
}

class _$GgetVersionData extends GgetVersionData {
  @override
  final String G__typename;
  @override
  final GgetVersionData_getApplicationVersionInfo? getApplicationVersionInfo;

  factory _$GgetVersionData([void Function(GgetVersionDataBuilder)? updates]) =>
      (new GgetVersionDataBuilder()..update(updates))._build();

  _$GgetVersionData._(
      {required this.G__typename, this.getApplicationVersionInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetVersionData', 'G__typename');
  }

  @override
  GgetVersionData rebuild(void Function(GgetVersionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetVersionDataBuilder toBuilder() =>
      new GgetVersionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetVersionData &&
        G__typename == other.G__typename &&
        getApplicationVersionInfo == other.getApplicationVersionInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getApplicationVersionInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetVersionData')
          ..add('G__typename', G__typename)
          ..add('getApplicationVersionInfo', getApplicationVersionInfo))
        .toString();
  }
}

class GgetVersionDataBuilder
    implements Builder<GgetVersionData, GgetVersionDataBuilder> {
  _$GgetVersionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetVersionData_getApplicationVersionInfoBuilder? _getApplicationVersionInfo;
  GgetVersionData_getApplicationVersionInfoBuilder
      get getApplicationVersionInfo => _$this._getApplicationVersionInfo ??=
          new GgetVersionData_getApplicationVersionInfoBuilder();
  set getApplicationVersionInfo(
          GgetVersionData_getApplicationVersionInfoBuilder?
              getApplicationVersionInfo) =>
      _$this._getApplicationVersionInfo = getApplicationVersionInfo;

  GgetVersionDataBuilder() {
    GgetVersionData._initializeBuilder(this);
  }

  GgetVersionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getApplicationVersionInfo = $v.getApplicationVersionInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetVersionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetVersionData;
  }

  @override
  void update(void Function(GgetVersionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetVersionData build() => _build();

  _$GgetVersionData _build() {
    _$GgetVersionData _$result;
    try {
      _$result = _$v ??
          new _$GgetVersionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetVersionData', 'G__typename'),
              getApplicationVersionInfo: _getApplicationVersionInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getApplicationVersionInfo';
        _getApplicationVersionInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetVersionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetVersionData_getApplicationVersionInfo
    extends GgetVersionData_getApplicationVersionInfo {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GgetVersionData_getApplicationVersionInfo_result? result;

  factory _$GgetVersionData_getApplicationVersionInfo(
          [void Function(GgetVersionData_getApplicationVersionInfoBuilder)?
              updates]) =>
      (new GgetVersionData_getApplicationVersionInfoBuilder()..update(updates))
          ._build();

  _$GgetVersionData_getApplicationVersionInfo._(
      {required this.G__typename, this.status, this.errorMessage, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetVersionData_getApplicationVersionInfo', 'G__typename');
  }

  @override
  GgetVersionData_getApplicationVersionInfo rebuild(
          void Function(GgetVersionData_getApplicationVersionInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetVersionData_getApplicationVersionInfoBuilder toBuilder() =>
      new GgetVersionData_getApplicationVersionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetVersionData_getApplicationVersionInfo &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetVersionData_getApplicationVersionInfo')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('result', result))
        .toString();
  }
}

class GgetVersionData_getApplicationVersionInfoBuilder
    implements
        Builder<GgetVersionData_getApplicationVersionInfo,
            GgetVersionData_getApplicationVersionInfoBuilder> {
  _$GgetVersionData_getApplicationVersionInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetVersionData_getApplicationVersionInfo_resultBuilder? _result;
  GgetVersionData_getApplicationVersionInfo_resultBuilder get result =>
      _$this._result ??=
          new GgetVersionData_getApplicationVersionInfo_resultBuilder();
  set result(GgetVersionData_getApplicationVersionInfo_resultBuilder? result) =>
      _$this._result = result;

  GgetVersionData_getApplicationVersionInfoBuilder() {
    GgetVersionData_getApplicationVersionInfo._initializeBuilder(this);
  }

  GgetVersionData_getApplicationVersionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetVersionData_getApplicationVersionInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetVersionData_getApplicationVersionInfo;
  }

  @override
  void update(
      void Function(GgetVersionData_getApplicationVersionInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetVersionData_getApplicationVersionInfo build() => _build();

  _$GgetVersionData_getApplicationVersionInfo _build() {
    _$GgetVersionData_getApplicationVersionInfo _$result;
    try {
      _$result = _$v ??
          new _$GgetVersionData_getApplicationVersionInfo._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetVersionData_getApplicationVersionInfo', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetVersionData_getApplicationVersionInfo',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetVersionData_getApplicationVersionInfo_result
    extends GgetVersionData_getApplicationVersionInfo_result {
  @override
  final String G__typename;
  @override
  final String? appStoreUrl;
  @override
  final String? playStoreUrl;

  factory _$GgetVersionData_getApplicationVersionInfo_result(
          [void Function(
                  GgetVersionData_getApplicationVersionInfo_resultBuilder)?
              updates]) =>
      (new GgetVersionData_getApplicationVersionInfo_resultBuilder()
            ..update(updates))
          ._build();

  _$GgetVersionData_getApplicationVersionInfo_result._(
      {required this.G__typename, this.appStoreUrl, this.playStoreUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetVersionData_getApplicationVersionInfo_result', 'G__typename');
  }

  @override
  GgetVersionData_getApplicationVersionInfo_result rebuild(
          void Function(GgetVersionData_getApplicationVersionInfo_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetVersionData_getApplicationVersionInfo_resultBuilder toBuilder() =>
      new GgetVersionData_getApplicationVersionInfo_resultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetVersionData_getApplicationVersionInfo_result &&
        G__typename == other.G__typename &&
        appStoreUrl == other.appStoreUrl &&
        playStoreUrl == other.playStoreUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, appStoreUrl.hashCode);
    _$hash = $jc(_$hash, playStoreUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetVersionData_getApplicationVersionInfo_result')
          ..add('G__typename', G__typename)
          ..add('appStoreUrl', appStoreUrl)
          ..add('playStoreUrl', playStoreUrl))
        .toString();
  }
}

class GgetVersionData_getApplicationVersionInfo_resultBuilder
    implements
        Builder<GgetVersionData_getApplicationVersionInfo_result,
            GgetVersionData_getApplicationVersionInfo_resultBuilder> {
  _$GgetVersionData_getApplicationVersionInfo_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _appStoreUrl;
  String? get appStoreUrl => _$this._appStoreUrl;
  set appStoreUrl(String? appStoreUrl) => _$this._appStoreUrl = appStoreUrl;

  String? _playStoreUrl;
  String? get playStoreUrl => _$this._playStoreUrl;
  set playStoreUrl(String? playStoreUrl) => _$this._playStoreUrl = playStoreUrl;

  GgetVersionData_getApplicationVersionInfo_resultBuilder() {
    GgetVersionData_getApplicationVersionInfo_result._initializeBuilder(this);
  }

  GgetVersionData_getApplicationVersionInfo_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _appStoreUrl = $v.appStoreUrl;
      _playStoreUrl = $v.playStoreUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetVersionData_getApplicationVersionInfo_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetVersionData_getApplicationVersionInfo_result;
  }

  @override
  void update(
      void Function(GgetVersionData_getApplicationVersionInfo_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetVersionData_getApplicationVersionInfo_result build() => _build();

  _$GgetVersionData_getApplicationVersionInfo_result _build() {
    final _$result = _$v ??
        new _$GgetVersionData_getApplicationVersionInfo_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetVersionData_getApplicationVersionInfo_result',
                'G__typename'),
            appStoreUrl: appStoreUrl,
            playStoreUrl: playStoreUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
