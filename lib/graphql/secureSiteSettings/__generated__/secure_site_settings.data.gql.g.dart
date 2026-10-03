// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secure_site_settings.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetSecureSiteSettingsData> _$ggetSecureSiteSettingsDataSerializer =
    new _$GgetSecureSiteSettingsDataSerializer();
Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings>
    _$ggetSecureSiteSettingsDataGetSecureSiteSettingsSerializer =
    new _$GgetSecureSiteSettingsData_getSecureSiteSettingsSerializer();
Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings_results>
    _$ggetSecureSiteSettingsDataGetSecureSiteSettingsResultsSerializer =
    new _$GgetSecureSiteSettingsData_getSecureSiteSettings_resultsSerializer();
Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage>
    _$ggetSecureSiteSettingsDataGetSecureSiteSettingsMobileLanguageSerializer =
    new _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageSerializer();
Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons>
    _$ggetSecureSiteSettingsDataGetSecureSiteSettingsTravelReasonsSerializer =
    new _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsSerializer();
Serializer<GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests>
    _$ggetSecureSiteSettingsDataGetSecureSiteSettingsTargetedGuestsSerializer =
    new _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsSerializer();
Serializer<GgetImageBannerData> _$ggetImageBannerDataSerializer =
    new _$GgetImageBannerDataSerializer();
Serializer<GgetImageBannerData_getImageBanner>
    _$ggetImageBannerDataGetImageBannerSerializer =
    new _$GgetImageBannerData_getImageBannerSerializer();
Serializer<GgetImageBannerData_getImageBanner_result>
    _$ggetImageBannerDataGetImageBannerResultSerializer =
    new _$GgetImageBannerData_getImageBanner_resultSerializer();

class _$GgetSecureSiteSettingsDataSerializer
    implements StructuredSerializer<GgetSecureSiteSettingsData> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsData,
    _$GgetSecureSiteSettingsData
  ];
  @override
  final String wireName = 'GgetSecureSiteSettingsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetSecureSiteSettingsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getSecureSiteSettings;
    if (value != null) {
      result
        ..add('getSecureSiteSettings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetSecureSiteSettingsData_getSecureSiteSettings)));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetSecureSiteSettingsDataBuilder();

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
        case 'getSecureSiteSettings':
          result.getSecureSiteSettings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetSecureSiteSettingsData_getSecureSiteSettings))!
              as GgetSecureSiteSettingsData_getSecureSiteSettings);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettingsSerializer
    implements
        StructuredSerializer<GgetSecureSiteSettingsData_getSecureSiteSettings> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsData_getSecureSiteSettings,
    _$GgetSecureSiteSettingsData_getSecureSiteSettings
  ];
  @override
  final String wireName = 'GgetSecureSiteSettingsData_getSecureSiteSettings';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetSecureSiteSettingsData_getSecureSiteSettings object,
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
                  GgetSecureSiteSettingsData_getSecureSiteSettings_results)
            ])));
    }
    value = object.mobileLanguage;
    if (value != null) {
      result
        ..add('mobileLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage)
            ])));
    }
    value = object.travelReasons;
    if (value != null) {
      result
        ..add('travelReasons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons)
            ])));
    }
    value = object.targetedGuests;
    if (value != null) {
      result
        ..add('targetedGuests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests)
            ])));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder();

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
                    GgetSecureSiteSettingsData_getSecureSiteSettings_results)
              ]))! as BuiltList<Object?>);
          break;
        case 'mobileLanguage':
          result.mobileLanguage.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage)
              ]))! as BuiltList<Object?>);
          break;
        case 'travelReasons':
          result.travelReasons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons)
              ]))! as BuiltList<Object?>);
          break;
        case 'targetedGuests':
          result.targetedGuests.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_resultsSerializer
    implements
        StructuredSerializer<
            GgetSecureSiteSettingsData_getSecureSiteSettings_results> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsData_getSecureSiteSettings_results,
    _$GgetSecureSiteSettingsData_getSecureSiteSettings_results
  ];
  @override
  final String wireName =
      'GgetSecureSiteSettingsData_getSecureSiteSettings_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetSecureSiteSettingsData_getSecureSiteSettings_results object,
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageSerializer
    implements
        StructuredSerializer<
            GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage,
    _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage
  ];
  @override
  final String wireName =
      'GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage object,
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
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.languageCode;
    if (value != null) {
      result
        ..add('languageCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.jsonFile;
    if (value != null) {
      result
        ..add('jsonFile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder();

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
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'languageCode':
          result.languageCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'jsonFile':
          result.jsonFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsSerializer
    implements
        StructuredSerializer<
            GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons,
    _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons
  ];
  @override
  final String wireName =
      'GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons object,
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
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsSerializer
    implements
        StructuredSerializer<
            GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests> {
  @override
  final Iterable<Type> types = const [
    GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests,
    _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests
  ];
  @override
  final String wireName =
      'GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests object,
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
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetImageBannerDataSerializer
    implements StructuredSerializer<GgetImageBannerData> {
  @override
  final Iterable<Type> types = const [
    GgetImageBannerData,
    _$GgetImageBannerData
  ];
  @override
  final String wireName = 'GgetImageBannerData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetImageBannerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getImageBanner;
    if (value != null) {
      result
        ..add('getImageBanner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GgetImageBannerData_getImageBanner)));
    }
    return result;
  }

  @override
  GgetImageBannerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetImageBannerDataBuilder();

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
        case 'getImageBanner':
          result.getImageBanner.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GgetImageBannerData_getImageBanner))!
              as GgetImageBannerData_getImageBanner);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetImageBannerData_getImageBannerSerializer
    implements StructuredSerializer<GgetImageBannerData_getImageBanner> {
  @override
  final Iterable<Type> types = const [
    GgetImageBannerData_getImageBanner,
    _$GgetImageBannerData_getImageBanner
  ];
  @override
  final String wireName = 'GgetImageBannerData_getImageBanner';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetImageBannerData_getImageBanner object,
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
            specifiedType:
                const FullType(GgetImageBannerData_getImageBanner_result)));
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
  GgetImageBannerData_getImageBanner deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetImageBannerData_getImageBannerBuilder();

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
                  specifiedType: const FullType(
                      GgetImageBannerData_getImageBanner_result))!
              as GgetImageBannerData_getImageBanner_result);
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

