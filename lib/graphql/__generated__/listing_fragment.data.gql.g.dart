// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GviewListingDetailsFragmentData>
    _$gviewListingDetailsFragmentDataSerializer =
    new _$GviewListingDetailsFragmentDataSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicListingTitle>
    _$gviewListingDetailsFragmentDataDynamicListingTitleSerializer =
    new _$GviewListingDetailsFragmentData_dynamicListingTitleSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicListingDescription>
    _$gviewListingDetailsFragmentDataDynamicListingDescriptionSerializer =
    new _$GviewListingDetailsFragmentData_dynamicListingDescriptionSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicListTitle>
    _$gviewListingDetailsFragmentDataDynamicListTitleSerializer =
    new _$GviewListingDetailsFragmentData_dynamicListTitleSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicListDescription>
    _$gviewListingDetailsFragmentDataDynamicListDescriptionSerializer =
    new _$GviewListingDetailsFragmentData_dynamicListDescriptionSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicCarType>
    _$gviewListingDetailsFragmentDataDynamicCarTypeSerializer =
    new _$GviewListingDetailsFragmentData_dynamicCarTypeSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicmake>
    _$gviewListingDetailsFragmentDataDynamicmakeSerializer =
    new _$GviewListingDetailsFragmentData_dynamicmakeSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicModel>
    _$gviewListingDetailsFragmentDataDynamicModelSerializer =
    new _$GviewListingDetailsFragmentData_dynamicModelSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicYear>
    _$gviewListingDetailsFragmentDataDynamicYearSerializer =
    new _$GviewListingDetailsFragmentData_dynamicYearSerializer();
Serializer<GviewListingDetailsFragmentData_dynamicOdometer>
    _$gviewListingDetailsFragmentDataDynamicOdometerSerializer =
    new _$GviewListingDetailsFragmentData_dynamicOdometerSerializer();
Serializer<GviewListingDetailsFragmentData_carRules>
    _$gviewListingDetailsFragmentDataCarRulesSerializer =
    new _$GviewListingDetailsFragmentData_carRulesSerializer();
Serializer<GviewListingDetailsFragmentData_carRules_dynamicItemName>
    _$gviewListingDetailsFragmentDataCarRulesDynamicItemNameSerializer =
    new _$GviewListingDetailsFragmentData_carRules_dynamicItemNameSerializer();
Serializer<GviewListingDetailsFragmentData_carFeatures>
    _$gviewListingDetailsFragmentDataCarFeaturesSerializer =
    new _$GviewListingDetailsFragmentData_carFeaturesSerializer();
Serializer<GviewListingDetailsFragmentData_carFeatures_dynamicItemName>
    _$gviewListingDetailsFragmentDataCarFeaturesDynamicItemNameSerializer =
    new _$GviewListingDetailsFragmentData_carFeatures_dynamicItemNameSerializer();
Serializer<GviewListingDetailsFragmentData_listPhotos>
    _$gviewListingDetailsFragmentDataListPhotosSerializer =
    new _$GviewListingDetailsFragmentData_listPhotosSerializer();
Serializer<GviewListingDetailsFragmentData_listingData>
    _$gviewListingDetailsFragmentDataListingDataSerializer =
    new _$GviewListingDetailsFragmentData_listingDataSerializer();
Serializer<GviewListingDetailsFragmentData_listingData_cancellation>
    _$gviewListingDetailsFragmentDataListingDataCancellationSerializer =
    new _$GviewListingDetailsFragmentData_listingData_cancellationSerializer();
Serializer<GviewListingDetailsFragmentData_user>
    _$gviewListingDetailsFragmentDataUserSerializer =
    new _$GviewListingDetailsFragmentData_userSerializer();
Serializer<GviewListingDetailsFragmentData_user_profile>
    _$gviewListingDetailsFragmentDataUserProfileSerializer =
    new _$GviewListingDetailsFragmentData_user_profileSerializer();
Serializer<GviewListingDetailsFragmentData_user_verification>
    _$gviewListingDetailsFragmentDataUserVerificationSerializer =
    new _$GviewListingDetailsFragmentData_user_verificationSerializer();
Serializer<GviewListingDetailsFragmentData_blockedDates>
    _$gviewListingDetailsFragmentDataBlockedDatesSerializer =
    new _$GviewListingDetailsFragmentData_blockedDatesSerializer();
Serializer<GviewListingDetailsFragmentData_listingSteps>
    _$gviewListingDetailsFragmentDataListingStepsSerializer =
    new _$GviewListingDetailsFragmentData_listingStepsSerializer();

class _$GviewListingDetailsFragmentDataSerializer
    implements StructuredSerializer<GviewListingDetailsFragmentData> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData,
    _$GviewListingDetailsFragmentData
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingDetailsFragmentData object,
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
                  GviewListingDetailsFragmentData_dynamicListingTitle)
            ])));
    }
    value = object.dynamicListingDescription;
    if (value != null) {
      result
        ..add('dynamicListingDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GviewListingDetailsFragmentData_dynamicListingDescription)
            ])));
    }
    value = object.dynamicListTitle;
    if (value != null) {
      result
        ..add('dynamicListTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingDetailsFragmentData_dynamicListTitle)));
    }
    value = object.dynamicListDescription;
    if (value != null) {
      result
        ..add('dynamicListDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingDetailsFragmentData_dynamicListDescription)));
    }
    value = object.dynamicCarType;
    if (value != null) {
      result
        ..add('dynamicCarType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingDetailsFragmentData_dynamicCarType)));
    }
    value = object.dynamicmake;
    if (value != null) {
      result
        ..add('dynamicmake')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_dynamicmake)));
    }
    value = object.dynamicModel;
    if (value != null) {
      result
        ..add('dynamicModel')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_dynamicModel)));
    }
    value = object.dynamicYear;
    if (value != null) {
      result
        ..add('dynamicYear')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_dynamicYear)));
    }
    value = object.dynamicOdometer;
    if (value != null) {
      result
        ..add('dynamicOdometer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingDetailsFragmentData_dynamicOdometer)));
    }
    value = object.carRules;
    if (value != null) {
      result
        ..add('carRules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GviewListingDetailsFragmentData_carRules)
            ])));
    }
    value = object.carFeatures;
    if (value != null) {
      result
        ..add('carFeatures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GviewListingDetailsFragmentData_carFeatures)
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
                  GviewListingDetailsFragmentData_listPhotos)
            ])));
    }
    value = object.listingData;
    if (value != null) {
      result
        ..add('listingData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_listingData)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zipcode;
    if (value != null) {
      result
        ..add('zipcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_user)));
    }
    value = object.make;
    if (value != null) {
      result
        ..add('make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.makeId;
    if (value != null) {
      result
        ..add('makeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buildingName;
    if (value != null) {
      result
        ..add('buildingName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.odometer;
    if (value != null) {
      result
        ..add('odometer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.blockedDates;
    if (value != null) {
      result
        ..add('blockedDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GviewListingDetailsFragmentData_blockedDates)
            ])));
    }
    value = object.isPublished;
    if (value != null) {
      result
        ..add('isPublished')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isReady;
    if (value != null) {
      result
        ..add('isReady')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.lastUpdatedAt;
    if (value != null) {
      result
        ..add('lastUpdatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listingSteps;
    if (value != null) {
      result
        ..add('listingSteps')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_listingSteps)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentDataBuilder();

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
                    GviewListingDetailsFragmentData_dynamicListingTitle)
              ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListingDescription':
          result.dynamicListingDescription
              .replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(
                        GviewListingDetailsFragmentData_dynamicListingDescription)
                  ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListTitle':
          result.dynamicListTitle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicListTitle))!
              as GviewListingDetailsFragmentData_dynamicListTitle);
          break;
        case 'dynamicListDescription':
          result.dynamicListDescription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicListDescription))!
              as GviewListingDetailsFragmentData_dynamicListDescription);
          break;
        case 'dynamicCarType':
          result.dynamicCarType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicCarType))!
              as GviewListingDetailsFragmentData_dynamicCarType);
          break;
        case 'dynamicmake':
          result.dynamicmake.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicmake))!
              as GviewListingDetailsFragmentData_dynamicmake);
          break;
        case 'dynamicModel':
          result.dynamicModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicModel))!
              as GviewListingDetailsFragmentData_dynamicModel);
          break;
        case 'dynamicYear':
          result.dynamicYear.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicYear))!
              as GviewListingDetailsFragmentData_dynamicYear);
          break;
        case 'dynamicOdometer':
          result.dynamicOdometer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_dynamicOdometer))!
              as GviewListingDetailsFragmentData_dynamicOdometer);
          break;
        case 'carRules':
          result.carRules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingDetailsFragmentData_carRules)
              ]))! as BuiltList<Object?>);
          break;
        case 'carFeatures':
          result.carFeatures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingDetailsFragmentData_carFeatures)
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
                    GviewListingDetailsFragmentData_listPhotos)
              ]))! as BuiltList<Object?>);
          break;
        case 'listingData':
          result.listingData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_listingData))!
              as GviewListingDetailsFragmentData_listingData);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GviewListingDetailsFragmentData_user))!
              as GviewListingDetailsFragmentData_user);
          break;
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'makeId':
          result.makeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buildingName':
          result.buildingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'odometer':
          result.odometer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'blockedDates':
          result.blockedDates.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GviewListingDetailsFragmentData_blockedDates)
              ]))! as BuiltList<Object?>);
          break;
        case 'isPublished':
          result.isPublished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isReady':
          result.isReady = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'lastUpdatedAt':
          result.lastUpdatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listingSteps':
          result.listingSteps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_listingSteps))!
              as GviewListingDetailsFragmentData_listingSteps);
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData_dynamicListingTitleSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_dynamicListingTitle> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicListingTitle,
    _$GviewListingDetailsFragmentData_dynamicListingTitle
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicListingTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicListingTitle object,
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
  GviewListingDetailsFragmentData_dynamicListingTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_dynamicListingTitleBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicListingDescriptionSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_dynamicListingDescription> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicListingDescription,
    _$GviewListingDetailsFragmentData_dynamicListingDescription
  ];
  @override
  final String wireName =
      'GviewListingDetailsFragmentData_dynamicListingDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicListingDescription object,
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
  GviewListingDetailsFragmentData_dynamicListingDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicListTitleSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_dynamicListTitle> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicListTitle,
    _$GviewListingDetailsFragmentData_dynamicListTitle
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicListTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicListTitle object,
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
  GviewListingDetailsFragmentData_dynamicListTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_dynamicListTitleBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicListDescriptionSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_dynamicListDescription> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicListDescription,
    _$GviewListingDetailsFragmentData_dynamicListDescription
  ];
  @override
  final String wireName =
      'GviewListingDetailsFragmentData_dynamicListDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicListDescription object,
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
  GviewListingDetailsFragmentData_dynamicListDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_dynamicListDescriptionBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicCarTypeSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_dynamicCarType> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicCarType,
    _$GviewListingDetailsFragmentData_dynamicCarType
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicCarType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicCarType object,
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
  GviewListingDetailsFragmentData_dynamicCarType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_dynamicCarTypeBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicmakeSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_dynamicmake> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicmake,
    _$GviewListingDetailsFragmentData_dynamicmake
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicmake';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicmake object,
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
  GviewListingDetailsFragmentData_dynamicmake deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_dynamicmakeBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicModelSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_dynamicModel> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicModel,
    _$GviewListingDetailsFragmentData_dynamicModel
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicModel';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicModel object,
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
  GviewListingDetailsFragmentData_dynamicModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_dynamicModelBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicYearSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_dynamicYear> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicYear,
    _$GviewListingDetailsFragmentData_dynamicYear
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicYear';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicYear object,
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
  GviewListingDetailsFragmentData_dynamicYear deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_dynamicYearBuilder();

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

