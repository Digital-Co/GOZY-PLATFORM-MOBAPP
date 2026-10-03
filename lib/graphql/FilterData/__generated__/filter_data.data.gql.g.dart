// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_data.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetListingSettingsCommonData>
    _$ggetListingSettingsCommonDataSerializer =
    new _$GgetListingSettingsCommonDataSerializer();
Serializer<GgetListingSettingsCommonData_getListingSettingsCommon>
    _$ggetListingSettingsCommonDataGetListingSettingsCommonSerializer =
    new _$GgetListingSettingsCommonData_getListingSettingsCommonSerializer();
Serializer<GgetListingSettingsCommonData_getListingSettingsCommon_results>
    _$ggetListingSettingsCommonDataGetListingSettingsCommonResultsSerializer =
    new _$GgetListingSettingsCommonData_getListingSettingsCommon_resultsSerializer();
Serializer<
        GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings>
    _$ggetListingSettingsCommonDataGetListingSettingsCommonResultsListSettingsSerializer =
    new _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsSerializer();
Serializer<
        GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName>
    _$ggetListingSettingsCommonDataGetListingSettingsCommonResultsListSettingsDynamicItemNameSerializer =
    new _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameSerializer();
Serializer<GgetListingSettingsCommonData_getSearchSettings>
    _$ggetListingSettingsCommonDataGetSearchSettingsSerializer =
    new _$GgetListingSettingsCommonData_getSearchSettingsSerializer();
Serializer<GgetListingSettingsCommonData_getSearchSettings_results>
    _$ggetListingSettingsCommonDataGetSearchSettingsResultsSerializer =
    new _$GgetListingSettingsCommonData_getSearchSettings_resultsSerializer();
Serializer<GgetListSettingsItemNameData>
    _$ggetListSettingsItemNameDataSerializer =
    new _$GgetListSettingsItemNameDataSerializer();
Serializer<GgetListSettingsItemNameData_getListSettingsItemName>
    _$ggetListSettingsItemNameDataGetListSettingsItemNameSerializer =
    new _$GgetListSettingsItemNameData_getListSettingsItemNameSerializer();
Serializer<GgetListSettingsItemNameData_getListSettingsItemName_results>
    _$ggetListSettingsItemNameDataGetListSettingsItemNameResultsSerializer =
    new _$GgetListSettingsItemNameData_getListSettingsItemName_resultsSerializer();
Serializer<
        GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName>
    _$ggetListSettingsItemNameDataGetListSettingsItemNameResultsDynamicItemNameSerializer =
    new _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameSerializer();

