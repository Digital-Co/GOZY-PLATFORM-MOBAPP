// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_thread_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallThreadsFragmentData> _$gallThreadsFragmentDataSerializer =
    new _$GallThreadsFragmentDataSerializer();
Serializer<GallThreadsFragmentData_listData>
    _$gallThreadsFragmentDataListDataSerializer =
    new _$GallThreadsFragmentData_listDataSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicListingTitle>
    _$gallThreadsFragmentDataListDataDynamicListingTitleSerializer =
    new _$GallThreadsFragmentData_listData_dynamicListingTitleSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicListingDescription>
    _$gallThreadsFragmentDataListDataDynamicListingDescriptionSerializer =
    new _$GallThreadsFragmentData_listData_dynamicListingDescriptionSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicListTitle>
    _$gallThreadsFragmentDataListDataDynamicListTitleSerializer =
    new _$GallThreadsFragmentData_listData_dynamicListTitleSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicListDescription>
    _$gallThreadsFragmentDataListDataDynamicListDescriptionSerializer =
    new _$GallThreadsFragmentData_listData_dynamicListDescriptionSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicCarType>
    _$gallThreadsFragmentDataListDataDynamicCarTypeSerializer =
    new _$GallThreadsFragmentData_listData_dynamicCarTypeSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicmake>
    _$gallThreadsFragmentDataListDataDynamicmakeSerializer =
    new _$GallThreadsFragmentData_listData_dynamicmakeSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicModel>
    _$gallThreadsFragmentDataListDataDynamicModelSerializer =
    new _$GallThreadsFragmentData_listData_dynamicModelSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicYear>
    _$gallThreadsFragmentDataListDataDynamicYearSerializer =
    new _$GallThreadsFragmentData_listData_dynamicYearSerializer();
Serializer<GallThreadsFragmentData_listData_dynamicOdometer>
    _$gallThreadsFragmentDataListDataDynamicOdometerSerializer =
    new _$GallThreadsFragmentData_listData_dynamicOdometerSerializer();
Serializer<GallThreadsFragmentData_listData_carRules>
    _$gallThreadsFragmentDataListDataCarRulesSerializer =
    new _$GallThreadsFragmentData_listData_carRulesSerializer();
Serializer<GallThreadsFragmentData_listData_carRules_dynamicItemName>
    _$gallThreadsFragmentDataListDataCarRulesDynamicItemNameSerializer =
    new _$GallThreadsFragmentData_listData_carRules_dynamicItemNameSerializer();
Serializer<GallThreadsFragmentData_listData_carFeatures>
    _$gallThreadsFragmentDataListDataCarFeaturesSerializer =
    new _$GallThreadsFragmentData_listData_carFeaturesSerializer();
Serializer<GallThreadsFragmentData_listData_carFeatures_dynamicItemName>
    _$gallThreadsFragmentDataListDataCarFeaturesDynamicItemNameSerializer =
    new _$GallThreadsFragmentData_listData_carFeatures_dynamicItemNameSerializer();
Serializer<GallThreadsFragmentData_listData_listPhotos>
    _$gallThreadsFragmentDataListDataListPhotosSerializer =
    new _$GallThreadsFragmentData_listData_listPhotosSerializer();
Serializer<GallThreadsFragmentData_listData_listingData>
    _$gallThreadsFragmentDataListDataListingDataSerializer =
    new _$GallThreadsFragmentData_listData_listingDataSerializer();
Serializer<GallThreadsFragmentData_threadItem>
    _$gallThreadsFragmentDataThreadItemSerializer =
    new _$GallThreadsFragmentData_threadItemSerializer();
Serializer<GallThreadsFragmentData_guestProfile>
    _$gallThreadsFragmentDataGuestProfileSerializer =
    new _$GallThreadsFragmentData_guestProfileSerializer();
Serializer<GallThreadsFragmentData_guestProfile_userData>
    _$gallThreadsFragmentDataGuestProfileUserDataSerializer =
    new _$GallThreadsFragmentData_guestProfile_userDataSerializer();
Serializer<GallThreadsFragmentData_guestProfile_userVerification>
    _$gallThreadsFragmentDataGuestProfileUserVerificationSerializer =
    new _$GallThreadsFragmentData_guestProfile_userVerificationSerializer();
Serializer<GallThreadsFragmentData_hostProfile>
    _$gallThreadsFragmentDataHostProfileSerializer =
    new _$GallThreadsFragmentData_hostProfileSerializer();
Serializer<GallThreadsFragmentData_hostProfile_userData>
    _$gallThreadsFragmentDataHostProfileUserDataSerializer =
    new _$GallThreadsFragmentData_hostProfile_userDataSerializer();
Serializer<GallThreadsFragmentData_hostProfile_userVerification>
    _$gallThreadsFragmentDataHostProfileUserVerificationSerializer =
    new _$GallThreadsFragmentData_hostProfile_userVerificationSerializer();

class _$GallThreadsFragmentDataSerializer
    implements StructuredSerializer<GallThreadsFragmentData> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData,
    _$GallThreadsFragmentData
  ];
  @override
  final String wireName = 'GallThreadsFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentData object,
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
    value = object.threadItemsCount;
    if (value != null) {
      result
        ..add('threadItemsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hostUnreadCount;
    if (value != null) {
      result
        ..add('hostUnreadCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.host;
    if (value != null) {
      result
        ..add('host')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guest;
    if (value != null) {
      result
        ..add('guest')
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isRead;
    if (value != null) {
      result
        ..add('isRead')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.listData;
    if (value != null) {
      result
        ..add('listData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GallThreadsFragmentData_listData)));
    }
    value = object.threadItem;
    if (value != null) {
      result
        ..add('threadItem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GallThreadsFragmentData_threadItem)));
    }
    value = object.guestProfile;
    if (value != null) {
      result
        ..add('guestProfile')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_guestProfile)));
    }
    value = object.hostProfile;
    if (value != null) {
      result
        ..add('hostProfile')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_hostProfile)));
    }
    return result;
  }

  @override
  GallThreadsFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentDataBuilder();

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
        case 'threadItemsCount':
          result.threadItemsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hostUnreadCount':
          result.hostUnreadCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'host':
          result.host = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guest':
          result.guest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isRead':
          result.isRead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'listData':
          result.listData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GallThreadsFragmentData_listData))!
              as GallThreadsFragmentData_listData);
          break;
        case 'threadItem':
          result.threadItem.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GallThreadsFragmentData_threadItem))!
              as GallThreadsFragmentData_threadItem);
          break;
        case 'guestProfile':
          result.guestProfile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GallThreadsFragmentData_guestProfile))!
              as GallThreadsFragmentData_guestProfile);
          break;
        case 'hostProfile':
          result.hostProfile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GallThreadsFragmentData_hostProfile))!
              as GallThreadsFragmentData_hostProfile);
          break;
      }
    }

    return result.build();
  }
}

class _$GallThreadsFragmentData_listDataSerializer
    implements StructuredSerializer<GallThreadsFragmentData_listData> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData,
    _$GallThreadsFragmentData_listData
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentData_listData object,
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
                  GallThreadsFragmentData_listData_dynamicListingTitle)
            ])));
    }
    value = object.dynamicListingDescription;
    if (value != null) {
      result
        ..add('dynamicListingDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GallThreadsFragmentData_listData_dynamicListingDescription)
            ])));
    }
    value = object.dynamicListTitle;
    if (value != null) {
      result
        ..add('dynamicListTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GallThreadsFragmentData_listData_dynamicListTitle)));
    }
    value = object.dynamicListDescription;
    if (value != null) {
      result
        ..add('dynamicListDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GallThreadsFragmentData_listData_dynamicListDescription)));
    }
    value = object.dynamicCarType;
    if (value != null) {
      result
        ..add('dynamicCarType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GallThreadsFragmentData_listData_dynamicCarType)));
    }
    value = object.dynamicmake;
    if (value != null) {
      result
        ..add('dynamicmake')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_listData_dynamicmake)));
    }
    value = object.dynamicModel;
    if (value != null) {
      result
        ..add('dynamicModel')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_listData_dynamicModel)));
    }
    value = object.dynamicYear;
    if (value != null) {
      result
        ..add('dynamicYear')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_listData_dynamicYear)));
    }
    value = object.dynamicOdometer;
    if (value != null) {
      result
        ..add('dynamicOdometer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GallThreadsFragmentData_listData_dynamicOdometer)));
    }
    value = object.carRules;
    if (value != null) {
      result
        ..add('carRules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GallThreadsFragmentData_listData_carRules)
            ])));
    }
    value = object.carFeatures;
    if (value != null) {
      result
        ..add('carFeatures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GallThreadsFragmentData_listData_carFeatures)
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
                  GallThreadsFragmentData_listData_listPhotos)
            ])));
    }
    value = object.listingData;
    if (value != null) {
      result
        ..add('listingData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_listData_listingData)));
    }
    return result;
  }

  @override
  GallThreadsFragmentData_listData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listDataBuilder();

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
                    GallThreadsFragmentData_listData_dynamicListingTitle)
              ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListingDescription':
          result.dynamicListingDescription
              .replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(
                        GallThreadsFragmentData_listData_dynamicListingDescription)
                  ]))! as BuiltList<Object?>);
          break;
        case 'dynamicListTitle':
          result.dynamicListTitle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicListTitle))!
              as GallThreadsFragmentData_listData_dynamicListTitle);
          break;
        case 'dynamicListDescription':
          result.dynamicListDescription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicListDescription))!
              as GallThreadsFragmentData_listData_dynamicListDescription);
          break;
        case 'dynamicCarType':
          result.dynamicCarType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicCarType))!
              as GallThreadsFragmentData_listData_dynamicCarType);
          break;
        case 'dynamicmake':
          result.dynamicmake.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicmake))!
              as GallThreadsFragmentData_listData_dynamicmake);
          break;
        case 'dynamicModel':
          result.dynamicModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicModel))!
              as GallThreadsFragmentData_listData_dynamicModel);
          break;
        case 'dynamicYear':
          result.dynamicYear.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicYear))!
              as GallThreadsFragmentData_listData_dynamicYear);
          break;
        case 'dynamicOdometer':
          result.dynamicOdometer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_dynamicOdometer))!
              as GallThreadsFragmentData_listData_dynamicOdometer);
          break;
        case 'carRules':
          result.carRules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GallThreadsFragmentData_listData_carRules)
              ]))! as BuiltList<Object?>);
          break;
        case 'carFeatures':
          result.carFeatures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GallThreadsFragmentData_listData_carFeatures)
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
                    GallThreadsFragmentData_listData_listPhotos)
              ]))! as BuiltList<Object?>);
          break;
        case 'listingData':
          result.listingData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_listData_listingData))!
              as GallThreadsFragmentData_listData_listingData);
          break;
      }
    }

    return result.build();
  }
}

