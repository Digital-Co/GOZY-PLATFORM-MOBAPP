// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchListing.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchListingData> _$gSearchListingDataSerializer =
    new _$GSearchListingDataSerializer();
Serializer<GSearchListingData_searchListing>
    _$gSearchListingDataSearchListingSerializer =
    new _$GSearchListingData_searchListingSerializer();
Serializer<GSearchListingData_searchListing_results>
    _$gSearchListingDataSearchListingResultsSerializer =
    new _$GSearchListingData_searchListing_resultsSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicListingTitle>
    _$gSearchListingDataSearchListingResultsDynamicListingTitleSerializer =
    new _$GSearchListingData_searchListing_results_dynamicListingTitleSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicListingDescription>
    _$gSearchListingDataSearchListingResultsDynamicListingDescriptionSerializer =
    new _$GSearchListingData_searchListing_results_dynamicListingDescriptionSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicListTitle>
    _$gSearchListingDataSearchListingResultsDynamicListTitleSerializer =
    new _$GSearchListingData_searchListing_results_dynamicListTitleSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicListDescription>
    _$gSearchListingDataSearchListingResultsDynamicListDescriptionSerializer =
    new _$GSearchListingData_searchListing_results_dynamicListDescriptionSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicCarType>
    _$gSearchListingDataSearchListingResultsDynamicCarTypeSerializer =
    new _$GSearchListingData_searchListing_results_dynamicCarTypeSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicmake>
    _$gSearchListingDataSearchListingResultsDynamicmakeSerializer =
    new _$GSearchListingData_searchListing_results_dynamicmakeSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicModel>
    _$gSearchListingDataSearchListingResultsDynamicModelSerializer =
    new _$GSearchListingData_searchListing_results_dynamicModelSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicYear>
    _$gSearchListingDataSearchListingResultsDynamicYearSerializer =
    new _$GSearchListingData_searchListing_results_dynamicYearSerializer();
Serializer<GSearchListingData_searchListing_results_dynamicOdometer>
    _$gSearchListingDataSearchListingResultsDynamicOdometerSerializer =
    new _$GSearchListingData_searchListing_results_dynamicOdometerSerializer();
Serializer<GSearchListingData_searchListing_results_carRules>
    _$gSearchListingDataSearchListingResultsCarRulesSerializer =
    new _$GSearchListingData_searchListing_results_carRulesSerializer();
Serializer<GSearchListingData_searchListing_results_carRules_dynamicItemName>
    _$gSearchListingDataSearchListingResultsCarRulesDynamicItemNameSerializer =
    new _$GSearchListingData_searchListing_results_carRules_dynamicItemNameSerializer();
Serializer<GSearchListingData_searchListing_results_carFeatures>
    _$gSearchListingDataSearchListingResultsCarFeaturesSerializer =
    new _$GSearchListingData_searchListing_results_carFeaturesSerializer();
Serializer<GSearchListingData_searchListing_results_carFeatures_dynamicItemName>
    _$gSearchListingDataSearchListingResultsCarFeaturesDynamicItemNameSerializer =
    new _$GSearchListingData_searchListing_results_carFeatures_dynamicItemNameSerializer();
Serializer<GSearchListingData_searchListing_results_listPhotos>
    _$gSearchListingDataSearchListingResultsListPhotosSerializer =
    new _$GSearchListingData_searchListing_results_listPhotosSerializer();
Serializer<GSearchListingData_searchListing_results_listingData>
    _$gSearchListingDataSearchListingResultsListingDataSerializer =
    new _$GSearchListingData_searchListing_results_listingDataSerializer();

class _$GSearchListingDataSerializer
    implements StructuredSerializer<GSearchListingData> {
  @override
  final Iterable<Type> types = const [GSearchListingData, _$GSearchListingData];
  @override
  final String wireName = 'GSearchListingData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchListingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.searchListing;
    if (value != null) {
      result
        ..add('searchListing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSearchListingData_searchListing)));
    }
    return result;
  }

  @override
  GSearchListingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchListingDataBuilder();

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
        case 'searchListing':
          result.searchListing.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSearchListingData_searchListing))!
              as GSearchListingData_searchListing);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchListingData_searchListingSerializer
    implements StructuredSerializer<GSearchListingData_searchListing> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing,
    _$GSearchListingData_searchListing
  ];
  @override
  final String wireName = 'GSearchListingData_searchListing';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchListingData_searchListing object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
              const FullType.nullable(GSearchListingData_searchListing_results)
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
  GSearchListingData_searchListing deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchListingData_searchListingBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GSearchListingData_searchListing_results)
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