class _$GgetListingSettingsCommonDataSerializer
    implements StructuredSerializer<GgetListingSettingsCommonData> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData,
    _$GgetListingSettingsCommonData
  ];
  @override
  final String wireName = 'GgetListingSettingsCommonData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingSettingsCommonData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getListingSettingsCommon;
    if (value != null) {
      result
        ..add('getListingSettingsCommon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetListingSettingsCommonData_getListingSettingsCommon)));
    }
    value = object.getSearchSettings;
    if (value != null) {
      result
        ..add('getSearchSettings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetListingSettingsCommonData_getSearchSettings)));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingSettingsCommonDataBuilder();

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
        case 'getListingSettingsCommon':
          result.getListingSettingsCommon.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetListingSettingsCommonData_getListingSettingsCommon))!
              as GgetListingSettingsCommonData_getListingSettingsCommon);
          break;
        case 'getSearchSettings':
          result.getSearchSettings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetListingSettingsCommonData_getSearchSettings))!
              as GgetListingSettingsCommonData_getSearchSettings);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommonSerializer
    implements
        StructuredSerializer<
            GgetListingSettingsCommonData_getListingSettingsCommon> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData_getListingSettingsCommon,
    _$GgetListingSettingsCommonData_getListingSettingsCommon
  ];
  @override
  final String wireName =
      'GgetListingSettingsCommonData_getListingSettingsCommon';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListingSettingsCommonData_getListingSettingsCommon object,
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
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetListingSettingsCommonData_getListingSettingsCommon_results)
            ])));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListingSettingsCommonData_getListingSettingsCommonBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetListingSettingsCommonData_getListingSettingsCommon_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon_resultsSerializer
    implements
        StructuredSerializer<
            GgetListingSettingsCommonData_getListingSettingsCommon_results> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData_getListingSettingsCommon_results,
    _$GgetListingSettingsCommonData_getListingSettingsCommon_results
  ];
  @override
  final String wireName =
      'GgetListingSettingsCommonData_getListingSettingsCommon_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListingSettingsCommonData_getListingSettingsCommon_results object,
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
    value = object.typeName;
    if (value != null) {
      result
        ..add('typeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeLabel;
    if (value != null) {
      result
        ..add('typeLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listSettings;
    if (value != null) {
      result
        ..add('listSettings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings)
            ])));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder();

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
        case 'typeName':
          result.typeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeLabel':
          result.typeLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listSettings':
          result.listSettings.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsSerializer
    implements
        StructuredSerializer<
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings,
    _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
  ];
  @override
  final String wireName =
      'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
          object,
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
    value = object.typeId;
    if (value != null) {
      result
        ..add('typeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dynamicItemName;
    if (value != null) {
      result
        ..add('dynamicItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder();

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
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dynamicItemName':
          result.dynamicItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName))!
              as GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName);
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName,
    _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
  ];
  @override
  final String wireName =
      'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.es;
    if (value != null) {
      result
        ..add('es')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fr;
    if (value != null) {
      result
        ..add('fr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.it;
    if (value != null) {
      result
        ..add('it')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pt;
    if (value != null) {
      result
        ..add('pt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder();

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
        case 'ar':
          result.ar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'es':
          result.es = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fr':
          result.fr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'it':
          result.it = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pt':
          result.pt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonData_getSearchSettingsSerializer
    implements
        StructuredSerializer<GgetListingSettingsCommonData_getSearchSettings> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData_getSearchSettings,
    _$GgetListingSettingsCommonData_getSearchSettings
  ];
  @override
  final String wireName = 'GgetListingSettingsCommonData_getSearchSettings';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListingSettingsCommonData_getSearchSettings object,
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
            specifiedType: const FullType(
                GgetListingSettingsCommonData_getSearchSettings_results)));
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
  GgetListingSettingsCommonData_getSearchSettings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingSettingsCommonData_getSearchSettingsBuilder();

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
                      GgetListingSettingsCommonData_getSearchSettings_results))!
              as GgetListingSettingsCommonData_getSearchSettings_results);
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

class _$GgetListingSettingsCommonData_getSearchSettings_resultsSerializer
    implements
        StructuredSerializer<
            GgetListingSettingsCommonData_getSearchSettings_results> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonData_getSearchSettings_results,
    _$GgetListingSettingsCommonData_getSearchSettings_results
  ];
  @override
  final String wireName =
      'GgetListingSettingsCommonData_getSearchSettings_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListingSettingsCommonData_getSearchSettings_results object,
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
  GgetListingSettingsCommonData_getSearchSettings_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListingSettingsCommonData_getSearchSettings_resultsBuilder();

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

