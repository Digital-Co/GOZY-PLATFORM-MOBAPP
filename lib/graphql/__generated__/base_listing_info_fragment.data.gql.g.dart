// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_listing_info_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GviewListingShortFragmentData>
    _$gviewListingShortFragmentDataSerializer =
    new _$GviewListingShortFragmentDataSerializer();
Serializer<GviewListingShortFragmentData_dynamicListingTitle>
    _$gviewListingShortFragmentDataDynamicListingTitleSerializer =
    new _$GviewListingShortFragmentData_dynamicListingTitleSerializer();
Serializer<GviewListingShortFragmentData_dynamicListingDescription>
    _$gviewListingShortFragmentDataDynamicListingDescriptionSerializer =
    new _$GviewListingShortFragmentData_dynamicListingDescriptionSerializer();
Serializer<GviewListingShortFragmentData_dynamicListTitle>
    _$gviewListingShortFragmentDataDynamicListTitleSerializer =
    new _$GviewListingShortFragmentData_dynamicListTitleSerializer();
Serializer<GviewListingShortFragmentData_dynamicListDescription>
    _$gviewListingShortFragmentDataDynamicListDescriptionSerializer =
    new _$GviewListingShortFragmentData_dynamicListDescriptionSerializer();
Serializer<GviewListingShortFragmentData_dynamicCarType>
    _$gviewListingShortFragmentDataDynamicCarTypeSerializer =
    new _$GviewListingShortFragmentData_dynamicCarTypeSerializer();
Serializer<GviewListingShortFragmentData_dynamicmake>
    _$gviewListingShortFragmentDataDynamicmakeSerializer =
    new _$GviewListingShortFragmentData_dynamicmakeSerializer();
Serializer<GviewListingShortFragmentData_dynamicModel>
    _$gviewListingShortFragmentDataDynamicModelSerializer =
    new _$GviewListingShortFragmentData_dynamicModelSerializer();
Serializer<GviewListingShortFragmentData_dynamicYear>
    _$gviewListingShortFragmentDataDynamicYearSerializer =
    new _$GviewListingShortFragmentData_dynamicYearSerializer();
Serializer<GviewListingShortFragmentData_dynamicOdometer>
    _$gviewListingShortFragmentDataDynamicOdometerSerializer =
    new _$GviewListingShortFragmentData_dynamicOdometerSerializer();
Serializer<GviewListingShortFragmentData_carRules>
    _$gviewListingShortFragmentDataCarRulesSerializer =
    new _$GviewListingShortFragmentData_carRulesSerializer();
Serializer<GviewListingShortFragmentData_carRules_dynamicItemName>
    _$gviewListingShortFragmentDataCarRulesDynamicItemNameSerializer =
    new _$GviewListingShortFragmentData_carRules_dynamicItemNameSerializer();
Serializer<GviewListingShortFragmentData_carFeatures>
    _$gviewListingShortFragmentDataCarFeaturesSerializer =
    new _$GviewListingShortFragmentData_carFeaturesSerializer();
Serializer<GviewListingShortFragmentData_carFeatures_dynamicItemName>
    _$gviewListingShortFragmentDataCarFeaturesDynamicItemNameSerializer =
    new _$GviewListingShortFragmentData_carFeatures_dynamicItemNameSerializer();
Serializer<GviewListingShortFragmentData_listPhotos>
    _$gviewListingShortFragmentDataListPhotosSerializer =
    new _$GviewListingShortFragmentData_listPhotosSerializer();
Serializer<GviewListingShortFragmentData_listingData>
    _$gviewListingShortFragmentDataListingDataSerializer =
    new _$GviewListingShortFragmentData_listingDataSerializer();