class _$GSearchListingData_searchListing_resultsSerializer
    implements StructuredSerializer<GSearchListingData_searchListing_results> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results,
    _$GSearchListingData_searchListing_results
  ];
  @override
  final String wireName = 'GSearchListingData_searchListing_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchListingData_searchListing_results object,
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
                  GSearchListingData_searchListing_results_dynamicListingTitle)
            ])));
    }
    value = object.dynamicListingDescription;
    if (value != null) {
      result
        ..add('dynamicListingDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GSearchListingData_searchListing_results_dynamicListingDescription)
            ])));
    }
    value = object.dynamicListTitle;
    if (value != null) {
      result
        ..add('dynamicListTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicListTitle)));
    }
    value = object.dynamicListDescription;
    if (value != null) {
      result
        ..add('dynamicListDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicListDescription)));
    }
    value = object.dynamicCarType;
    if (value != null) {
      result
        ..add('dynamicCarType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicCarType)));
    }
    value = object.dynamicmake;
    if (value != null) {
      result
        ..add('dynamicmake')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicmake)));
    }
    value = object.dynamicModel;
    if (value != null) {
      result
        ..add('dynamicModel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicModel)));
    }
    value = object.dynamicYear;
    if (value != null) {
      result
        ..add('dynamicYear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicYear)));
    }
    value = object.dynamicOdometer;
    if (value != null) {
      result
        ..add('dynamicOdometer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_dynamicOdometer)));
    }
    value = object.carRules;
    if (value != null) {
      result
        ..add('carRules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GSearchListingData_searchListing_results_carRules)
            ])));
    }
    value = object.carFeatures;
    if (value != null) {
      result
        ..add('carFeatures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GSearchListingData_searchListing_results_carFeatures)
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
              const FullType.nullable(
                  GSearchListingData_searchListing_results_listPhotos)
            ])));
    }
    value = object.listingData;
    if (value != null) {
      result
        ..add('listingData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSearchListingData_searchListing_results_listingData)));
    }
    return result;
  }

  @override
  GSearchListingData_searchListing_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchListingData_searchListing_resultsBuilder();

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
                    GSearchListingData_searchListing_results_dynamicListingTitle)
              ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListingDescription':
          result.dynamicListingDescription
              .replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(
                        GSearchListingData_searchListing_results_dynamicListingDescription)
                  ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListTitle':
          result.dynamicListTitle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicListTitle))!
              as GSearchListingData_searchListing_results_dynamicListTitle);
          break;
        case 'dynamicListDescription':
          result.dynamicListDescription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicListDescription))!
              as GSearchListingData_searchListing_results_dynamicListDescription);
          break;
        case 'dynamicCarType':
          result.dynamicCarType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicCarType))!
              as GSearchListingData_searchListing_results_dynamicCarType);
          break;
        case 'dynamicmake':
          result.dynamicmake.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicmake))!
              as GSearchListingData_searchListing_results_dynamicmake);
          break;
        case 'dynamicModel':
          result.dynamicModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicModel))!
              as GSearchListingData_searchListing_results_dynamicModel);
          break;
        case 'dynamicYear':
          result.dynamicYear.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicYear))!
              as GSearchListingData_searchListing_results_dynamicYear);
          break;
        case 'dynamicOdometer':
          result.dynamicOdometer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_dynamicOdometer))!
              as GSearchListingData_searchListing_results_dynamicOdometer);
          break;
        case 'carRules':
          result.carRules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GSearchListingData_searchListing_results_carRules)
              ]))! as BuiltList<Object?>);
          break;
        case 'carFeatures':
          result.carFeatures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GSearchListingData_searchListing_results_carFeatures)
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
                    GSearchListingData_searchListing_results_listPhotos)
              ]))! as BuiltList<Object?>);
          break;
        case 'listingData':
          result.listingData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSearchListingData_searchListing_results_listingData))!
              as GSearchListingData_searchListing_results_listingData);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchListingData_searchListing_results_dynamicListingTitleSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicListingTitle> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicListingTitle,
    _$GSearchListingData_searchListing_results_dynamicListingTitle
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicListingTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicListingTitle object,
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
  GSearchListingData_searchListing_results_dynamicListingTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicListingTitleBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicListingDescriptionSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicListingDescription> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicListingDescription,
    _$GSearchListingData_searchListing_results_dynamicListingDescription
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicListingDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicListingDescription object,
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
  GSearchListingData_searchListing_results_dynamicListingDescription
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicListTitleSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicListTitle> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicListTitle,
    _$GSearchListingData_searchListing_results_dynamicListTitle
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicListTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicListTitle object,
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
  GSearchListingData_searchListing_results_dynamicListTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicListTitleBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicListDescriptionSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicListDescription> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicListDescription,
    _$GSearchListingData_searchListing_results_dynamicListDescription
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicListDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicListDescription object,
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
  GSearchListingData_searchListing_results_dynamicListDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicListDescriptionBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicCarTypeSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicCarType> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicCarType,
    _$GSearchListingData_searchListing_results_dynamicCarType
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicCarType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicCarType object,
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
  GSearchListingData_searchListing_results_dynamicCarType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicCarTypeBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicmakeSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicmake> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicmake,
    _$GSearchListingData_searchListing_results_dynamicmake
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicmake';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicmake object,
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
  GSearchListingData_searchListing_results_dynamicmake deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicmakeBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicModelSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicModel> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicModel,
    _$GSearchListingData_searchListing_results_dynamicModel
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicModel';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicModel object,
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
  GSearchListingData_searchListing_results_dynamicModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicModelBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicYearSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicYear> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicYear,
    _$GSearchListingData_searchListing_results_dynamicYear
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicYear';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicYear object,
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
  GSearchListingData_searchListing_results_dynamicYear deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicYearBuilder();

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

class _$GSearchListingData_searchListing_results_dynamicOdometerSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_dynamicOdometer> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_dynamicOdometer,
    _$GSearchListingData_searchListing_results_dynamicOdometer
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_dynamicOdometer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_dynamicOdometer object,
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
  GSearchListingData_searchListing_results_dynamicOdometer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_dynamicOdometerBuilder();

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

class _$GSearchListingData_searchListing_results_carRulesSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_carRules> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_carRules,
    _$GSearchListingData_searchListing_results_carRules
  ];
  @override
  final String wireName = 'GSearchListingData_searchListing_results_carRules';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_carRules object,
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
                GSearchListingData_searchListing_results_carRules_dynamicItemName)));
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
  GSearchListingData_searchListing_results_carRules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_carRulesBuilder();

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
                      GSearchListingData_searchListing_results_carRules_dynamicItemName))!
              as GSearchListingData_searchListing_results_carRules_dynamicItemName);
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

class _$GSearchListingData_searchListing_results_carRules_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_carRules_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_carRules_dynamicItemName,
    _$GSearchListingData_searchListing_results_carRules_dynamicItemName
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_carRules_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_carRules_dynamicItemName object,
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
  GSearchListingData_searchListing_results_carRules_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder();

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

class _$GSearchListingData_searchListing_results_carFeaturesSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_carFeatures> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_carFeatures,
    _$GSearchListingData_searchListing_results_carFeatures
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_carFeatures';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_carFeatures object,
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
                GSearchListingData_searchListing_results_carFeatures_dynamicItemName)));
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
  GSearchListingData_searchListing_results_carFeatures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_carFeaturesBuilder();

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
                      GSearchListingData_searchListing_results_carFeatures_dynamicItemName))!
              as GSearchListingData_searchListing_results_carFeatures_dynamicItemName);
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