class _$GgetListSettingsItemNameDataSerializer
    implements StructuredSerializer<GgetListSettingsItemNameData> {
  @override
  final Iterable<Type> types = const [
    GgetListSettingsItemNameData,
    _$GgetListSettingsItemNameData
  ];
  @override
  final String wireName = 'GgetListSettingsItemNameData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListSettingsItemNameData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getListSettingsItemName;
    if (value != null) {
      result
        ..add('getListSettingsItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetListSettingsItemNameData_getListSettingsItemName)));
    }
    return result;
  }

  @override
  GgetListSettingsItemNameData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListSettingsItemNameDataBuilder();

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
        case 'getListSettingsItemName':
          result.getListSettingsItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetListSettingsItemNameData_getListSettingsItemName))!
              as GgetListSettingsItemNameData_getListSettingsItemName);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListSettingsItemNameData_getListSettingsItemNameSerializer
    implements
        StructuredSerializer<
            GgetListSettingsItemNameData_getListSettingsItemName> {
  @override
  final Iterable<Type> types = const [
    GgetListSettingsItemNameData_getListSettingsItemName,
    _$GgetListSettingsItemNameData_getListSettingsItemName
  ];
  @override
  final String wireName =
      'GgetListSettingsItemNameData_getListSettingsItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListSettingsItemNameData_getListSettingsItemName object,
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
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetListSettingsItemNameData_getListSettingsItemName_results)
            ])));
    }
    return result;
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListSettingsItemNameData_getListSettingsItemNameBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetListSettingsItemNameData_getListSettingsItemName_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListSettingsItemNameData_getListSettingsItemName_resultsSerializer
    implements
        StructuredSerializer<
            GgetListSettingsItemNameData_getListSettingsItemName_results> {
  @override
  final Iterable<Type> types = const [
    GgetListSettingsItemNameData_getListSettingsItemName_results,
    _$GgetListSettingsItemNameData_getListSettingsItemName_results
  ];
  @override
  final String wireName =
      'GgetListSettingsItemNameData_getListSettingsItemName_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetListSettingsItemNameData_getListSettingsItemName_results object,
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
    value = object.typeId;
    if (value != null) {
      result
        ..add('typeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dynamicItemName;
    if (value != null) {
      result
        ..add('dynamicItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName)));
    }
    return result;
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder();

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
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dynamicItemName':
          result.dynamicItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName))!
              as GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName,
    _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
  ];
  @override
  final String wireName =
      'GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.es;
    if (value != null) {
      result
        ..add('es')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fr;
    if (value != null) {
      result
        ..add('fr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.it;
    if (value != null) {
      result
        ..add('it')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pt;
    if (value != null) {
      result
        ..add('pt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder();

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
        case 'ar':
          result.ar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'es':
          result.es = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fr':
          result.fr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'it':
          result.it = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pt':
          result.pt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonData extends GgetListingSettingsCommonData {
  @override
  final String G__typename;
  @override
  final GgetListingSettingsCommonData_getListingSettingsCommon?
      getListingSettingsCommon;
  @override
  final GgetListingSettingsCommonData_getSearchSettings? getSearchSettings;

  factory _$GgetListingSettingsCommonData(
          [void Function(GgetListingSettingsCommonDataBuilder)? updates]) =>
      (new GgetListingSettingsCommonDataBuilder()..update(updates))._build();

  _$GgetListingSettingsCommonData._(
      {required this.G__typename,
      this.getListingSettingsCommon,
      this.getSearchSettings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetListingSettingsCommonData', 'G__typename');
  }

  @override
  GgetListingSettingsCommonData rebuild(
          void Function(GgetListingSettingsCommonDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonDataBuilder toBuilder() =>
      new GgetListingSettingsCommonDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSettingsCommonData &&
        G__typename == other.G__typename &&
        getListingSettingsCommon == other.getListingSettingsCommon &&
        getSearchSettings == other.getSearchSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getListingSettingsCommon.hashCode);
    _$hash = $jc(_$hash, getSearchSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListingSettingsCommonData')
          ..add('G__typename', G__typename)
          ..add('getListingSettingsCommon', getListingSettingsCommon)
          ..add('getSearchSettings', getSearchSettings))
        .toString();
  }
}

class GgetListingSettingsCommonDataBuilder
    implements
        Builder<GgetListingSettingsCommonData,
            GgetListingSettingsCommonDataBuilder> {
  _$GgetListingSettingsCommonData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetListingSettingsCommonData_getListingSettingsCommonBuilder?
      _getListingSettingsCommon;
  GgetListingSettingsCommonData_getListingSettingsCommonBuilder
      get getListingSettingsCommon => _$this._getListingSettingsCommon ??=
          new GgetListingSettingsCommonData_getListingSettingsCommonBuilder();
  set getListingSettingsCommon(
          GgetListingSettingsCommonData_getListingSettingsCommonBuilder?
              getListingSettingsCommon) =>
      _$this._getListingSettingsCommon = getListingSettingsCommon;

  GgetListingSettingsCommonData_getSearchSettingsBuilder? _getSearchSettings;
  GgetListingSettingsCommonData_getSearchSettingsBuilder
      get getSearchSettings => _$this._getSearchSettings ??=
          new GgetListingSettingsCommonData_getSearchSettingsBuilder();
  set getSearchSettings(
          GgetListingSettingsCommonData_getSearchSettingsBuilder?
              getSearchSettings) =>
      _$this._getSearchSettings = getSearchSettings;

  GgetListingSettingsCommonDataBuilder() {
    GgetListingSettingsCommonData._initializeBuilder(this);
  }

  GgetListingSettingsCommonDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getListingSettingsCommon = $v.getListingSettingsCommon?.toBuilder();
      _getSearchSettings = $v.getSearchSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingSettingsCommonData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsCommonData;
  }

  @override
  void update(void Function(GgetListingSettingsCommonDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData build() => _build();

  _$GgetListingSettingsCommonData _build() {
    _$GgetListingSettingsCommonData _$result;
    try {
      _$result = _$v ??
          new _$GgetListingSettingsCommonData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetListingSettingsCommonData', 'G__typename'),
              getListingSettingsCommon: _getListingSettingsCommon?.build(),
              getSearchSettings: _getSearchSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getListingSettingsCommon';
        _getListingSettingsCommon?.build();
        _$failedField = 'getSearchSettings';
        _getSearchSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListingSettingsCommonData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon
    extends GgetListingSettingsCommonData_getListingSettingsCommon {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final BuiltList<
      GgetListingSettingsCommonData_getListingSettingsCommon_results?>? results;

  factory _$GgetListingSettingsCommonData_getListingSettingsCommon(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommonBuilder)?
              updates]) =>
      (new GgetListingSettingsCommonData_getListingSettingsCommonBuilder()
            ..update(updates))
          ._build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon._(
      {required this.G__typename, this.status, this.errorMessage, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListingSettingsCommonData_getListingSettingsCommon',
        'G__typename');
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon rebuild(
          void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonData_getListingSettingsCommonBuilder toBuilder() =>
      new GgetListingSettingsCommonData_getListingSettingsCommonBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSettingsCommonData_getListingSettingsCommon &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListingSettingsCommonData_getListingSettingsCommon')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('results', results))
        .toString();
  }
}

class GgetListingSettingsCommonData_getListingSettingsCommonBuilder
    implements
        Builder<GgetListingSettingsCommonData_getListingSettingsCommon,
            GgetListingSettingsCommonData_getListingSettingsCommonBuilder> {
  _$GgetListingSettingsCommonData_getListingSettingsCommon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListBuilder<GgetListingSettingsCommonData_getListingSettingsCommon_results?>?
      _results;
  ListBuilder<GgetListingSettingsCommonData_getListingSettingsCommon_results?>
      get results => _$this._results ??= new ListBuilder<
          GgetListingSettingsCommonData_getListingSettingsCommon_results?>();
  set results(
          ListBuilder<
                  GgetListingSettingsCommonData_getListingSettingsCommon_results?>?
              results) =>
      _$this._results = results;

  GgetListingSettingsCommonData_getListingSettingsCommonBuilder() {
    GgetListingSettingsCommonData_getListingSettingsCommon._initializeBuilder(
        this);
  }

  GgetListingSettingsCommonData_getListingSettingsCommonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingSettingsCommonData_getListingSettingsCommon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsCommonData_getListingSettingsCommon;
  }

  @override
  void update(
      void Function(
              GgetListingSettingsCommonData_getListingSettingsCommonBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon build() => _build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon _build() {
    _$GgetListingSettingsCommonData_getListingSettingsCommon _$result;
    try {
      _$result = _$v ??
          new _$GgetListingSettingsCommonData_getListingSettingsCommon._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetListingSettingsCommonData_getListingSettingsCommon',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListingSettingsCommonData_getListingSettingsCommon',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon_results
    extends GgetListingSettingsCommonData_getListingSettingsCommon_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? typeName;
  @override
  final String? typeLabel;
  @override
  final String? isEnable;
  @override
  final int? count;
  @override
  final BuiltList<
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?>?
      listSettings;

  factory _$GgetListingSettingsCommonData_getListingSettingsCommon_results(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder)?
              updates]) =>
      (new GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon_results._(
      {required this.G__typename,
      this.id,
      this.typeName,
      this.typeLabel,
      this.isEnable,
      this.count,
      this.listSettings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListingSettingsCommonData_getListingSettingsCommon_results',
        'G__typename');
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results rebuild(
          void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder
      toBuilder() =>
          new GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetListingSettingsCommonData_getListingSettingsCommon_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        typeName == other.typeName &&
        typeLabel == other.typeLabel &&
        isEnable == other.isEnable &&
        count == other.count &&
        listSettings == other.listSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, typeLabel.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, listSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListingSettingsCommonData_getListingSettingsCommon_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('typeName', typeName)
          ..add('typeLabel', typeLabel)
          ..add('isEnable', isEnable)
          ..add('count', count)
          ..add('listSettings', listSettings))
        .toString();
  }
}

class GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder
    implements
        Builder<GgetListingSettingsCommonData_getListingSettingsCommon_results,
            GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder> {
  _$GgetListingSettingsCommonData_getListingSettingsCommon_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _typeLabel;
  String? get typeLabel => _$this._typeLabel;
  set typeLabel(String? typeLabel) => _$this._typeLabel = typeLabel;

  String? _isEnable;
  String? get isEnable => _$this._isEnable;
  set isEnable(String? isEnable) => _$this._isEnable = isEnable;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?>?
      _listSettings;
  ListBuilder<
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?>
      get listSettings => _$this._listSettings ??= new ListBuilder<
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?>();
  set listSettings(
          ListBuilder<
                  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?>?
              listSettings) =>
      _$this._listSettings = listSettings;

  GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder() {
    GgetListingSettingsCommonData_getListingSettingsCommon_results
        ._initializeBuilder(this);
  }

  GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _typeName = $v.typeName;
      _typeLabel = $v.typeLabel;
      _isEnable = $v.isEnable;
      _count = $v.count;
      _listSettings = $v.listSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetListingSettingsCommonData_getListingSettingsCommon_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetListingSettingsCommonData_getListingSettingsCommon_results;
  }

  @override
  void update(
      void Function(
              GgetListingSettingsCommonData_getListingSettingsCommon_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results build() =>
      _build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon_results _build() {
    _$GgetListingSettingsCommonData_getListingSettingsCommon_results _$result;
    try {
      _$result = _$v ??
          new _$GgetListingSettingsCommonData_getListingSettingsCommon_results
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetListingSettingsCommonData_getListingSettingsCommon_results',
                  'G__typename'),
              id: id,
              typeName: typeName,
              typeLabel: typeLabel,
              isEnable: isEnable,
              count: count,
              listSettings: _listSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listSettings';
        _listSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListingSettingsCommonData_getListingSettingsCommon_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
    extends GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? typeId;
  @override
  final String? itemName;
  @override
  final GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName?
      dynamicItemName;
  @override
  final String? isEnable;

  factory _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder)?
              updates]) =>
      (new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder()
            ..update(updates))
          ._build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings._(
      {required this.G__typename,
      this.id,
      this.typeId,
      this.itemName,
      this.dynamicItemName,
      this.isEnable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings',
        'G__typename');
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
      rebuild(
              void Function(
                      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder
      toBuilder() =>
          new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings &&
        G__typename == other.G__typename &&
        id == other.id &&
        typeId == other.typeId &&
        itemName == other.itemName &&
        dynamicItemName == other.dynamicItemName &&
        isEnable == other.isEnable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jc(_$hash, dynamicItemName.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('typeId', typeId)
          ..add('itemName', itemName)
          ..add('dynamicItemName', dynamicItemName)
          ..add('isEnable', isEnable))
        .toString();
  }
}

class GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder
    implements
        Builder<
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings,
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder> {
  _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _typeId;
  int? get typeId => _$this._typeId;
  set typeId(int? typeId) => _$this._typeId = typeId;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder?
      _dynamicItemName;
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder();
  set dynamicItemName(
          GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  String? _isEnable;
  String? get isEnable => _$this._isEnable;
  set isEnable(String? isEnable) => _$this._isEnable = isEnable;

  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder() {
    GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
        ._initializeBuilder(this);
  }

  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _typeId = $v.typeId;
      _itemName = $v.itemName;
      _dynamicItemName = $v.dynamicItemName?.toBuilder();
      _isEnable = $v.isEnable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings;
  }

  @override
  void update(
      void Function(
              GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettingsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
      build() => _build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
      _build() {
    _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
        _$result;
    try {
      _$result = _$v ??
          new _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings',
                  'G__typename'),
              id: id,
              typeId: typeId,
              itemName: itemName,
              dynamicItemName: _dynamicItemName?.build(),
              isEnable: isEnable);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicItemName';
        _dynamicItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
    extends GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName {
  @override
  final String G__typename;
  @override
  final String? ar;
  @override
  final String? en;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName(
          [void Function(
                  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder)?
              updates]) =>
      (new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName._(
      {required this.G__typename,
      this.ar,
      this.en,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName',
        'G__typename');
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
      rebuild(
              void Function(
                      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder
      toBuilder() =>
          new GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName &&
        G__typename == other.G__typename &&
        ar == other.ar &&
        en == other.en &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, es.hashCode);
    _$hash = $jc(_$hash, fr.hashCode);
    _$hash = $jc(_$hash, it.hashCode);
    _$hash = $jc(_$hash, pt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName')
          ..add('G__typename', G__typename)
          ..add('ar', ar)
          ..add('en', en)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder
    implements
        Builder<
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName,
            GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder> {
  _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _es;
  String? get es => _$this._es;
  set es(String? es) => _$this._es = es;

  String? _fr;
  String? get fr => _$this._fr;
  set fr(String? fr) => _$this._fr = fr;

  String? _it;
  String? get it => _$this._it;
  set it(String? it) => _$this._it = it;

  String? _pt;
  String? get pt => _$this._pt;
  set pt(String? pt) => _$this._pt = pt;

  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder() {
    GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
        ._initializeBuilder(this);
  }

  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ar = $v.ar;
      _en = $v.en;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
      build() => _build();

  _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
      _build() {
    final _$result = _$v ??
        new _$GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetListingSettingsCommonData_getListingSettingsCommon_results_listSettings_dynamicItemName',
                'G__typename'),
            ar: ar,
            en: en,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSettingsCommonData_getSearchSettings
    extends GgetListingSettingsCommonData_getSearchSettings {
  @override
  final String G__typename;
  @override
  final GgetListingSettingsCommonData_getSearchSettings_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GgetListingSettingsCommonData_getSearchSettings(
          [void Function(
                  GgetListingSettingsCommonData_getSearchSettingsBuilder)?
              updates]) =>
      (new GgetListingSettingsCommonData_getSearchSettingsBuilder()
            ..update(updates))
          ._build();

  _$GgetListingSettingsCommonData_getSearchSettings._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetListingSettingsCommonData_getSearchSettings', 'G__typename');
  }

  @override
  GgetListingSettingsCommonData_getSearchSettings rebuild(
          void Function(GgetListingSettingsCommonData_getSearchSettingsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonData_getSearchSettingsBuilder toBuilder() =>
      new GgetListingSettingsCommonData_getSearchSettingsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSettingsCommonData_getSearchSettings &&
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
    return (newBuiltValueToStringHelper(
            r'GgetListingSettingsCommonData_getSearchSettings')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GgetListingSettingsCommonData_getSearchSettingsBuilder
    implements
        Builder<GgetListingSettingsCommonData_getSearchSettings,
            GgetListingSettingsCommonData_getSearchSettingsBuilder> {
  _$GgetListingSettingsCommonData_getSearchSettings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder? _results;
  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder get results =>
      _$this._results ??=
          new GgetListingSettingsCommonData_getSearchSettings_resultsBuilder();
  set results(
          GgetListingSettingsCommonData_getSearchSettings_resultsBuilder?
              results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetListingSettingsCommonData_getSearchSettingsBuilder() {
    GgetListingSettingsCommonData_getSearchSettings._initializeBuilder(this);
  }

  GgetListingSettingsCommonData_getSearchSettingsBuilder get _$this {
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
  void replace(GgetListingSettingsCommonData_getSearchSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsCommonData_getSearchSettings;
  }

  @override
  void update(
      void Function(GgetListingSettingsCommonData_getSearchSettingsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData_getSearchSettings build() => _build();

  _$GgetListingSettingsCommonData_getSearchSettings _build() {
    _$GgetListingSettingsCommonData_getSearchSettings _$result;
    try {
      _$result = _$v ??
          new _$GgetListingSettingsCommonData_getSearchSettings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetListingSettingsCommonData_getSearchSettings',
                  'G__typename'),
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
            r'GgetListingSettingsCommonData_getSearchSettings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListingSettingsCommonData_getSearchSettings_results
    extends GgetListingSettingsCommonData_getSearchSettings_results {
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

  factory _$GgetListingSettingsCommonData_getSearchSettings_results(
          [void Function(
                  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder)?
              updates]) =>
      (new GgetListingSettingsCommonData_getSearchSettings_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetListingSettingsCommonData_getSearchSettings_results._(
      {required this.G__typename,
      this.id,
      this.minPrice,
      this.maxPrice,
      this.priceRangeCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListingSettingsCommonData_getSearchSettings_results',
        'G__typename');
  }

  @override
  GgetListingSettingsCommonData_getSearchSettings_results rebuild(
          void Function(
                  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder toBuilder() =>
      new GgetListingSettingsCommonData_getSearchSettings_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListingSettingsCommonData_getSearchSettings_results &&
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
            r'GgetListingSettingsCommonData_getSearchSettings_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('minPrice', minPrice)
          ..add('maxPrice', maxPrice)
          ..add('priceRangeCurrency', priceRangeCurrency))
        .toString();
  }
}

class GgetListingSettingsCommonData_getSearchSettings_resultsBuilder
    implements
        Builder<GgetListingSettingsCommonData_getSearchSettings_results,
            GgetListingSettingsCommonData_getSearchSettings_resultsBuilder> {
  _$GgetListingSettingsCommonData_getSearchSettings_results? _$v;

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

  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder() {
    GgetListingSettingsCommonData_getSearchSettings_results._initializeBuilder(
        this);
  }

  GgetListingSettingsCommonData_getSearchSettings_resultsBuilder get _$this {
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
  void replace(GgetListingSettingsCommonData_getSearchSettings_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsCommonData_getSearchSettings_results;
  }

  @override
  void update(
      void Function(
              GgetListingSettingsCommonData_getSearchSettings_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonData_getSearchSettings_results build() => _build();

  _$GgetListingSettingsCommonData_getSearchSettings_results _build() {
    final _$result = _$v ??
        new _$GgetListingSettingsCommonData_getSearchSettings_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetListingSettingsCommonData_getSearchSettings_results',
                'G__typename'),
            id: id,
            minPrice: minPrice,
            maxPrice: maxPrice,
            priceRangeCurrency: priceRangeCurrency);
    replace(_$result);
    return _$result;
  }
}

class _$GgetListSettingsItemNameData extends GgetListSettingsItemNameData {
  @override
  final String G__typename;
  @override
  final GgetListSettingsItemNameData_getListSettingsItemName?
      getListSettingsItemName;

  factory _$GgetListSettingsItemNameData(
          [void Function(GgetListSettingsItemNameDataBuilder)? updates]) =>
      (new GgetListSettingsItemNameDataBuilder()..update(updates))._build();

  _$GgetListSettingsItemNameData._(
      {required this.G__typename, this.getListSettingsItemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetListSettingsItemNameData', 'G__typename');
  }

  @override
  GgetListSettingsItemNameData rebuild(
          void Function(GgetListSettingsItemNameDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListSettingsItemNameDataBuilder toBuilder() =>
      new GgetListSettingsItemNameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListSettingsItemNameData &&
        G__typename == other.G__typename &&
        getListSettingsItemName == other.getListSettingsItemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getListSettingsItemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListSettingsItemNameData')
          ..add('G__typename', G__typename)
          ..add('getListSettingsItemName', getListSettingsItemName))
        .toString();
  }
}

class GgetListSettingsItemNameDataBuilder
    implements
        Builder<GgetListSettingsItemNameData,
            GgetListSettingsItemNameDataBuilder> {
  _$GgetListSettingsItemNameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetListSettingsItemNameData_getListSettingsItemNameBuilder?
      _getListSettingsItemName;
  GgetListSettingsItemNameData_getListSettingsItemNameBuilder
      get getListSettingsItemName => _$this._getListSettingsItemName ??=
          new GgetListSettingsItemNameData_getListSettingsItemNameBuilder();
  set getListSettingsItemName(
          GgetListSettingsItemNameData_getListSettingsItemNameBuilder?
              getListSettingsItemName) =>
      _$this._getListSettingsItemName = getListSettingsItemName;

  GgetListSettingsItemNameDataBuilder() {
    GgetListSettingsItemNameData._initializeBuilder(this);
  }

  GgetListSettingsItemNameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getListSettingsItemName = $v.getListSettingsItemName?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListSettingsItemNameData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListSettingsItemNameData;
  }

  @override
  void update(void Function(GgetListSettingsItemNameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListSettingsItemNameData build() => _build();

  _$GgetListSettingsItemNameData _build() {
    _$GgetListSettingsItemNameData _$result;
    try {
      _$result = _$v ??
          new _$GgetListSettingsItemNameData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetListSettingsItemNameData', 'G__typename'),
              getListSettingsItemName: _getListSettingsItemName?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getListSettingsItemName';
        _getListSettingsItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListSettingsItemNameData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListSettingsItemNameData_getListSettingsItemName
    extends GgetListSettingsItemNameData_getListSettingsItemName {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final int? count;
  @override
  final BuiltList<
      GgetListSettingsItemNameData_getListSettingsItemName_results?>? results;

  factory _$GgetListSettingsItemNameData_getListSettingsItemName(
          [void Function(
                  GgetListSettingsItemNameData_getListSettingsItemNameBuilder)?
              updates]) =>
      (new GgetListSettingsItemNameData_getListSettingsItemNameBuilder()
            ..update(updates))
          ._build();

  _$GgetListSettingsItemNameData_getListSettingsItemName._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.count,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetListSettingsItemNameData_getListSettingsItemName', 'G__typename');
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName rebuild(
          void Function(
                  GgetListSettingsItemNameData_getListSettingsItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListSettingsItemNameData_getListSettingsItemNameBuilder toBuilder() =>
      new GgetListSettingsItemNameData_getListSettingsItemNameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetListSettingsItemNameData_getListSettingsItemName &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListSettingsItemNameData_getListSettingsItemName')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class GgetListSettingsItemNameData_getListSettingsItemNameBuilder
    implements
        Builder<GgetListSettingsItemNameData_getListSettingsItemName,
            GgetListSettingsItemNameData_getListSettingsItemNameBuilder> {
  _$GgetListSettingsItemNameData_getListSettingsItemName? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<GgetListSettingsItemNameData_getListSettingsItemName_results?>?
      _results;
  ListBuilder<GgetListSettingsItemNameData_getListSettingsItemName_results?>
      get results => _$this._results ??= new ListBuilder<
          GgetListSettingsItemNameData_getListSettingsItemName_results?>();
  set results(
          ListBuilder<
                  GgetListSettingsItemNameData_getListSettingsItemName_results?>?
              results) =>
      _$this._results = results;

  GgetListSettingsItemNameData_getListSettingsItemNameBuilder() {
    GgetListSettingsItemNameData_getListSettingsItemName._initializeBuilder(
        this);
  }

  GgetListSettingsItemNameData_getListSettingsItemNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListSettingsItemNameData_getListSettingsItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListSettingsItemNameData_getListSettingsItemName;
  }

  @override
  void update(
      void Function(
              GgetListSettingsItemNameData_getListSettingsItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName build() => _build();

  _$GgetListSettingsItemNameData_getListSettingsItemName _build() {
    _$GgetListSettingsItemNameData_getListSettingsItemName _$result;
    try {
      _$result = _$v ??
          new _$GgetListSettingsItemNameData_getListSettingsItemName._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetListSettingsItemNameData_getListSettingsItemName',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              count: count,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListSettingsItemNameData_getListSettingsItemName',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListSettingsItemNameData_getListSettingsItemName_results
    extends GgetListSettingsItemNameData_getListSettingsItemName_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? typeId;
  @override
  final String? itemName;
  @override
  final GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName?
      dynamicItemName;

  factory _$GgetListSettingsItemNameData_getListSettingsItemName_results(
          [void Function(
                  GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder)?
              updates]) =>
      (new GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetListSettingsItemNameData_getListSettingsItemName_results._(
      {required this.G__typename,
      this.id,
      this.typeId,
      this.itemName,
      this.dynamicItemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListSettingsItemNameData_getListSettingsItemName_results',
        'G__typename');
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results rebuild(
          void Function(
                  GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder
      toBuilder() =>
          new GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetListSettingsItemNameData_getListSettingsItemName_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        typeId == other.typeId &&
        itemName == other.itemName &&
        dynamicItemName == other.dynamicItemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jc(_$hash, dynamicItemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListSettingsItemNameData_getListSettingsItemName_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('typeId', typeId)
          ..add('itemName', itemName)
          ..add('dynamicItemName', dynamicItemName))
        .toString();
  }
}

class GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder
    implements
        Builder<GgetListSettingsItemNameData_getListSettingsItemName_results,
            GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder> {
  _$GgetListSettingsItemNameData_getListSettingsItemName_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _typeId;
  int? get typeId => _$this._typeId;
  set typeId(int? typeId) => _$this._typeId = typeId;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder?
      _dynamicItemName;
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder();
  set dynamicItemName(
          GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder() {
    GgetListSettingsItemNameData_getListSettingsItemName_results
        ._initializeBuilder(this);
  }

  GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _typeId = $v.typeId;
      _itemName = $v.itemName;
      _dynamicItemName = $v.dynamicItemName?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetListSettingsItemNameData_getListSettingsItemName_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GgetListSettingsItemNameData_getListSettingsItemName_results;
  }

  @override
  void update(
      void Function(
              GgetListSettingsItemNameData_getListSettingsItemName_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results build() =>
      _build();

  _$GgetListSettingsItemNameData_getListSettingsItemName_results _build() {
    _$GgetListSettingsItemNameData_getListSettingsItemName_results _$result;
    try {
      _$result = _$v ??
          new _$GgetListSettingsItemNameData_getListSettingsItemName_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetListSettingsItemNameData_getListSettingsItemName_results',
                  'G__typename'),
              id: id,
              typeId: typeId,
              itemName: itemName,
              dynamicItemName: _dynamicItemName?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicItemName';
        _dynamicItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListSettingsItemNameData_getListSettingsItemName_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
    extends GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName {
  @override
  final String G__typename;
  @override
  final String? ar;
  @override
  final String? en;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName(
          [void Function(
                  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder)?
              updates]) =>
      (new GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName._(
      {required this.G__typename,
      this.ar,
      this.en,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName',
        'G__typename');
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
      rebuild(
              void Function(
                      GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder
      toBuilder() =>
          new GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName &&
        G__typename == other.G__typename &&
        ar == other.ar &&
        en == other.en &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, es.hashCode);
    _$hash = $jc(_$hash, fr.hashCode);
    _$hash = $jc(_$hash, it.hashCode);
    _$hash = $jc(_$hash, pt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName')
          ..add('G__typename', G__typename)
          ..add('ar', ar)
          ..add('en', en)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder
    implements
        Builder<
            GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName,
            GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder> {
  _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _es;
  String? get es => _$this._es;
  set es(String? es) => _$this._es = es;

  String? _fr;
  String? get fr => _$this._fr;
  set fr(String? fr) => _$this._fr = fr;

  String? _it;
  String? get it => _$this._it;
  set it(String? it) => _$this._it = it;

  String? _pt;
  String? get pt => _$this._pt;
  set pt(String? pt) => _$this._pt = pt;

  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder() {
    GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
        ._initializeBuilder(this);
  }

  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ar = $v.ar;
      _en = $v.en;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
      build() => _build();

  _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
      _build() {
    final _$result = _$v ??
        new _$GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetListSettingsItemNameData_getListSettingsItemName_results_dynamicItemName',
                'G__typename'),
            ar: ar,
            en: en,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