class _$GviewListingShortFragmentDataSerializer
    implements StructuredSerializer<GviewListingShortFragmentData> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData,
    _$GviewListingShortFragmentData
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData object,
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
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transmission;
    if (value != null) {
      result
        ..add('transmission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wishListStatus;
    if (value != null) {
      result
        ..add('wishListStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.carType;
    if (value != null) {
      result
        ..add('carType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewsStarRating;
    if (value != null) {
      result
        ..add('reviewsStarRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bookingType;
    if (value != null) {
      result
        ..add('bookingType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isListOwner;
    if (value != null) {
      result
        ..add('isListOwner')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('coverPhoto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dynamicListingTitle;
    if (value != null) {
      result
        ..add('dynamicListingTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GviewListingShortFragmentData_dynamicListingTitle)
            ])));
    }
    value = object.dynamicListingDescription;
    if (value != null) {
      result
        ..add('dynamicListingDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GviewListingShortFragmentData_dynamicListingDescription)
            ])));
    }
    value = object.dynamicListTitle;
    if (value != null) {
      result
        ..add('dynamicListTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingShortFragmentData_dynamicListTitle)));
    }
    value = object.dynamicListDescription;
    if (value != null) {
      result
        ..add('dynamicListDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingShortFragmentData_dynamicListDescription)));
    }
    value = object.dynamicCarType;
    if (value != null) {
      result
        ..add('dynamicCarType')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingShortFragmentData_dynamicCarType)));
    }
    value = object.dynamicmake;
    if (value != null) {
      result
        ..add('dynamicmake')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingShortFragmentData_dynamicmake)));
    }
    value = object.dynamicModel;
    if (value != null) {
      result
        ..add('dynamicModel')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingShortFragmentData_dynamicModel)));
    }
    value = object.dynamicYear;
    if (value != null) {
      result
        ..add('dynamicYear')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingShortFragmentData_dynamicYear)));
    }
    value = object.dynamicOdometer;
    if (value != null) {
      result
        ..add('dynamicOdometer')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingShortFragmentData_dynamicOdometer)));
    }
    value = object.carRules;
    if (value != null) {
      result
        ..add('carRules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GviewListingShortFragmentData_carRules)
            ])));
    }
    value = object.carFeatures;
    if (value != null) {
      result
        ..add('carFeatures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GviewListingShortFragmentData_carFeatures)
            ])));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.listPhotoName;
    if (value != null) {
      result
        ..add('listPhotoName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listPhotos;
    if (value != null) {
      result
        ..add('listPhotos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GviewListingShortFragmentData_listPhotos)
            ])));
    }
    value = object.listingData;
    if (value != null) {
      result
        ..add('listingData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingShortFragmentData_listingData)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentDataBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transmission':
          result.transmission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wishListStatus':
          result.wishListStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'carType':
          result.carType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewsStarRating':
          result.reviewsStarRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bookingType':
          result.bookingType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isListOwner':
          result.isListOwner = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coverPhoto':
          result.coverPhoto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'dynamicListingTitle':
          result.dynamicListingTitle.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingShortFragmentData_dynamicListingTitle)
              ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListingDescription':
          result.dynamicListingDescription.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingShortFragmentData_dynamicListingDescription)
              ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListTitle':
          result.dynamicListTitle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicListTitle))!
              as GviewListingShortFragmentData_dynamicListTitle);
          break;
        case 'dynamicListDescription':
          result.dynamicListDescription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicListDescription))!
              as GviewListingShortFragmentData_dynamicListDescription);
          break;
        case 'dynamicCarType':
          result.dynamicCarType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicCarType))!
              as GviewListingShortFragmentData_dynamicCarType);
          break;
        case 'dynamicmake':
          result.dynamicmake.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicmake))!
              as GviewListingShortFragmentData_dynamicmake);
          break;
        case 'dynamicModel':
          result.dynamicModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicModel))!
              as GviewListingShortFragmentData_dynamicModel);
          break;
        case 'dynamicYear':
          result.dynamicYear.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicYear))!
              as GviewListingShortFragmentData_dynamicYear);
          break;
        case 'dynamicOdometer':
          result.dynamicOdometer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_dynamicOdometer))!
              as GviewListingShortFragmentData_dynamicOdometer);
          break;
        case 'carRules':
          result.carRules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GviewListingShortFragmentData_carRules)
              ]))! as BuiltList<Object?>);
          break;
        case 'carFeatures':
          result.carFeatures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingShortFragmentData_carFeatures)
              ]))! as BuiltList<Object?>);
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'listPhotoName':
          result.listPhotoName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listPhotos':
          result.listPhotos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingShortFragmentData_listPhotos)
              ]))! as BuiltList<Object?>);
          break;
        case 'listingData':
          result.listingData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_listingData))!
              as GviewListingShortFragmentData_listingData);
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData_dynamicListingTitleSerializer
    implements
        StructuredSerializer<
            GviewListingShortFragmentData_dynamicListingTitle> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicListingTitle,
    _$GviewListingShortFragmentData_dynamicListingTitle
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicListingTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicListingTitle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listTitle;
    if (value != null) {
      result
        ..add('listTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData_dynamicListingTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingShortFragmentData_dynamicListingTitleBuilder();

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
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listTitle':
          result.listTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData_dynamicListingDescriptionSerializer
    implements
        StructuredSerializer<
            GviewListingShortFragmentData_dynamicListingDescription> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicListingDescription,
    _$GviewListingShortFragmentData_dynamicListingDescription
  ];
  @override
  final String wireName =
      'GviewListingShortFragmentData_dynamicListingDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicListingDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listDescription;
    if (value != null) {
      result
        ..add('listDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData_dynamicListingDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingShortFragmentData_dynamicListingDescriptionBuilder();

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
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listDescription':
          result.listDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData_dynamicListTitleSerializer
    implements
        StructuredSerializer<GviewListingShortFragmentData_dynamicListTitle> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicListTitle,
    _$GviewListingShortFragmentData_dynamicListTitle
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicListTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicListTitle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicListTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_dynamicListTitleBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_dynamicListDescriptionSerializer
    implements
        StructuredSerializer<
            GviewListingShortFragmentData_dynamicListDescription> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicListDescription,
    _$GviewListingShortFragmentData_dynamicListDescription
  ];
  @override
  final String wireName =
      'GviewListingShortFragmentData_dynamicListDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicListDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicListDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingShortFragmentData_dynamicListDescriptionBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_dynamicCarTypeSerializer
    implements
        StructuredSerializer<GviewListingShortFragmentData_dynamicCarType> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicCarType,
    _$GviewListingShortFragmentData_dynamicCarType
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicCarType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicCarType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicCarType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_dynamicCarTypeBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_dynamicmakeSerializer
    implements StructuredSerializer<GviewListingShortFragmentData_dynamicmake> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicmake,
    _$GviewListingShortFragmentData_dynamicmake
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicmake';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData_dynamicmake object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicmake deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_dynamicmakeBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_dynamicModelSerializer
    implements
        StructuredSerializer<GviewListingShortFragmentData_dynamicModel> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicModel,
    _$GviewListingShortFragmentData_dynamicModel
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicModel';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_dynamicModelBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_dynamicYearSerializer
    implements StructuredSerializer<GviewListingShortFragmentData_dynamicYear> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicYear,
    _$GviewListingShortFragmentData_dynamicYear
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicYear';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData_dynamicYear object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicYear deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_dynamicYearBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_dynamicOdometerSerializer
    implements
        StructuredSerializer<GviewListingShortFragmentData_dynamicOdometer> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_dynamicOdometer,
    _$GviewListingShortFragmentData_dynamicOdometer
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_dynamicOdometer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_dynamicOdometer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_dynamicOdometer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_dynamicOdometerBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_carRulesSerializer
    implements StructuredSerializer<GviewListingShortFragmentData_carRules> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_carRules,
    _$GviewListingShortFragmentData_carRules
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_carRules';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData_carRules object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.dynamicItemName;
    if (value != null) {
      result
        ..add('dynamicItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingShortFragmentData_carRules_dynamicItemName)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData_carRules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_carRulesBuilder();

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
        case 'dynamicItemName':
          result.dynamicItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_carRules_dynamicItemName))!
              as GviewListingShortFragmentData_carRules_dynamicItemName);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData_carRules_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GviewListingShortFragmentData_carRules_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_carRules_dynamicItemName,
    _$GviewListingShortFragmentData_carRules_dynamicItemName
  ];
  @override
  final String wireName =
      'GviewListingShortFragmentData_carRules_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_carRules_dynamicItemName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_carRules_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingShortFragmentData_carRules_dynamicItemNameBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_carFeaturesSerializer
    implements StructuredSerializer<GviewListingShortFragmentData_carFeatures> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_carFeatures,
    _$GviewListingShortFragmentData_carFeatures
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_carFeatures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData_carFeatures object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.dynamicItemName;
    if (value != null) {
      result
        ..add('dynamicItemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingShortFragmentData_carFeatures_dynamicItemName)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('itemName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData_carFeatures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_carFeaturesBuilder();

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
        case 'dynamicItemName':
          result.dynamicItemName.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingShortFragmentData_carFeatures_dynamicItemName))!
              as GviewListingShortFragmentData_carFeatures_dynamicItemName);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'itemName':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData_carFeatures_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GviewListingShortFragmentData_carFeatures_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_carFeatures_dynamicItemName,
    _$GviewListingShortFragmentData_carFeatures_dynamicItemName
  ];
  @override
  final String wireName =
      'GviewListingShortFragmentData_carFeatures_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingShortFragmentData_carFeatures_dynamicItemName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.en;
    if (value != null) {
      result
        ..add('en')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ar;
    if (value != null) {
      result
        ..add('ar')
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
  GviewListingShortFragmentData_carFeatures_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder();

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
        case 'en':
          result.en = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ar':
          result.ar = serializers.deserialize(value,
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

class _$GviewListingShortFragmentData_listPhotosSerializer
    implements StructuredSerializer<GviewListingShortFragmentData_listPhotos> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_listPhotos,
    _$GviewListingShortFragmentData_listPhotos
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_listPhotos';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData_listPhotos object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData_listPhotos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_listPhotosBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData_listingDataSerializer
    implements StructuredSerializer<GviewListingShortFragmentData_listingData> {
  @override
  final Iterable<Type> types = const [
    GviewListingShortFragmentData_listingData,
    _$GviewListingShortFragmentData_listingData
  ];
  @override
  final String wireName = 'GviewListingShortFragmentData_listingData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingShortFragmentData_listingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.basePrice;
    if (value != null) {
      result
        ..add('basePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingShortFragmentData_listingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingShortFragmentData_listingDataBuilder();

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
        case 'basePrice':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingShortFragmentData extends GviewListingShortFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? transmission;
  @override
  final bool? wishListStatus;
  @override
  final String? carType;
  @override
  final int? reviewsStarRating;
  @override
  final int? reviewsCount;
  @override
  final String? bookingType;
  @override
  final bool? isListOwner;
  @override
  final int? coverPhoto;
  @override
  final double? lat;
  @override
  final BuiltList<GviewListingShortFragmentData_dynamicListingTitle?>?
      dynamicListingTitle;
  @override
  final BuiltList<GviewListingShortFragmentData_dynamicListingDescription?>?
      dynamicListingDescription;
  @override
  final GviewListingShortFragmentData_dynamicListTitle? dynamicListTitle;
  @override
  final GviewListingShortFragmentData_dynamicListDescription?
      dynamicListDescription;
  @override
  final GviewListingShortFragmentData_dynamicCarType? dynamicCarType;
  @override
  final GviewListingShortFragmentData_dynamicmake? dynamicmake;
  @override
  final GviewListingShortFragmentData_dynamicModel? dynamicModel;
  @override
  final GviewListingShortFragmentData_dynamicYear? dynamicYear;
  @override
  final GviewListingShortFragmentData_dynamicOdometer? dynamicOdometer;
  @override
  final BuiltList<GviewListingShortFragmentData_carRules?>? carRules;
  @override
  final BuiltList<GviewListingShortFragmentData_carFeatures?>? carFeatures;
  @override
  final double? lng;
  @override
  final String? listPhotoName;
  @override
  final BuiltList<GviewListingShortFragmentData_listPhotos?>? listPhotos;
  @override
  final GviewListingShortFragmentData_listingData? listingData;

  factory _$GviewListingShortFragmentData(
          [void Function(GviewListingShortFragmentDataBuilder)? updates]) =>
      (new GviewListingShortFragmentDataBuilder()..update(updates))._build();

  _$GviewListingShortFragmentData._(
      {required this.G__typename,
      this.id,
      this.userId,
      this.title,
      this.transmission,
      this.wishListStatus,
      this.carType,
      this.reviewsStarRating,
      this.reviewsCount,
      this.bookingType,
      this.isListOwner,
      this.coverPhoto,
      this.lat,
      this.dynamicListingTitle,
      this.dynamicListingDescription,
      this.dynamicListTitle,
      this.dynamicListDescription,
      this.dynamicCarType,
      this.dynamicmake,
      this.dynamicModel,
      this.dynamicYear,
      this.dynamicOdometer,
      this.carRules,
      this.carFeatures,
      this.lng,
      this.listPhotoName,
      this.listPhotos,
      this.listingData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GviewListingShortFragmentData', 'G__typename');
  }

  @override
  GviewListingShortFragmentData rebuild(
          void Function(GviewListingShortFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentDataBuilder toBuilder() =>
      new GviewListingShortFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        title == other.title &&
        transmission == other.transmission &&
        wishListStatus == other.wishListStatus &&
        carType == other.carType &&
        reviewsStarRating == other.reviewsStarRating &&
        reviewsCount == other.reviewsCount &&
        bookingType == other.bookingType &&
        isListOwner == other.isListOwner &&
        coverPhoto == other.coverPhoto &&
        lat == other.lat &&
        dynamicListingTitle == other.dynamicListingTitle &&
        dynamicListingDescription == other.dynamicListingDescription &&
        dynamicListTitle == other.dynamicListTitle &&
        dynamicListDescription == other.dynamicListDescription &&
        dynamicCarType == other.dynamicCarType &&
        dynamicmake == other.dynamicmake &&
        dynamicModel == other.dynamicModel &&
        dynamicYear == other.dynamicYear &&
        dynamicOdometer == other.dynamicOdometer &&
        carRules == other.carRules &&
        carFeatures == other.carFeatures &&
        lng == other.lng &&
        listPhotoName == other.listPhotoName &&
        listPhotos == other.listPhotos &&
        listingData == other.listingData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, transmission.hashCode);
    _$hash = $jc(_$hash, wishListStatus.hashCode);
    _$hash = $jc(_$hash, carType.hashCode);
    _$hash = $jc(_$hash, reviewsStarRating.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, bookingType.hashCode);
    _$hash = $jc(_$hash, isListOwner.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, dynamicListingTitle.hashCode);
    _$hash = $jc(_$hash, dynamicListingDescription.hashCode);
    _$hash = $jc(_$hash, dynamicListTitle.hashCode);
    _$hash = $jc(_$hash, dynamicListDescription.hashCode);
    _$hash = $jc(_$hash, dynamicCarType.hashCode);
    _$hash = $jc(_$hash, dynamicmake.hashCode);
    _$hash = $jc(_$hash, dynamicModel.hashCode);
    _$hash = $jc(_$hash, dynamicYear.hashCode);
    _$hash = $jc(_$hash, dynamicOdometer.hashCode);
    _$hash = $jc(_$hash, carRules.hashCode);
    _$hash = $jc(_$hash, carFeatures.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, listPhotoName.hashCode);
    _$hash = $jc(_$hash, listPhotos.hashCode);
    _$hash = $jc(_$hash, listingData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GviewListingShortFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('title', title)
          ..add('transmission', transmission)
          ..add('wishListStatus', wishListStatus)
          ..add('carType', carType)
          ..add('reviewsStarRating', reviewsStarRating)
          ..add('reviewsCount', reviewsCount)
          ..add('bookingType', bookingType)
          ..add('isListOwner', isListOwner)
          ..add('coverPhoto', coverPhoto)
          ..add('lat', lat)
          ..add('dynamicListingTitle', dynamicListingTitle)
          ..add('dynamicListingDescription', dynamicListingDescription)
          ..add('dynamicListTitle', dynamicListTitle)
          ..add('dynamicListDescription', dynamicListDescription)
          ..add('dynamicCarType', dynamicCarType)
          ..add('dynamicmake', dynamicmake)
          ..add('dynamicModel', dynamicModel)
          ..add('dynamicYear', dynamicYear)
          ..add('dynamicOdometer', dynamicOdometer)
          ..add('carRules', carRules)
          ..add('carFeatures', carFeatures)
          ..add('lng', lng)
          ..add('listPhotoName', listPhotoName)
          ..add('listPhotos', listPhotos)
          ..add('listingData', listingData))
        .toString();
  }
}

class GviewListingShortFragmentDataBuilder
    implements
        Builder<GviewListingShortFragmentData,
            GviewListingShortFragmentDataBuilder> {
  _$GviewListingShortFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _transmission;
  String? get transmission => _$this._transmission;
  set transmission(String? transmission) => _$this._transmission = transmission;

  bool? _wishListStatus;
  bool? get wishListStatus => _$this._wishListStatus;
  set wishListStatus(bool? wishListStatus) =>
      _$this._wishListStatus = wishListStatus;

  String? _carType;
  String? get carType => _$this._carType;
  set carType(String? carType) => _$this._carType = carType;

  int? _reviewsStarRating;
  int? get reviewsStarRating => _$this._reviewsStarRating;
  set reviewsStarRating(int? reviewsStarRating) =>
      _$this._reviewsStarRating = reviewsStarRating;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  String? _bookingType;
  String? get bookingType => _$this._bookingType;
  set bookingType(String? bookingType) => _$this._bookingType = bookingType;

  bool? _isListOwner;
  bool? get isListOwner => _$this._isListOwner;
  set isListOwner(bool? isListOwner) => _$this._isListOwner = isListOwner;

  int? _coverPhoto;
  int? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(int? coverPhoto) => _$this._coverPhoto = coverPhoto;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  ListBuilder<GviewListingShortFragmentData_dynamicListingTitle?>?
      _dynamicListingTitle;
  ListBuilder<GviewListingShortFragmentData_dynamicListingTitle?>
      get dynamicListingTitle => _$this._dynamicListingTitle ??=
          new ListBuilder<GviewListingShortFragmentData_dynamicListingTitle?>();
  set dynamicListingTitle(
          ListBuilder<GviewListingShortFragmentData_dynamicListingTitle?>?
              dynamicListingTitle) =>
      _$this._dynamicListingTitle = dynamicListingTitle;

  ListBuilder<GviewListingShortFragmentData_dynamicListingDescription?>?
      _dynamicListingDescription;
  ListBuilder<GviewListingShortFragmentData_dynamicListingDescription?>
      get dynamicListingDescription =>
          _$this._dynamicListingDescription ??= new ListBuilder<
              GviewListingShortFragmentData_dynamicListingDescription?>();
  set dynamicListingDescription(
          ListBuilder<GviewListingShortFragmentData_dynamicListingDescription?>?
              dynamicListingDescription) =>
      _$this._dynamicListingDescription = dynamicListingDescription;

  GviewListingShortFragmentData_dynamicListTitleBuilder? _dynamicListTitle;
  GviewListingShortFragmentData_dynamicListTitleBuilder get dynamicListTitle =>
      _$this._dynamicListTitle ??=
          new GviewListingShortFragmentData_dynamicListTitleBuilder();
  set dynamicListTitle(
          GviewListingShortFragmentData_dynamicListTitleBuilder?
              dynamicListTitle) =>
      _$this._dynamicListTitle = dynamicListTitle;

  GviewListingShortFragmentData_dynamicListDescriptionBuilder?
      _dynamicListDescription;
  GviewListingShortFragmentData_dynamicListDescriptionBuilder
      get dynamicListDescription => _$this._dynamicListDescription ??=
          new GviewListingShortFragmentData_dynamicListDescriptionBuilder();
  set dynamicListDescription(
          GviewListingShortFragmentData_dynamicListDescriptionBuilder?
              dynamicListDescription) =>
      _$this._dynamicListDescription = dynamicListDescription;

  GviewListingShortFragmentData_dynamicCarTypeBuilder? _dynamicCarType;
  GviewListingShortFragmentData_dynamicCarTypeBuilder get dynamicCarType =>
      _$this._dynamicCarType ??=
          new GviewListingShortFragmentData_dynamicCarTypeBuilder();
  set dynamicCarType(
          GviewListingShortFragmentData_dynamicCarTypeBuilder?
              dynamicCarType) =>
      _$this._dynamicCarType = dynamicCarType;

  GviewListingShortFragmentData_dynamicmakeBuilder? _dynamicmake;
  GviewListingShortFragmentData_dynamicmakeBuilder get dynamicmake =>
      _$this._dynamicmake ??=
          new GviewListingShortFragmentData_dynamicmakeBuilder();
  set dynamicmake(
          GviewListingShortFragmentData_dynamicmakeBuilder? dynamicmake) =>
      _$this._dynamicmake = dynamicmake;

  GviewListingShortFragmentData_dynamicModelBuilder? _dynamicModel;
  GviewListingShortFragmentData_dynamicModelBuilder get dynamicModel =>
      _$this._dynamicModel ??=
          new GviewListingShortFragmentData_dynamicModelBuilder();
  set dynamicModel(
          GviewListingShortFragmentData_dynamicModelBuilder? dynamicModel) =>
      _$this._dynamicModel = dynamicModel;

  GviewListingShortFragmentData_dynamicYearBuilder? _dynamicYear;
  GviewListingShortFragmentData_dynamicYearBuilder get dynamicYear =>
      _$this._dynamicYear ??=
          new GviewListingShortFragmentData_dynamicYearBuilder();
  set dynamicYear(
          GviewListingShortFragmentData_dynamicYearBuilder? dynamicYear) =>
      _$this._dynamicYear = dynamicYear;

  GviewListingShortFragmentData_dynamicOdometerBuilder? _dynamicOdometer;
  GviewListingShortFragmentData_dynamicOdometerBuilder get dynamicOdometer =>
      _$this._dynamicOdometer ??=
          new GviewListingShortFragmentData_dynamicOdometerBuilder();
  set dynamicOdometer(
          GviewListingShortFragmentData_dynamicOdometerBuilder?
              dynamicOdometer) =>
      _$this._dynamicOdometer = dynamicOdometer;

  ListBuilder<GviewListingShortFragmentData_carRules?>? _carRules;
  ListBuilder<GviewListingShortFragmentData_carRules?> get carRules =>
      _$this._carRules ??=
          new ListBuilder<GviewListingShortFragmentData_carRules?>();
  set carRules(
          ListBuilder<GviewListingShortFragmentData_carRules?>? carRules) =>
      _$this._carRules = carRules;

  ListBuilder<GviewListingShortFragmentData_carFeatures?>? _carFeatures;
  ListBuilder<GviewListingShortFragmentData_carFeatures?> get carFeatures =>
      _$this._carFeatures ??=
          new ListBuilder<GviewListingShortFragmentData_carFeatures?>();
  set carFeatures(
          ListBuilder<GviewListingShortFragmentData_carFeatures?>?
              carFeatures) =>
      _$this._carFeatures = carFeatures;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  String? _listPhotoName;
  String? get listPhotoName => _$this._listPhotoName;
  set listPhotoName(String? listPhotoName) =>
      _$this._listPhotoName = listPhotoName;

  ListBuilder<GviewListingShortFragmentData_listPhotos?>? _listPhotos;
  ListBuilder<GviewListingShortFragmentData_listPhotos?> get listPhotos =>
      _$this._listPhotos ??=
          new ListBuilder<GviewListingShortFragmentData_listPhotos?>();
  set listPhotos(
          ListBuilder<GviewListingShortFragmentData_listPhotos?>? listPhotos) =>
      _$this._listPhotos = listPhotos;

  GviewListingShortFragmentData_listingDataBuilder? _listingData;
  GviewListingShortFragmentData_listingDataBuilder get listingData =>
      _$this._listingData ??=
          new GviewListingShortFragmentData_listingDataBuilder();
  set listingData(
          GviewListingShortFragmentData_listingDataBuilder? listingData) =>
      _$this._listingData = listingData;

  GviewListingShortFragmentDataBuilder() {
    GviewListingShortFragmentData._initializeBuilder(this);
  }

  GviewListingShortFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _title = $v.title;
      _transmission = $v.transmission;
      _wishListStatus = $v.wishListStatus;
      _carType = $v.carType;
      _reviewsStarRating = $v.reviewsStarRating;
      _reviewsCount = $v.reviewsCount;
      _bookingType = $v.bookingType;
      _isListOwner = $v.isListOwner;
      _coverPhoto = $v.coverPhoto;
      _lat = $v.lat;
      _dynamicListingTitle = $v.dynamicListingTitle?.toBuilder();
      _dynamicListingDescription = $v.dynamicListingDescription?.toBuilder();
      _dynamicListTitle = $v.dynamicListTitle?.toBuilder();
      _dynamicListDescription = $v.dynamicListDescription?.toBuilder();
      _dynamicCarType = $v.dynamicCarType?.toBuilder();
      _dynamicmake = $v.dynamicmake?.toBuilder();
      _dynamicModel = $v.dynamicModel?.toBuilder();
      _dynamicYear = $v.dynamicYear?.toBuilder();
      _dynamicOdometer = $v.dynamicOdometer?.toBuilder();
      _carRules = $v.carRules?.toBuilder();
      _carFeatures = $v.carFeatures?.toBuilder();
      _lng = $v.lng;
      _listPhotoName = $v.listPhotoName;
      _listPhotos = $v.listPhotos?.toBuilder();
      _listingData = $v.listingData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData;
  }

  @override
  void update(void Function(GviewListingShortFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData build() => _build();

  _$GviewListingShortFragmentData _build() {
    _$GviewListingShortFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GviewListingShortFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GviewListingShortFragmentData', 'G__typename'),
              id: id,
              userId: userId,
              title: title,
              transmission: transmission,
              wishListStatus: wishListStatus,
              carType: carType,
              reviewsStarRating: reviewsStarRating,
              reviewsCount: reviewsCount,
              bookingType: bookingType,
              isListOwner: isListOwner,
              coverPhoto: coverPhoto,
              lat: lat,
              dynamicListingTitle: _dynamicListingTitle?.build(),
              dynamicListingDescription: _dynamicListingDescription?.build(),
              dynamicListTitle: _dynamicListTitle?.build(),
              dynamicListDescription: _dynamicListDescription?.build(),
              dynamicCarType: _dynamicCarType?.build(),
              dynamicmake: _dynamicmake?.build(),
              dynamicModel: _dynamicModel?.build(),
              dynamicYear: _dynamicYear?.build(),
              dynamicOdometer: _dynamicOdometer?.build(),
              carRules: _carRules?.build(),
              carFeatures: _carFeatures?.build(),
              lng: lng,
              listPhotoName: listPhotoName,
              listPhotos: _listPhotos?.build(),
              listingData: _listingData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicListingTitle';
        _dynamicListingTitle?.build();
        _$failedField = 'dynamicListingDescription';
        _dynamicListingDescription?.build();
        _$failedField = 'dynamicListTitle';
        _dynamicListTitle?.build();
        _$failedField = 'dynamicListDescription';
        _dynamicListDescription?.build();
        _$failedField = 'dynamicCarType';
        _dynamicCarType?.build();
        _$failedField = 'dynamicmake';
        _dynamicmake?.build();
        _$failedField = 'dynamicModel';
        _dynamicModel?.build();
        _$failedField = 'dynamicYear';
        _dynamicYear?.build();
        _$failedField = 'dynamicOdometer';
        _dynamicOdometer?.build();
        _$failedField = 'carRules';
        _carRules?.build();
        _$failedField = 'carFeatures';
        _carFeatures?.build();

        _$failedField = 'listPhotos';
        _listPhotos?.build();
        _$failedField = 'listingData';
        _listingData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GviewListingShortFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicListingTitle
    extends GviewListingShortFragmentData_dynamicListingTitle {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listTitle;

  factory _$GviewListingShortFragmentData_dynamicListingTitle(
          [void Function(
                  GviewListingShortFragmentData_dynamicListingTitleBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicListingTitleBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicListingTitle._(
      {required this.G__typename, this.language, this.listTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicListingTitle', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicListingTitle rebuild(
          void Function(
                  GviewListingShortFragmentData_dynamicListingTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicListingTitleBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicListingTitleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicListingTitle &&
        G__typename == other.G__typename &&
        language == other.language &&
        listTitle == other.listTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, listTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingShortFragmentData_dynamicListingTitle')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listTitle', listTitle))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicListingTitleBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicListingTitle,
            GviewListingShortFragmentData_dynamicListingTitleBuilder> {
  _$GviewListingShortFragmentData_dynamicListingTitle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _listTitle;
  String? get listTitle => _$this._listTitle;
  set listTitle(String? listTitle) => _$this._listTitle = listTitle;

  GviewListingShortFragmentData_dynamicListingTitleBuilder() {
    GviewListingShortFragmentData_dynamicListingTitle._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicListingTitleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _language = $v.language;
      _listTitle = $v.listTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicListingTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicListingTitle;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicListingTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicListingTitle build() => _build();

  _$GviewListingShortFragmentData_dynamicListingTitle _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicListingTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_dynamicListingTitle',
                'G__typename'),
            language: language,
            listTitle: listTitle);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicListingDescription
    extends GviewListingShortFragmentData_dynamicListingDescription {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listDescription;

  factory _$GviewListingShortFragmentData_dynamicListingDescription(
          [void Function(
                  GviewListingShortFragmentData_dynamicListingDescriptionBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicListingDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicListingDescription._(
      {required this.G__typename, this.language, this.listDescription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GviewListingShortFragmentData_dynamicListingDescription',
        'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicListingDescription rebuild(
          void Function(
                  GviewListingShortFragmentData_dynamicListingDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicListingDescriptionBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicListingDescriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicListingDescription &&
        G__typename == other.G__typename &&
        language == other.language &&
        listDescription == other.listDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, listDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingShortFragmentData_dynamicListingDescription')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listDescription', listDescription))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicListingDescriptionBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicListingDescription,
            GviewListingShortFragmentData_dynamicListingDescriptionBuilder> {
  _$GviewListingShortFragmentData_dynamicListingDescription? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _listDescription;
  String? get listDescription => _$this._listDescription;
  set listDescription(String? listDescription) =>
      _$this._listDescription = listDescription;

  GviewListingShortFragmentData_dynamicListingDescriptionBuilder() {
    GviewListingShortFragmentData_dynamicListingDescription._initializeBuilder(
        this);
  }

  GviewListingShortFragmentData_dynamicListingDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _language = $v.language;
      _listDescription = $v.listDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicListingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicListingDescription;
  }

  @override
  void update(
      void Function(
              GviewListingShortFragmentData_dynamicListingDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicListingDescription build() => _build();

  _$GviewListingShortFragmentData_dynamicListingDescription _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicListingDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_dynamicListingDescription',
                'G__typename'),
            language: language,
            listDescription: listDescription);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicListTitle
    extends GviewListingShortFragmentData_dynamicListTitle {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicListTitle(
          [void Function(GviewListingShortFragmentData_dynamicListTitleBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicListTitleBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicListTitle._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicListTitle', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicListTitle rebuild(
          void Function(GviewListingShortFragmentData_dynamicListTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicListTitleBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicListTitleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicListTitle &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicListTitle')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicListTitleBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicListTitle,
            GviewListingShortFragmentData_dynamicListTitleBuilder> {
  _$GviewListingShortFragmentData_dynamicListTitle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicListTitleBuilder() {
    GviewListingShortFragmentData_dynamicListTitle._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicListTitleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicListTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicListTitle;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicListTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicListTitle build() => _build();

  _$GviewListingShortFragmentData_dynamicListTitle _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicListTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_dynamicListTitle',
                'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicListDescription
    extends GviewListingShortFragmentData_dynamicListDescription {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicListDescription(
          [void Function(
                  GviewListingShortFragmentData_dynamicListDescriptionBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicListDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicListDescription._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicListDescription', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicListDescription rebuild(
          void Function(
                  GviewListingShortFragmentData_dynamicListDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicListDescriptionBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicListDescriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicListDescription &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicListDescription')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicListDescriptionBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicListDescription,
            GviewListingShortFragmentData_dynamicListDescriptionBuilder> {
  _$GviewListingShortFragmentData_dynamicListDescription? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicListDescriptionBuilder() {
    GviewListingShortFragmentData_dynamicListDescription._initializeBuilder(
        this);
  }

  GviewListingShortFragmentData_dynamicListDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicListDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicListDescription;
  }

  @override
  void update(
      void Function(
              GviewListingShortFragmentData_dynamicListDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicListDescription build() => _build();

  _$GviewListingShortFragmentData_dynamicListDescription _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicListDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_dynamicListDescription',
                'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicCarType
    extends GviewListingShortFragmentData_dynamicCarType {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicCarType(
          [void Function(GviewListingShortFragmentData_dynamicCarTypeBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicCarTypeBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicCarType._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicCarType', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicCarType rebuild(
          void Function(GviewListingShortFragmentData_dynamicCarTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicCarTypeBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicCarTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicCarType &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicCarType')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicCarTypeBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicCarType,
            GviewListingShortFragmentData_dynamicCarTypeBuilder> {
  _$GviewListingShortFragmentData_dynamicCarType? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicCarTypeBuilder() {
    GviewListingShortFragmentData_dynamicCarType._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicCarTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicCarType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicCarType;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicCarTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicCarType build() => _build();

  _$GviewListingShortFragmentData_dynamicCarType _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicCarType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingShortFragmentData_dynamicCarType', 'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicmake
    extends GviewListingShortFragmentData_dynamicmake {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicmake(
          [void Function(GviewListingShortFragmentData_dynamicmakeBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicmakeBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicmake._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicmake', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicmake rebuild(
          void Function(GviewListingShortFragmentData_dynamicmakeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicmakeBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicmakeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicmake &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicmake')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicmakeBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicmake,
            GviewListingShortFragmentData_dynamicmakeBuilder> {
  _$GviewListingShortFragmentData_dynamicmake? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicmakeBuilder() {
    GviewListingShortFragmentData_dynamicmake._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicmakeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicmake other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicmake;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicmakeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicmake build() => _build();

  _$GviewListingShortFragmentData_dynamicmake _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicmake._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingShortFragmentData_dynamicmake', 'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicModel
    extends GviewListingShortFragmentData_dynamicModel {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicModel(
          [void Function(GviewListingShortFragmentData_dynamicModelBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicModelBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicModel._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicModel', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicModel rebuild(
          void Function(GviewListingShortFragmentData_dynamicModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicModelBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicModel &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicModel')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicModelBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicModel,
            GviewListingShortFragmentData_dynamicModelBuilder> {
  _$GviewListingShortFragmentData_dynamicModel? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicModelBuilder() {
    GviewListingShortFragmentData_dynamicModel._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicModel;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicModel build() => _build();

  _$GviewListingShortFragmentData_dynamicModel _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicModel._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingShortFragmentData_dynamicModel', 'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicYear
    extends GviewListingShortFragmentData_dynamicYear {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicYear(
          [void Function(GviewListingShortFragmentData_dynamicYearBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicYearBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicYear._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicYear', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicYear rebuild(
          void Function(GviewListingShortFragmentData_dynamicYearBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicYearBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicYearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicYear &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicYear')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicYearBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicYear,
            GviewListingShortFragmentData_dynamicYearBuilder> {
  _$GviewListingShortFragmentData_dynamicYear? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicYearBuilder() {
    GviewListingShortFragmentData_dynamicYear._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicYearBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicYear other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicYear;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicYearBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicYear build() => _build();

  _$GviewListingShortFragmentData_dynamicYear _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicYear._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingShortFragmentData_dynamicYear', 'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_dynamicOdometer
    extends GviewListingShortFragmentData_dynamicOdometer {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_dynamicOdometer(
          [void Function(GviewListingShortFragmentData_dynamicOdometerBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_dynamicOdometerBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_dynamicOdometer._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_dynamicOdometer', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_dynamicOdometer rebuild(
          void Function(GviewListingShortFragmentData_dynamicOdometerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_dynamicOdometerBuilder toBuilder() =>
      new GviewListingShortFragmentData_dynamicOdometerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_dynamicOdometer &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_dynamicOdometer')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_dynamicOdometerBuilder
    implements
        Builder<GviewListingShortFragmentData_dynamicOdometer,
            GviewListingShortFragmentData_dynamicOdometerBuilder> {
  _$GviewListingShortFragmentData_dynamicOdometer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_dynamicOdometerBuilder() {
    GviewListingShortFragmentData_dynamicOdometer._initializeBuilder(this);
  }

  GviewListingShortFragmentData_dynamicOdometerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_dynamicOdometer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_dynamicOdometer;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_dynamicOdometerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_dynamicOdometer build() => _build();

  _$GviewListingShortFragmentData_dynamicOdometer _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_dynamicOdometer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_dynamicOdometer',
                'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_carRules
    extends GviewListingShortFragmentData_carRules {
  @override
  final String G__typename;
  @override
  final GviewListingShortFragmentData_carRules_dynamicItemName? dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GviewListingShortFragmentData_carRules(
          [void Function(GviewListingShortFragmentData_carRulesBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_carRulesBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_carRules._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GviewListingShortFragmentData_carRules', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_carRules rebuild(
          void Function(GviewListingShortFragmentData_carRulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_carRulesBuilder toBuilder() =>
      new GviewListingShortFragmentData_carRulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_carRules &&
        G__typename == other.G__typename &&
        dynamicItemName == other.dynamicItemName &&
        id == other.id &&
        itemName == other.itemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, dynamicItemName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingShortFragmentData_carRules')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GviewListingShortFragmentData_carRulesBuilder
    implements
        Builder<GviewListingShortFragmentData_carRules,
            GviewListingShortFragmentData_carRulesBuilder> {
  _$GviewListingShortFragmentData_carRules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder?
      _dynamicItemName;
  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GviewListingShortFragmentData_carRules_dynamicItemNameBuilder();
  set dynamicItemName(
          GviewListingShortFragmentData_carRules_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GviewListingShortFragmentData_carRulesBuilder() {
    GviewListingShortFragmentData_carRules._initializeBuilder(this);
  }

  GviewListingShortFragmentData_carRulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _dynamicItemName = $v.dynamicItemName?.toBuilder();
      _id = $v.id;
      _itemName = $v.itemName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_carRules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_carRules;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_carRulesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_carRules build() => _build();

  _$GviewListingShortFragmentData_carRules _build() {
    _$GviewListingShortFragmentData_carRules _$result;
    try {
      _$result = _$v ??
          new _$GviewListingShortFragmentData_carRules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GviewListingShortFragmentData_carRules', 'G__typename'),
              dynamicItemName: _dynamicItemName?.build(),
              id: id,
              itemName: itemName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicItemName';
        _dynamicItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GviewListingShortFragmentData_carRules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_carRules_dynamicItemName
    extends GviewListingShortFragmentData_carRules_dynamicItemName {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_carRules_dynamicItemName(
          [void Function(
                  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_carRules_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_carRules_dynamicItemName._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GviewListingShortFragmentData_carRules_dynamicItemName',
        'G__typename');
  }

  @override
  GviewListingShortFragmentData_carRules_dynamicItemName rebuild(
          void Function(
                  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder toBuilder() =>
      new GviewListingShortFragmentData_carRules_dynamicItemNameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_carRules_dynamicItemName &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_carRules_dynamicItemName')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_carRules_dynamicItemNameBuilder
    implements
        Builder<GviewListingShortFragmentData_carRules_dynamicItemName,
            GviewListingShortFragmentData_carRules_dynamicItemNameBuilder> {
  _$GviewListingShortFragmentData_carRules_dynamicItemName? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder() {
    GviewListingShortFragmentData_carRules_dynamicItemName._initializeBuilder(
        this);
  }

  GviewListingShortFragmentData_carRules_dynamicItemNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
      _es = $v.es;
      _fr = $v.fr;
      _it = $v.it;
      _pt = $v.pt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_carRules_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_carRules_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GviewListingShortFragmentData_carRules_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_carRules_dynamicItemName build() => _build();

  _$GviewListingShortFragmentData_carRules_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_carRules_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_carRules_dynamicItemName',
                'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_carFeatures
    extends GviewListingShortFragmentData_carFeatures {
  @override
  final String G__typename;
  @override
  final GviewListingShortFragmentData_carFeatures_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GviewListingShortFragmentData_carFeatures(
          [void Function(GviewListingShortFragmentData_carFeaturesBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_carFeaturesBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_carFeatures._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_carFeatures', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_carFeatures rebuild(
          void Function(GviewListingShortFragmentData_carFeaturesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_carFeaturesBuilder toBuilder() =>
      new GviewListingShortFragmentData_carFeaturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_carFeatures &&
        G__typename == other.G__typename &&
        dynamicItemName == other.dynamicItemName &&
        id == other.id &&
        itemName == other.itemName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, dynamicItemName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingShortFragmentData_carFeatures')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GviewListingShortFragmentData_carFeaturesBuilder
    implements
        Builder<GviewListingShortFragmentData_carFeatures,
            GviewListingShortFragmentData_carFeaturesBuilder> {
  _$GviewListingShortFragmentData_carFeatures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder?
      _dynamicItemName;
  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder();
  set dynamicItemName(
          GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GviewListingShortFragmentData_carFeaturesBuilder() {
    GviewListingShortFragmentData_carFeatures._initializeBuilder(this);
  }

  GviewListingShortFragmentData_carFeaturesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _dynamicItemName = $v.dynamicItemName?.toBuilder();
      _id = $v.id;
      _itemName = $v.itemName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_carFeatures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_carFeatures;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_carFeaturesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_carFeatures build() => _build();

  _$GviewListingShortFragmentData_carFeatures _build() {
    _$GviewListingShortFragmentData_carFeatures _$result;
    try {
      _$result = _$v ??
          new _$GviewListingShortFragmentData_carFeatures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GviewListingShortFragmentData_carFeatures', 'G__typename'),
              dynamicItemName: _dynamicItemName?.build(),
              id: id,
              itemName: itemName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamicItemName';
        _dynamicItemName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GviewListingShortFragmentData_carFeatures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_carFeatures_dynamicItemName
    extends GviewListingShortFragmentData_carFeatures_dynamicItemName {
  @override
  final String G__typename;
  @override
  final String? en;
  @override
  final String? ar;
  @override
  final String? es;
  @override
  final String? fr;
  @override
  final String? it;
  @override
  final String? pt;

  factory _$GviewListingShortFragmentData_carFeatures_dynamicItemName(
          [void Function(
                  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GviewListingShortFragmentData_carFeatures_dynamicItemName._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GviewListingShortFragmentData_carFeatures_dynamicItemName',
        'G__typename');
  }

  @override
  GviewListingShortFragmentData_carFeatures_dynamicItemName rebuild(
          void Function(
                  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder
      toBuilder() =>
          new GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_carFeatures_dynamicItemName &&
        G__typename == other.G__typename &&
        en == other.en &&
        ar == other.ar &&
        es == other.es &&
        fr == other.fr &&
        it == other.it &&
        pt == other.pt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jc(_$hash, ar.hashCode);
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
            r'GviewListingShortFragmentData_carFeatures_dynamicItemName')
          ..add('G__typename', G__typename)
          ..add('en', en)
          ..add('ar', ar)
          ..add('es', es)
          ..add('fr', fr)
          ..add('it', it)
          ..add('pt', pt))
        .toString();
  }
}

class GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder
    implements
        Builder<GviewListingShortFragmentData_carFeatures_dynamicItemName,
            GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder> {
  _$GviewListingShortFragmentData_carFeatures_dynamicItemName? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  String? _ar;
  String? get ar => _$this._ar;
  set ar(String? ar) => _$this._ar = ar;

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

  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder() {
    GviewListingShortFragmentData_carFeatures_dynamicItemName
        ._initializeBuilder(this);
  }

  GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _en = $v.en;
      _ar = $v.ar;
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
      GviewListingShortFragmentData_carFeatures_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_carFeatures_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_carFeatures_dynamicItemName build() => _build();

  _$GviewListingShortFragmentData_carFeatures_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_carFeatures_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingShortFragmentData_carFeatures_dynamicItemName',
                'G__typename'),
            en: en,
            ar: ar,
            es: es,
            fr: fr,
            it: it,
            pt: pt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_listPhotos
    extends GviewListingShortFragmentData_listPhotos {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;

  factory _$GviewListingShortFragmentData_listPhotos(
          [void Function(GviewListingShortFragmentData_listPhotosBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_listPhotosBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_listPhotos._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_listPhotos', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_listPhotos rebuild(
          void Function(GviewListingShortFragmentData_listPhotosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_listPhotosBuilder toBuilder() =>
      new GviewListingShortFragmentData_listPhotosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_listPhotos &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingShortFragmentData_listPhotos')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GviewListingShortFragmentData_listPhotosBuilder
    implements
        Builder<GviewListingShortFragmentData_listPhotos,
            GviewListingShortFragmentData_listPhotosBuilder> {
  _$GviewListingShortFragmentData_listPhotos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GviewListingShortFragmentData_listPhotosBuilder() {
    GviewListingShortFragmentData_listPhotos._initializeBuilder(this);
  }

  GviewListingShortFragmentData_listPhotosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_listPhotos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_listPhotos;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_listPhotosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_listPhotos build() => _build();

  _$GviewListingShortFragmentData_listPhotos _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_listPhotos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingShortFragmentData_listPhotos', 'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingShortFragmentData_listingData
    extends GviewListingShortFragmentData_listingData {
  @override
  final String G__typename;
  @override
  final double? basePrice;
  @override
  final String? currency;

  factory _$GviewListingShortFragmentData_listingData(
          [void Function(GviewListingShortFragmentData_listingDataBuilder)?
              updates]) =>
      (new GviewListingShortFragmentData_listingDataBuilder()..update(updates))
          ._build();

  _$GviewListingShortFragmentData_listingData._(
      {required this.G__typename, this.basePrice, this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingShortFragmentData_listingData', 'G__typename');
  }

  @override
  GviewListingShortFragmentData_listingData rebuild(
          void Function(GviewListingShortFragmentData_listingDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingShortFragmentData_listingDataBuilder toBuilder() =>
      new GviewListingShortFragmentData_listingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingShortFragmentData_listingData &&
        G__typename == other.G__typename &&
        basePrice == other.basePrice &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingShortFragmentData_listingData')
          ..add('G__typename', G__typename)
          ..add('basePrice', basePrice)
          ..add('currency', currency))
        .toString();
  }
}

class GviewListingShortFragmentData_listingDataBuilder
    implements
        Builder<GviewListingShortFragmentData_listingData,
            GviewListingShortFragmentData_listingDataBuilder> {
  _$GviewListingShortFragmentData_listingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  GviewListingShortFragmentData_listingDataBuilder() {
    GviewListingShortFragmentData_listingData._initializeBuilder(this);
  }

  GviewListingShortFragmentData_listingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _basePrice = $v.basePrice;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingShortFragmentData_listingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingShortFragmentData_listingData;
  }

  @override
  void update(
      void Function(GviewListingShortFragmentData_listingDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingShortFragmentData_listingData build() => _build();

  _$GviewListingShortFragmentData_listingData _build() {
    final _$result = _$v ??
        new _$GviewListingShortFragmentData_listingData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingShortFragmentData_listingData', 'G__typename'),
            basePrice: basePrice,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