class _$GSearchListingData_searchListing_results_carFeatures_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_carFeatures_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_carFeatures_dynamicItemName,
    _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_carFeatures_dynamicItemName';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GSearchListingData_searchListing_results_carFeatures_dynamicItemName
          object,
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
  GSearchListingData_searchListing_results_carFeatures_dynamicItemName
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder();

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

class _$GSearchListingData_searchListing_results_listPhotosSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_listPhotos> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_listPhotos,
    _$GSearchListingData_searchListing_results_listPhotos
  ];
  @override
  final String wireName = 'GSearchListingData_searchListing_results_listPhotos';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_listPhotos object,
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
  GSearchListingData_searchListing_results_listPhotos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_listPhotosBuilder();

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

class _$GSearchListingData_searchListing_results_listingDataSerializer
    implements
        StructuredSerializer<
            GSearchListingData_searchListing_results_listingData> {
  @override
  final Iterable<Type> types = const [
    GSearchListingData_searchListing_results_listingData,
    _$GSearchListingData_searchListing_results_listingData
  ];
  @override
  final String wireName =
      'GSearchListingData_searchListing_results_listingData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSearchListingData_searchListing_results_listingData object,
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
    value = object.weeklyDiscount;
    if (value != null) {
      result
        ..add('weeklyDiscount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.monthlyDiscount;
    if (value != null) {
      result
        ..add('monthlyDiscount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GSearchListingData_searchListing_results_listingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSearchListingData_searchListing_results_listingDataBuilder();

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
        case 'weeklyDiscount':
          result.weeklyDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'monthlyDiscount':
          result.monthlyDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchListingData extends GSearchListingData {
  @override
  final String G__typename;
  @override
  final GSearchListingData_searchListing? searchListing;

  factory _$GSearchListingData(
          [void Function(GSearchListingDataBuilder)? updates]) =>
      (new GSearchListingDataBuilder()..update(updates))._build();

  _$GSearchListingData._({required this.G__typename, this.searchListing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchListingData', 'G__typename');
  }

  @override
  GSearchListingData rebuild(
          void Function(GSearchListingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingDataBuilder toBuilder() =>
      new GSearchListingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData &&
        G__typename == other.G__typename &&
        searchListing == other.searchListing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, searchListing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchListingData')
          ..add('G__typename', G__typename)
          ..add('searchListing', searchListing))
        .toString();
  }
}

class GSearchListingDataBuilder
    implements Builder<GSearchListingData, GSearchListingDataBuilder> {
  _$GSearchListingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchListingData_searchListingBuilder? _searchListing;
  GSearchListingData_searchListingBuilder get searchListing =>
      _$this._searchListing ??= new GSearchListingData_searchListingBuilder();
  set searchListing(GSearchListingData_searchListingBuilder? searchListing) =>
      _$this._searchListing = searchListing;

  GSearchListingDataBuilder() {
    GSearchListingData._initializeBuilder(this);
  }

  GSearchListingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _searchListing = $v.searchListing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchListingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData;
  }

  @override
  void update(void Function(GSearchListingDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData build() => _build();

  _$GSearchListingData _build() {
    _$GSearchListingData _$result;
    try {
      _$result = _$v ??
          new _$GSearchListingData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchListingData', 'G__typename'),
              searchListing: _searchListing?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchListing';
        _searchListing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchListingData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing
    extends GSearchListingData_searchListing {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final BuiltList<GSearchListingData_searchListing_results?>? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GSearchListingData_searchListing(
          [void Function(GSearchListingData_searchListingBuilder)? updates]) =>
      (new GSearchListingData_searchListingBuilder()..update(updates))._build();

  _$GSearchListingData_searchListing._(
      {required this.G__typename,
      this.count,
      this.results,
      this.status,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchListingData_searchListing', 'G__typename');
  }

  @override
  GSearchListingData_searchListing rebuild(
          void Function(GSearchListingData_searchListingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListingBuilder toBuilder() =>
      new GSearchListingData_searchListingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing &&
        G__typename == other.G__typename &&
        count == other.count &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchListingData_searchListing')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GSearchListingData_searchListingBuilder
    implements
        Builder<GSearchListingData_searchListing,
            GSearchListingData_searchListingBuilder> {
  _$GSearchListingData_searchListing? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<GSearchListingData_searchListing_results?>? _results;
  ListBuilder<GSearchListingData_searchListing_results?> get results =>
      _$this._results ??=
          new ListBuilder<GSearchListingData_searchListing_results?>();
  set results(
          ListBuilder<GSearchListingData_searchListing_results?>? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GSearchListingData_searchListingBuilder() {
    GSearchListingData_searchListing._initializeBuilder(this);
  }

  GSearchListingData_searchListingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchListingData_searchListing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing;
  }

  @override
  void update(void Function(GSearchListingData_searchListingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing build() => _build();

  _$GSearchListingData_searchListing _build() {
    _$GSearchListingData_searchListing _$result;
    try {
      _$result = _$v ??
          new _$GSearchListingData_searchListing._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSearchListingData_searchListing', 'G__typename'),
              count: count,
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
            r'GSearchListingData_searchListing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results
    extends GSearchListingData_searchListing_results {
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
  final BuiltList<
          GSearchListingData_searchListing_results_dynamicListingTitle?>?
      dynamicListingTitle;
  @override
  final BuiltList<
          GSearchListingData_searchListing_results_dynamicListingDescription?>?
      dynamicListingDescription;
  @override
  final GSearchListingData_searchListing_results_dynamicListTitle?
      dynamicListTitle;
  @override
  final GSearchListingData_searchListing_results_dynamicListDescription?
      dynamicListDescription;
  @override
  final GSearchListingData_searchListing_results_dynamicCarType? dynamicCarType;
  @override
  final GSearchListingData_searchListing_results_dynamicmake? dynamicmake;
  @override
  final GSearchListingData_searchListing_results_dynamicModel? dynamicModel;
  @override
  final GSearchListingData_searchListing_results_dynamicYear? dynamicYear;
  @override
  final GSearchListingData_searchListing_results_dynamicOdometer?
      dynamicOdometer;
  @override
  final BuiltList<GSearchListingData_searchListing_results_carRules?>? carRules;
  @override
  final BuiltList<GSearchListingData_searchListing_results_carFeatures?>?
      carFeatures;
  @override
  final double? lng;
  @override
  final String? listPhotoName;
  @override
  final BuiltList<GSearchListingData_searchListing_results_listPhotos?>?
      listPhotos;
  @override
  final GSearchListingData_searchListing_results_listingData? listingData;

  factory _$GSearchListingData_searchListing_results(
          [void Function(GSearchListingData_searchListing_resultsBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_resultsBuilder()..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results rebuild(
          void Function(GSearchListingData_searchListing_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_resultsBuilder toBuilder() =>
      new GSearchListingData_searchListing_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results &&
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
    return (newBuiltValueToStringHelper(
            r'GSearchListingData_searchListing_results')
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

class GSearchListingData_searchListing_resultsBuilder
    implements
        Builder<GSearchListingData_searchListing_results,
            GSearchListingData_searchListing_resultsBuilder> {
  _$GSearchListingData_searchListing_results? _$v;

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

  ListBuilder<GSearchListingData_searchListing_results_dynamicListingTitle?>?
      _dynamicListingTitle;
  ListBuilder<GSearchListingData_searchListing_results_dynamicListingTitle?>
      get dynamicListingTitle =>
          _$this._dynamicListingTitle ??= new ListBuilder<
              GSearchListingData_searchListing_results_dynamicListingTitle?>();
  set dynamicListingTitle(
          ListBuilder<
                  GSearchListingData_searchListing_results_dynamicListingTitle?>?
              dynamicListingTitle) =>
      _$this._dynamicListingTitle = dynamicListingTitle;

  ListBuilder<
          GSearchListingData_searchListing_results_dynamicListingDescription?>?
      _dynamicListingDescription;
  ListBuilder<
          GSearchListingData_searchListing_results_dynamicListingDescription?>
      get dynamicListingDescription =>
          _$this._dynamicListingDescription ??= new ListBuilder<
              GSearchListingData_searchListing_results_dynamicListingDescription?>();
  set dynamicListingDescription(
          ListBuilder<
                  GSearchListingData_searchListing_results_dynamicListingDescription?>?
              dynamicListingDescription) =>
      _$this._dynamicListingDescription = dynamicListingDescription;

  GSearchListingData_searchListing_results_dynamicListTitleBuilder?
      _dynamicListTitle;
  GSearchListingData_searchListing_results_dynamicListTitleBuilder
      get dynamicListTitle => _$this._dynamicListTitle ??=
          new GSearchListingData_searchListing_results_dynamicListTitleBuilder();
  set dynamicListTitle(
          GSearchListingData_searchListing_results_dynamicListTitleBuilder?
              dynamicListTitle) =>
      _$this._dynamicListTitle = dynamicListTitle;

  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder?
      _dynamicListDescription;
  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder
      get dynamicListDescription => _$this._dynamicListDescription ??=
          new GSearchListingData_searchListing_results_dynamicListDescriptionBuilder();
  set dynamicListDescription(
          GSearchListingData_searchListing_results_dynamicListDescriptionBuilder?
              dynamicListDescription) =>
      _$this._dynamicListDescription = dynamicListDescription;

  GSearchListingData_searchListing_results_dynamicCarTypeBuilder?
      _dynamicCarType;
  GSearchListingData_searchListing_results_dynamicCarTypeBuilder
      get dynamicCarType => _$this._dynamicCarType ??=
          new GSearchListingData_searchListing_results_dynamicCarTypeBuilder();
  set dynamicCarType(
          GSearchListingData_searchListing_results_dynamicCarTypeBuilder?
              dynamicCarType) =>
      _$this._dynamicCarType = dynamicCarType;

  GSearchListingData_searchListing_results_dynamicmakeBuilder? _dynamicmake;
  GSearchListingData_searchListing_results_dynamicmakeBuilder get dynamicmake =>
      _$this._dynamicmake ??=
          new GSearchListingData_searchListing_results_dynamicmakeBuilder();
  set dynamicmake(
          GSearchListingData_searchListing_results_dynamicmakeBuilder?
              dynamicmake) =>
      _$this._dynamicmake = dynamicmake;

  GSearchListingData_searchListing_results_dynamicModelBuilder? _dynamicModel;
  GSearchListingData_searchListing_results_dynamicModelBuilder
      get dynamicModel => _$this._dynamicModel ??=
          new GSearchListingData_searchListing_results_dynamicModelBuilder();
  set dynamicModel(
          GSearchListingData_searchListing_results_dynamicModelBuilder?
              dynamicModel) =>
      _$this._dynamicModel = dynamicModel;

  GSearchListingData_searchListing_results_dynamicYearBuilder? _dynamicYear;
  GSearchListingData_searchListing_results_dynamicYearBuilder get dynamicYear =>
      _$this._dynamicYear ??=
          new GSearchListingData_searchListing_results_dynamicYearBuilder();
  set dynamicYear(
          GSearchListingData_searchListing_results_dynamicYearBuilder?
              dynamicYear) =>
      _$this._dynamicYear = dynamicYear;

  GSearchListingData_searchListing_results_dynamicOdometerBuilder?
      _dynamicOdometer;
  GSearchListingData_searchListing_results_dynamicOdometerBuilder
      get dynamicOdometer => _$this._dynamicOdometer ??=
          new GSearchListingData_searchListing_results_dynamicOdometerBuilder();
  set dynamicOdometer(
          GSearchListingData_searchListing_results_dynamicOdometerBuilder?
              dynamicOdometer) =>
      _$this._dynamicOdometer = dynamicOdometer;

  ListBuilder<GSearchListingData_searchListing_results_carRules?>? _carRules;
  ListBuilder<GSearchListingData_searchListing_results_carRules?>
      get carRules => _$this._carRules ??=
          new ListBuilder<GSearchListingData_searchListing_results_carRules?>();
  set carRules(
          ListBuilder<GSearchListingData_searchListing_results_carRules?>?
              carRules) =>
      _$this._carRules = carRules;

  ListBuilder<GSearchListingData_searchListing_results_carFeatures?>?
      _carFeatures;
  ListBuilder<GSearchListingData_searchListing_results_carFeatures?>
      get carFeatures => _$this._carFeatures ??= new ListBuilder<
          GSearchListingData_searchListing_results_carFeatures?>();
  set carFeatures(
          ListBuilder<GSearchListingData_searchListing_results_carFeatures?>?
              carFeatures) =>
      _$this._carFeatures = carFeatures;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  String? _listPhotoName;
  String? get listPhotoName => _$this._listPhotoName;
  set listPhotoName(String? listPhotoName) =>
      _$this._listPhotoName = listPhotoName;

  ListBuilder<GSearchListingData_searchListing_results_listPhotos?>?
      _listPhotos;
  ListBuilder<GSearchListingData_searchListing_results_listPhotos?>
      get listPhotos => _$this._listPhotos ??= new ListBuilder<
          GSearchListingData_searchListing_results_listPhotos?>();
  set listPhotos(
          ListBuilder<GSearchListingData_searchListing_results_listPhotos?>?
              listPhotos) =>
      _$this._listPhotos = listPhotos;

  GSearchListingData_searchListing_results_listingDataBuilder? _listingData;
  GSearchListingData_searchListing_results_listingDataBuilder get listingData =>
      _$this._listingData ??=
          new GSearchListingData_searchListing_results_listingDataBuilder();
  set listingData(
          GSearchListingData_searchListing_results_listingDataBuilder?
              listingData) =>
      _$this._listingData = listingData;

  GSearchListingData_searchListing_resultsBuilder() {
    GSearchListingData_searchListing_results._initializeBuilder(this);
  }

  GSearchListingData_searchListing_resultsBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results;
  }

  @override
  void update(
      void Function(GSearchListingData_searchListing_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results build() => _build();

  _$GSearchListingData_searchListing_results _build() {
    _$GSearchListingData_searchListing_results _$result;
    try {
      _$result = _$v ??
          new _$GSearchListingData_searchListing_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSearchListingData_searchListing_results', 'G__typename'),
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
            r'GSearchListingData_searchListing_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results_dynamicListingTitle
    extends GSearchListingData_searchListing_results_dynamicListingTitle {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listTitle;

  factory _$GSearchListingData_searchListing_results_dynamicListingTitle(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListingTitleBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicListingTitleBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicListingTitle._(
      {required this.G__typename, this.language, this.listTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSearchListingData_searchListing_results_dynamicListingTitle',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicListingTitle rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicListingTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicListingTitleBuilder
      toBuilder() =>
          new GSearchListingData_searchListing_results_dynamicListingTitleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSearchListingData_searchListing_results_dynamicListingTitle &&
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
            r'GSearchListingData_searchListing_results_dynamicListingTitle')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listTitle', listTitle))
        .toString();
  }
}

class GSearchListingData_searchListing_results_dynamicListingTitleBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicListingTitle,
            GSearchListingData_searchListing_results_dynamicListingTitleBuilder> {
  _$GSearchListingData_searchListing_results_dynamicListingTitle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _listTitle;
  String? get listTitle => _$this._listTitle;
  set listTitle(String? listTitle) => _$this._listTitle = listTitle;

  GSearchListingData_searchListing_results_dynamicListingTitleBuilder() {
    GSearchListingData_searchListing_results_dynamicListingTitle
        ._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_dynamicListingTitleBuilder
      get _$this {
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
  void replace(
      GSearchListingData_searchListing_results_dynamicListingTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GSearchListingData_searchListing_results_dynamicListingTitle;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicListingTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicListingTitle build() =>
      _build();

  _$GSearchListingData_searchListing_results_dynamicListingTitle _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicListingTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicListingTitle',
                'G__typename'),
            language: language,
            listTitle: listTitle);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results_dynamicListingDescription
    extends GSearchListingData_searchListing_results_dynamicListingDescription {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listDescription;

  factory _$GSearchListingData_searchListing_results_dynamicListingDescription(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicListingDescription._(
      {required this.G__typename, this.language, this.listDescription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSearchListingData_searchListing_results_dynamicListingDescription',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicListingDescription rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder
      toBuilder() =>
          new GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSearchListingData_searchListing_results_dynamicListingDescription &&
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
            r'GSearchListingData_searchListing_results_dynamicListingDescription')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listDescription', listDescription))
        .toString();
  }
}

class GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder
    implements
        Builder<
            GSearchListingData_searchListing_results_dynamicListingDescription,
            GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder> {
  _$GSearchListingData_searchListing_results_dynamicListingDescription? _$v;

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

  GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder() {
    GSearchListingData_searchListing_results_dynamicListingDescription
        ._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder
      get _$this {
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
  void replace(
      GSearchListingData_searchListing_results_dynamicListingDescription
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSearchListingData_searchListing_results_dynamicListingDescription;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicListingDescription build() =>
      _build();

  _$GSearchListingData_searchListing_results_dynamicListingDescription
      _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicListingDescription
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicListingDescription',
                'G__typename'),
            language: language,
            listDescription: listDescription);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results_dynamicListTitle
    extends GSearchListingData_searchListing_results_dynamicListTitle {
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

  factory _$GSearchListingData_searchListing_results_dynamicListTitle(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListTitleBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicListTitleBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicListTitle._(
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
        r'GSearchListingData_searchListing_results_dynamicListTitle',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicListTitle rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicListTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicListTitleBuilder
      toBuilder() =>
          new GSearchListingData_searchListing_results_dynamicListTitleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_dynamicListTitle &&
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
            r'GSearchListingData_searchListing_results_dynamicListTitle')
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

class GSearchListingData_searchListing_results_dynamicListTitleBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicListTitle,
            GSearchListingData_searchListing_results_dynamicListTitleBuilder> {
  _$GSearchListingData_searchListing_results_dynamicListTitle? _$v;

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

  GSearchListingData_searchListing_results_dynamicListTitleBuilder() {
    GSearchListingData_searchListing_results_dynamicListTitle
        ._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_dynamicListTitleBuilder get _$this {
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
      GSearchListingData_searchListing_results_dynamicListTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_dynamicListTitle;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicListTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicListTitle build() => _build();

  _$GSearchListingData_searchListing_results_dynamicListTitle _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicListTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicListTitle',
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

class _$GSearchListingData_searchListing_results_dynamicListDescription
    extends GSearchListingData_searchListing_results_dynamicListDescription {
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

  factory _$GSearchListingData_searchListing_results_dynamicListDescription(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicListDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicListDescription._(
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
        r'GSearchListingData_searchListing_results_dynamicListDescription',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicListDescription rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder
      toBuilder() =>
          new GSearchListingData_searchListing_results_dynamicListDescriptionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSearchListingData_searchListing_results_dynamicListDescription &&
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
            r'GSearchListingData_searchListing_results_dynamicListDescription')
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

class GSearchListingData_searchListing_results_dynamicListDescriptionBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicListDescription,
            GSearchListingData_searchListing_results_dynamicListDescriptionBuilder> {
  _$GSearchListingData_searchListing_results_dynamicListDescription? _$v;

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

  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder() {
    GSearchListingData_searchListing_results_dynamicListDescription
        ._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder
      get _$this {
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
      GSearchListingData_searchListing_results_dynamicListDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSearchListingData_searchListing_results_dynamicListDescription;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicListDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicListDescription build() =>
      _build();

  _$GSearchListingData_searchListing_results_dynamicListDescription _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicListDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicListDescription',
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

class _$GSearchListingData_searchListing_results_dynamicCarType
    extends GSearchListingData_searchListing_results_dynamicCarType {
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

  factory _$GSearchListingData_searchListing_results_dynamicCarType(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicCarTypeBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicCarTypeBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicCarType._(
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
        r'GSearchListingData_searchListing_results_dynamicCarType',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicCarType rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicCarTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicCarTypeBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_dynamicCarTypeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_dynamicCarType &&
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
            r'GSearchListingData_searchListing_results_dynamicCarType')
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

class GSearchListingData_searchListing_results_dynamicCarTypeBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicCarType,
            GSearchListingData_searchListing_results_dynamicCarTypeBuilder> {
  _$GSearchListingData_searchListing_results_dynamicCarType? _$v;

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

  GSearchListingData_searchListing_results_dynamicCarTypeBuilder() {
    GSearchListingData_searchListing_results_dynamicCarType._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_dynamicCarTypeBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_dynamicCarType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_dynamicCarType;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicCarTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicCarType build() => _build();

  _$GSearchListingData_searchListing_results_dynamicCarType _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicCarType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicCarType',
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

class _$GSearchListingData_searchListing_results_dynamicmake
    extends GSearchListingData_searchListing_results_dynamicmake {
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

  factory _$GSearchListingData_searchListing_results_dynamicmake(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicmakeBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicmakeBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicmake._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results_dynamicmake', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicmake rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicmakeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicmakeBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_dynamicmakeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_dynamicmake &&
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
            r'GSearchListingData_searchListing_results_dynamicmake')
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

class GSearchListingData_searchListing_results_dynamicmakeBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicmake,
            GSearchListingData_searchListing_results_dynamicmakeBuilder> {
  _$GSearchListingData_searchListing_results_dynamicmake? _$v;

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

  GSearchListingData_searchListing_results_dynamicmakeBuilder() {
    GSearchListingData_searchListing_results_dynamicmake._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_dynamicmakeBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_dynamicmake other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_dynamicmake;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicmakeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicmake build() => _build();

  _$GSearchListingData_searchListing_results_dynamicmake _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicmake._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicmake',
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

class _$GSearchListingData_searchListing_results_dynamicModel
    extends GSearchListingData_searchListing_results_dynamicModel {
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

  factory _$GSearchListingData_searchListing_results_dynamicModel(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicModelBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicModelBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicModel._(
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
        r'GSearchListingData_searchListing_results_dynamicModel',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicModel rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicModelBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_dynamicModelBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_dynamicModel &&
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
            r'GSearchListingData_searchListing_results_dynamicModel')
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

class GSearchListingData_searchListing_results_dynamicModelBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicModel,
            GSearchListingData_searchListing_results_dynamicModelBuilder> {
  _$GSearchListingData_searchListing_results_dynamicModel? _$v;

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

  GSearchListingData_searchListing_results_dynamicModelBuilder() {
    GSearchListingData_searchListing_results_dynamicModel._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_dynamicModelBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_dynamicModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_dynamicModel;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicModel build() => _build();

  _$GSearchListingData_searchListing_results_dynamicModel _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicModel._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicModel',
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

class _$GSearchListingData_searchListing_results_dynamicYear
    extends GSearchListingData_searchListing_results_dynamicYear {
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

  factory _$GSearchListingData_searchListing_results_dynamicYear(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicYearBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicYearBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicYear._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results_dynamicYear', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicYear rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicYearBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicYearBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_dynamicYearBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_dynamicYear &&
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
            r'GSearchListingData_searchListing_results_dynamicYear')
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

class GSearchListingData_searchListing_results_dynamicYearBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicYear,
            GSearchListingData_searchListing_results_dynamicYearBuilder> {
  _$GSearchListingData_searchListing_results_dynamicYear? _$v;

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

  GSearchListingData_searchListing_results_dynamicYearBuilder() {
    GSearchListingData_searchListing_results_dynamicYear._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_dynamicYearBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_dynamicYear other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_dynamicYear;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicYearBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicYear build() => _build();

  _$GSearchListingData_searchListing_results_dynamicYear _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicYear._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicYear',
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

class _$GSearchListingData_searchListing_results_dynamicOdometer
    extends GSearchListingData_searchListing_results_dynamicOdometer {
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

  factory _$GSearchListingData_searchListing_results_dynamicOdometer(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicOdometerBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_dynamicOdometerBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_dynamicOdometer._(
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
        r'GSearchListingData_searchListing_results_dynamicOdometer',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_dynamicOdometer rebuild(
          void Function(
                  GSearchListingData_searchListing_results_dynamicOdometerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_dynamicOdometerBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_dynamicOdometerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_dynamicOdometer &&
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
            r'GSearchListingData_searchListing_results_dynamicOdometer')
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

class GSearchListingData_searchListing_results_dynamicOdometerBuilder
    implements
        Builder<GSearchListingData_searchListing_results_dynamicOdometer,
            GSearchListingData_searchListing_results_dynamicOdometerBuilder> {
  _$GSearchListingData_searchListing_results_dynamicOdometer? _$v;

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

  GSearchListingData_searchListing_results_dynamicOdometerBuilder() {
    GSearchListingData_searchListing_results_dynamicOdometer._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_dynamicOdometerBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_dynamicOdometer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_dynamicOdometer;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_dynamicOdometerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_dynamicOdometer build() => _build();

  _$GSearchListingData_searchListing_results_dynamicOdometer _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_dynamicOdometer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_dynamicOdometer',
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

class _$GSearchListingData_searchListing_results_carRules
    extends GSearchListingData_searchListing_results_carRules {
  @override
  final String G__typename;
  @override
  final GSearchListingData_searchListing_results_carRules_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GSearchListingData_searchListing_results_carRules(
          [void Function(
                  GSearchListingData_searchListing_results_carRulesBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_carRulesBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_carRules._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results_carRules', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_carRules rebuild(
          void Function(
                  GSearchListingData_searchListing_results_carRulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_carRulesBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_carRulesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_carRules &&
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
            r'GSearchListingData_searchListing_results_carRules')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GSearchListingData_searchListing_results_carRulesBuilder
    implements
        Builder<GSearchListingData_searchListing_results_carRules,
            GSearchListingData_searchListing_results_carRulesBuilder> {
  _$GSearchListingData_searchListing_results_carRules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder?
      _dynamicItemName;
  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder();
  set dynamicItemName(
          GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GSearchListingData_searchListing_results_carRulesBuilder() {
    GSearchListingData_searchListing_results_carRules._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_carRulesBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_carRules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_carRules;
  }

  @override
  void update(
      void Function(GSearchListingData_searchListing_results_carRulesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_carRules build() => _build();

  _$GSearchListingData_searchListing_results_carRules _build() {
    _$GSearchListingData_searchListing_results_carRules _$result;
    try {
      _$result = _$v ??
          new _$GSearchListingData_searchListing_results_carRules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSearchListingData_searchListing_results_carRules',
                  'G__typename'),
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
            r'GSearchListingData_searchListing_results_carRules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results_carRules_dynamicItemName
    extends GSearchListingData_searchListing_results_carRules_dynamicItemName {
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

  factory _$GSearchListingData_searchListing_results_carRules_dynamicItemName(
          [void Function(
                  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_carRules_dynamicItemName._(
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
        r'GSearchListingData_searchListing_results_carRules_dynamicItemName',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_carRules_dynamicItemName rebuild(
          void Function(
                  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder
      toBuilder() =>
          new GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSearchListingData_searchListing_results_carRules_dynamicItemName &&
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
            r'GSearchListingData_searchListing_results_carRules_dynamicItemName')
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

class GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder
    implements
        Builder<
            GSearchListingData_searchListing_results_carRules_dynamicItemName,
            GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder> {
  _$GSearchListingData_searchListing_results_carRules_dynamicItemName? _$v;

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

  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder() {
    GSearchListingData_searchListing_results_carRules_dynamicItemName
        ._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder
      get _$this {
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
      GSearchListingData_searchListing_results_carRules_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSearchListingData_searchListing_results_carRules_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_carRules_dynamicItemName build() =>
      _build();

  _$GSearchListingData_searchListing_results_carRules_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_carRules_dynamicItemName
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_carRules_dynamicItemName',
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

class _$GSearchListingData_searchListing_results_carFeatures
    extends GSearchListingData_searchListing_results_carFeatures {
  @override
  final String G__typename;
  @override
  final GSearchListingData_searchListing_results_carFeatures_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GSearchListingData_searchListing_results_carFeatures(
          [void Function(
                  GSearchListingData_searchListing_results_carFeaturesBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_carFeaturesBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_carFeatures._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results_carFeatures', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_carFeatures rebuild(
          void Function(
                  GSearchListingData_searchListing_results_carFeaturesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_carFeaturesBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_carFeaturesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_carFeatures &&
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
            r'GSearchListingData_searchListing_results_carFeatures')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GSearchListingData_searchListing_results_carFeaturesBuilder
    implements
        Builder<GSearchListingData_searchListing_results_carFeatures,
            GSearchListingData_searchListing_results_carFeaturesBuilder> {
  _$GSearchListingData_searchListing_results_carFeatures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder?
      _dynamicItemName;
  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder();
  set dynamicItemName(
          GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GSearchListingData_searchListing_results_carFeaturesBuilder() {
    GSearchListingData_searchListing_results_carFeatures._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_carFeaturesBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_carFeatures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_carFeatures;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_carFeaturesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_carFeatures build() => _build();

  _$GSearchListingData_searchListing_results_carFeatures _build() {
    _$GSearchListingData_searchListing_results_carFeatures _$result;
    try {
      _$result = _$v ??
          new _$GSearchListingData_searchListing_results_carFeatures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSearchListingData_searchListing_results_carFeatures',
                  'G__typename'),
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
            r'GSearchListingData_searchListing_results_carFeatures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName
    extends GSearchListingData_searchListing_results_carFeatures_dynamicItemName {
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

  factory _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName(
          [void Function(
                  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName._(
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
        r'GSearchListingData_searchListing_results_carFeatures_dynamicItemName',
        'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_carFeatures_dynamicItemName rebuild(
          void Function(
                  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder
      toBuilder() =>
          new GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSearchListingData_searchListing_results_carFeatures_dynamicItemName &&
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
            r'GSearchListingData_searchListing_results_carFeatures_dynamicItemName')
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

class GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder
    implements
        Builder<
            GSearchListingData_searchListing_results_carFeatures_dynamicItemName,
            GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder> {
  _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName? _$v;

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

  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder() {
    GSearchListingData_searchListing_results_carFeatures_dynamicItemName
        ._initializeBuilder(this);
  }

  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder
      get _$this {
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
      GSearchListingData_searchListing_results_carFeatures_dynamicItemName
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_carFeatures_dynamicItemName
      build() => _build();

  _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName
      _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_carFeatures_dynamicItemName',
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

class _$GSearchListingData_searchListing_results_listPhotos
    extends GSearchListingData_searchListing_results_listPhotos {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;

  factory _$GSearchListingData_searchListing_results_listPhotos(
          [void Function(
                  GSearchListingData_searchListing_results_listPhotosBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_listPhotosBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_listPhotos._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results_listPhotos', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_listPhotos rebuild(
          void Function(
                  GSearchListingData_searchListing_results_listPhotosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_listPhotosBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_listPhotosBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_listPhotos &&
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
            r'GSearchListingData_searchListing_results_listPhotos')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GSearchListingData_searchListing_results_listPhotosBuilder
    implements
        Builder<GSearchListingData_searchListing_results_listPhotos,
            GSearchListingData_searchListing_results_listPhotosBuilder> {
  _$GSearchListingData_searchListing_results_listPhotos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSearchListingData_searchListing_results_listPhotosBuilder() {
    GSearchListingData_searchListing_results_listPhotos._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_listPhotosBuilder get _$this {
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
  void replace(GSearchListingData_searchListing_results_listPhotos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_listPhotos;
  }

  @override
  void update(
      void Function(GSearchListingData_searchListing_results_listPhotosBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_listPhotos build() => _build();

  _$GSearchListingData_searchListing_results_listPhotos _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_listPhotos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_listPhotos',
                'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchListingData_searchListing_results_listingData
    extends GSearchListingData_searchListing_results_listingData {
  @override
  final String G__typename;
  @override
  final double? basePrice;
  @override
  final String? currency;
  @override
  final double? weeklyDiscount;
  @override
  final double? monthlyDiscount;

  factory _$GSearchListingData_searchListing_results_listingData(
          [void Function(
                  GSearchListingData_searchListing_results_listingDataBuilder)?
              updates]) =>
      (new GSearchListingData_searchListing_results_listingDataBuilder()
            ..update(updates))
          ._build();

  _$GSearchListingData_searchListing_results_listingData._(
      {required this.G__typename,
      this.basePrice,
      this.currency,
      this.weeklyDiscount,
      this.monthlyDiscount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSearchListingData_searchListing_results_listingData', 'G__typename');
  }

  @override
  GSearchListingData_searchListing_results_listingData rebuild(
          void Function(
                  GSearchListingData_searchListing_results_listingDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingData_searchListing_results_listingDataBuilder toBuilder() =>
      new GSearchListingData_searchListing_results_listingDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingData_searchListing_results_listingData &&
        G__typename == other.G__typename &&
        basePrice == other.basePrice &&
        currency == other.currency &&
        weeklyDiscount == other.weeklyDiscount &&
        monthlyDiscount == other.monthlyDiscount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, weeklyDiscount.hashCode);
    _$hash = $jc(_$hash, monthlyDiscount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSearchListingData_searchListing_results_listingData')
          ..add('G__typename', G__typename)
          ..add('basePrice', basePrice)
          ..add('currency', currency)
          ..add('weeklyDiscount', weeklyDiscount)
          ..add('monthlyDiscount', monthlyDiscount))
        .toString();
  }
}

class GSearchListingData_searchListing_results_listingDataBuilder
    implements
        Builder<GSearchListingData_searchListing_results_listingData,
            GSearchListingData_searchListing_results_listingDataBuilder> {
  _$GSearchListingData_searchListing_results_listingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  double? _weeklyDiscount;
  double? get weeklyDiscount => _$this._weeklyDiscount;
  set weeklyDiscount(double? weeklyDiscount) =>
      _$this._weeklyDiscount = weeklyDiscount;

  double? _monthlyDiscount;
  double? get monthlyDiscount => _$this._monthlyDiscount;
  set monthlyDiscount(double? monthlyDiscount) =>
      _$this._monthlyDiscount = monthlyDiscount;

  GSearchListingData_searchListing_results_listingDataBuilder() {
    GSearchListingData_searchListing_results_listingData._initializeBuilder(
        this);
  }

  GSearchListingData_searchListing_results_listingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _basePrice = $v.basePrice;
      _currency = $v.currency;
      _weeklyDiscount = $v.weeklyDiscount;
      _monthlyDiscount = $v.monthlyDiscount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchListingData_searchListing_results_listingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingData_searchListing_results_listingData;
  }

  @override
  void update(
      void Function(
              GSearchListingData_searchListing_results_listingDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingData_searchListing_results_listingData build() => _build();

  _$GSearchListingData_searchListing_results_listingData _build() {
    final _$result = _$v ??
        new _$GSearchListingData_searchListing_results_listingData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSearchListingData_searchListing_results_listingData',
                'G__typename'),
            basePrice: basePrice,
            currency: currency,
            weeklyDiscount: weeklyDiscount,
            monthlyDiscount: monthlyDiscount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