class _$GallThreadsFragmentData_listData_dynamicListingTitleSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_listData_dynamicListingTitle> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicListingTitle,
    _$GallThreadsFragmentData_listData_dynamicListingTitle
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_listData_dynamicListingTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicListingTitle object,
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
  GallThreadsFragmentData_listData_dynamicListingTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_dynamicListingTitleBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicListingDescriptionSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_listData_dynamicListingDescription> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicListingDescription,
    _$GallThreadsFragmentData_listData_dynamicListingDescription
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_listData_dynamicListingDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicListingDescription object,
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
  GallThreadsFragmentData_listData_dynamicListingDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicListTitleSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_listData_dynamicListTitle> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicListTitle,
    _$GallThreadsFragmentData_listData_dynamicListTitle
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_dynamicListTitle';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicListTitle object,
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
  GallThreadsFragmentData_listData_dynamicListTitle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_dynamicListTitleBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicListDescriptionSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_listData_dynamicListDescription> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicListDescription,
    _$GallThreadsFragmentData_listData_dynamicListDescription
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_listData_dynamicListDescription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicListDescription object,
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
  GallThreadsFragmentData_listData_dynamicListDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_dynamicListDescriptionBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicCarTypeSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_dynamicCarType> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicCarType,
    _$GallThreadsFragmentData_listData_dynamicCarType
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_dynamicCarType';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicCarType object,
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
  GallThreadsFragmentData_listData_dynamicCarType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_dynamicCarTypeBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicmakeSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_dynamicmake> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicmake,
    _$GallThreadsFragmentData_listData_dynamicmake
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_dynamicmake';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicmake object,
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
  GallThreadsFragmentData_listData_dynamicmake deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_dynamicmakeBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicModelSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_dynamicModel> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicModel,
    _$GallThreadsFragmentData_listData_dynamicModel
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_dynamicModel';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicModel object,
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
  GallThreadsFragmentData_listData_dynamicModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_dynamicModelBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicYearSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_dynamicYear> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicYear,
    _$GallThreadsFragmentData_listData_dynamicYear
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_dynamicYear';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicYear object,
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
  GallThreadsFragmentData_listData_dynamicYear deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_dynamicYearBuilder();

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

class _$GallThreadsFragmentData_listData_dynamicOdometerSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_dynamicOdometer> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_dynamicOdometer,
    _$GallThreadsFragmentData_listData_dynamicOdometer
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_dynamicOdometer';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_dynamicOdometer object,
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
  GallThreadsFragmentData_listData_dynamicOdometer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_dynamicOdometerBuilder();

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

class _$GallThreadsFragmentData_listData_carRulesSerializer
    implements StructuredSerializer<GallThreadsFragmentData_listData_carRules> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_carRules,
    _$GallThreadsFragmentData_listData_carRules
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_carRules';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentData_listData_carRules object,
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
                GallThreadsFragmentData_listData_carRules_dynamicItemName)));
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
  GallThreadsFragmentData_listData_carRules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_carRulesBuilder();

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
                      GallThreadsFragmentData_listData_carRules_dynamicItemName))!
              as GallThreadsFragmentData_listData_carRules_dynamicItemName);
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

class _$GallThreadsFragmentData_listData_carRules_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_listData_carRules_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_carRules_dynamicItemName,
    _$GallThreadsFragmentData_listData_carRules_dynamicItemName
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_listData_carRules_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_carRules_dynamicItemName object,
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
  GallThreadsFragmentData_listData_carRules_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder();

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

class _$GallThreadsFragmentData_listData_carFeaturesSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_carFeatures> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_carFeatures,
    _$GallThreadsFragmentData_listData_carFeatures
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_carFeatures';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_carFeatures object,
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
                GallThreadsFragmentData_listData_carFeatures_dynamicItemName)));
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
  GallThreadsFragmentData_listData_carFeatures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_carFeaturesBuilder();

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
                      GallThreadsFragmentData_listData_carFeatures_dynamicItemName))!
              as GallThreadsFragmentData_listData_carFeatures_dynamicItemName);
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

class _$GallThreadsFragmentData_listData_carFeatures_dynamicItemNameSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_listData_carFeatures_dynamicItemName> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_carFeatures_dynamicItemName,
    _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_listData_carFeatures_dynamicItemName';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_carFeatures_dynamicItemName object,
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
  GallThreadsFragmentData_listData_carFeatures_dynamicItemName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder();

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

class _$GallThreadsFragmentData_listData_listPhotosSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_listPhotos> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_listPhotos,
    _$GallThreadsFragmentData_listData_listPhotos
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_listPhotos';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_listPhotos object,
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
  GallThreadsFragmentData_listData_listPhotos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_listPhotosBuilder();

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

class _$GallThreadsFragmentData_listData_listingDataSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_listData_listingData> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_listData_listingData,
    _$GallThreadsFragmentData_listData_listingData
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_listData_listingData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_listData_listingData object,
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
  GallThreadsFragmentData_listData_listingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_listData_listingDataBuilder();

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