class _$GviewListingDetailsFragmentData_dynamicOdometerSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_dynamicOdometer> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_dynamicOdometer,
    _$GviewListingDetailsFragmentData_dynamicOdometer
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_dynamicOdometer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_dynamicOdometer object,
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
  GviewListingDetailsFragmentData_dynamicOdometer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_dynamicOdometerBuilder();

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

class _$GviewListingDetailsFragmentData_carRulesSerializer
    implements StructuredSerializer<GviewListingDetailsFragmentData_carRules> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_carRules,
    _$GviewListingDetailsFragmentData_carRules
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_carRules';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingDetailsFragmentData_carRules object,
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
                GviewListingDetailsFragmentData_carRules_dynamicItemName)));
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
  GviewListingDetailsFragmentData_carRules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_carRulesBuilder();

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
                      GviewListingDetailsFragmentData_carRules_dynamicItemName))!
              as GviewListingDetailsFragmentData_carRules_dynamicItemName);
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

class _$GviewListingDetailsFragmentData_carRules_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_carRules_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_carRules_dynamicItemName,
    _$GviewListingDetailsFragmentData_carRules_dynamicItemName
  ];
  @override
  final String wireName =
      'GviewListingDetailsFragmentData_carRules_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_carRules_dynamicItemName object,
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
  GviewListingDetailsFragmentData_carRules_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder();

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

class _$GviewListingDetailsFragmentData_carFeaturesSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_carFeatures> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_carFeatures,
    _$GviewListingDetailsFragmentData_carFeatures
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_carFeatures';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_carFeatures object,
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
                GviewListingDetailsFragmentData_carFeatures_dynamicItemName)));
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
  GviewListingDetailsFragmentData_carFeatures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_carFeaturesBuilder();

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
                      GviewListingDetailsFragmentData_carFeatures_dynamicItemName))!
              as GviewListingDetailsFragmentData_carFeatures_dynamicItemName);
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

class _$GviewListingDetailsFragmentData_carFeatures_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_carFeatures_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_carFeatures_dynamicItemName,
    _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName
  ];
  @override
  final String wireName =
      'GviewListingDetailsFragmentData_carFeatures_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_carFeatures_dynamicItemName object,
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
  GviewListingDetailsFragmentData_carFeatures_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder();

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

class _$GviewListingDetailsFragmentData_listPhotosSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_listPhotos> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_listPhotos,
    _$GviewListingDetailsFragmentData_listPhotos
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_listPhotos';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_listPhotos object,
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
  GviewListingDetailsFragmentData_listPhotos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_listPhotosBuilder();

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