class _$GgetImageBannerData_getImageBanner_resultSerializer
    implements StructuredSerializer<GgetImageBannerData_getImageBanner_result> {
  @override
  final Iterable<Type> types = const [
    GgetImageBannerData_getImageBanner_result,
    _$GgetImageBannerData_getImageBanner_result
  ];
  @override
  final String wireName = 'GgetImageBannerData_getImageBanner_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetImageBannerData_getImageBanner_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buttonLabel;
    if (value != null) {
      result
        ..add('buttonLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetImageBannerData_getImageBanner_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetImageBannerData_getImageBanner_resultBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buttonLabel':
          result.buttonLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetSecureSiteSettingsData extends GgetSecureSiteSettingsData {
  @override
  final String G__typename;
  @override
  final GgetSecureSiteSettingsData_getSecureSiteSettings? getSecureSiteSettings;

  factory _$GgetSecureSiteSettingsData(
          [void Function(GgetSecureSiteSettingsDataBuilder)? updates]) =>
      (new GgetSecureSiteSettingsDataBuilder()..update(updates))._build();

  _$GgetSecureSiteSettingsData._(
      {required this.G__typename, this.getSecureSiteSettings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetSecureSiteSettingsData', 'G__typename');
  }

  @override
  GgetSecureSiteSettingsData rebuild(
          void Function(GgetSecureSiteSettingsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsDataBuilder toBuilder() =>
      new GgetSecureSiteSettingsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetSecureSiteSettingsData &&
        G__typename == other.G__typename &&
        getSecureSiteSettings == other.getSecureSiteSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getSecureSiteSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetSecureSiteSettingsData')
          ..add('G__typename', G__typename)
          ..add('getSecureSiteSettings', getSecureSiteSettings))
        .toString();
  }
}

class GgetSecureSiteSettingsDataBuilder
    implements
        Builder<GgetSecureSiteSettingsData, GgetSecureSiteSettingsDataBuilder> {
  _$GgetSecureSiteSettingsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder?
      _getSecureSiteSettings;
  GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder
      get getSecureSiteSettings => _$this._getSecureSiteSettings ??=
          new GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder();
  set getSecureSiteSettings(
          GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder?
              getSecureSiteSettings) =>
      _$this._getSecureSiteSettings = getSecureSiteSettings;

  GgetSecureSiteSettingsDataBuilder() {
    GgetSecureSiteSettingsData._initializeBuilder(this);
  }

  GgetSecureSiteSettingsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getSecureSiteSettings = $v.getSecureSiteSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetSecureSiteSettingsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetSecureSiteSettingsData;
  }

  @override
  void update(void Function(GgetSecureSiteSettingsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsData build() => _build();

  _$GgetSecureSiteSettingsData _build() {
    _$GgetSecureSiteSettingsData _$result;
    try {
      _$result = _$v ??
          new _$GgetSecureSiteSettingsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetSecureSiteSettingsData', 'G__typename'),
              getSecureSiteSettings: _getSecureSiteSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getSecureSiteSettings';
        _getSecureSiteSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetSecureSiteSettingsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings
    extends GgetSecureSiteSettingsData_getSecureSiteSettings {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final BuiltList<GgetSecureSiteSettingsData_getSecureSiteSettings_results?>?
      results;
  @override
  final BuiltList<
          GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?>?
      mobileLanguage;
  @override
  final BuiltList<
          GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?>?
      travelReasons;
  @override
  final BuiltList<
          GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?>?
      targetedGuests;

  factory _$GgetSecureSiteSettingsData_getSecureSiteSettings(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder)?
              updates]) =>
      (new GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder()
            ..update(updates))
          ._build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.results,
      this.mobileLanguage,
      this.travelReasons,
      this.targetedGuests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetSecureSiteSettingsData_getSecureSiteSettings', 'G__typename');
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings rebuild(
          void Function(GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder toBuilder() =>
      new GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetSecureSiteSettingsData_getSecureSiteSettings &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        results == other.results &&
        mobileLanguage == other.mobileLanguage &&
        travelReasons == other.travelReasons &&
        targetedGuests == other.targetedGuests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, mobileLanguage.hashCode);
    _$hash = $jc(_$hash, travelReasons.hashCode);
    _$hash = $jc(_$hash, targetedGuests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetSecureSiteSettingsData_getSecureSiteSettings')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('results', results)
          ..add('mobileLanguage', mobileLanguage)
          ..add('travelReasons', travelReasons)
          ..add('targetedGuests', targetedGuests))
        .toString();
  }
}

class GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder
    implements
        Builder<GgetSecureSiteSettingsData_getSecureSiteSettings,
            GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder> {
  _$GgetSecureSiteSettingsData_getSecureSiteSettings? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_results?>?
      _results;
  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_results?>
      get results => _$this._results ??= new ListBuilder<
          GgetSecureSiteSettingsData_getSecureSiteSettings_results?>();
  set results(
          ListBuilder<
                  GgetSecureSiteSettingsData_getSecureSiteSettings_results?>?
              results) =>
      _$this._results = results;

  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?>?
      _mobileLanguage;
  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?>
      get mobileLanguage => _$this._mobileLanguage ??= new ListBuilder<
          GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?>();
  set mobileLanguage(
          ListBuilder<
                  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage?>?
              mobileLanguage) =>
      _$this._mobileLanguage = mobileLanguage;

  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?>?
      _travelReasons;
  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?>
      get travelReasons => _$this._travelReasons ??= new ListBuilder<
          GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?>();
  set travelReasons(
          ListBuilder<
                  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons?>?
              travelReasons) =>
      _$this._travelReasons = travelReasons;

  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?>?
      _targetedGuests;
  ListBuilder<GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?>
      get targetedGuests => _$this._targetedGuests ??= new ListBuilder<
          GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?>();
  set targetedGuests(
          ListBuilder<
                  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests?>?
              targetedGuests) =>
      _$this._targetedGuests = targetedGuests;

  GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder() {
    GgetSecureSiteSettingsData_getSecureSiteSettings._initializeBuilder(this);
  }

  GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _results = $v.results?.toBuilder();
      _mobileLanguage = $v.mobileLanguage?.toBuilder();
      _travelReasons = $v.travelReasons?.toBuilder();
      _targetedGuests = $v.targetedGuests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetSecureSiteSettingsData_getSecureSiteSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetSecureSiteSettingsData_getSecureSiteSettings;
  }

  @override
  void update(
      void Function(GgetSecureSiteSettingsData_getSecureSiteSettingsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings build() => _build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings _build() {
    _$GgetSecureSiteSettingsData_getSecureSiteSettings _$result;
    try {
      _$result = _$v ??
          new _$GgetSecureSiteSettingsData_getSecureSiteSettings._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetSecureSiteSettingsData_getSecureSiteSettings',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              results: _results?.build(),
              mobileLanguage: _mobileLanguage?.build(),
              travelReasons: _travelReasons?.build(),
              targetedGuests: _targetedGuests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
        _$failedField = 'mobileLanguage';
        _mobileLanguage?.build();
        _$failedField = 'travelReasons';
        _travelReasons?.build();
        _$failedField = 'targetedGuests';
        _targetedGuests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetSecureSiteSettingsData_getSecureSiteSettings',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_results
    extends GgetSecureSiteSettingsData_getSecureSiteSettings_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? type;
  @override
  final String? status;

  factory _$GgetSecureSiteSettingsData_getSecureSiteSettings_results(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder)?
              updates]) =>
      (new GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_results._(
      {required this.G__typename,
      this.id,
      this.title,
      this.name,
      this.value,
      this.type,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetSecureSiteSettingsData_getSecureSiteSettings_results',
        'G__typename');
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_results rebuild(
          void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder toBuilder() =>
      new GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetSecureSiteSettingsData_getSecureSiteSettings_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        name == other.name &&
        value == other.value &&
        type == other.type &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetSecureSiteSettingsData_getSecureSiteSettings_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('name', name)
          ..add('value', value)
          ..add('type', type)
          ..add('status', status))
        .toString();
  }
}

class GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder
    implements
        Builder<GgetSecureSiteSettingsData_getSecureSiteSettings_results,
            GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder> {
  _$GgetSecureSiteSettingsData_getSecureSiteSettings_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder() {
    GgetSecureSiteSettingsData_getSecureSiteSettings_results._initializeBuilder(
        this);
  }

  GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _name = $v.name;
      _value = $v.value;
      _type = $v.type;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetSecureSiteSettingsData_getSecureSiteSettings_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetSecureSiteSettingsData_getSecureSiteSettings_results;
  }

  @override
  void update(
      void Function(
              GgetSecureSiteSettingsData_getSecureSiteSettings_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_results build() => _build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_results _build() {
    final _$result = _$v ??
        new _$GgetSecureSiteSettingsData_getSecureSiteSettings_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetSecureSiteSettingsData_getSecureSiteSettings_results',
                'G__typename'),
            id: id,
            title: title,
            name: name,
            value: value,
            type: type,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage
    extends GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? language;
  @override
  final String? languageCode;
  @override
  final bool? isActive;
  @override
  final bool? isEnable;
  @override
  final String? jsonFile;

  factory _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder)?
              updates]) =>
      (new GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder()
            ..update(updates))
          ._build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage._(
      {required this.G__typename,
      this.id,
      this.language,
      this.languageCode,
      this.isActive,
      this.isEnable,
      this.jsonFile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage',
        'G__typename');
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage rebuild(
          void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder
      toBuilder() =>
          new GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage &&
        G__typename == other.G__typename &&
        id == other.id &&
        language == other.language &&
        languageCode == other.languageCode &&
        isActive == other.isActive &&
        isEnable == other.isEnable &&
        jsonFile == other.jsonFile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, languageCode.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, jsonFile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('language', language)
          ..add('languageCode', languageCode)
          ..add('isActive', isActive)
          ..add('isEnable', isEnable)
          ..add('jsonFile', jsonFile))
        .toString();
  }
}

class GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder
    implements
        Builder<GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage,
            GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder> {
  _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _languageCode;
  String? get languageCode => _$this._languageCode;
  set languageCode(String? languageCode) => _$this._languageCode = languageCode;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _jsonFile;
  String? get jsonFile => _$this._jsonFile;
  set jsonFile(String? jsonFile) => _$this._jsonFile = jsonFile;

  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder() {
    GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage
        ._initializeBuilder(this);
  }

  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _language = $v.language;
      _languageCode = $v.languageCode;
      _isActive = $v.isActive;
      _isEnable = $v.isEnable;
      _jsonFile = $v.jsonFile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage;
  }

  @override
  void update(
      void Function(
              GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage build() =>
      _build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage _build() {
    final _$result = _$v ??
        new _$GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetSecureSiteSettingsData_getSecureSiteSettings_mobileLanguage',
                'G__typename'),
            id: id,
            language: language,
            languageCode: languageCode,
            isActive: isActive,
            isEnable: isEnable,
            jsonFile: jsonFile);
    replace(_$result);
    return _$result;
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons
    extends GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? label;
  @override
  final String? value;

  factory _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder)?
              updates]) =>
      (new GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder()
            ..update(updates))
          ._build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons._(
      {required this.G__typename, this.id, this.label, this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons',
        'G__typename');
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons rebuild(
          void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder
      toBuilder() =>
          new GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons &&
        G__typename == other.G__typename &&
        id == other.id &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder
    implements
        Builder<GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons,
            GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder> {
  _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder() {
    GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons
        ._initializeBuilder(this);
  }

  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons;
  }

  @override
  void update(
      void Function(
              GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasonsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons build() =>
      _build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons _build() {
    final _$result = _$v ??
        new _$GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetSecureSiteSettingsData_getSecureSiteSettings_travelReasons',
                'G__typename'),
            id: id,
            label: label,
            value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests
    extends GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? label;
  @override
  final String? value;

  factory _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests(
          [void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder)?
              updates]) =>
      (new GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder()
            ..update(updates))
          ._build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests._(
      {required this.G__typename, this.id, this.label, this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests',
        'G__typename');
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests rebuild(
          void Function(
                  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder
      toBuilder() =>
          new GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests &&
        G__typename == other.G__typename &&
        id == other.id &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder
    implements
        Builder<GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests,
            GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder> {
  _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder() {
    GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests
        ._initializeBuilder(this);
  }

  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests;
  }

  @override
  void update(
      void Function(
              GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuestsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests build() =>
      _build();

  _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests _build() {
    final _$result = _$v ??
        new _$GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetSecureSiteSettingsData_getSecureSiteSettings_targetedGuests',
                'G__typename'),
            id: id,
            label: label,
            value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GgetImageBannerData extends GgetImageBannerData {
  @override
  final String G__typename;
  @override
  final GgetImageBannerData_getImageBanner? getImageBanner;

  factory _$GgetImageBannerData(
          [void Function(GgetImageBannerDataBuilder)? updates]) =>
      (new GgetImageBannerDataBuilder()..update(updates))._build();

  _$GgetImageBannerData._({required this.G__typename, this.getImageBanner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetImageBannerData', 'G__typename');
  }

  @override
  GgetImageBannerData rebuild(
          void Function(GgetImageBannerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetImageBannerDataBuilder toBuilder() =>
      new GgetImageBannerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetImageBannerData &&
        G__typename == other.G__typename &&
        getImageBanner == other.getImageBanner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getImageBanner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetImageBannerData')
          ..add('G__typename', G__typename)
          ..add('getImageBanner', getImageBanner))
        .toString();
  }
}

class GgetImageBannerDataBuilder
    implements Builder<GgetImageBannerData, GgetImageBannerDataBuilder> {
  _$GgetImageBannerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetImageBannerData_getImageBannerBuilder? _getImageBanner;
  GgetImageBannerData_getImageBannerBuilder get getImageBanner =>
      _$this._getImageBanner ??=
          new GgetImageBannerData_getImageBannerBuilder();
  set getImageBanner(
          GgetImageBannerData_getImageBannerBuilder? getImageBanner) =>
      _$this._getImageBanner = getImageBanner;

  GgetImageBannerDataBuilder() {
    GgetImageBannerData._initializeBuilder(this);
  }

  GgetImageBannerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getImageBanner = $v.getImageBanner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetImageBannerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetImageBannerData;
  }

  @override
  void update(void Function(GgetImageBannerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetImageBannerData build() => _build();

  _$GgetImageBannerData _build() {
    _$GgetImageBannerData _$result;
    try {
      _$result = _$v ??
          new _$GgetImageBannerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetImageBannerData', 'G__typename'),
              getImageBanner: _getImageBanner?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getImageBanner';
        _getImageBanner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetImageBannerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetImageBannerData_getImageBanner
    extends GgetImageBannerData_getImageBanner {
  @override
  final String G__typename;
  @override
  final GgetImageBannerData_getImageBanner_result? result;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GgetImageBannerData_getImageBanner(
          [void Function(GgetImageBannerData_getImageBannerBuilder)?
              updates]) =>
      (new GgetImageBannerData_getImageBannerBuilder()..update(updates))
          ._build();

  _$GgetImageBannerData_getImageBanner._(
      {required this.G__typename, this.result, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetImageBannerData_getImageBanner', 'G__typename');
  }

  @override
  GgetImageBannerData_getImageBanner rebuild(
          void Function(GgetImageBannerData_getImageBannerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetImageBannerData_getImageBannerBuilder toBuilder() =>
      new GgetImageBannerData_getImageBannerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetImageBannerData_getImageBanner &&
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
    return (newBuiltValueToStringHelper(r'GgetImageBannerData_getImageBanner')
          ..add('G__typename', G__typename)
          ..add('result', result)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GgetImageBannerData_getImageBannerBuilder
    implements
        Builder<GgetImageBannerData_getImageBanner,
            GgetImageBannerData_getImageBannerBuilder> {
  _$GgetImageBannerData_getImageBanner? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetImageBannerData_getImageBanner_resultBuilder? _result;
  GgetImageBannerData_getImageBanner_resultBuilder get result =>
      _$this._result ??= new GgetImageBannerData_getImageBanner_resultBuilder();
  set result(GgetImageBannerData_getImageBanner_resultBuilder? result) =>
      _$this._result = result;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetImageBannerData_getImageBannerBuilder() {
    GgetImageBannerData_getImageBanner._initializeBuilder(this);
  }

  GgetImageBannerData_getImageBannerBuilder get _$this {
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
  void replace(GgetImageBannerData_getImageBanner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetImageBannerData_getImageBanner;
  }

  @override
  void update(
      void Function(GgetImageBannerData_getImageBannerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetImageBannerData_getImageBanner build() => _build();

  _$GgetImageBannerData_getImageBanner _build() {
    _$GgetImageBannerData_getImageBanner _$result;
    try {
      _$result = _$v ??
          new _$GgetImageBannerData_getImageBanner._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetImageBannerData_getImageBanner', 'G__typename'),
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
            r'GgetImageBannerData_getImageBanner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetImageBannerData_getImageBanner_result
    extends GgetImageBannerData_getImageBanner_result {
  @override
  final String G__typename;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? buttonLabel;
  @override
  final String? image;

  factory _$GgetImageBannerData_getImageBanner_result(
          [void Function(GgetImageBannerData_getImageBanner_resultBuilder)?
              updates]) =>
      (new GgetImageBannerData_getImageBanner_resultBuilder()..update(updates))
          ._build();

  _$GgetImageBannerData_getImageBanner_result._(
      {required this.G__typename,
      this.title,
      this.description,
      this.buttonLabel,
      this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetImageBannerData_getImageBanner_result', 'G__typename');
  }

  @override
  GgetImageBannerData_getImageBanner_result rebuild(
          void Function(GgetImageBannerData_getImageBanner_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetImageBannerData_getImageBanner_resultBuilder toBuilder() =>
      new GgetImageBannerData_getImageBanner_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetImageBannerData_getImageBanner_result &&
        G__typename == other.G__typename &&
        title == other.title &&
        description == other.description &&
        buttonLabel == other.buttonLabel &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, buttonLabel.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetImageBannerData_getImageBanner_result')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('description', description)
          ..add('buttonLabel', buttonLabel)
          ..add('image', image))
        .toString();
  }
}

class GgetImageBannerData_getImageBanner_resultBuilder
    implements
        Builder<GgetImageBannerData_getImageBanner_result,
            GgetImageBannerData_getImageBanner_resultBuilder> {
  _$GgetImageBannerData_getImageBanner_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _buttonLabel;
  String? get buttonLabel => _$this._buttonLabel;
  set buttonLabel(String? buttonLabel) => _$this._buttonLabel = buttonLabel;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GgetImageBannerData_getImageBanner_resultBuilder() {
    GgetImageBannerData_getImageBanner_result._initializeBuilder(this);
  }

  GgetImageBannerData_getImageBanner_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _description = $v.description;
      _buttonLabel = $v.buttonLabel;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetImageBannerData_getImageBanner_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetImageBannerData_getImageBanner_result;
  }

  @override
  void update(
      void Function(GgetImageBannerData_getImageBanner_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetImageBannerData_getImageBanner_result build() => _build();

  _$GgetImageBannerData_getImageBanner_result _build() {
    final _$result = _$v ??
        new _$GgetImageBannerData_getImageBanner_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GgetImageBannerData_getImageBanner_result', 'G__typename'),
            title: title,
            description: description,
            buttonLabel: buttonLabel,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