class _$GallThreadsFragmentData_threadItemSerializer
    implements StructuredSerializer<GallThreadsFragmentData_threadItem> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_threadItem,
    _$GallThreadsFragmentData_threadItem
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_threadItem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentData_threadItem object,
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
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sentBy;
    if (value != null) {
      result
        ..add('sentBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
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
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isRead;
    if (value != null) {
      result
        ..add('isRead')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  GallThreadsFragmentData_threadItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_threadItemBuilder();

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
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sentBy':
          result.sentBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isRead':
          result.isRead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$GallThreadsFragmentData_guestProfileSerializer
    implements StructuredSerializer<GallThreadsFragmentData_guestProfile> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_guestProfile,
    _$GallThreadsFragmentData_guestProfile
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_guestProfile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentData_guestProfile object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_guestProfile_userData)));
    }
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GallThreadsFragmentData_guestProfile_userVerification)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullPhoneNumber;
    if (value != null) {
      result
        ..add('fullPhoneNumber')
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
  GallThreadsFragmentData_guestProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_guestProfileBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_guestProfile_userData))!
              as GallThreadsFragmentData_guestProfile_userData);
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_guestProfile_userVerification))!
              as GallThreadsFragmentData_guestProfile_userVerification);
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullPhoneNumber':
          result.fullPhoneNumber = serializers.deserialize(value,
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

class _$GallThreadsFragmentData_guestProfile_userDataSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_guestProfile_userData> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_guestProfile_userData,
    _$GallThreadsFragmentData_guestProfile_userData
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_guestProfile_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_guestProfile_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GallThreadsFragmentData_guestProfile_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_guestProfile_userDataBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallThreadsFragmentData_guestProfile_userVerificationSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_guestProfile_userVerification> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_guestProfile_userVerification,
    _$GallThreadsFragmentData_guestProfile_userVerification
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_guestProfile_userVerification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_guestProfile_userVerification object,
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
  GallThreadsFragmentData_guestProfile_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_guestProfile_userVerificationBuilder();

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

class _$GallThreadsFragmentData_hostProfileSerializer
    implements StructuredSerializer<GallThreadsFragmentData_hostProfile> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_hostProfile,
    _$GallThreadsFragmentData_hostProfile
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_hostProfile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallThreadsFragmentData_hostProfile object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GallThreadsFragmentData_hostProfile_userData)));
    }
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GallThreadsFragmentData_hostProfile_userVerification)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullPhoneNumber;
    if (value != null) {
      result
        ..add('fullPhoneNumber')
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
  GallThreadsFragmentData_hostProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_hostProfileBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_hostProfile_userData))!
              as GallThreadsFragmentData_hostProfile_userData);
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GallThreadsFragmentData_hostProfile_userVerification))!
              as GallThreadsFragmentData_hostProfile_userVerification);
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullPhoneNumber':
          result.fullPhoneNumber = serializers.deserialize(value,
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

class _$GallThreadsFragmentData_hostProfile_userDataSerializer
    implements
        StructuredSerializer<GallThreadsFragmentData_hostProfile_userData> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_hostProfile_userData,
    _$GallThreadsFragmentData_hostProfile_userData
  ];
  @override
  final String wireName = 'GallThreadsFragmentData_hostProfile_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_hostProfile_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GallThreadsFragmentData_hostProfile_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallThreadsFragmentData_hostProfile_userDataBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GallThreadsFragmentData_hostProfile_userVerificationSerializer
    implements
        StructuredSerializer<
            GallThreadsFragmentData_hostProfile_userVerification> {
  @override
  final Iterable<Type> types = const [
    GallThreadsFragmentData_hostProfile_userVerification,
    _$GallThreadsFragmentData_hostProfile_userVerification
  ];
  @override
  final String wireName =
      'GallThreadsFragmentData_hostProfile_userVerification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GallThreadsFragmentData_hostProfile_userVerification object,
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
  GallThreadsFragmentData_hostProfile_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GallThreadsFragmentData_hostProfile_userVerificationBuilder();

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

class _$GallThreadsFragmentData extends GallThreadsFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? threadItemsCount;
  @override
  final int? hostUnreadCount;
  @override
  final int? listId;
  @override
  final int? userBanStatus;
  @override
  final String? host;
  @override
  final String? guest;
  @override
  final String? createdAt;
  @override
  final String? status;
  @override
  final bool? isRead;
  @override
  final GallThreadsFragmentData_listData? listData;
  @override
  final GallThreadsFragmentData_threadItem? threadItem;
  @override
  final GallThreadsFragmentData_guestProfile? guestProfile;
  @override
  final GallThreadsFragmentData_hostProfile? hostProfile;

  factory _$GallThreadsFragmentData(
          [void Function(GallThreadsFragmentDataBuilder)? updates]) =>
      (new GallThreadsFragmentDataBuilder()..update(updates))._build();

  _$GallThreadsFragmentData._(
      {required this.G__typename,
      this.id,
      this.threadItemsCount,
      this.hostUnreadCount,
      this.listId,
      this.userBanStatus,
      this.host,
      this.guest,
      this.createdAt,
      this.status,
      this.isRead,
      this.listData,
      this.threadItem,
      this.guestProfile,
      this.hostProfile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallThreadsFragmentData', 'G__typename');
  }

  @override
  GallThreadsFragmentData rebuild(
          void Function(GallThreadsFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentDataBuilder toBuilder() =>
      new GallThreadsFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadItemsCount == other.threadItemsCount &&
        hostUnreadCount == other.hostUnreadCount &&
        listId == other.listId &&
        userBanStatus == other.userBanStatus &&
        host == other.host &&
        guest == other.guest &&
        createdAt == other.createdAt &&
        status == other.status &&
        isRead == other.isRead &&
        listData == other.listData &&
        threadItem == other.threadItem &&
        guestProfile == other.guestProfile &&
        hostProfile == other.hostProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadItemsCount.hashCode);
    _$hash = $jc(_$hash, hostUnreadCount.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, guest.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isRead.hashCode);
    _$hash = $jc(_$hash, listData.hashCode);
    _$hash = $jc(_$hash, threadItem.hashCode);
    _$hash = $jc(_$hash, guestProfile.hashCode);
    _$hash = $jc(_$hash, hostProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallThreadsFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadItemsCount', threadItemsCount)
          ..add('hostUnreadCount', hostUnreadCount)
          ..add('listId', listId)
          ..add('userBanStatus', userBanStatus)
          ..add('host', host)
          ..add('guest', guest)
          ..add('createdAt', createdAt)
          ..add('status', status)
          ..add('isRead', isRead)
          ..add('listData', listData)
          ..add('threadItem', threadItem)
          ..add('guestProfile', guestProfile)
          ..add('hostProfile', hostProfile))
        .toString();
  }
}

class GallThreadsFragmentDataBuilder
    implements
        Builder<GallThreadsFragmentData, GallThreadsFragmentDataBuilder> {
  _$GallThreadsFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadItemsCount;
  int? get threadItemsCount => _$this._threadItemsCount;
  set threadItemsCount(int? threadItemsCount) =>
      _$this._threadItemsCount = threadItemsCount;

  int? _hostUnreadCount;
  int? get hostUnreadCount => _$this._hostUnreadCount;
  set hostUnreadCount(int? hostUnreadCount) =>
      _$this._hostUnreadCount = hostUnreadCount;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  String? _guest;
  String? get guest => _$this._guest;
  set guest(String? guest) => _$this._guest = guest;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  GallThreadsFragmentData_listDataBuilder? _listData;
  GallThreadsFragmentData_listDataBuilder get listData =>
      _$this._listData ??= new GallThreadsFragmentData_listDataBuilder();
  set listData(GallThreadsFragmentData_listDataBuilder? listData) =>
      _$this._listData = listData;

  GallThreadsFragmentData_threadItemBuilder? _threadItem;
  GallThreadsFragmentData_threadItemBuilder get threadItem =>
      _$this._threadItem ??= new GallThreadsFragmentData_threadItemBuilder();
  set threadItem(GallThreadsFragmentData_threadItemBuilder? threadItem) =>
      _$this._threadItem = threadItem;

  GallThreadsFragmentData_guestProfileBuilder? _guestProfile;
  GallThreadsFragmentData_guestProfileBuilder get guestProfile =>
      _$this._guestProfile ??=
          new GallThreadsFragmentData_guestProfileBuilder();
  set guestProfile(GallThreadsFragmentData_guestProfileBuilder? guestProfile) =>
      _$this._guestProfile = guestProfile;

  GallThreadsFragmentData_hostProfileBuilder? _hostProfile;
  GallThreadsFragmentData_hostProfileBuilder get hostProfile =>
      _$this._hostProfile ??= new GallThreadsFragmentData_hostProfileBuilder();
  set hostProfile(GallThreadsFragmentData_hostProfileBuilder? hostProfile) =>
      _$this._hostProfile = hostProfile;

  GallThreadsFragmentDataBuilder() {
    GallThreadsFragmentData._initializeBuilder(this);
  }

  GallThreadsFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadItemsCount = $v.threadItemsCount;
      _hostUnreadCount = $v.hostUnreadCount;
      _listId = $v.listId;
      _userBanStatus = $v.userBanStatus;
      _host = $v.host;
      _guest = $v.guest;
      _createdAt = $v.createdAt;
      _status = $v.status;
      _isRead = $v.isRead;
      _listData = $v.listData?.toBuilder();
      _threadItem = $v.threadItem?.toBuilder();
      _guestProfile = $v.guestProfile?.toBuilder();
      _hostProfile = $v.hostProfile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallThreadsFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData;
  }

  @override
  void update(void Function(GallThreadsFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData build() => _build();

  _$GallThreadsFragmentData _build() {
    _$GallThreadsFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GallThreadsFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallThreadsFragmentData', 'G__typename'),
              id: id,
              threadItemsCount: threadItemsCount,
              hostUnreadCount: hostUnreadCount,
              listId: listId,
              userBanStatus: userBanStatus,
              host: host,
              guest: guest,
              createdAt: createdAt,
              status: status,
              isRead: isRead,
              listData: _listData?.build(),
              threadItem: _threadItem?.build(),
              guestProfile: _guestProfile?.build(),
              hostProfile: _hostProfile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listData';
        _listData?.build();
        _$failedField = 'threadItem';
        _threadItem?.build();
        _$failedField = 'guestProfile';
        _guestProfile?.build();
        _$failedField = 'hostProfile';
        _hostProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallThreadsFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData
    extends GallThreadsFragmentData_listData {
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
  final BuiltList<GallThreadsFragmentData_listData_dynamicListingTitle?>?
      dynamicListingTitle;
  @override
  final BuiltList<GallThreadsFragmentData_listData_dynamicListingDescription?>?
      dynamicListingDescription;
  @override
  final GallThreadsFragmentData_listData_dynamicListTitle? dynamicListTitle;
  @override
  final GallThreadsFragmentData_listData_dynamicListDescription?
      dynamicListDescription;
  @override
  final GallThreadsFragmentData_listData_dynamicCarType? dynamicCarType;
  @override
  final GallThreadsFragmentData_listData_dynamicmake? dynamicmake;
  @override
  final GallThreadsFragmentData_listData_dynamicModel? dynamicModel;
  @override
  final GallThreadsFragmentData_listData_dynamicYear? dynamicYear;
  @override
  final GallThreadsFragmentData_listData_dynamicOdometer? dynamicOdometer;
  @override
  final BuiltList<GallThreadsFragmentData_listData_carRules?>? carRules;
  @override
  final BuiltList<GallThreadsFragmentData_listData_carFeatures?>? carFeatures;
  @override
  final double? lng;
  @override
  final String? listPhotoName;
  @override
  final BuiltList<GallThreadsFragmentData_listData_listPhotos?>? listPhotos;
  @override
  final GallThreadsFragmentData_listData_listingData? listingData;

  factory _$GallThreadsFragmentData_listData(
          [void Function(GallThreadsFragmentData_listDataBuilder)? updates]) =>
      (new GallThreadsFragmentData_listDataBuilder()..update(updates))._build();

  _$GallThreadsFragmentData_listData._(
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
        G__typename, r'GallThreadsFragmentData_listData', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData rebuild(
          void Function(GallThreadsFragmentData_listDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listDataBuilder toBuilder() =>
      new GallThreadsFragmentData_listDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData &&
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
    return (newBuiltValueToStringHelper(r'GallThreadsFragmentData_listData')
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

class GallThreadsFragmentData_listDataBuilder
    implements
        Builder<GallThreadsFragmentData_listData,
            GallThreadsFragmentData_listDataBuilder> {
  _$GallThreadsFragmentData_listData? _$v;

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

  ListBuilder<GallThreadsFragmentData_listData_dynamicListingTitle?>?
      _dynamicListingTitle;
  ListBuilder<GallThreadsFragmentData_listData_dynamicListingTitle?>
      get dynamicListingTitle =>
          _$this._dynamicListingTitle ??= new ListBuilder<
              GallThreadsFragmentData_listData_dynamicListingTitle?>();
  set dynamicListingTitle(
          ListBuilder<GallThreadsFragmentData_listData_dynamicListingTitle?>?
              dynamicListingTitle) =>
      _$this._dynamicListingTitle = dynamicListingTitle;

  ListBuilder<GallThreadsFragmentData_listData_dynamicListingDescription?>?
      _dynamicListingDescription;
  ListBuilder<GallThreadsFragmentData_listData_dynamicListingDescription?>
      get dynamicListingDescription =>
          _$this._dynamicListingDescription ??= new ListBuilder<
              GallThreadsFragmentData_listData_dynamicListingDescription?>();
  set dynamicListingDescription(
          ListBuilder<
                  GallThreadsFragmentData_listData_dynamicListingDescription?>?
              dynamicListingDescription) =>
      _$this._dynamicListingDescription = dynamicListingDescription;

  GallThreadsFragmentData_listData_dynamicListTitleBuilder? _dynamicListTitle;
  GallThreadsFragmentData_listData_dynamicListTitleBuilder
      get dynamicListTitle => _$this._dynamicListTitle ??=
          new GallThreadsFragmentData_listData_dynamicListTitleBuilder();
  set dynamicListTitle(
          GallThreadsFragmentData_listData_dynamicListTitleBuilder?
              dynamicListTitle) =>
      _$this._dynamicListTitle = dynamicListTitle;

  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder?
      _dynamicListDescription;
  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder
      get dynamicListDescription => _$this._dynamicListDescription ??=
          new GallThreadsFragmentData_listData_dynamicListDescriptionBuilder();
  set dynamicListDescription(
          GallThreadsFragmentData_listData_dynamicListDescriptionBuilder?
              dynamicListDescription) =>
      _$this._dynamicListDescription = dynamicListDescription;

  GallThreadsFragmentData_listData_dynamicCarTypeBuilder? _dynamicCarType;
  GallThreadsFragmentData_listData_dynamicCarTypeBuilder get dynamicCarType =>
      _$this._dynamicCarType ??=
          new GallThreadsFragmentData_listData_dynamicCarTypeBuilder();
  set dynamicCarType(
          GallThreadsFragmentData_listData_dynamicCarTypeBuilder?
              dynamicCarType) =>
      _$this._dynamicCarType = dynamicCarType;

  GallThreadsFragmentData_listData_dynamicmakeBuilder? _dynamicmake;
  GallThreadsFragmentData_listData_dynamicmakeBuilder get dynamicmake =>
      _$this._dynamicmake ??=
          new GallThreadsFragmentData_listData_dynamicmakeBuilder();
  set dynamicmake(
          GallThreadsFragmentData_listData_dynamicmakeBuilder? dynamicmake) =>
      _$this._dynamicmake = dynamicmake;

  GallThreadsFragmentData_listData_dynamicModelBuilder? _dynamicModel;
  GallThreadsFragmentData_listData_dynamicModelBuilder get dynamicModel =>
      _$this._dynamicModel ??=
          new GallThreadsFragmentData_listData_dynamicModelBuilder();
  set dynamicModel(
          GallThreadsFragmentData_listData_dynamicModelBuilder? dynamicModel) =>
      _$this._dynamicModel = dynamicModel;

  GallThreadsFragmentData_listData_dynamicYearBuilder? _dynamicYear;
  GallThreadsFragmentData_listData_dynamicYearBuilder get dynamicYear =>
      _$this._dynamicYear ??=
          new GallThreadsFragmentData_listData_dynamicYearBuilder();
  set dynamicYear(
          GallThreadsFragmentData_listData_dynamicYearBuilder? dynamicYear) =>
      _$this._dynamicYear = dynamicYear;

  GallThreadsFragmentData_listData_dynamicOdometerBuilder? _dynamicOdometer;
  GallThreadsFragmentData_listData_dynamicOdometerBuilder get dynamicOdometer =>
      _$this._dynamicOdometer ??=
          new GallThreadsFragmentData_listData_dynamicOdometerBuilder();
  set dynamicOdometer(
          GallThreadsFragmentData_listData_dynamicOdometerBuilder?
              dynamicOdometer) =>
      _$this._dynamicOdometer = dynamicOdometer;

  ListBuilder<GallThreadsFragmentData_listData_carRules?>? _carRules;
  ListBuilder<GallThreadsFragmentData_listData_carRules?> get carRules =>
      _$this._carRules ??=
          new ListBuilder<GallThreadsFragmentData_listData_carRules?>();
  set carRules(
          ListBuilder<GallThreadsFragmentData_listData_carRules?>? carRules) =>
      _$this._carRules = carRules;

  ListBuilder<GallThreadsFragmentData_listData_carFeatures?>? _carFeatures;
  ListBuilder<GallThreadsFragmentData_listData_carFeatures?> get carFeatures =>
      _$this._carFeatures ??=
          new ListBuilder<GallThreadsFragmentData_listData_carFeatures?>();
  set carFeatures(
          ListBuilder<GallThreadsFragmentData_listData_carFeatures?>?
              carFeatures) =>
      _$this._carFeatures = carFeatures;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  String? _listPhotoName;
  String? get listPhotoName => _$this._listPhotoName;
  set listPhotoName(String? listPhotoName) =>
      _$this._listPhotoName = listPhotoName;

  ListBuilder<GallThreadsFragmentData_listData_listPhotos?>? _listPhotos;
  ListBuilder<GallThreadsFragmentData_listData_listPhotos?> get listPhotos =>
      _$this._listPhotos ??=
          new ListBuilder<GallThreadsFragmentData_listData_listPhotos?>();
  set listPhotos(
          ListBuilder<GallThreadsFragmentData_listData_listPhotos?>?
              listPhotos) =>
      _$this._listPhotos = listPhotos;

  GallThreadsFragmentData_listData_listingDataBuilder? _listingData;
  GallThreadsFragmentData_listData_listingDataBuilder get listingData =>
      _$this._listingData ??=
          new GallThreadsFragmentData_listData_listingDataBuilder();
  set listingData(
          GallThreadsFragmentData_listData_listingDataBuilder? listingData) =>
      _$this._listingData = listingData;

  GallThreadsFragmentData_listDataBuilder() {
    GallThreadsFragmentData_listData._initializeBuilder(this);
  }

  GallThreadsFragmentData_listDataBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData;
  }

  @override
  void update(void Function(GallThreadsFragmentData_listDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData build() => _build();

  _$GallThreadsFragmentData_listData _build() {
    _$GallThreadsFragmentData_listData _$result;
    try {
      _$result = _$v ??
          new _$GallThreadsFragmentData_listData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GallThreadsFragmentData_listData', 'G__typename'),
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
            r'GallThreadsFragmentData_listData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData_dynamicListingTitle
    extends GallThreadsFragmentData_listData_dynamicListingTitle {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listTitle;

  factory _$GallThreadsFragmentData_listData_dynamicListingTitle(
          [void Function(
                  GallThreadsFragmentData_listData_dynamicListingTitleBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicListingTitleBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicListingTitle._(
      {required this.G__typename, this.language, this.listTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicListingTitle', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicListingTitle rebuild(
          void Function(
                  GallThreadsFragmentData_listData_dynamicListingTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicListingTitleBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicListingTitleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicListingTitle &&
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
            r'GallThreadsFragmentData_listData_dynamicListingTitle')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listTitle', listTitle))
        .toString();
  }
}

class GallThreadsFragmentData_listData_dynamicListingTitleBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicListingTitle,
            GallThreadsFragmentData_listData_dynamicListingTitleBuilder> {
  _$GallThreadsFragmentData_listData_dynamicListingTitle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _listTitle;
  String? get listTitle => _$this._listTitle;
  set listTitle(String? listTitle) => _$this._listTitle = listTitle;

  GallThreadsFragmentData_listData_dynamicListingTitleBuilder() {
    GallThreadsFragmentData_listData_dynamicListingTitle._initializeBuilder(
        this);
  }

  GallThreadsFragmentData_listData_dynamicListingTitleBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicListingTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicListingTitle;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_listData_dynamicListingTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicListingTitle build() => _build();

  _$GallThreadsFragmentData_listData_dynamicListingTitle _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicListingTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicListingTitle',
                'G__typename'),
            language: language,
            listTitle: listTitle);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData_dynamicListingDescription
    extends GallThreadsFragmentData_listData_dynamicListingDescription {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String? listDescription;

  factory _$GallThreadsFragmentData_listData_dynamicListingDescription(
          [void Function(
                  GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicListingDescription._(
      {required this.G__typename, this.language, this.listDescription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GallThreadsFragmentData_listData_dynamicListingDescription',
        'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicListingDescription rebuild(
          void Function(
                  GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder
      toBuilder() =>
          new GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GallThreadsFragmentData_listData_dynamicListingDescription &&
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
            r'GallThreadsFragmentData_listData_dynamicListingDescription')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('listDescription', listDescription))
        .toString();
  }
}

class GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicListingDescription,
            GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder> {
  _$GallThreadsFragmentData_listData_dynamicListingDescription? _$v;

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

  GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder() {
    GallThreadsFragmentData_listData_dynamicListingDescription
        ._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder get _$this {
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
      GallThreadsFragmentData_listData_dynamicListingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicListingDescription;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicListingDescription build() =>
      _build();

  _$GallThreadsFragmentData_listData_dynamicListingDescription _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicListingDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicListingDescription',
                'G__typename'),
            language: language,
            listDescription: listDescription);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData_dynamicListTitle
    extends GallThreadsFragmentData_listData_dynamicListTitle {
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

  factory _$GallThreadsFragmentData_listData_dynamicListTitle(
          [void Function(
                  GallThreadsFragmentData_listData_dynamicListTitleBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicListTitleBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicListTitle._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicListTitle', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicListTitle rebuild(
          void Function(
                  GallThreadsFragmentData_listData_dynamicListTitleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicListTitleBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicListTitleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicListTitle &&
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
            r'GallThreadsFragmentData_listData_dynamicListTitle')
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

class GallThreadsFragmentData_listData_dynamicListTitleBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicListTitle,
            GallThreadsFragmentData_listData_dynamicListTitleBuilder> {
  _$GallThreadsFragmentData_listData_dynamicListTitle? _$v;

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

  GallThreadsFragmentData_listData_dynamicListTitleBuilder() {
    GallThreadsFragmentData_listData_dynamicListTitle._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicListTitleBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicListTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicListTitle;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_dynamicListTitleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicListTitle build() => _build();

  _$GallThreadsFragmentData_listData_dynamicListTitle _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicListTitle._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicListTitle',
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

class _$GallThreadsFragmentData_listData_dynamicListDescription
    extends GallThreadsFragmentData_listData_dynamicListDescription {
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

  factory _$GallThreadsFragmentData_listData_dynamicListDescription(
          [void Function(
                  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicListDescriptionBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicListDescription._(
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
        r'GallThreadsFragmentData_listData_dynamicListDescription',
        'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicListDescription rebuild(
          void Function(
                  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicListDescriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicListDescription &&
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
            r'GallThreadsFragmentData_listData_dynamicListDescription')
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

class GallThreadsFragmentData_listData_dynamicListDescriptionBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicListDescription,
            GallThreadsFragmentData_listData_dynamicListDescriptionBuilder> {
  _$GallThreadsFragmentData_listData_dynamicListDescription? _$v;

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

  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder() {
    GallThreadsFragmentData_listData_dynamicListDescription._initializeBuilder(
        this);
  }

  GallThreadsFragmentData_listData_dynamicListDescriptionBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicListDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicListDescription;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_listData_dynamicListDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicListDescription build() => _build();

  _$GallThreadsFragmentData_listData_dynamicListDescription _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicListDescription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicListDescription',
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

class _$GallThreadsFragmentData_listData_dynamicCarType
    extends GallThreadsFragmentData_listData_dynamicCarType {
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

  factory _$GallThreadsFragmentData_listData_dynamicCarType(
          [void Function(
                  GallThreadsFragmentData_listData_dynamicCarTypeBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicCarTypeBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicCarType._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicCarType', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicCarType rebuild(
          void Function(GallThreadsFragmentData_listData_dynamicCarTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicCarTypeBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicCarTypeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicCarType &&
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
            r'GallThreadsFragmentData_listData_dynamicCarType')
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

class GallThreadsFragmentData_listData_dynamicCarTypeBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicCarType,
            GallThreadsFragmentData_listData_dynamicCarTypeBuilder> {
  _$GallThreadsFragmentData_listData_dynamicCarType? _$v;

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

  GallThreadsFragmentData_listData_dynamicCarTypeBuilder() {
    GallThreadsFragmentData_listData_dynamicCarType._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicCarTypeBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicCarType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicCarType;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_dynamicCarTypeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicCarType build() => _build();

  _$GallThreadsFragmentData_listData_dynamicCarType _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicCarType._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicCarType',
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

class _$GallThreadsFragmentData_listData_dynamicmake
    extends GallThreadsFragmentData_listData_dynamicmake {
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

  factory _$GallThreadsFragmentData_listData_dynamicmake(
          [void Function(GallThreadsFragmentData_listData_dynamicmakeBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicmakeBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicmake._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicmake', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicmake rebuild(
          void Function(GallThreadsFragmentData_listData_dynamicmakeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicmakeBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicmakeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicmake &&
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
            r'GallThreadsFragmentData_listData_dynamicmake')
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

class GallThreadsFragmentData_listData_dynamicmakeBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicmake,
            GallThreadsFragmentData_listData_dynamicmakeBuilder> {
  _$GallThreadsFragmentData_listData_dynamicmake? _$v;

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

  GallThreadsFragmentData_listData_dynamicmakeBuilder() {
    GallThreadsFragmentData_listData_dynamicmake._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicmakeBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicmake other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicmake;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_dynamicmakeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicmake build() => _build();

  _$GallThreadsFragmentData_listData_dynamicmake _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicmake._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallThreadsFragmentData_listData_dynamicmake', 'G__typename'),
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

class _$GallThreadsFragmentData_listData_dynamicModel
    extends GallThreadsFragmentData_listData_dynamicModel {
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

  factory _$GallThreadsFragmentData_listData_dynamicModel(
          [void Function(GallThreadsFragmentData_listData_dynamicModelBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicModelBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicModel._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicModel', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicModel rebuild(
          void Function(GallThreadsFragmentData_listData_dynamicModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicModelBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicModel &&
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
            r'GallThreadsFragmentData_listData_dynamicModel')
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

class GallThreadsFragmentData_listData_dynamicModelBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicModel,
            GallThreadsFragmentData_listData_dynamicModelBuilder> {
  _$GallThreadsFragmentData_listData_dynamicModel? _$v;

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

  GallThreadsFragmentData_listData_dynamicModelBuilder() {
    GallThreadsFragmentData_listData_dynamicModel._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicModelBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicModel;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_dynamicModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicModel build() => _build();

  _$GallThreadsFragmentData_listData_dynamicModel _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicModel._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicModel',
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

class _$GallThreadsFragmentData_listData_dynamicYear
    extends GallThreadsFragmentData_listData_dynamicYear {
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

  factory _$GallThreadsFragmentData_listData_dynamicYear(
          [void Function(GallThreadsFragmentData_listData_dynamicYearBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicYearBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicYear._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicYear', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicYear rebuild(
          void Function(GallThreadsFragmentData_listData_dynamicYearBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicYearBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicYearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicYear &&
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
            r'GallThreadsFragmentData_listData_dynamicYear')
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

class GallThreadsFragmentData_listData_dynamicYearBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicYear,
            GallThreadsFragmentData_listData_dynamicYearBuilder> {
  _$GallThreadsFragmentData_listData_dynamicYear? _$v;

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

  GallThreadsFragmentData_listData_dynamicYearBuilder() {
    GallThreadsFragmentData_listData_dynamicYear._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicYearBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicYear other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicYear;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_dynamicYearBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicYear build() => _build();

  _$GallThreadsFragmentData_listData_dynamicYear _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicYear._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallThreadsFragmentData_listData_dynamicYear', 'G__typename'),
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

class _$GallThreadsFragmentData_listData_dynamicOdometer
    extends GallThreadsFragmentData_listData_dynamicOdometer {
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

  factory _$GallThreadsFragmentData_listData_dynamicOdometer(
          [void Function(
                  GallThreadsFragmentData_listData_dynamicOdometerBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_dynamicOdometerBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_dynamicOdometer._(
      {required this.G__typename,
      this.en,
      this.ar,
      this.es,
      this.fr,
      this.it,
      this.pt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_dynamicOdometer', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_dynamicOdometer rebuild(
          void Function(GallThreadsFragmentData_listData_dynamicOdometerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_dynamicOdometerBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_dynamicOdometerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_dynamicOdometer &&
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
            r'GallThreadsFragmentData_listData_dynamicOdometer')
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

class GallThreadsFragmentData_listData_dynamicOdometerBuilder
    implements
        Builder<GallThreadsFragmentData_listData_dynamicOdometer,
            GallThreadsFragmentData_listData_dynamicOdometerBuilder> {
  _$GallThreadsFragmentData_listData_dynamicOdometer? _$v;

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

  GallThreadsFragmentData_listData_dynamicOdometerBuilder() {
    GallThreadsFragmentData_listData_dynamicOdometer._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_dynamicOdometerBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_dynamicOdometer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_dynamicOdometer;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_dynamicOdometerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_dynamicOdometer build() => _build();

  _$GallThreadsFragmentData_listData_dynamicOdometer _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_dynamicOdometer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_dynamicOdometer',
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

class _$GallThreadsFragmentData_listData_carRules
    extends GallThreadsFragmentData_listData_carRules {
  @override
  final String G__typename;
  @override
  final GallThreadsFragmentData_listData_carRules_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GallThreadsFragmentData_listData_carRules(
          [void Function(GallThreadsFragmentData_listData_carRulesBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_carRulesBuilder()..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_carRules._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_carRules', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_carRules rebuild(
          void Function(GallThreadsFragmentData_listData_carRulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_carRulesBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_carRulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_carRules &&
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
            r'GallThreadsFragmentData_listData_carRules')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GallThreadsFragmentData_listData_carRulesBuilder
    implements
        Builder<GallThreadsFragmentData_listData_carRules,
            GallThreadsFragmentData_listData_carRulesBuilder> {
  _$GallThreadsFragmentData_listData_carRules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder?
      _dynamicItemName;
  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder();
  set dynamicItemName(
          GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GallThreadsFragmentData_listData_carRulesBuilder() {
    GallThreadsFragmentData_listData_carRules._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_carRulesBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_carRules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_carRules;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_carRulesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_carRules build() => _build();

  _$GallThreadsFragmentData_listData_carRules _build() {
    _$GallThreadsFragmentData_listData_carRules _$result;
    try {
      _$result = _$v ??
          new _$GallThreadsFragmentData_listData_carRules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GallThreadsFragmentData_listData_carRules', 'G__typename'),
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
            r'GallThreadsFragmentData_listData_carRules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData_carRules_dynamicItemName
    extends GallThreadsFragmentData_listData_carRules_dynamicItemName {
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

  factory _$GallThreadsFragmentData_listData_carRules_dynamicItemName(
          [void Function(
                  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_carRules_dynamicItemName._(
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
        r'GallThreadsFragmentData_listData_carRules_dynamicItemName',
        'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_carRules_dynamicItemName rebuild(
          void Function(
                  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder
      toBuilder() =>
          new GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_carRules_dynamicItemName &&
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
            r'GallThreadsFragmentData_listData_carRules_dynamicItemName')
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

class GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder
    implements
        Builder<GallThreadsFragmentData_listData_carRules_dynamicItemName,
            GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder> {
  _$GallThreadsFragmentData_listData_carRules_dynamicItemName? _$v;

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

  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder() {
    GallThreadsFragmentData_listData_carRules_dynamicItemName
        ._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder get _$this {
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
      GallThreadsFragmentData_listData_carRules_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_carRules_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_carRules_dynamicItemName build() => _build();

  _$GallThreadsFragmentData_listData_carRules_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_carRules_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_carRules_dynamicItemName',
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

class _$GallThreadsFragmentData_listData_carFeatures
    extends GallThreadsFragmentData_listData_carFeatures {
  @override
  final String G__typename;
  @override
  final GallThreadsFragmentData_listData_carFeatures_dynamicItemName?
      dynamicItemName;
  @override
  final int? id;
  @override
  final String? itemName;

  factory _$GallThreadsFragmentData_listData_carFeatures(
          [void Function(GallThreadsFragmentData_listData_carFeaturesBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_carFeaturesBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_carFeatures._(
      {required this.G__typename, this.dynamicItemName, this.id, this.itemName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_carFeatures', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_carFeatures rebuild(
          void Function(GallThreadsFragmentData_listData_carFeaturesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_carFeaturesBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_carFeaturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_carFeatures &&
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
            r'GallThreadsFragmentData_listData_carFeatures')
          ..add('G__typename', G__typename)
          ..add('dynamicItemName', dynamicItemName)
          ..add('id', id)
          ..add('itemName', itemName))
        .toString();
  }
}

class GallThreadsFragmentData_listData_carFeaturesBuilder
    implements
        Builder<GallThreadsFragmentData_listData_carFeatures,
            GallThreadsFragmentData_listData_carFeaturesBuilder> {
  _$GallThreadsFragmentData_listData_carFeatures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder?
      _dynamicItemName;
  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder
      get dynamicItemName => _$this._dynamicItemName ??=
          new GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder();
  set dynamicItemName(
          GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder?
              dynamicItemName) =>
      _$this._dynamicItemName = dynamicItemName;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  GallThreadsFragmentData_listData_carFeaturesBuilder() {
    GallThreadsFragmentData_listData_carFeatures._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_carFeaturesBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_carFeatures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_carFeatures;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_carFeaturesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_carFeatures build() => _build();

  _$GallThreadsFragmentData_listData_carFeatures _build() {
    _$GallThreadsFragmentData_listData_carFeatures _$result;
    try {
      _$result = _$v ??
          new _$GallThreadsFragmentData_listData_carFeatures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GallThreadsFragmentData_listData_carFeatures',
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
            r'GallThreadsFragmentData_listData_carFeatures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName
    extends GallThreadsFragmentData_listData_carFeatures_dynamicItemName {
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

  factory _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName(
          [void Function(
                  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName._(
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
        r'GallThreadsFragmentData_listData_carFeatures_dynamicItemName',
        'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_carFeatures_dynamicItemName rebuild(
          void Function(
                  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder
      toBuilder() =>
          new GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GallThreadsFragmentData_listData_carFeatures_dynamicItemName &&
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
            r'GallThreadsFragmentData_listData_carFeatures_dynamicItemName')
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

class GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder
    implements
        Builder<GallThreadsFragmentData_listData_carFeatures_dynamicItemName,
            GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder> {
  _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName? _$v;

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

  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder() {
    GallThreadsFragmentData_listData_carFeatures_dynamicItemName
        ._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder
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
      GallThreadsFragmentData_listData_carFeatures_dynamicItemName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_carFeatures_dynamicItemName build() =>
      _build();

  _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_listData_carFeatures_dynamicItemName',
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

class _$GallThreadsFragmentData_listData_listPhotos
    extends GallThreadsFragmentData_listData_listPhotos {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? name;

  factory _$GallThreadsFragmentData_listData_listPhotos(
          [void Function(GallThreadsFragmentData_listData_listPhotosBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_listPhotosBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_listPhotos._(
      {required this.G__typename, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_listPhotos', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_listPhotos rebuild(
          void Function(GallThreadsFragmentData_listData_listPhotosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_listPhotosBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_listPhotosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_listPhotos &&
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
            r'GallThreadsFragmentData_listData_listPhotos')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GallThreadsFragmentData_listData_listPhotosBuilder
    implements
        Builder<GallThreadsFragmentData_listData_listPhotos,
            GallThreadsFragmentData_listData_listPhotosBuilder> {
  _$GallThreadsFragmentData_listData_listPhotos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GallThreadsFragmentData_listData_listPhotosBuilder() {
    GallThreadsFragmentData_listData_listPhotos._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_listPhotosBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_listPhotos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_listPhotos;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_listPhotosBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_listPhotos build() => _build();

  _$GallThreadsFragmentData_listData_listPhotos _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_listPhotos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallThreadsFragmentData_listData_listPhotos', 'G__typename'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_listData_listingData
    extends GallThreadsFragmentData_listData_listingData {
  @override
  final String G__typename;
  @override
  final double? basePrice;
  @override
  final String? currency;

  factory _$GallThreadsFragmentData_listData_listingData(
          [void Function(GallThreadsFragmentData_listData_listingDataBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_listData_listingDataBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_listData_listingData._(
      {required this.G__typename, this.basePrice, this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_listData_listingData', 'G__typename');
  }

  @override
  GallThreadsFragmentData_listData_listingData rebuild(
          void Function(GallThreadsFragmentData_listData_listingDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_listData_listingDataBuilder toBuilder() =>
      new GallThreadsFragmentData_listData_listingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_listData_listingData &&
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
            r'GallThreadsFragmentData_listData_listingData')
          ..add('G__typename', G__typename)
          ..add('basePrice', basePrice)
          ..add('currency', currency))
        .toString();
  }
}

class GallThreadsFragmentData_listData_listingDataBuilder
    implements
        Builder<GallThreadsFragmentData_listData_listingData,
            GallThreadsFragmentData_listData_listingDataBuilder> {
  _$GallThreadsFragmentData_listData_listingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  GallThreadsFragmentData_listData_listingDataBuilder() {
    GallThreadsFragmentData_listData_listingData._initializeBuilder(this);
  }

  GallThreadsFragmentData_listData_listingDataBuilder get _$this {
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
  void replace(GallThreadsFragmentData_listData_listingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_listData_listingData;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_listData_listingDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_listData_listingData build() => _build();

  _$GallThreadsFragmentData_listData_listingData _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_listData_listingData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallThreadsFragmentData_listData_listingData', 'G__typename'),
            basePrice: basePrice,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_threadItem
    extends GallThreadsFragmentData_threadItem {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? threadId;
  @override
  final int? reservationId;
  @override
  final String? sentBy;
  @override
  final String? content;
  @override
  final String? type;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final double? startTime;
  @override
  final double? endTime;
  @override
  final int? personCapacity;
  @override
  final bool? isRead;
  @override
  final String? createdAt;
  @override
  final int? status;
  @override
  final int? userBanStatus;

  factory _$GallThreadsFragmentData_threadItem(
          [void Function(GallThreadsFragmentData_threadItemBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_threadItemBuilder()..update(updates))
          ._build();

  _$GallThreadsFragmentData_threadItem._(
      {required this.G__typename,
      this.id,
      this.threadId,
      this.reservationId,
      this.sentBy,
      this.content,
      this.type,
      this.startDate,
      this.endDate,
      this.startTime,
      this.endTime,
      this.personCapacity,
      this.isRead,
      this.createdAt,
      this.status,
      this.userBanStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallThreadsFragmentData_threadItem', 'G__typename');
  }

  @override
  GallThreadsFragmentData_threadItem rebuild(
          void Function(GallThreadsFragmentData_threadItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_threadItemBuilder toBuilder() =>
      new GallThreadsFragmentData_threadItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_threadItem &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        reservationId == other.reservationId &&
        sentBy == other.sentBy &&
        content == other.content &&
        type == other.type &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        personCapacity == other.personCapacity &&
        isRead == other.isRead &&
        createdAt == other.createdAt &&
        status == other.status &&
        userBanStatus == other.userBanStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, sentBy.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, isRead.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallThreadsFragmentData_threadItem')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('reservationId', reservationId)
          ..add('sentBy', sentBy)
          ..add('content', content)
          ..add('type', type)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('personCapacity', personCapacity)
          ..add('isRead', isRead)
          ..add('createdAt', createdAt)
          ..add('status', status)
          ..add('userBanStatus', userBanStatus))
        .toString();
  }
}

class GallThreadsFragmentData_threadItemBuilder
    implements
        Builder<GallThreadsFragmentData_threadItem,
            GallThreadsFragmentData_threadItemBuilder> {
  _$GallThreadsFragmentData_threadItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _sentBy;
  String? get sentBy => _$this._sentBy;
  set sentBy(String? sentBy) => _$this._sentBy = sentBy;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  int? _personCapacity;
  int? get personCapacity => _$this._personCapacity;
  set personCapacity(int? personCapacity) =>
      _$this._personCapacity = personCapacity;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  GallThreadsFragmentData_threadItemBuilder() {
    GallThreadsFragmentData_threadItem._initializeBuilder(this);
  }

  GallThreadsFragmentData_threadItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadId = $v.threadId;
      _reservationId = $v.reservationId;
      _sentBy = $v.sentBy;
      _content = $v.content;
      _type = $v.type;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _personCapacity = $v.personCapacity;
      _isRead = $v.isRead;
      _createdAt = $v.createdAt;
      _status = $v.status;
      _userBanStatus = $v.userBanStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallThreadsFragmentData_threadItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_threadItem;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_threadItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_threadItem build() => _build();

  _$GallThreadsFragmentData_threadItem _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_threadItem._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallThreadsFragmentData_threadItem', 'G__typename'),
            id: id,
            threadId: threadId,
            reservationId: reservationId,
            sentBy: sentBy,
            content: content,
            type: type,
            startDate: startDate,
            endDate: endDate,
            startTime: startTime,
            endTime: endTime,
            personCapacity: personCapacity,
            isRead: isRead,
            createdAt: createdAt,
            status: status,
            userBanStatus: userBanStatus);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_guestProfile
    extends GallThreadsFragmentData_guestProfile {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final GallThreadsFragmentData_guestProfile_userData? userData;
  @override
  final GallThreadsFragmentData_guestProfile_userVerification? userVerification;
  @override
  final int? reviewsCount;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? dateOfBirth;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? fullPhoneNumber;
  @override
  final String? info;
  @override
  final String? createdAt;

  factory _$GallThreadsFragmentData_guestProfile(
          [void Function(GallThreadsFragmentData_guestProfileBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_guestProfileBuilder()..update(updates))
          ._build();

  _$GallThreadsFragmentData_guestProfile._(
      {required this.G__typename,
      this.id,
      this.userData,
      this.userVerification,
      this.reviewsCount,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.dateOfBirth,
      this.picture,
      this.location,
      this.phoneNumber,
      this.fullPhoneNumber,
      this.info,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallThreadsFragmentData_guestProfile', 'G__typename');
  }

  @override
  GallThreadsFragmentData_guestProfile rebuild(
          void Function(GallThreadsFragmentData_guestProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_guestProfileBuilder toBuilder() =>
      new GallThreadsFragmentData_guestProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_guestProfile &&
        G__typename == other.G__typename &&
        id == other.id &&
        userData == other.userData &&
        userVerification == other.userVerification &&
        reviewsCount == other.reviewsCount &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        dateOfBirth == other.dateOfBirth &&
        picture == other.picture &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        fullPhoneNumber == other.fullPhoneNumber &&
        info == other.info &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, fullPhoneNumber.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallThreadsFragmentData_guestProfile')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userData', userData)
          ..add('userVerification', userVerification)
          ..add('reviewsCount', reviewsCount)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('picture', picture)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('fullPhoneNumber', fullPhoneNumber)
          ..add('info', info)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GallThreadsFragmentData_guestProfileBuilder
    implements
        Builder<GallThreadsFragmentData_guestProfile,
            GallThreadsFragmentData_guestProfileBuilder> {
  _$GallThreadsFragmentData_guestProfile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GallThreadsFragmentData_guestProfile_userDataBuilder? _userData;
  GallThreadsFragmentData_guestProfile_userDataBuilder get userData =>
      _$this._userData ??=
          new GallThreadsFragmentData_guestProfile_userDataBuilder();
  set userData(
          GallThreadsFragmentData_guestProfile_userDataBuilder? userData) =>
      _$this._userData = userData;

  GallThreadsFragmentData_guestProfile_userVerificationBuilder?
      _userVerification;
  GallThreadsFragmentData_guestProfile_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GallThreadsFragmentData_guestProfile_userVerificationBuilder();
  set userVerification(
          GallThreadsFragmentData_guestProfile_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

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

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _fullPhoneNumber;
  String? get fullPhoneNumber => _$this._fullPhoneNumber;
  set fullPhoneNumber(String? fullPhoneNumber) =>
      _$this._fullPhoneNumber = fullPhoneNumber;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GallThreadsFragmentData_guestProfileBuilder() {
    GallThreadsFragmentData_guestProfile._initializeBuilder(this);
  }

  GallThreadsFragmentData_guestProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userData = $v.userData?.toBuilder();
      _userVerification = $v.userVerification?.toBuilder();
      _reviewsCount = $v.reviewsCount;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _dateOfBirth = $v.dateOfBirth;
      _picture = $v.picture;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _fullPhoneNumber = $v.fullPhoneNumber;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallThreadsFragmentData_guestProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_guestProfile;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_guestProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_guestProfile build() => _build();

  _$GallThreadsFragmentData_guestProfile _build() {
    _$GallThreadsFragmentData_guestProfile _$result;
    try {
      _$result = _$v ??
          new _$GallThreadsFragmentData_guestProfile._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GallThreadsFragmentData_guestProfile', 'G__typename'),
              id: id,
              userData: _userData?.build(),
              userVerification: _userVerification?.build(),
              reviewsCount: reviewsCount,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              dateOfBirth: dateOfBirth,
              picture: picture,
              location: location,
              phoneNumber: phoneNumber,
              fullPhoneNumber: fullPhoneNumber,
              info: info,
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallThreadsFragmentData_guestProfile',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_guestProfile_userData
    extends GallThreadsFragmentData_guestProfile_userData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? email;
  @override
  final int? userBanStatus;
  @override
  final String? gender;

  factory _$GallThreadsFragmentData_guestProfile_userData(
          [void Function(GallThreadsFragmentData_guestProfile_userDataBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_guestProfile_userDataBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_guestProfile_userData._(
      {required this.G__typename,
      required this.id,
      this.email,
      this.userBanStatus,
      this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_guestProfile_userData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GallThreadsFragmentData_guestProfile_userData', 'id');
  }

  @override
  GallThreadsFragmentData_guestProfile_userData rebuild(
          void Function(GallThreadsFragmentData_guestProfile_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_guestProfile_userDataBuilder toBuilder() =>
      new GallThreadsFragmentData_guestProfile_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_guestProfile_userData &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        userBanStatus == other.userBanStatus &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GallThreadsFragmentData_guestProfile_userData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('userBanStatus', userBanStatus)
          ..add('gender', gender))
        .toString();
  }
}

class GallThreadsFragmentData_guestProfile_userDataBuilder
    implements
        Builder<GallThreadsFragmentData_guestProfile_userData,
            GallThreadsFragmentData_guestProfile_userDataBuilder> {
  _$GallThreadsFragmentData_guestProfile_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GallThreadsFragmentData_guestProfile_userDataBuilder() {
    GallThreadsFragmentData_guestProfile_userData._initializeBuilder(this);
  }

  GallThreadsFragmentData_guestProfile_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _userBanStatus = $v.userBanStatus;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallThreadsFragmentData_guestProfile_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_guestProfile_userData;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_guestProfile_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_guestProfile_userData build() => _build();

  _$GallThreadsFragmentData_guestProfile_userData _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_guestProfile_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_guestProfile_userData',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GallThreadsFragmentData_guestProfile_userData', 'id'),
            email: email,
            userBanStatus: userBanStatus,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_guestProfile_userVerification
    extends GallThreadsFragmentData_guestProfile_userVerification {
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

  factory _$GallThreadsFragmentData_guestProfile_userVerification(
          [void Function(
                  GallThreadsFragmentData_guestProfile_userVerificationBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_guestProfile_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_guestProfile_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GallThreadsFragmentData_guestProfile_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(userId,
        r'GallThreadsFragmentData_guestProfile_userVerification', 'userId');
  }

  @override
  GallThreadsFragmentData_guestProfile_userVerification rebuild(
          void Function(
                  GallThreadsFragmentData_guestProfile_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_guestProfile_userVerificationBuilder toBuilder() =>
      new GallThreadsFragmentData_guestProfile_userVerificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_guestProfile_userVerification &&
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
            r'GallThreadsFragmentData_guestProfile_userVerification')
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

class GallThreadsFragmentData_guestProfile_userVerificationBuilder
    implements
        Builder<GallThreadsFragmentData_guestProfile_userVerification,
            GallThreadsFragmentData_guestProfile_userVerificationBuilder> {
  _$GallThreadsFragmentData_guestProfile_userVerification? _$v;

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

  GallThreadsFragmentData_guestProfile_userVerificationBuilder() {
    GallThreadsFragmentData_guestProfile_userVerification._initializeBuilder(
        this);
  }

  GallThreadsFragmentData_guestProfile_userVerificationBuilder get _$this {
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
  void replace(GallThreadsFragmentData_guestProfile_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_guestProfile_userVerification;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_guestProfile_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_guestProfile_userVerification build() => _build();

  _$GallThreadsFragmentData_guestProfile_userVerification _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_guestProfile_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_guestProfile_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GallThreadsFragmentData_guestProfile_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_hostProfile
    extends GallThreadsFragmentData_hostProfile {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final GallThreadsFragmentData_hostProfile_userData? userData;
  @override
  final GallThreadsFragmentData_hostProfile_userVerification? userVerification;
  @override
  final int? reviewsCount;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? dateOfBirth;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? fullPhoneNumber;
  @override
  final String? info;
  @override
  final String? createdAt;

  factory _$GallThreadsFragmentData_hostProfile(
          [void Function(GallThreadsFragmentData_hostProfileBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_hostProfileBuilder()..update(updates))
          ._build();

  _$GallThreadsFragmentData_hostProfile._(
      {required this.G__typename,
      this.id,
      this.userData,
      this.userVerification,
      this.reviewsCount,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.dateOfBirth,
      this.picture,
      this.location,
      this.phoneNumber,
      this.fullPhoneNumber,
      this.info,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallThreadsFragmentData_hostProfile', 'G__typename');
  }

  @override
  GallThreadsFragmentData_hostProfile rebuild(
          void Function(GallThreadsFragmentData_hostProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_hostProfileBuilder toBuilder() =>
      new GallThreadsFragmentData_hostProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_hostProfile &&
        G__typename == other.G__typename &&
        id == other.id &&
        userData == other.userData &&
        userVerification == other.userVerification &&
        reviewsCount == other.reviewsCount &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        dateOfBirth == other.dateOfBirth &&
        picture == other.picture &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        fullPhoneNumber == other.fullPhoneNumber &&
        info == other.info &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, fullPhoneNumber.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallThreadsFragmentData_hostProfile')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userData', userData)
          ..add('userVerification', userVerification)
          ..add('reviewsCount', reviewsCount)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('picture', picture)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('fullPhoneNumber', fullPhoneNumber)
          ..add('info', info)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GallThreadsFragmentData_hostProfileBuilder
    implements
        Builder<GallThreadsFragmentData_hostProfile,
            GallThreadsFragmentData_hostProfileBuilder> {
  _$GallThreadsFragmentData_hostProfile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GallThreadsFragmentData_hostProfile_userDataBuilder? _userData;
  GallThreadsFragmentData_hostProfile_userDataBuilder get userData =>
      _$this._userData ??=
          new GallThreadsFragmentData_hostProfile_userDataBuilder();
  set userData(GallThreadsFragmentData_hostProfile_userDataBuilder? userData) =>
      _$this._userData = userData;

  GallThreadsFragmentData_hostProfile_userVerificationBuilder?
      _userVerification;
  GallThreadsFragmentData_hostProfile_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GallThreadsFragmentData_hostProfile_userVerificationBuilder();
  set userVerification(
          GallThreadsFragmentData_hostProfile_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

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

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _fullPhoneNumber;
  String? get fullPhoneNumber => _$this._fullPhoneNumber;
  set fullPhoneNumber(String? fullPhoneNumber) =>
      _$this._fullPhoneNumber = fullPhoneNumber;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GallThreadsFragmentData_hostProfileBuilder() {
    GallThreadsFragmentData_hostProfile._initializeBuilder(this);
  }

  GallThreadsFragmentData_hostProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userData = $v.userData?.toBuilder();
      _userVerification = $v.userVerification?.toBuilder();
      _reviewsCount = $v.reviewsCount;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _dateOfBirth = $v.dateOfBirth;
      _picture = $v.picture;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _fullPhoneNumber = $v.fullPhoneNumber;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallThreadsFragmentData_hostProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_hostProfile;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_hostProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_hostProfile build() => _build();

  _$GallThreadsFragmentData_hostProfile _build() {
    _$GallThreadsFragmentData_hostProfile _$result;
    try {
      _$result = _$v ??
          new _$GallThreadsFragmentData_hostProfile._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GallThreadsFragmentData_hostProfile', 'G__typename'),
              id: id,
              userData: _userData?.build(),
              userVerification: _userVerification?.build(),
              reviewsCount: reviewsCount,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              dateOfBirth: dateOfBirth,
              picture: picture,
              location: location,
              phoneNumber: phoneNumber,
              fullPhoneNumber: fullPhoneNumber,
              info: info,
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallThreadsFragmentData_hostProfile',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_hostProfile_userData
    extends GallThreadsFragmentData_hostProfile_userData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? email;
  @override
  final int? userBanStatus;
  @override
  final String? gender;

  factory _$GallThreadsFragmentData_hostProfile_userData(
          [void Function(GallThreadsFragmentData_hostProfile_userDataBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_hostProfile_userDataBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_hostProfile_userData._(
      {required this.G__typename,
      required this.id,
      this.email,
      this.userBanStatus,
      this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_hostProfile_userData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GallThreadsFragmentData_hostProfile_userData', 'id');
  }

  @override
  GallThreadsFragmentData_hostProfile_userData rebuild(
          void Function(GallThreadsFragmentData_hostProfile_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_hostProfile_userDataBuilder toBuilder() =>
      new GallThreadsFragmentData_hostProfile_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_hostProfile_userData &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        userBanStatus == other.userBanStatus &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GallThreadsFragmentData_hostProfile_userData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('userBanStatus', userBanStatus)
          ..add('gender', gender))
        .toString();
  }
}

class GallThreadsFragmentData_hostProfile_userDataBuilder
    implements
        Builder<GallThreadsFragmentData_hostProfile_userData,
            GallThreadsFragmentData_hostProfile_userDataBuilder> {
  _$GallThreadsFragmentData_hostProfile_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GallThreadsFragmentData_hostProfile_userDataBuilder() {
    GallThreadsFragmentData_hostProfile_userData._initializeBuilder(this);
  }

  GallThreadsFragmentData_hostProfile_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _userBanStatus = $v.userBanStatus;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallThreadsFragmentData_hostProfile_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_hostProfile_userData;
  }

  @override
  void update(
      void Function(GallThreadsFragmentData_hostProfile_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_hostProfile_userData build() => _build();

  _$GallThreadsFragmentData_hostProfile_userData _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_hostProfile_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GallThreadsFragmentData_hostProfile_userData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GallThreadsFragmentData_hostProfile_userData', 'id'),
            email: email,
            userBanStatus: userBanStatus,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

class _$GallThreadsFragmentData_hostProfile_userVerification
    extends GallThreadsFragmentData_hostProfile_userVerification {
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

  factory _$GallThreadsFragmentData_hostProfile_userVerification(
          [void Function(
                  GallThreadsFragmentData_hostProfile_userVerificationBuilder)?
              updates]) =>
      (new GallThreadsFragmentData_hostProfile_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GallThreadsFragmentData_hostProfile_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GallThreadsFragmentData_hostProfile_userVerification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(userId,
        r'GallThreadsFragmentData_hostProfile_userVerification', 'userId');
  }

  @override
  GallThreadsFragmentData_hostProfile_userVerification rebuild(
          void Function(
                  GallThreadsFragmentData_hostProfile_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallThreadsFragmentData_hostProfile_userVerificationBuilder toBuilder() =>
      new GallThreadsFragmentData_hostProfile_userVerificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallThreadsFragmentData_hostProfile_userVerification &&
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
            r'GallThreadsFragmentData_hostProfile_userVerification')
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

class GallThreadsFragmentData_hostProfile_userVerificationBuilder
    implements
        Builder<GallThreadsFragmentData_hostProfile_userVerification,
            GallThreadsFragmentData_hostProfile_userVerificationBuilder> {
  _$GallThreadsFragmentData_hostProfile_userVerification? _$v;

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

  GallThreadsFragmentData_hostProfile_userVerificationBuilder() {
    GallThreadsFragmentData_hostProfile_userVerification._initializeBuilder(
        this);
  }

  GallThreadsFragmentData_hostProfile_userVerificationBuilder get _$this {
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
  void replace(GallThreadsFragmentData_hostProfile_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallThreadsFragmentData_hostProfile_userVerification;
  }

  @override
  void update(
      void Function(
              GallThreadsFragmentData_hostProfile_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GallThreadsFragmentData_hostProfile_userVerification build() => _build();

  _$GallThreadsFragmentData_hostProfile_userVerification _build() {
    final _$result = _$v ??
        new _$GallThreadsFragmentData_hostProfile_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GallThreadsFragmentData_hostProfile_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GallThreadsFragmentData_hostProfile_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