class _$GviewListingDetailsFragmentData_listingDataSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_listingData> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_listingData,
    _$GviewListingDetailsFragmentData_listingData
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_listingData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_listingData object,
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
    value = object.bookingNoticeTime;
    if (value != null) {
      result
        ..add('bookingNoticeTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkInStart;
    if (value != null) {
      result
        ..add('checkInStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkInEnd;
    if (value != null) {
      result
        ..add('checkInEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxDaysNotice;
    if (value != null) {
      result
        ..add('maxDaysNotice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minDay;
    if (value != null) {
      result
        ..add('minDay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxDay;
    if (value != null) {
      result
        ..add('maxDay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxDayItemLabel;
    if (value != null) {
      result
        ..add('maxDayItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxDayOtherItemLabel;
    if (value != null) {
      result
        ..add('maxDayOtherItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minDayItemLabel;
    if (value != null) {
      result
        ..add('minDayItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minDayOtherItemLabel;
    if (value != null) {
      result
        ..add('minDayOtherItemLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('delivery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
    value = object.cancellationPolicy;
    if (value != null) {
      result
        ..add('cancellationPolicy')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.securityDeposit;
    if (value != null) {
      result
        ..add('securityDeposit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cancellation;
    if (value != null) {
      result
        ..add('cancellation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingDetailsFragmentData_listingData_cancellation)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData_listingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_listingDataBuilder();

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
        case 'bookingNoticeTime':
          result.bookingNoticeTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkInStart':
          result.checkInStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkInEnd':
          result.checkInEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maxDaysNotice':
          result.maxDaysNotice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minDay':
          result.minDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxDay':
          result.maxDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxDayItemLabel':
          result.maxDayItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maxDayOtherItemLabel':
          result.maxDayOtherItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minDayItemLabel':
          result.minDayItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minDayOtherItemLabel':
          result.minDayOtherItemLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'weeklyDiscount':
          result.weeklyDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'monthlyDiscount':
          result.monthlyDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cancellationPolicy':
          result.cancellationPolicy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'securityDeposit':
          result.securityDeposit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cancellation':
          result.cancellation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_listingData_cancellation))!
              as GviewListingDetailsFragmentData_listingData_cancellation);
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData_listingData_cancellationSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_listingData_cancellation> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_listingData_cancellation,
    _$GviewListingDetailsFragmentData_listingData_cancellation
  ];
  @override
  final String wireName =
      'GviewListingDetailsFragmentData_listingData_cancellation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_listingData_cancellation object,
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
    value = object.policyName;
    if (value != null) {
      result
        ..add('policyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.policyContent;
    if (value != null) {
      result
        ..add('policyContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priorDays;
    if (value != null) {
      result
        ..add('priorDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subTitle;
    if (value != null) {
      result
        ..add('subTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subContent;
    if (value != null) {
      result
        ..add('subContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content1;
    if (value != null) {
      result
        ..add('content1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content2;
    if (value != null) {
      result
        ..add('content2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content3;
    if (value != null) {
      result
        ..add('content3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accommodationPriorCheckIn;
    if (value != null) {
      result
        ..add('accommodationPriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationBeforeCheckIn;
    if (value != null) {
      result
        ..add('accommodationBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.accommodationDuringCheckIn;
    if (value != null) {
      result
        ..add('accommodationDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeePriorCheckIn;
    if (value != null) {
      result
        ..add('guestFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('guestFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('guestFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeePriorCheckIn;
    if (value != null) {
      result
        ..add('hostFeePriorCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeBeforeCheckIn;
    if (value != null) {
      result
        ..add('hostFeeBeforeCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostFeeDuringCheckIn;
    if (value != null) {
      result
        ..add('hostFeeDuringCheckIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  GviewListingDetailsFragmentData_listingData_cancellation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_listingData_cancellationBuilder();

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
        case 'policyName':
          result.policyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'policyContent':
          result.policyContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priorDays':
          result.priorDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subTitle':
          result.subTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subContent':
          result.subContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content1':
          result.content1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content2':
          result.content2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content3':
          result.content3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accommodationPriorCheckIn':
          result.accommodationPriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationBeforeCheckIn':
          result.accommodationBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'accommodationDuringCheckIn':
          result.accommodationDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeePriorCheckIn':
          result.guestFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeBeforeCheckIn':
          result.guestFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestFeeDuringCheckIn':
          result.guestFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeePriorCheckIn':
          result.hostFeePriorCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeBeforeCheckIn':
          result.hostFeeBeforeCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostFeeDuringCheckIn':
          result.hostFeeDuringCheckIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$GviewListingDetailsFragmentData_userSerializer
    implements StructuredSerializer<GviewListingDetailsFragmentData_user> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_user,
    _$GviewListingDetailsFragmentData_user
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GviewListingDetailsFragmentData_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GviewListingDetailsFragmentData_user_profile)));
    }
    value = object.verification;
    if (value != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GviewListingDetailsFragmentData_user_verification)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_userBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_user_profile))!
              as GviewListingDetailsFragmentData_user_profile);
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GviewListingDetailsFragmentData_user_verification))!
              as GviewListingDetailsFragmentData_user_verification);
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData_user_profileSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_user_profile> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_user_profile,
    _$GviewListingDetailsFragmentData_user_profile
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_user_profile';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_user_profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData_user_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_user_profileBuilder();

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
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData_user_verificationSerializer
    implements
        StructuredSerializer<
            GviewListingDetailsFragmentData_user_verification> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_user_verification,
    _$GviewListingDetailsFragmentData_user_verification
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_user_verification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_user_verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFacebookConnected;
    if (value != null) {
      result
        ..add('isFacebookConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isIdVerification;
    if (value != null) {
      result
        ..add('isIdVerification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData_user_verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GviewListingDetailsFragmentData_user_verificationBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData_blockedDatesSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_blockedDates> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_blockedDates,
    _$GviewListingDetailsFragmentData_blockedDates
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_blockedDates';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_blockedDates object,
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
    value = object.blockedDates;
    if (value != null) {
      result
        ..add('blockedDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.calendarStatus;
    if (value != null) {
      result
        ..add('calendarStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSpecialPrice;
    if (value != null) {
      result
        ..add('isSpecialPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData_blockedDates deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_blockedDatesBuilder();

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
        case 'blockedDates':
          result.blockedDates = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'calendarStatus':
          result.calendarStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSpecialPrice':
          result.isSpecialPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData_listingStepsSerializer
    implements
        StructuredSerializer<GviewListingDetailsFragmentData_listingSteps> {
  @override
  final Iterable<Type> types = const [
    GviewListingDetailsFragmentData_listingSteps,
    _$GviewListingDetailsFragmentData_listingSteps
  ];
  @override
  final String wireName = 'GviewListingDetailsFragmentData_listingSteps';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GviewListingDetailsFragmentData_listingSteps object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.step1;
    if (value != null) {
      result
        ..add('step1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step2;
    if (value != null) {
      result
        ..add('step2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step3;
    if (value != null) {
      result
        ..add('step3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GviewListingDetailsFragmentData_listingSteps deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GviewListingDetailsFragmentData_listingStepsBuilder();

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
        case 'step1':
          result.step1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'step2':
          result.step2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'step3':
          result.step3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GviewListingDetailsFragmentData
    extends GviewListingDetailsFragmentData {
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
  final BuiltList<GviewListingDetailsFragmentData_dynamicListingTitle?>?
      dynamicListingTitle;
  @override
  final BuiltList<GviewListingDetailsFragmentData_dynamicListingDescription?>?
      dynamicListingDescription;
  @override
  final GviewListingDetailsFragmentData_dynamicListTitle? dynamicListTitle;
  @override
  final GviewListingDetailsFragmentData_dynamicListDescription?
      dynamicListDescription;
  @override
  final GviewListingDetailsFragmentData_dynamicCarType? dynamicCarType;
  @override
  final GviewListingDetailsFragmentData_dynamicmake? dynamicmake;
  @override
  final GviewListingDetailsFragmentData_dynamicModel? dynamicModel;
  @override
  final GviewListingDetailsFragmentData_dynamicYear? dynamicYear;
  @override
  final GviewListingDetailsFragmentData_dynamicOdometer? dynamicOdometer;
  @override
  final BuiltList<GviewListingDetailsFragmentData_carRules?>? carRules;
  @override
  final BuiltList<GviewListingDetailsFragmentData_carFeatures?>? carFeatures;
  @override
  final double? lng;
  @override
  final String? listPhotoName;
  @override
  final BuiltList<GviewListingDetailsFragmentData_listPhotos?>? listPhotos;
  @override
  final GviewListingDetailsFragmentData_listingData? listingData;
  @override
  final String? description;
  @override
  final String? country;
  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipcode;
  @override
  final GviewListingDetailsFragmentData_user? user;
  @override
  final String? make;
  @override
  final String? makeId;
  @override
  final String? model;
  @override
  final String? buildingName;
  @override
  final String? year;
  @override
  final String? odometer;
  @override
  final BuiltList<GviewListingDetailsFragmentData_blockedDates?>? blockedDates;
  @override
  final bool? isPublished;
  @override
  final bool? isReady;
  @override
  final String? lastUpdatedAt;
  @override
  final String? createdAt;
  @override
  final GviewListingDetailsFragmentData_listingSteps? listingSteps;

  factory _$GviewListingDetailsFragmentData(
          [void Function(GviewListingDetailsFragmentDataBuilder)? updates]) =>
      (new GviewListingDetailsFragmentDataBuilder()..update(updates))._build();

  _$GviewListingDetailsFragmentData._(
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
      this.listingData,
      this.description,
      this.country,
      this.street,
      this.city,
      this.state,
      this.zipcode,
      this.user,
      this.make,
      this.makeId,
      this.model,
      this.buildingName,
      this.year,
      this.odometer,
      this.blockedDates,
      this.isPublished,
      this.isReady,
      this.lastUpdatedAt,
      this.createdAt,
      this.listingSteps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GviewListingDetailsFragmentData', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData rebuild(
          void Function(GviewListingDetailsFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentDataBuilder toBuilder() =>
      new GviewListingDetailsFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData &&
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
        listingData == other.listingData &&
        description == other.description &&
        country == other.country &&
        street == other.street &&
        city == other.city &&
        state == other.state &&
        zipcode == other.zipcode &&
        user == other.user &&
        make == other.make &&
        makeId == other.makeId &&
        model == other.model &&
        buildingName == other.buildingName &&
        year == other.year &&
        odometer == other.odometer &&
        blockedDates == other.blockedDates &&
        isPublished == other.isPublished &&
        isReady == other.isReady &&
        lastUpdatedAt == other.lastUpdatedAt &&
        createdAt == other.createdAt &&
        listingSteps == other.listingSteps;
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
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, zipcode.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, makeId.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, buildingName.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, odometer.hashCode);
    _$hash = $jc(_$hash, blockedDates.hashCode);
    _$hash = $jc(_$hash, isPublished.hashCode);
    _$hash = $jc(_$hash, isReady.hashCode);
    _$hash = $jc(_$hash, lastUpdatedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, listingSteps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GviewListingDetailsFragmentData')
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
          ..add('listingData', listingData)
          ..add('description', description)
          ..add('country', country)
          ..add('street', street)
          ..add('city', city)
          ..add('state', state)
          ..add('zipcode', zipcode)
          ..add('user', user)
          ..add('make', make)
          ..add('makeId', makeId)
          ..add('model', model)
          ..add('buildingName', buildingName)
          ..add('year', year)
          ..add('odometer', odometer)
          ..add('blockedDates', blockedDates)
          ..add('isPublished', isPublished)
          ..add('isReady', isReady)
          ..add('lastUpdatedAt', lastUpdatedAt)
          ..add('createdAt', createdAt)
          ..add('listingSteps', listingSteps))
        .toString();
  }
}

class GviewListingDetailsFragmentDataBuilder
    implements
        Builder<GviewListingDetailsFragmentData,
            GviewListingDetailsFragmentDataBuilder> {
  _$GviewListingDetailsFragmentData? _$v;

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

  ListBuilder<GviewListingDetailsFragmentData_dynamicListingTitle?>?
      _dynamicListingTitle;
  ListBuilder<GviewListingDetailsFragmentData_dynamicListingTitle?>
      get dynamicListingTitle =>
          _$this._dynamicListingTitle ??= new ListBuilder<
              GviewListingDetailsFragmentData_dynamicListingTitle?>();
  set dynamicListingTitle(
          ListBuilder<GviewListingDetailsFragmentData_dynamicListingTitle?>?
              dynamicListingTitle) =>
      _$this._dynamicListingTitle = dynamicListingTitle;

  ListBuilder<GviewListingDetailsFragmentData_dynamicListingDescription?>?
      _dynamicListingDescription;
  ListBuilder<GviewListingDetailsFragmentData_dynamicListingDescription?>
      get dynamicListingDescription =>
          _$this._dynamicListingDescription ??= new ListBuilder<
              GviewListingDetailsFragmentData_dynamicListingDescription?>();
  set dynamicListingDescription(
          ListBuilder<
                  GviewListingDetailsFragmentData_dynamicListingDescription?>?
              dynamicListingDescription) =>
      _$this._dynamicListingDescription = dynamicListingDescription;

  GviewListingDetailsFragmentData_dynamicListTitleBuilder? _dynamicListTitle;
  GviewListingDetailsFragmentData_dynamicListTitleBuilder
      get dynamicListTitle => _$this._dynamicListTitle ??=
          new GviewListingDetailsFragmentData_dynamicListTitleBuilder();
  set dynamicListTitle(
          GviewListingDetailsFragmentData_dynamicListTitleBuilder?
              dynamicListTitle) =>
      _$this._dynamicListTitle = dynamicListTitle;

  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder?
      _dynamicListDescription;
  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder
      get dynamicListDescription => _$this._dynamicListDescription ??=
          new GviewListingDetailsFragmentData_dynamicListDescriptionBuilder();
  set dynamicListDescription(
          GviewListingDetailsFragmentData_dynamicListDescriptionBuilder?
              dynamicListDescription) =>
      _$this._dynamicListDescription = dynamicListDescription;

  GviewListingDetailsFragmentData_dynamicCarTypeBuilder? _dynamicCarType;
  GviewListingDetailsFragmentData_dynamicCarTypeBuilder get dynamicCarType =>
      _$this._dynamicCarType ??=
          new GviewListingDetailsFragmentData_dynamicCarTypeBuilder();
  set dynamicCarType(
          GviewListingDetailsFragmentData_dynamicCarTypeBuilder?
              dynamicCarType) =>
      _$this._dynamicCarType = dynamicCarType;

  GviewListingDetailsFragmentData_dynamicmakeBuilder? _dynamicmake;
  GviewListingDetailsFragmentData_dynamicmakeBuilder get dynamicmake =>
      _$this._dynamicmake ??=
          new GviewListingDetailsFragmentData_dynamicmakeBuilder();
  set dynamicmake(
          GviewListingDetailsFragmentData_dynamicmakeBuilder? dynamicmake) =>
      _$this._dynamicmake = dynamicmake;

  GviewListingDetailsFragmentData_dynamicModelBuilder? _dynamicModel;
  GviewListingDetailsFragmentData_dynamicModelBuilder get dynamicModel =>
      _$this._dynamicModel ??=
          new GviewListingDetailsFragmentData_dynamicModelBuilder();
  set dynamicModel(
          GviewListingDetailsFragmentData_dynamicModelBuilder? dynamicModel) =>
      _$this._dynamicModel = dynamicModel;

  GviewListingDetailsFragmentData_dynamicYearBuilder? _dynamicYear;
  GviewListingDetailsFragmentData_dynamicYearBuilder get dynamicYear =>
      _$this._dynamicYear ??=
          new GviewListingDetailsFragmentData_dynamicYearBuilder();
  set dynamicYear(
          GviewListingDetailsFragmentData_dynamicYearBuilder? dynamicYear) =>
      _$this._dynamicYear = dynamicYear;

  GviewListingDetailsFragmentData_dynamicOdometerBuilder? _dynamicOdometer;
  GviewListingDetailsFragmentData_dynamicOdometerBuilder get dynamicOdometer =>
      _$this._dynamicOdometer ??=
          new GviewListingDetailsFragmentData_dynamicOdometerBuilder();
  set dynamicOdometer(
          GviewListingDetailsFragmentData_dynamicOdometerBuilder?
              dynamicOdometer) =>
      _$this._dynamicOdometer = dynamicOdometer;

  ListBuilder<GviewListingDetailsFragmentData_carRules?>? _carRules;
  ListBuilder<GviewListingDetailsFragmentData_carRules?> get carRules =>
      _$this._carRules ??=
          new ListBuilder<GviewListingDetailsFragmentData_carRules?>();
  set carRules(
          ListBuilder<GviewListingDetailsFragmentData_carRules?>? carRules) =>
      _$this._carRules = carRules;

  ListBuilder<GviewListingDetailsFragmentData_carFeatures?>? _carFeatures;
  ListBuilder<GviewListingDetailsFragmentData_carFeatures?> get carFeatures =>
      _$this._carFeatures ??=
          new ListBuilder<GviewListingDetailsFragmentData_carFeatures?>();
  set carFeatures(
          ListBuilder<GviewListingDetailsFragmentData_carFeatures?>?
              carFeatures) =>
      _$this._carFeatures = carFeatures;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  String? _listPhotoName;
  String? get listPhotoName => _$this._listPhotoName;
  set listPhotoName(String? listPhotoName) =>
      _$this._listPhotoName = listPhotoName;

  ListBuilder<GviewListingDetailsFragmentData_listPhotos?>? _listPhotos;
  ListBuilder<GviewListingDetailsFragmentData_listPhotos?> get listPhotos =>
      _$this._listPhotos ??=
          new ListBuilder<GviewListingDetailsFragmentData_listPhotos?>();
  set listPhotos(
          ListBuilder<GviewListingDetailsFragmentData_listPhotos?>?
              listPhotos) =>
      _$this._listPhotos = listPhotos;

  GviewListingDetailsFragmentData_listingDataBuilder? _listingData;
  GviewListingDetailsFragmentData_listingDataBuilder get listingData =>
      _$this._listingData ??=
          new GviewListingDetailsFragmentData_listingDataBuilder();
  set listingData(
          GviewListingDetailsFragmentData_listingDataBuilder? listingData) =>
      _$this._listingData = listingData;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  GviewListingDetailsFragmentData_userBuilder? _user;
  GviewListingDetailsFragmentData_userBuilder get user =>
      _$this._user ??= new GviewListingDetailsFragmentData_userBuilder();
  set user(GviewListingDetailsFragmentData_userBuilder? user) =>
      _$this._user = user;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _makeId;
  String? get makeId => _$this._makeId;
  set makeId(String? makeId) => _$this._makeId = makeId;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _buildingName;
  String? get buildingName => _$this._buildingName;
  set buildingName(String? buildingName) => _$this._buildingName = buildingName;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _odometer;
  String? get odometer => _$this._odometer;
  set odometer(String? odometer) => _$this._odometer = odometer;

  ListBuilder<GviewListingDetailsFragmentData_blockedDates?>? _blockedDates;
  ListBuilder<GviewListingDetailsFragmentData_blockedDates?> get blockedDates =>
      _$this._blockedDates ??=
          new ListBuilder<GviewListingDetailsFragmentData_blockedDates?>();
  set blockedDates(
          ListBuilder<GviewListingDetailsFragmentData_blockedDates?>?
              blockedDates) =>
      _$this._blockedDates = blockedDates;

  bool? _isPublished;
  bool? get isPublished => _$this._isPublished;
  set isPublished(bool? isPublished) => _$this._isPublished = isPublished;

  bool? _isReady;
  bool? get isReady => _$this._isReady;
  set isReady(bool? isReady) => _$this._isReady = isReady;

  String? _lastUpdatedAt;
  String? get lastUpdatedAt => _$this._lastUpdatedAt;
  set lastUpdatedAt(String? lastUpdatedAt) =>
      _$this._lastUpdatedAt = lastUpdatedAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GviewListingDetailsFragmentData_listingStepsBuilder? _listingSteps;
  GviewListingDetailsFragmentData_listingStepsBuilder get listingSteps =>
      _$this._listingSteps ??=
          new GviewListingDetailsFragmentData_listingStepsBuilder();
  set listingSteps(
          GviewListingDetailsFragmentData_listingStepsBuilder? listingSteps) =>
      _$this._listingSteps = listingSteps;

  GviewListingDetailsFragmentDataBuilder() {
    GviewListingDetailsFragmentData._initializeBuilder(this);
  }

  GviewListingDetailsFragmentDataBuilder get _$this {
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
      _description = $v.description;
      _country = $v.country;
      _street = $v.street;
      _city = $v.city;
      _state = $v.state;
      _zipcode = $v.zipcode;
      _user = $v.user?.toBuilder();
      _make = $v.make;
      _makeId = $v.makeId;
      _model = $v.model;
      _buildingName = $v.buildingName;
      _year = $v.year;
      _odometer = $v.odometer;
      _blockedDates = $v.blockedDates?.toBuilder();
      _isPublished = $v.isPublished;
      _isReady = $v.isReady;
      _lastUpdatedAt = $v.lastUpdatedAt;
      _createdAt = $v.createdAt;
      _listingSteps = $v.listingSteps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData;
  }

  @override
  void update(void Function(GviewListingDetailsFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData build() => _build();

  _$GviewListingDetailsFragmentData _build() {
    _$GviewListingDetailsFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GviewListingDetailsFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GviewListingDetailsFragmentData', 'G__typename'),
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
              listingData: _listingData?.build(),
              description: description,
              country: country,
              street: street,
              city: city,
              state: state,
              zipcode: zipcode,
              user: _user?.build(),
              make: make,
              makeId: makeId,
              model: model,
              buildingName: buildingName,
              year: year,
              odometer: odometer,
              blockedDates: _blockedDates?.build(),
              isPublished: isPublished,
              isReady: isReady,
              lastUpdatedAt: lastUpdatedAt,
              createdAt: createdAt,
              listingSteps: _listingSteps?.build());
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

        _$failedField = 'user';
        _user?.build();

        _$failedField = 'blockedDates';
        _blockedDates?.build();

        _$failedField = 'listingSteps';
        _listingSteps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GviewListingDetailsFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_dynamicListingTitle
    extends GviewListingDetailsFragmentData_dynamicListingTitle {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listTitle;

  factory _$GviewListingDetailsFragmentData_dynamicListingTitle(
          [void Function(
                  GviewListingDetailsFragmentData_dynamicListingTitleBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicListingTitleBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicListingTitle._(
      {required this.G__typename, this.language, this.listTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicListingTitle', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicListingTitle rebuild(
          void Function(
                  GviewListingDetailsFragmentData_dynamicListingTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicListingTitleBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicListingTitleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicListingTitle &&
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
            r'GviewListingDetailsFragmentData_dynamicListingTitle')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listTitle', listTitle))
        .toString();
  }
}

class GviewListingDetailsFragmentData_dynamicListingTitleBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicListingTitle,
            GviewListingDetailsFragmentData_dynamicListingTitleBuilder> {
  _$GviewListingDetailsFragmentData_dynamicListingTitle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _listTitle;
  String? get listTitle => _$this._listTitle;
  set listTitle(String? listTitle) => _$this._listTitle = listTitle;

  GviewListingDetailsFragmentData_dynamicListingTitleBuilder() {
    GviewListingDetailsFragmentData_dynamicListingTitle._initializeBuilder(
        this);
  }

  GviewListingDetailsFragmentData_dynamicListingTitleBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicListingTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicListingTitle;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicListingTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicListingTitle build() => _build();

  _$GviewListingDetailsFragmentData_dynamicListingTitle _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicListingTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_dynamicListingTitle',
                'G__typename'),
            language: language,
            listTitle: listTitle);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_dynamicListingDescription
    extends GviewListingDetailsFragmentData_dynamicListingDescription {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listDescription;

  factory _$GviewListingDetailsFragmentData_dynamicListingDescription(
          [void Function(
                  GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicListingDescription._(
      {required this.G__typename, this.language, this.listDescription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GviewListingDetailsFragmentData_dynamicListingDescription',
        'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicListingDescription rebuild(
          void Function(
                  GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder
      toBuilder() =>
          new GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicListingDescription &&
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
            r'GviewListingDetailsFragmentData_dynamicListingDescription')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listDescription', listDescription))
        .toString();
  }
}

class GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicListingDescription,
            GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder> {
  _$GviewListingDetailsFragmentData_dynamicListingDescription? _$v;

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

  GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder() {
    GviewListingDetailsFragmentData_dynamicListingDescription
        ._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder get _$this {
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
      GviewListingDetailsFragmentData_dynamicListingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicListingDescription;
  }

  @override
  void update(
      void Function(
              GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicListingDescription build() => _build();

  _$GviewListingDetailsFragmentData_dynamicListingDescription _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicListingDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_dynamicListingDescription',
                'G__typename'),
            language: language,
            listDescription: listDescription);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_dynamicListTitle
    extends GviewListingDetailsFragmentData_dynamicListTitle {
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

  factory _$GviewListingDetailsFragmentData_dynamicListTitle(
          [void Function(
                  GviewListingDetailsFragmentData_dynamicListTitleBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicListTitleBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicListTitle._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicListTitle', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicListTitle rebuild(
          void Function(GviewListingDetailsFragmentData_dynamicListTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicListTitleBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicListTitleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicListTitle &&
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
            r'GviewListingDetailsFragmentData_dynamicListTitle')
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

class GviewListingDetailsFragmentData_dynamicListTitleBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicListTitle,
            GviewListingDetailsFragmentData_dynamicListTitleBuilder> {
  _$GviewListingDetailsFragmentData_dynamicListTitle? _$v;

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

  GviewListingDetailsFragmentData_dynamicListTitleBuilder() {
    GviewListingDetailsFragmentData_dynamicListTitle._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicListTitleBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicListTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicListTitle;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicListTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicListTitle build() => _build();

  _$GviewListingDetailsFragmentData_dynamicListTitle _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicListTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_dynamicListTitle',
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

class _$GviewListingDetailsFragmentData_dynamicListDescription
    extends GviewListingDetailsFragmentData_dynamicListDescription {
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

  factory _$GviewListingDetailsFragmentData_dynamicListDescription(
          [void Function(
                  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicListDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicListDescription._(
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
        r'GviewListingDetailsFragmentData_dynamicListDescription',
        'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicListDescription rebuild(
          void Function(
                  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicListDescriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicListDescription &&
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
            r'GviewListingDetailsFragmentData_dynamicListDescription')
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

class GviewListingDetailsFragmentData_dynamicListDescriptionBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicListDescription,
            GviewListingDetailsFragmentData_dynamicListDescriptionBuilder> {
  _$GviewListingDetailsFragmentData_dynamicListDescription? _$v;

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

  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder() {
    GviewListingDetailsFragmentData_dynamicListDescription._initializeBuilder(
        this);
  }

  GviewListingDetailsFragmentData_dynamicListDescriptionBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicListDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicListDescription;
  }

  @override
  void update(
      void Function(
              GviewListingDetailsFragmentData_dynamicListDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicListDescription build() => _build();

  _$GviewListingDetailsFragmentData_dynamicListDescription _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicListDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_dynamicListDescription',
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

class _$GviewListingDetailsFragmentData_dynamicCarType
    extends GviewListingDetailsFragmentData_dynamicCarType {
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

  factory _$GviewListingDetailsFragmentData_dynamicCarType(
          [void Function(GviewListingDetailsFragmentData_dynamicCarTypeBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicCarTypeBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicCarType._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicCarType', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicCarType rebuild(
          void Function(GviewListingDetailsFragmentData_dynamicCarTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicCarTypeBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicCarTypeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicCarType &&
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
            r'GviewListingDetailsFragmentData_dynamicCarType')
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

class GviewListingDetailsFragmentData_dynamicCarTypeBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicCarType,
            GviewListingDetailsFragmentData_dynamicCarTypeBuilder> {
  _$GviewListingDetailsFragmentData_dynamicCarType? _$v;

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

  GviewListingDetailsFragmentData_dynamicCarTypeBuilder() {
    GviewListingDetailsFragmentData_dynamicCarType._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicCarTypeBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicCarType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicCarType;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicCarTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicCarType build() => _build();

  _$GviewListingDetailsFragmentData_dynamicCarType _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicCarType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_dynamicCarType',
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

class _$GviewListingDetailsFragmentData_dynamicmake
    extends GviewListingDetailsFragmentData_dynamicmake {
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

  factory _$GviewListingDetailsFragmentData_dynamicmake(
          [void Function(GviewListingDetailsFragmentData_dynamicmakeBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicmakeBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicmake._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicmake', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicmake rebuild(
          void Function(GviewListingDetailsFragmentData_dynamicmakeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicmakeBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicmakeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicmake &&
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
            r'GviewListingDetailsFragmentData_dynamicmake')
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

class GviewListingDetailsFragmentData_dynamicmakeBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicmake,
            GviewListingDetailsFragmentData_dynamicmakeBuilder> {
  _$GviewListingDetailsFragmentData_dynamicmake? _$v;

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

  GviewListingDetailsFragmentData_dynamicmakeBuilder() {
    GviewListingDetailsFragmentData_dynamicmake._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicmakeBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicmake other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicmake;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicmakeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicmake build() => _build();

  _$GviewListingDetailsFragmentData_dynamicmake _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicmake._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_dynamicmake', 'G__typename'),
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

class _$GviewListingDetailsFragmentData_dynamicModel
    extends GviewListingDetailsFragmentData_dynamicModel {
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

  factory _$GviewListingDetailsFragmentData_dynamicModel(
          [void Function(GviewListingDetailsFragmentData_dynamicModelBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicModelBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicModel._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicModel', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicModel rebuild(
          void Function(GviewListingDetailsFragmentData_dynamicModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicModelBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicModel &&
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
            r'GviewListingDetailsFragmentData_dynamicModel')
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

class GviewListingDetailsFragmentData_dynamicModelBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicModel,
            GviewListingDetailsFragmentData_dynamicModelBuilder> {
  _$GviewListingDetailsFragmentData_dynamicModel? _$v;

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

  GviewListingDetailsFragmentData_dynamicModelBuilder() {
    GviewListingDetailsFragmentData_dynamicModel._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicModelBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicModel;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicModel build() => _build();

  _$GviewListingDetailsFragmentData_dynamicModel _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicModel._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_dynamicModel', 'G__typename'),
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

class _$GviewListingDetailsFragmentData_dynamicYear
    extends GviewListingDetailsFragmentData_dynamicYear {
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

  factory _$GviewListingDetailsFragmentData_dynamicYear(
          [void Function(GviewListingDetailsFragmentData_dynamicYearBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicYearBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicYear._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicYear', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicYear rebuild(
          void Function(GviewListingDetailsFragmentData_dynamicYearBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicYearBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicYearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicYear &&
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
            r'GviewListingDetailsFragmentData_dynamicYear')
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

class GviewListingDetailsFragmentData_dynamicYearBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicYear,
            GviewListingDetailsFragmentData_dynamicYearBuilder> {
  _$GviewListingDetailsFragmentData_dynamicYear? _$v;

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

  GviewListingDetailsFragmentData_dynamicYearBuilder() {
    GviewListingDetailsFragmentData_dynamicYear._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicYearBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicYear other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicYear;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicYearBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicYear build() => _build();

  _$GviewListingDetailsFragmentData_dynamicYear _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicYear._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_dynamicYear', 'G__typename'),
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

class _$GviewListingDetailsFragmentData_dynamicOdometer
    extends GviewListingDetailsFragmentData_dynamicOdometer {
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

  factory _$GviewListingDetailsFragmentData_dynamicOdometer(
          [void Function(
                  GviewListingDetailsFragmentData_dynamicOdometerBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_dynamicOdometerBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_dynamicOdometer._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_dynamicOdometer', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_dynamicOdometer rebuild(
          void Function(GviewListingDetailsFragmentData_dynamicOdometerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_dynamicOdometerBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_dynamicOdometerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_dynamicOdometer &&
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
            r'GviewListingDetailsFragmentData_dynamicOdometer')
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

class GviewListingDetailsFragmentData_dynamicOdometerBuilder
    implements
        Builder<GviewListingDetailsFragmentData_dynamicOdometer,
            GviewListingDetailsFragmentData_dynamicOdometerBuilder> {
  _$GviewListingDetailsFragmentData_dynamicOdometer? _$v;

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

  GviewListingDetailsFragmentData_dynamicOdometerBuilder() {
    GviewListingDetailsFragmentData_dynamicOdometer._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_dynamicOdometerBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_dynamicOdometer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_dynamicOdometer;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_dynamicOdometerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_dynamicOdometer build() => _build();

  _$GviewListingDetailsFragmentData_dynamicOdometer _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_dynamicOdometer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_dynamicOdometer',
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

class _$GviewListingDetailsFragmentData_carRules
    extends GviewListingDetailsFragmentData_carRules {
  @override
  final String G__typename;
  @override
  final GviewListingDetailsFragmentData_carRules_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GviewListingDetailsFragmentData_carRules(
          [void Function(GviewListingDetailsFragmentData_carRulesBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_carRulesBuilder()..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_carRules._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_carRules', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_carRules rebuild(
          void Function(GviewListingDetailsFragmentData_carRulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_carRulesBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_carRulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_carRules &&
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
            r'GviewListingDetailsFragmentData_carRules')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GviewListingDetailsFragmentData_carRulesBuilder
    implements
        Builder<GviewListingDetailsFragmentData_carRules,
            GviewListingDetailsFragmentData_carRulesBuilder> {
  _$GviewListingDetailsFragmentData_carRules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder?
      _dynamicItemName;
  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder();
  set dynamicItemName(
          GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GviewListingDetailsFragmentData_carRulesBuilder() {
    GviewListingDetailsFragmentData_carRules._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_carRulesBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_carRules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_carRules;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_carRulesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_carRules build() => _build();

  _$GviewListingDetailsFragmentData_carRules _build() {
    _$GviewListingDetailsFragmentData_carRules _$result;
    try {
      _$result = _$v ??
          new _$GviewListingDetailsFragmentData_carRules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GviewListingDetailsFragmentData_carRules', 'G__typename'),
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
            r'GviewListingDetailsFragmentData_carRules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_carRules_dynamicItemName
    extends GviewListingDetailsFragmentData_carRules_dynamicItemName {
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

  factory _$GviewListingDetailsFragmentData_carRules_dynamicItemName(
          [void Function(
                  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_carRules_dynamicItemName._(
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
        r'GviewListingDetailsFragmentData_carRules_dynamicItemName',
        'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_carRules_dynamicItemName rebuild(
          void Function(
                  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_carRules_dynamicItemName &&
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
            r'GviewListingDetailsFragmentData_carRules_dynamicItemName')
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

class GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder
    implements
        Builder<GviewListingDetailsFragmentData_carRules_dynamicItemName,
            GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder> {
  _$GviewListingDetailsFragmentData_carRules_dynamicItemName? _$v;

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

  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder() {
    GviewListingDetailsFragmentData_carRules_dynamicItemName._initializeBuilder(
        this);
  }

  GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_carRules_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_carRules_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_carRules_dynamicItemName build() => _build();

  _$GviewListingDetailsFragmentData_carRules_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_carRules_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_carRules_dynamicItemName',
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

class _$GviewListingDetailsFragmentData_carFeatures
    extends GviewListingDetailsFragmentData_carFeatures {
  @override
  final String G__typename;
  @override
  final GviewListingDetailsFragmentData_carFeatures_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GviewListingDetailsFragmentData_carFeatures(
          [void Function(GviewListingDetailsFragmentData_carFeaturesBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_carFeaturesBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_carFeatures._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_carFeatures', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_carFeatures rebuild(
          void Function(GviewListingDetailsFragmentData_carFeaturesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_carFeaturesBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_carFeaturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_carFeatures &&
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
            r'GviewListingDetailsFragmentData_carFeatures')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GviewListingDetailsFragmentData_carFeaturesBuilder
    implements
        Builder<GviewListingDetailsFragmentData_carFeatures,
            GviewListingDetailsFragmentData_carFeaturesBuilder> {
  _$GviewListingDetailsFragmentData_carFeatures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder?
      _dynamicItemName;
  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder();
  set dynamicItemName(
          GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GviewListingDetailsFragmentData_carFeaturesBuilder() {
    GviewListingDetailsFragmentData_carFeatures._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_carFeaturesBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_carFeatures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_carFeatures;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_carFeaturesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_carFeatures build() => _build();

  _$GviewListingDetailsFragmentData_carFeatures _build() {
    _$GviewListingDetailsFragmentData_carFeatures _$result;
    try {
      _$result = _$v ??
          new _$GviewListingDetailsFragmentData_carFeatures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GviewListingDetailsFragmentData_carFeatures',
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
            r'GviewListingDetailsFragmentData_carFeatures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName
    extends GviewListingDetailsFragmentData_carFeatures_dynamicItemName {
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

  factory _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName(
          [void Function(
                  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName._(
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
        r'GviewListingDetailsFragmentData_carFeatures_dynamicItemName',
        'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_carFeatures_dynamicItemName rebuild(
          void Function(
                  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder
      toBuilder() =>
          new GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GviewListingDetailsFragmentData_carFeatures_dynamicItemName &&
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
            r'GviewListingDetailsFragmentData_carFeatures_dynamicItemName')
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

class GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder
    implements
        Builder<GviewListingDetailsFragmentData_carFeatures_dynamicItemName,
            GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder> {
  _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName? _$v;

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

  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder() {
    GviewListingDetailsFragmentData_carFeatures_dynamicItemName
        ._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder
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
      GviewListingDetailsFragmentData_carFeatures_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_carFeatures_dynamicItemName build() =>
      _build();

  _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_carFeatures_dynamicItemName',
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

class _$GviewListingDetailsFragmentData_listPhotos
    extends GviewListingDetailsFragmentData_listPhotos {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;

  factory _$GviewListingDetailsFragmentData_listPhotos(
          [void Function(GviewListingDetailsFragmentData_listPhotosBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_listPhotosBuilder()..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_listPhotos._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_listPhotos', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_listPhotos rebuild(
          void Function(GviewListingDetailsFragmentData_listPhotosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_listPhotosBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_listPhotosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_listPhotos &&
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
            r'GviewListingDetailsFragmentData_listPhotos')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GviewListingDetailsFragmentData_listPhotosBuilder
    implements
        Builder<GviewListingDetailsFragmentData_listPhotos,
            GviewListingDetailsFragmentData_listPhotosBuilder> {
  _$GviewListingDetailsFragmentData_listPhotos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GviewListingDetailsFragmentData_listPhotosBuilder() {
    GviewListingDetailsFragmentData_listPhotos._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_listPhotosBuilder get _$this {
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
  void replace(GviewListingDetailsFragmentData_listPhotos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_listPhotos;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_listPhotosBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_listPhotos build() => _build();

  _$GviewListingDetailsFragmentData_listPhotos _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_listPhotos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_listPhotos', 'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_listingData
    extends GviewListingDetailsFragmentData_listingData {
  @override
  final String G__typename;
  @override
  final double? basePrice;
  @override
  final String? currency;
  @override
  final String? bookingNoticeTime;
  @override
  final String? checkInStart;
  @override
  final String? checkInEnd;
  @override
  final String? maxDaysNotice;
  @override
  final int? minDay;
  @override
  final int? maxDay;
  @override
  final String? maxDayItemLabel;
  @override
  final String? maxDayOtherItemLabel;
  @override
  final String? minDayItemLabel;
  @override
  final String? minDayOtherItemLabel;
  @override
  final double? delivery;
  @override
  final double? weeklyDiscount;
  @override
  final double? monthlyDiscount;
  @override
  final int? cancellationPolicy;
  @override
  final double? securityDeposit;
  @override
  final GviewListingDetailsFragmentData_listingData_cancellation? cancellation;

  factory _$GviewListingDetailsFragmentData_listingData(
          [void Function(GviewListingDetailsFragmentData_listingDataBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_listingDataBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_listingData._(
      {required this.G__typename,
      this.basePrice,
      this.currency,
      this.bookingNoticeTime,
      this.checkInStart,
      this.checkInEnd,
      this.maxDaysNotice,
      this.minDay,
      this.maxDay,
      this.maxDayItemLabel,
      this.maxDayOtherItemLabel,
      this.minDayItemLabel,
      this.minDayOtherItemLabel,
      this.delivery,
      this.weeklyDiscount,
      this.monthlyDiscount,
      this.cancellationPolicy,
      this.securityDeposit,
      this.cancellation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_listingData', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_listingData rebuild(
          void Function(GviewListingDetailsFragmentData_listingDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_listingDataBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_listingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_listingData &&
        G__typename == other.G__typename &&
        basePrice == other.basePrice &&
        currency == other.currency &&
        bookingNoticeTime == other.bookingNoticeTime &&
        checkInStart == other.checkInStart &&
        checkInEnd == other.checkInEnd &&
        maxDaysNotice == other.maxDaysNotice &&
        minDay == other.minDay &&
        maxDay == other.maxDay &&
        maxDayItemLabel == other.maxDayItemLabel &&
        maxDayOtherItemLabel == other.maxDayOtherItemLabel &&
        minDayItemLabel == other.minDayItemLabel &&
        minDayOtherItemLabel == other.minDayOtherItemLabel &&
        delivery == other.delivery &&
        weeklyDiscount == other.weeklyDiscount &&
        monthlyDiscount == other.monthlyDiscount &&
        cancellationPolicy == other.cancellationPolicy &&
        securityDeposit == other.securityDeposit &&
        cancellation == other.cancellation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, bookingNoticeTime.hashCode);
    _$hash = $jc(_$hash, checkInStart.hashCode);
    _$hash = $jc(_$hash, checkInEnd.hashCode);
    _$hash = $jc(_$hash, maxDaysNotice.hashCode);
    _$hash = $jc(_$hash, minDay.hashCode);
    _$hash = $jc(_$hash, maxDay.hashCode);
    _$hash = $jc(_$hash, maxDayItemLabel.hashCode);
    _$hash = $jc(_$hash, maxDayOtherItemLabel.hashCode);
    _$hash = $jc(_$hash, minDayItemLabel.hashCode);
    _$hash = $jc(_$hash, minDayOtherItemLabel.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, weeklyDiscount.hashCode);
    _$hash = $jc(_$hash, monthlyDiscount.hashCode);
    _$hash = $jc(_$hash, cancellationPolicy.hashCode);
    _$hash = $jc(_$hash, securityDeposit.hashCode);
    _$hash = $jc(_$hash, cancellation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingDetailsFragmentData_listingData')
          ..add('G__typename', G__typename)
          ..add('basePrice', basePrice)
          ..add('currency', currency)
          ..add('bookingNoticeTime', bookingNoticeTime)
          ..add('checkInStart', checkInStart)
          ..add('checkInEnd', checkInEnd)
          ..add('maxDaysNotice', maxDaysNotice)
          ..add('minDay', minDay)
          ..add('maxDay', maxDay)
          ..add('maxDayItemLabel', maxDayItemLabel)
          ..add('maxDayOtherItemLabel', maxDayOtherItemLabel)
          ..add('minDayItemLabel', minDayItemLabel)
          ..add('minDayOtherItemLabel', minDayOtherItemLabel)
          ..add('delivery', delivery)
          ..add('weeklyDiscount', weeklyDiscount)
          ..add('monthlyDiscount', monthlyDiscount)
          ..add('cancellationPolicy', cancellationPolicy)
          ..add('securityDeposit', securityDeposit)
          ..add('cancellation', cancellation))
        .toString();
  }
}

class GviewListingDetailsFragmentData_listingDataBuilder
    implements
        Builder<GviewListingDetailsFragmentData_listingData,
            GviewListingDetailsFragmentData_listingDataBuilder> {
  _$GviewListingDetailsFragmentData_listingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _bookingNoticeTime;
  String? get bookingNoticeTime => _$this._bookingNoticeTime;
  set bookingNoticeTime(String? bookingNoticeTime) =>
      _$this._bookingNoticeTime = bookingNoticeTime;

  String? _checkInStart;
  String? get checkInStart => _$this._checkInStart;
  set checkInStart(String? checkInStart) => _$this._checkInStart = checkInStart;

  String? _checkInEnd;
  String? get checkInEnd => _$this._checkInEnd;
  set checkInEnd(String? checkInEnd) => _$this._checkInEnd = checkInEnd;

  String? _maxDaysNotice;
  String? get maxDaysNotice => _$this._maxDaysNotice;
  set maxDaysNotice(String? maxDaysNotice) =>
      _$this._maxDaysNotice = maxDaysNotice;

  int? _minDay;
  int? get minDay => _$this._minDay;
  set minDay(int? minDay) => _$this._minDay = minDay;

  int? _maxDay;
  int? get maxDay => _$this._maxDay;
  set maxDay(int? maxDay) => _$this._maxDay = maxDay;

  String? _maxDayItemLabel;
  String? get maxDayItemLabel => _$this._maxDayItemLabel;
  set maxDayItemLabel(String? maxDayItemLabel) =>
      _$this._maxDayItemLabel = maxDayItemLabel;

  String? _maxDayOtherItemLabel;
  String? get maxDayOtherItemLabel => _$this._maxDayOtherItemLabel;
  set maxDayOtherItemLabel(String? maxDayOtherItemLabel) =>
      _$this._maxDayOtherItemLabel = maxDayOtherItemLabel;

  String? _minDayItemLabel;
  String? get minDayItemLabel => _$this._minDayItemLabel;
  set minDayItemLabel(String? minDayItemLabel) =>
      _$this._minDayItemLabel = minDayItemLabel;

  String? _minDayOtherItemLabel;
  String? get minDayOtherItemLabel => _$this._minDayOtherItemLabel;
  set minDayOtherItemLabel(String? minDayOtherItemLabel) =>
      _$this._minDayOtherItemLabel = minDayOtherItemLabel;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  double? _weeklyDiscount;
  double? get weeklyDiscount => _$this._weeklyDiscount;
  set weeklyDiscount(double? weeklyDiscount) =>
      _$this._weeklyDiscount = weeklyDiscount;

  double? _monthlyDiscount;
  double? get monthlyDiscount => _$this._monthlyDiscount;
  set monthlyDiscount(double? monthlyDiscount) =>
      _$this._monthlyDiscount = monthlyDiscount;

  int? _cancellationPolicy;
  int? get cancellationPolicy => _$this._cancellationPolicy;
  set cancellationPolicy(int? cancellationPolicy) =>
      _$this._cancellationPolicy = cancellationPolicy;

  double? _securityDeposit;
  double? get securityDeposit => _$this._securityDeposit;
  set securityDeposit(double? securityDeposit) =>
      _$this._securityDeposit = securityDeposit;

  GviewListingDetailsFragmentData_listingData_cancellationBuilder?
      _cancellation;
  GviewListingDetailsFragmentData_listingData_cancellationBuilder
      get cancellation => _$this._cancellation ??=
          new GviewListingDetailsFragmentData_listingData_cancellationBuilder();
  set cancellation(
          GviewListingDetailsFragmentData_listingData_cancellationBuilder?
              cancellation) =>
      _$this._cancellation = cancellation;

  GviewListingDetailsFragmentData_listingDataBuilder() {
    GviewListingDetailsFragmentData_listingData._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_listingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _basePrice = $v.basePrice;
      _currency = $v.currency;
      _bookingNoticeTime = $v.bookingNoticeTime;
      _checkInStart = $v.checkInStart;
      _checkInEnd = $v.checkInEnd;
      _maxDaysNotice = $v.maxDaysNotice;
      _minDay = $v.minDay;
      _maxDay = $v.maxDay;
      _maxDayItemLabel = $v.maxDayItemLabel;
      _maxDayOtherItemLabel = $v.maxDayOtherItemLabel;
      _minDayItemLabel = $v.minDayItemLabel;
      _minDayOtherItemLabel = $v.minDayOtherItemLabel;
      _delivery = $v.delivery;
      _weeklyDiscount = $v.weeklyDiscount;
      _monthlyDiscount = $v.monthlyDiscount;
      _cancellationPolicy = $v.cancellationPolicy;
      _securityDeposit = $v.securityDeposit;
      _cancellation = $v.cancellation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_listingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_listingData;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_listingDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_listingData build() => _build();

  _$GviewListingDetailsFragmentData_listingData _build() {
    _$GviewListingDetailsFragmentData_listingData _$result;
    try {
      _$result = _$v ??
          new _$GviewListingDetailsFragmentData_listingData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GviewListingDetailsFragmentData_listingData',
                  'G__typename'),
              basePrice: basePrice,
              currency: currency,
              bookingNoticeTime: bookingNoticeTime,
              checkInStart: checkInStart,
              checkInEnd: checkInEnd,
              maxDaysNotice: maxDaysNotice,
              minDay: minDay,
              maxDay: maxDay,
              maxDayItemLabel: maxDayItemLabel,
              maxDayOtherItemLabel: maxDayOtherItemLabel,
              minDayItemLabel: minDayItemLabel,
              minDayOtherItemLabel: minDayOtherItemLabel,
              delivery: delivery,
              weeklyDiscount: weeklyDiscount,
              monthlyDiscount: monthlyDiscount,
              cancellationPolicy: cancellationPolicy,
              securityDeposit: securityDeposit,
              cancellation: _cancellation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cancellation';
        _cancellation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GviewListingDetailsFragmentData_listingData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_listingData_cancellation
    extends GviewListingDetailsFragmentData_listingData_cancellation {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? policyName;
  @override
  final String? policyContent;
  @override
  final int? priorDays;
  @override
  final String? subTitle;
  @override
  final String? subContent;
  @override
  final String? content1;
  @override
  final String? content2;
  @override
  final String? content3;
  @override
  final double? accommodationPriorCheckIn;
  @override
  final double? accommodationBeforeCheckIn;
  @override
  final double? accommodationDuringCheckIn;
  @override
  final double? guestFeePriorCheckIn;
  @override
  final double? guestFeeBeforeCheckIn;
  @override
  final double? guestFeeDuringCheckIn;
  @override
  final double? hostFeePriorCheckIn;
  @override
  final double? hostFeeBeforeCheckIn;
  @override
  final double? hostFeeDuringCheckIn;
  @override
  final bool? isEnable;
  @override
  final String? status;

  factory _$GviewListingDetailsFragmentData_listingData_cancellation(
          [void Function(
                  GviewListingDetailsFragmentData_listingData_cancellationBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_listingData_cancellationBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_listingData_cancellation._(
      {required this.G__typename,
      this.id,
      this.policyName,
      this.policyContent,
      this.priorDays,
      this.subTitle,
      this.subContent,
      this.content1,
      this.content2,
      this.content3,
      this.accommodationPriorCheckIn,
      this.accommodationBeforeCheckIn,
      this.accommodationDuringCheckIn,
      this.guestFeePriorCheckIn,
      this.guestFeeBeforeCheckIn,
      this.guestFeeDuringCheckIn,
      this.hostFeePriorCheckIn,
      this.hostFeeBeforeCheckIn,
      this.hostFeeDuringCheckIn,
      this.isEnable,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GviewListingDetailsFragmentData_listingData_cancellation',
        'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_listingData_cancellation rebuild(
          void Function(
                  GviewListingDetailsFragmentData_listingData_cancellationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_listingData_cancellationBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_listingData_cancellationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_listingData_cancellation &&
        G__typename == other.G__typename &&
        id == other.id &&
        policyName == other.policyName &&
        policyContent == other.policyContent &&
        priorDays == other.priorDays &&
        subTitle == other.subTitle &&
        subContent == other.subContent &&
        content1 == other.content1 &&
        content2 == other.content2 &&
        content3 == other.content3 &&
        accommodationPriorCheckIn == other.accommodationPriorCheckIn &&
        accommodationBeforeCheckIn == other.accommodationBeforeCheckIn &&
        accommodationDuringCheckIn == other.accommodationDuringCheckIn &&
        guestFeePriorCheckIn == other.guestFeePriorCheckIn &&
        guestFeeBeforeCheckIn == other.guestFeeBeforeCheckIn &&
        guestFeeDuringCheckIn == other.guestFeeDuringCheckIn &&
        hostFeePriorCheckIn == other.hostFeePriorCheckIn &&
        hostFeeBeforeCheckIn == other.hostFeeBeforeCheckIn &&
        hostFeeDuringCheckIn == other.hostFeeDuringCheckIn &&
        isEnable == other.isEnable &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyContent.hashCode);
    _$hash = $jc(_$hash, priorDays.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jc(_$hash, subContent.hashCode);
    _$hash = $jc(_$hash, content1.hashCode);
    _$hash = $jc(_$hash, content2.hashCode);
    _$hash = $jc(_$hash, content3.hashCode);
    _$hash = $jc(_$hash, accommodationPriorCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, accommodationDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, guestFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeePriorCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeBeforeCheckIn.hashCode);
    _$hash = $jc(_$hash, hostFeeDuringCheckIn.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingDetailsFragmentData_listingData_cancellation')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('policyName', policyName)
          ..add('policyContent', policyContent)
          ..add('priorDays', priorDays)
          ..add('subTitle', subTitle)
          ..add('subContent', subContent)
          ..add('content1', content1)
          ..add('content2', content2)
          ..add('content3', content3)
          ..add('accommodationPriorCheckIn', accommodationPriorCheckIn)
          ..add('accommodationBeforeCheckIn', accommodationBeforeCheckIn)
          ..add('accommodationDuringCheckIn', accommodationDuringCheckIn)
          ..add('guestFeePriorCheckIn', guestFeePriorCheckIn)
          ..add('guestFeeBeforeCheckIn', guestFeeBeforeCheckIn)
          ..add('guestFeeDuringCheckIn', guestFeeDuringCheckIn)
          ..add('hostFeePriorCheckIn', hostFeePriorCheckIn)
          ..add('hostFeeBeforeCheckIn', hostFeeBeforeCheckIn)
          ..add('hostFeeDuringCheckIn', hostFeeDuringCheckIn)
          ..add('isEnable', isEnable)
          ..add('status', status))
        .toString();
  }
}

class GviewListingDetailsFragmentData_listingData_cancellationBuilder
    implements
        Builder<GviewListingDetailsFragmentData_listingData_cancellation,
            GviewListingDetailsFragmentData_listingData_cancellationBuilder> {
  _$GviewListingDetailsFragmentData_listingData_cancellation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyContent;
  String? get policyContent => _$this._policyContent;
  set policyContent(String? policyContent) =>
      _$this._policyContent = policyContent;

  int? _priorDays;
  int? get priorDays => _$this._priorDays;
  set priorDays(int? priorDays) => _$this._priorDays = priorDays;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  String? _subContent;
  String? get subContent => _$this._subContent;
  set subContent(String? subContent) => _$this._subContent = subContent;

  String? _content1;
  String? get content1 => _$this._content1;
  set content1(String? content1) => _$this._content1 = content1;

  String? _content2;
  String? get content2 => _$this._content2;
  set content2(String? content2) => _$this._content2 = content2;

  String? _content3;
  String? get content3 => _$this._content3;
  set content3(String? content3) => _$this._content3 = content3;

  double? _accommodationPriorCheckIn;
  double? get accommodationPriorCheckIn => _$this._accommodationPriorCheckIn;
  set accommodationPriorCheckIn(double? accommodationPriorCheckIn) =>
      _$this._accommodationPriorCheckIn = accommodationPriorCheckIn;

  double? _accommodationBeforeCheckIn;
  double? get accommodationBeforeCheckIn => _$this._accommodationBeforeCheckIn;
  set accommodationBeforeCheckIn(double? accommodationBeforeCheckIn) =>
      _$this._accommodationBeforeCheckIn = accommodationBeforeCheckIn;

  double? _accommodationDuringCheckIn;
  double? get accommodationDuringCheckIn => _$this._accommodationDuringCheckIn;
  set accommodationDuringCheckIn(double? accommodationDuringCheckIn) =>
      _$this._accommodationDuringCheckIn = accommodationDuringCheckIn;

  double? _guestFeePriorCheckIn;
  double? get guestFeePriorCheckIn => _$this._guestFeePriorCheckIn;
  set guestFeePriorCheckIn(double? guestFeePriorCheckIn) =>
      _$this._guestFeePriorCheckIn = guestFeePriorCheckIn;

  double? _guestFeeBeforeCheckIn;
  double? get guestFeeBeforeCheckIn => _$this._guestFeeBeforeCheckIn;
  set guestFeeBeforeCheckIn(double? guestFeeBeforeCheckIn) =>
      _$this._guestFeeBeforeCheckIn = guestFeeBeforeCheckIn;

  double? _guestFeeDuringCheckIn;
  double? get guestFeeDuringCheckIn => _$this._guestFeeDuringCheckIn;
  set guestFeeDuringCheckIn(double? guestFeeDuringCheckIn) =>
      _$this._guestFeeDuringCheckIn = guestFeeDuringCheckIn;

  double? _hostFeePriorCheckIn;
  double? get hostFeePriorCheckIn => _$this._hostFeePriorCheckIn;
  set hostFeePriorCheckIn(double? hostFeePriorCheckIn) =>
      _$this._hostFeePriorCheckIn = hostFeePriorCheckIn;

  double? _hostFeeBeforeCheckIn;
  double? get hostFeeBeforeCheckIn => _$this._hostFeeBeforeCheckIn;
  set hostFeeBeforeCheckIn(double? hostFeeBeforeCheckIn) =>
      _$this._hostFeeBeforeCheckIn = hostFeeBeforeCheckIn;

  double? _hostFeeDuringCheckIn;
  double? get hostFeeDuringCheckIn => _$this._hostFeeDuringCheckIn;
  set hostFeeDuringCheckIn(double? hostFeeDuringCheckIn) =>
      _$this._hostFeeDuringCheckIn = hostFeeDuringCheckIn;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GviewListingDetailsFragmentData_listingData_cancellationBuilder() {
    GviewListingDetailsFragmentData_listingData_cancellation._initializeBuilder(
        this);
  }

  GviewListingDetailsFragmentData_listingData_cancellationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _policyName = $v.policyName;
      _policyContent = $v.policyContent;
      _priorDays = $v.priorDays;
      _subTitle = $v.subTitle;
      _subContent = $v.subContent;
      _content1 = $v.content1;
      _content2 = $v.content2;
      _content3 = $v.content3;
      _accommodationPriorCheckIn = $v.accommodationPriorCheckIn;
      _accommodationBeforeCheckIn = $v.accommodationBeforeCheckIn;
      _accommodationDuringCheckIn = $v.accommodationDuringCheckIn;
      _guestFeePriorCheckIn = $v.guestFeePriorCheckIn;
      _guestFeeBeforeCheckIn = $v.guestFeeBeforeCheckIn;
      _guestFeeDuringCheckIn = $v.guestFeeDuringCheckIn;
      _hostFeePriorCheckIn = $v.hostFeePriorCheckIn;
      _hostFeeBeforeCheckIn = $v.hostFeeBeforeCheckIn;
      _hostFeeDuringCheckIn = $v.hostFeeDuringCheckIn;
      _isEnable = $v.isEnable;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_listingData_cancellation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_listingData_cancellation;
  }

  @override
  void update(
      void Function(
              GviewListingDetailsFragmentData_listingData_cancellationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_listingData_cancellation build() => _build();

  _$GviewListingDetailsFragmentData_listingData_cancellation _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_listingData_cancellation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_listingData_cancellation',
                'G__typename'),
            id: id,
            policyName: policyName,
            policyContent: policyContent,
            priorDays: priorDays,
            subTitle: subTitle,
            subContent: subContent,
            content1: content1,
            content2: content2,
            content3: content3,
            accommodationPriorCheckIn: accommodationPriorCheckIn,
            accommodationBeforeCheckIn: accommodationBeforeCheckIn,
            accommodationDuringCheckIn: accommodationDuringCheckIn,
            guestFeePriorCheckIn: guestFeePriorCheckIn,
            guestFeeBeforeCheckIn: guestFeeBeforeCheckIn,
            guestFeeDuringCheckIn: guestFeeDuringCheckIn,
            hostFeePriorCheckIn: hostFeePriorCheckIn,
            hostFeeBeforeCheckIn: hostFeeBeforeCheckIn,
            hostFeeDuringCheckIn: hostFeeDuringCheckIn,
            isEnable: isEnable,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_user
    extends GviewListingDetailsFragmentData_user {
  @override
  final String G__typename;
  @override
  final String? email;
  @override
  final GviewListingDetailsFragmentData_user_profile? profile;
  @override
  final GviewListingDetailsFragmentData_user_verification? verification;
  @override
  final int? userBanStatus;

  factory _$GviewListingDetailsFragmentData_user(
          [void Function(GviewListingDetailsFragmentData_userBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_userBuilder()..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_user._(
      {required this.G__typename,
      this.email,
      this.profile,
      this.verification,
      this.userBanStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GviewListingDetailsFragmentData_user', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_user rebuild(
          void Function(GviewListingDetailsFragmentData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_userBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_user &&
        G__typename == other.G__typename &&
        email == other.email &&
        profile == other.profile &&
        verification == other.verification &&
        userBanStatus == other.userBanStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GviewListingDetailsFragmentData_user')
          ..add('G__typename', G__typename)
          ..add('email', email)
          ..add('profile', profile)
          ..add('verification', verification)
          ..add('userBanStatus', userBanStatus))
        .toString();
  }
}

class GviewListingDetailsFragmentData_userBuilder
    implements
        Builder<GviewListingDetailsFragmentData_user,
            GviewListingDetailsFragmentData_userBuilder> {
  _$GviewListingDetailsFragmentData_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GviewListingDetailsFragmentData_user_profileBuilder? _profile;
  GviewListingDetailsFragmentData_user_profileBuilder get profile =>
      _$this._profile ??=
          new GviewListingDetailsFragmentData_user_profileBuilder();
  set profile(GviewListingDetailsFragmentData_user_profileBuilder? profile) =>
      _$this._profile = profile;

  GviewListingDetailsFragmentData_user_verificationBuilder? _verification;
  GviewListingDetailsFragmentData_user_verificationBuilder get verification =>
      _$this._verification ??=
          new GviewListingDetailsFragmentData_user_verificationBuilder();
  set verification(
          GviewListingDetailsFragmentData_user_verificationBuilder?
              verification) =>
      _$this._verification = verification;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  GviewListingDetailsFragmentData_userBuilder() {
    GviewListingDetailsFragmentData_user._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _email = $v.email;
      _profile = $v.profile?.toBuilder();
      _verification = $v.verification?.toBuilder();
      _userBanStatus = $v.userBanStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_user;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_user build() => _build();

  _$GviewListingDetailsFragmentData_user _build() {
    _$GviewListingDetailsFragmentData_user _$result;
    try {
      _$result = _$v ??
          new _$GviewListingDetailsFragmentData_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GviewListingDetailsFragmentData_user', 'G__typename'),
              email: email,
              profile: _profile?.build(),
              verification: _verification?.build(),
              userBanStatus: userBanStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
        _$failedField = 'verification';
        _verification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GviewListingDetailsFragmentData_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_user_profile
    extends GviewListingDetailsFragmentData_user_profile {
  @override
  final String G__typename;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? info;
  @override
  final String? createdAt;

  factory _$GviewListingDetailsFragmentData_user_profile(
          [void Function(GviewListingDetailsFragmentData_user_profileBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_user_profileBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_user_profile._(
      {required this.G__typename,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.picture,
      this.location,
      this.info,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_user_profile', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_user_profile rebuild(
          void Function(GviewListingDetailsFragmentData_user_profileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_user_profileBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_user_profileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_user_profile &&
        G__typename == other.G__typename &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        picture == other.picture &&
        location == other.location &&
        info == other.info &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingDetailsFragmentData_user_profile')
          ..add('G__typename', G__typename)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('picture', picture)
          ..add('location', location)
          ..add('info', info)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GviewListingDetailsFragmentData_user_profileBuilder
    implements
        Builder<GviewListingDetailsFragmentData_user_profile,
            GviewListingDetailsFragmentData_user_profileBuilder> {
  _$GviewListingDetailsFragmentData_user_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GviewListingDetailsFragmentData_user_profileBuilder() {
    GviewListingDetailsFragmentData_user_profile._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_user_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _picture = $v.picture;
      _location = $v.location;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_user_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_user_profile;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_user_profileBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_user_profile build() => _build();

  _$GviewListingDetailsFragmentData_user_profile _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_user_profile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_user_profile', 'G__typename'),
            profileId: profileId,
            firstName: firstName,
            lastName: lastName,
            displayName: displayName,
            picture: picture,
            location: location,
            info: info,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_user_verification
    extends GviewListingDetailsFragmentData_user_verification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GviewListingDetailsFragmentData_user_verification(
          [void Function(
                  GviewListingDetailsFragmentData_user_verificationBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_user_verificationBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_user_verification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_user_verification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GviewListingDetailsFragmentData_user_verification', 'userId');
  }

  @override
  GviewListingDetailsFragmentData_user_verification rebuild(
          void Function(
                  GviewListingDetailsFragmentData_user_verificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_user_verificationBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_user_verificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_user_verification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingDetailsFragmentData_user_verification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GviewListingDetailsFragmentData_user_verificationBuilder
    implements
        Builder<GviewListingDetailsFragmentData_user_verification,
            GviewListingDetailsFragmentData_user_verificationBuilder> {
  _$GviewListingDetailsFragmentData_user_verification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GviewListingDetailsFragmentData_user_verificationBuilder() {
    GviewListingDetailsFragmentData_user_verification._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_user_verificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_user_verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_user_verification;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_user_verificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_user_verification build() => _build();

  _$GviewListingDetailsFragmentData_user_verification _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_user_verification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GviewListingDetailsFragmentData_user_verification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GviewListingDetailsFragmentData_user_verification', 'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_blockedDates
    extends GviewListingDetailsFragmentData_blockedDates {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? blockedDates;
  @override
  final int? reservationId;
  @override
  final int? listId;
  @override
  final String? calendarStatus;
  @override
  final double? isSpecialPrice;

  factory _$GviewListingDetailsFragmentData_blockedDates(
          [void Function(GviewListingDetailsFragmentData_blockedDatesBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_blockedDatesBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_blockedDates._(
      {required this.G__typename,
      this.id,
      this.blockedDates,
      this.reservationId,
      this.listId,
      this.calendarStatus,
      this.isSpecialPrice})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_blockedDates', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_blockedDates rebuild(
          void Function(GviewListingDetailsFragmentData_blockedDatesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_blockedDatesBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_blockedDatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_blockedDates &&
        G__typename == other.G__typename &&
        id == other.id &&
        blockedDates == other.blockedDates &&
        reservationId == other.reservationId &&
        listId == other.listId &&
        calendarStatus == other.calendarStatus &&
        isSpecialPrice == other.isSpecialPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, blockedDates.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, calendarStatus.hashCode);
    _$hash = $jc(_$hash, isSpecialPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingDetailsFragmentData_blockedDates')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('blockedDates', blockedDates)
          ..add('reservationId', reservationId)
          ..add('listId', listId)
          ..add('calendarStatus', calendarStatus)
          ..add('isSpecialPrice', isSpecialPrice))
        .toString();
  }
}

class GviewListingDetailsFragmentData_blockedDatesBuilder
    implements
        Builder<GviewListingDetailsFragmentData_blockedDates,
            GviewListingDetailsFragmentData_blockedDatesBuilder> {
  _$GviewListingDetailsFragmentData_blockedDates? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _blockedDates;
  String? get blockedDates => _$this._blockedDates;
  set blockedDates(String? blockedDates) => _$this._blockedDates = blockedDates;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _calendarStatus;
  String? get calendarStatus => _$this._calendarStatus;
  set calendarStatus(String? calendarStatus) =>
      _$this._calendarStatus = calendarStatus;

  double? _isSpecialPrice;
  double? get isSpecialPrice => _$this._isSpecialPrice;
  set isSpecialPrice(double? isSpecialPrice) =>
      _$this._isSpecialPrice = isSpecialPrice;

  GviewListingDetailsFragmentData_blockedDatesBuilder() {
    GviewListingDetailsFragmentData_blockedDates._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_blockedDatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _blockedDates = $v.blockedDates;
      _reservationId = $v.reservationId;
      _listId = $v.listId;
      _calendarStatus = $v.calendarStatus;
      _isSpecialPrice = $v.isSpecialPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_blockedDates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_blockedDates;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_blockedDatesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_blockedDates build() => _build();

  _$GviewListingDetailsFragmentData_blockedDates _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_blockedDates._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_blockedDates', 'G__typename'),
            id: id,
            blockedDates: blockedDates,
            reservationId: reservationId,
            listId: listId,
            calendarStatus: calendarStatus,
            isSpecialPrice: isSpecialPrice);
    replace(_$result);
    return _$result;
  }
}

class _$GviewListingDetailsFragmentData_listingSteps
    extends GviewListingDetailsFragmentData_listingSteps {
  @override
  final String G__typename;
  @override
  final String? step1;
  @override
  final String? step2;
  @override
  final String? step3;

  factory _$GviewListingDetailsFragmentData_listingSteps(
          [void Function(GviewListingDetailsFragmentData_listingStepsBuilder)?
              updates]) =>
      (new GviewListingDetailsFragmentData_listingStepsBuilder()
            ..update(updates))
          ._build();

  _$GviewListingDetailsFragmentData_listingSteps._(
      {required this.G__typename, this.step1, this.step2, this.step3})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GviewListingDetailsFragmentData_listingSteps', 'G__typename');
  }

  @override
  GviewListingDetailsFragmentData_listingSteps rebuild(
          void Function(GviewListingDetailsFragmentData_listingStepsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GviewListingDetailsFragmentData_listingStepsBuilder toBuilder() =>
      new GviewListingDetailsFragmentData_listingStepsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GviewListingDetailsFragmentData_listingSteps &&
        G__typename == other.G__typename &&
        step1 == other.step1 &&
        step2 == other.step2 &&
        step3 == other.step3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, step1.hashCode);
    _$hash = $jc(_$hash, step2.hashCode);
    _$hash = $jc(_$hash, step3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GviewListingDetailsFragmentData_listingSteps')
          ..add('G__typename', G__typename)
          ..add('step1', step1)
          ..add('step2', step2)
          ..add('step3', step3))
        .toString();
  }
}

class GviewListingDetailsFragmentData_listingStepsBuilder
    implements
        Builder<GviewListingDetailsFragmentData_listingSteps,
            GviewListingDetailsFragmentData_listingStepsBuilder> {
  _$GviewListingDetailsFragmentData_listingSteps? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _step1;
  String? get step1 => _$this._step1;
  set step1(String? step1) => _$this._step1 = step1;

  String? _step2;
  String? get step2 => _$this._step2;
  set step2(String? step2) => _$this._step2 = step2;

  String? _step3;
  String? get step3 => _$this._step3;
  set step3(String? step3) => _$this._step3 = step3;

  GviewListingDetailsFragmentData_listingStepsBuilder() {
    GviewListingDetailsFragmentData_listingSteps._initializeBuilder(this);
  }

  GviewListingDetailsFragmentData_listingStepsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _step1 = $v.step1;
      _step2 = $v.step2;
      _step3 = $v.step3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GviewListingDetailsFragmentData_listingSteps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GviewListingDetailsFragmentData_listingSteps;
  }

  @override
  void update(
      void Function(GviewListingDetailsFragmentData_listingStepsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GviewListingDetailsFragmentData_listingSteps build() => _build();

  _$GviewListingDetailsFragmentData_listingSteps _build() {
    final _$result = _$v ??
        new _$GviewListingDetailsFragmentData_listingSteps._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GviewListingDetailsFragmentData_listingSteps', 'G__typename'),
            step1: step1,
            step2: step2,
            step3: step3);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
