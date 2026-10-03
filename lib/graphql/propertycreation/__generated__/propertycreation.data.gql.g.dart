// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propertycreation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreateListingData> _$gcreateListingDataSerializer =
    new _$GcreateListingDataSerializer();
Serializer<GcreateListingData_createListing>
    _$gcreateListingDataCreateListingSerializer =
    new _$GcreateListingData_createListingSerializer();
Serializer<GcreateListingData_createListing_results>
    _$gcreateListingDataCreateListingResultsSerializer =
    new _$GcreateListingData_createListing_resultsSerializer();
Serializer<GUpdateListingStep2Data> _$gUpdateListingStep2DataSerializer =
    new _$GUpdateListingStep2DataSerializer();
Serializer<GUpdateListingStep2Data_updateListingStep2>
    _$gUpdateListingStep2DataUpdateListingStep2Serializer =
    new _$GUpdateListingStep2Data_updateListingStep2Serializer();
Serializer<GUpdateListingStep2Data_updateListingStep2_results>
    _$gUpdateListingStep2DataUpdateListingStep2ResultsSerializer =
    new _$GUpdateListingStep2Data_updateListingStep2_resultsSerializer();
Serializer<GmanagePublishStatusData> _$gmanagePublishStatusDataSerializer =
    new _$GmanagePublishStatusDataSerializer();
Serializer<GmanagePublishStatusData_managePublishStatus>
    _$gmanagePublishStatusDataManagePublishStatusSerializer =
    new _$GmanagePublishStatusData_managePublishStatusSerializer();
Serializer<GmanageListingStepsData> _$gmanageListingStepsDataSerializer =
    new _$GmanageListingStepsDataSerializer();
Serializer<GmanageListingStepsData_manageListingSteps>
    _$gmanageListingStepsDataManageListingStepsSerializer =
    new _$GmanageListingStepsData_manageListingStepsSerializer();
Serializer<GmanageListingStepsData_manageListingSteps_results>
    _$gmanageListingStepsDataManageListingStepsResultsSerializer =
    new _$GmanageListingStepsData_manageListingSteps_resultsSerializer();
Serializer<GmanageListingStepsData_manageListingSteps_results_listing>
    _$gmanageListingStepsDataManageListingStepsResultsListingSerializer =
    new _$GmanageListingStepsData_manageListingSteps_results_listingSerializer();
Serializer<GmanageListingStepsData_manageListingSteps_results_listing_user>
    _$gmanageListingStepsDataManageListingStepsResultsListingUserSerializer =
    new _$GmanageListingStepsData_manageListingSteps_results_listing_userSerializer();
Serializer<GupdateListingStep3Data> _$gupdateListingStep3DataSerializer =
    new _$GupdateListingStep3DataSerializer();
Serializer<GupdateListingStep3Data_updateListingStep3>
    _$gupdateListingStep3DataUpdateListingStep3Serializer =
    new _$GupdateListingStep3Data_updateListingStep3Serializer();
Serializer<GupdateListingStep3Data_updateListingStep3_results>
    _$gupdateListingStep3DataUpdateListingStep3ResultsSerializer =
    new _$GupdateListingStep3Data_updateListingStep3_resultsSerializer();
Serializer<GRemoveListPhotosData> _$gRemoveListPhotosDataSerializer =
    new _$GRemoveListPhotosDataSerializer();
Serializer<GRemoveListPhotosData_removeListPhotos>
    _$gRemoveListPhotosDataRemoveListPhotosSerializer =
    new _$GRemoveListPhotosData_removeListPhotosSerializer();

class _$GcreateListingDataSerializer
    implements StructuredSerializer<GcreateListingData> {
  @override
  final Iterable<Type> types = const [GcreateListingData, _$GcreateListingData];
  @override
  final String wireName = 'GcreateListingData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateListingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createListing;
    if (value != null) {
      result
        ..add('createListing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GcreateListingData_createListing)));
    }
    return result;
  }

  @override
  GcreateListingData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateListingDataBuilder();

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
        case 'createListing':
          result.createListing.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcreateListingData_createListing))!
              as GcreateListingData_createListing);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateListingData_createListingSerializer
    implements StructuredSerializer<GcreateListingData_createListing> {
  @override
  final Iterable<Type> types = const [
    GcreateListingData_createListing,
    _$GcreateListingData_createListing
  ];
  @override
  final String wireName = 'GcreateListingData_createListing';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateListingData_createListing object,
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
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GcreateListingData_createListing_results)));
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
    value = object.actionType;
    if (value != null) {
      result
        ..add('actionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GcreateListingData_createListing deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateListingData_createListingBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcreateListingData_createListing_results))!
              as GcreateListingData_createListing_results);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateListingData_createListing_resultsSerializer
    implements StructuredSerializer<GcreateListingData_createListing_results> {
  @override
  final Iterable<Type> types = const [
    GcreateListingData_createListing_results,
    _$GcreateListingData_createListing_results
  ];
  @override
  final String wireName = 'GcreateListingData_createListing_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateListingData_createListing_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.carType;
    if (value != null) {
      result
        ..add('carType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.make;
    if (value != null) {
      result
        ..add('make')
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
    value = object.year;
    if (value != null) {
      result
        ..add('year')
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
    value = object.odometer;
    if (value != null) {
      result
        ..add('odometer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.buildingName;
    if (value != null) {
      result
        ..add('buildingName')
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
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isMapTouched;
    if (value != null) {
      result
        ..add('isMapTouched')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.carFeatures;
    if (value != null) {
      result
        ..add('carFeatures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    return result;
  }

  @override
  GcreateListingData_createListing_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateListingData_createListing_resultsBuilder();

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
        case 'carType':
          result.carType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transmission':
          result.transmission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'odometer':
          result.odometer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buildingName':
          result.buildingName = serializers.deserialize(value,
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
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isMapTouched':
          result.isMapTouched = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'carFeatures':
          result.carFeatures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateListingStep2DataSerializer
    implements StructuredSerializer<GUpdateListingStep2Data> {
  @override
  final Iterable<Type> types = const [
    GUpdateListingStep2Data,
    _$GUpdateListingStep2Data
  ];
  @override
  final String wireName = 'GUpdateListingStep2Data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateListingStep2Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateListingStep2;
    if (value != null) {
      result
        ..add('updateListingStep2')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUpdateListingStep2Data_updateListingStep2)));
    }
    return result;
  }

  @override
  GUpdateListingStep2Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateListingStep2DataBuilder();

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
        case 'updateListingStep2':
          result.updateListingStep2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateListingStep2Data_updateListingStep2))!
              as GUpdateListingStep2Data_updateListingStep2);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateListingStep2Data_updateListingStep2Serializer
    implements
        StructuredSerializer<GUpdateListingStep2Data_updateListingStep2> {
  @override
  final Iterable<Type> types = const [
    GUpdateListingStep2Data_updateListingStep2,
    _$GUpdateListingStep2Data_updateListingStep2
  ];
  @override
  final String wireName = 'GUpdateListingStep2Data_updateListingStep2';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateListingStep2Data_updateListingStep2 object,
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
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUpdateListingStep2Data_updateListingStep2_results)));
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
  GUpdateListingStep2Data_updateListingStep2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateListingStep2Data_updateListingStep2Builder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateListingStep2Data_updateListingStep2_results))!
              as GUpdateListingStep2Data_updateListingStep2_results);
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

class _$GUpdateListingStep2Data_updateListingStep2_resultsSerializer
    implements
        StructuredSerializer<
            GUpdateListingStep2Data_updateListingStep2_results> {
  @override
  final Iterable<Type> types = const [
    GUpdateListingStep2Data_updateListingStep2_results,
    _$GUpdateListingStep2Data_updateListingStep2_results
  ];
  @override
  final String wireName = 'GUpdateListingStep2Data_updateListingStep2_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateListingStep2Data_updateListingStep2_results object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('coverPhoto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUpdateListingStep2Data_updateListingStep2_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUpdateListingStep2Data_updateListingStep2_resultsBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverPhoto':
          result.coverPhoto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GmanagePublishStatusDataSerializer
    implements StructuredSerializer<GmanagePublishStatusData> {
  @override
  final Iterable<Type> types = const [
    GmanagePublishStatusData,
    _$GmanagePublishStatusData
  ];
  @override
  final String wireName = 'GmanagePublishStatusData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmanagePublishStatusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.managePublishStatus;
    if (value != null) {
      result
        ..add('managePublishStatus')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GmanagePublishStatusData_managePublishStatus)));
    }
    return result;
  }

  @override
  GmanagePublishStatusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmanagePublishStatusDataBuilder();

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
        case 'managePublishStatus':
          result.managePublishStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmanagePublishStatusData_managePublishStatus))!
              as GmanagePublishStatusData_managePublishStatus);
          break;
      }
    }

    return result.build();
  }
}

class _$GmanagePublishStatusData_managePublishStatusSerializer
    implements
        StructuredSerializer<GmanagePublishStatusData_managePublishStatus> {
  @override
  final Iterable<Type> types = const [
    GmanagePublishStatusData_managePublishStatus,
    _$GmanagePublishStatusData_managePublishStatus
  ];
  @override
  final String wireName = 'GmanagePublishStatusData_managePublishStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmanagePublishStatusData_managePublishStatus object,
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
    return result;
  }

  @override
  GmanagePublishStatusData_managePublishStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmanagePublishStatusData_managePublishStatusBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GmanageListingStepsDataSerializer
    implements StructuredSerializer<GmanageListingStepsData> {
  @override
  final Iterable<Type> types = const [
    GmanageListingStepsData,
    _$GmanageListingStepsData
  ];
  @override
  final String wireName = 'GmanageListingStepsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmanageListingStepsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.manageListingSteps;
    if (value != null) {
      result
        ..add('manageListingSteps')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GmanageListingStepsData_manageListingSteps)));
    }
    return result;
  }

  @override
  GmanageListingStepsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmanageListingStepsDataBuilder();

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
        case 'manageListingSteps':
          result.manageListingSteps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmanageListingStepsData_manageListingSteps))!
              as GmanageListingStepsData_manageListingSteps);
          break;
      }
    }

    return result.build();
  }
}

class _$GmanageListingStepsData_manageListingStepsSerializer
    implements
        StructuredSerializer<GmanageListingStepsData_manageListingSteps> {
  @override
  final Iterable<Type> types = const [
    GmanageListingStepsData_manageListingSteps,
    _$GmanageListingStepsData_manageListingSteps
  ];
  @override
  final String wireName = 'GmanageListingStepsData_manageListingSteps';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmanageListingStepsData_manageListingSteps object,
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
                GmanageListingStepsData_manageListingSteps_results)));
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
  GmanageListingStepsData_manageListingSteps deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmanageListingStepsData_manageListingStepsBuilder();

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
                      GmanageListingStepsData_manageListingSteps_results))!
              as GmanageListingStepsData_manageListingSteps_results);
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

class _$GmanageListingStepsData_manageListingSteps_resultsSerializer
    implements
        StructuredSerializer<
            GmanageListingStepsData_manageListingSteps_results> {
  @override
  final Iterable<Type> types = const [
    GmanageListingStepsData_manageListingSteps_results,
    _$GmanageListingStepsData_manageListingSteps_results
  ];
  @override
  final String wireName = 'GmanageListingStepsData_manageListingSteps_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmanageListingStepsData_manageListingSteps_results object,
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
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.listing;
    if (value != null) {
      result
        ..add('listing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GmanageListingStepsData_manageListingSteps_results_listing)));
    }
    return result;
  }

  @override
  GmanageListingStepsData_manageListingSteps_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmanageListingStepsData_manageListingSteps_resultsBuilder();

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
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'listing':
          result.listing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmanageListingStepsData_manageListingSteps_results_listing))!
              as GmanageListingStepsData_manageListingSteps_results_listing);
          break;
      }
    }

    return result.build();
  }
}

class _$GmanageListingStepsData_manageListingSteps_results_listingSerializer
    implements
        StructuredSerializer<
            GmanageListingStepsData_manageListingSteps_results_listing> {
  @override
  final Iterable<Type> types = const [
    GmanageListingStepsData_manageListingSteps_results_listing,
    _$GmanageListingStepsData_manageListingSteps_results_listing
  ];
  @override
  final String wireName =
      'GmanageListingStepsData_manageListingSteps_results_listing';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmanageListingStepsData_manageListingSteps_results_listing object,
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
    value = object.isReady;
    if (value != null) {
      result
        ..add('isReady')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPublished;
    if (value != null) {
      result
        ..add('isPublished')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GmanageListingStepsData_manageListingSteps_results_listing_user)));
    }
    return result;
  }

  @override
  GmanageListingStepsData_manageListingSteps_results_listing deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmanageListingStepsData_manageListingSteps_results_listingBuilder();

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
        case 'isReady':
          result.isReady = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPublished':
          result.isPublished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmanageListingStepsData_manageListingSteps_results_listing_user))!
              as GmanageListingStepsData_manageListingSteps_results_listing_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GmanageListingStepsData_manageListingSteps_results_listing_userSerializer
    implements
        StructuredSerializer<
            GmanageListingStepsData_manageListingSteps_results_listing_user> {
  @override
  final Iterable<Type> types = const [
    GmanageListingStepsData_manageListingSteps_results_listing_user,
    _$GmanageListingStepsData_manageListingSteps_results_listing_user
  ];
  @override
  final String wireName =
      'GmanageListingStepsData_manageListingSteps_results_listing_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmanageListingStepsData_manageListingSteps_results_listing_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GmanageListingStepsData_manageListingSteps_results_listing_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmanageListingStepsData_manageListingSteps_results_listing_userBuilder();

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
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateListingStep3DataSerializer
    implements StructuredSerializer<GupdateListingStep3Data> {
  @override
  final Iterable<Type> types = const [
    GupdateListingStep3Data,
    _$GupdateListingStep3Data
  ];
  @override
  final String wireName = 'GupdateListingStep3Data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateListingStep3Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateListingStep3;
    if (value != null) {
      result
        ..add('updateListingStep3')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GupdateListingStep3Data_updateListingStep3)));
    }
    return result;
  }

  @override
  GupdateListingStep3Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateListingStep3DataBuilder();

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
        case 'updateListingStep3':
          result.updateListingStep3.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GupdateListingStep3Data_updateListingStep3))!
              as GupdateListingStep3Data_updateListingStep3);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateListingStep3Data_updateListingStep3Serializer
    implements
        StructuredSerializer<GupdateListingStep3Data_updateListingStep3> {
  @override
  final Iterable<Type> types = const [
    GupdateListingStep3Data_updateListingStep3,
    _$GupdateListingStep3Data_updateListingStep3
  ];
  @override
  final String wireName = 'GupdateListingStep3Data_updateListingStep3';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupdateListingStep3Data_updateListingStep3 object,
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
                GupdateListingStep3Data_updateListingStep3_results)));
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
    value = object.actionType;
    if (value != null) {
      result
        ..add('actionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GupdateListingStep3Data_updateListingStep3 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateListingStep3Data_updateListingStep3Builder();

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
                      GupdateListingStep3Data_updateListingStep3_results))!
              as GupdateListingStep3Data_updateListingStep3_results);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateListingStep3Data_updateListingStep3_resultsSerializer
    implements
        StructuredSerializer<
            GupdateListingStep3Data_updateListingStep3_results> {
  @override
  final Iterable<Type> types = const [
    GupdateListingStep3Data_updateListingStep3_results,
    _$GupdateListingStep3Data_updateListingStep3_results
  ];
  @override
  final String wireName = 'GupdateListingStep3Data_updateListingStep3_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupdateListingStep3Data_updateListingStep3_results object,
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
    value = object.carRules;
    if (value != null) {
      result
        ..add('carRules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
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
    value = object.basePrice;
    if (value != null) {
      result
        ..add('basePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('delivery')
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
    value = object.blockedDates;
    if (value != null) {
      result
        ..add('blockedDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.bookingType;
    if (value != null) {
      result
        ..add('bookingType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cancellationPolicy;
    if (value != null) {
      result
        ..add('cancellationPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.securityDeposit;
    if (value != null) {
      result
        ..add('securityDeposit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GupdateListingStep3Data_updateListingStep3_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GupdateListingStep3Data_updateListingStep3_resultsBuilder();

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
        case 'carRules':
          result.carRules.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
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
        case 'basePrice':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
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
        case 'blockedDates':
          result.blockedDates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'bookingType':
          result.bookingType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cancellationPolicy':
          result.cancellationPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'securityDeposit':
          result.securityDeposit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveListPhotosDataSerializer
    implements StructuredSerializer<GRemoveListPhotosData> {
  @override
  final Iterable<Type> types = const [
    GRemoveListPhotosData,
    _$GRemoveListPhotosData
  ];
  @override
  final String wireName = 'GRemoveListPhotosData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveListPhotosData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.removeListPhotos;
    if (value != null) {
      result
        ..add('removeListPhotos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GRemoveListPhotosData_removeListPhotos)));
    }
    return result;
  }

  @override
  GRemoveListPhotosData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveListPhotosDataBuilder();

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
        case 'removeListPhotos':
          result.removeListPhotos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GRemoveListPhotosData_removeListPhotos))!
              as GRemoveListPhotosData_removeListPhotos);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveListPhotosData_removeListPhotosSerializer
    implements StructuredSerializer<GRemoveListPhotosData_removeListPhotos> {
  @override
  final Iterable<Type> types = const [
    GRemoveListPhotosData_removeListPhotos,
    _$GRemoveListPhotosData_removeListPhotos
  ];
  @override
  final String wireName = 'GRemoveListPhotosData_removeListPhotos';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveListPhotosData_removeListPhotos object,
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
    return result;
  }

  @override
  GRemoveListPhotosData_removeListPhotos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveListPhotosData_removeListPhotosBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GcreateListingData extends GcreateListingData {
  @override
  final String G__typename;
  @override
  final GcreateListingData_createListing? createListing;

  factory _$GcreateListingData(
          [void Function(GcreateListingDataBuilder)? updates]) =>
      (new GcreateListingDataBuilder()..update(updates))._build();

  _$GcreateListingData._({required this.G__typename, this.createListing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreateListingData', 'G__typename');
  }

  @override
  GcreateListingData rebuild(
          void Function(GcreateListingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateListingDataBuilder toBuilder() =>
      new GcreateListingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateListingData &&
        G__typename == other.G__typename &&
        createListing == other.createListing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createListing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateListingData')
          ..add('G__typename', G__typename)
          ..add('createListing', createListing))
        .toString();
  }
}

class GcreateListingDataBuilder
    implements Builder<GcreateListingData, GcreateListingDataBuilder> {
  _$GcreateListingData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreateListingData_createListingBuilder? _createListing;
  GcreateListingData_createListingBuilder get createListing =>
      _$this._createListing ??= new GcreateListingData_createListingBuilder();
  set createListing(GcreateListingData_createListingBuilder? createListing) =>
      _$this._createListing = createListing;

  GcreateListingDataBuilder() {
    GcreateListingData._initializeBuilder(this);
  }

  GcreateListingDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createListing = $v.createListing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateListingData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateListingData;
  }

  @override
  void update(void Function(GcreateListingDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateListingData build() => _build();

  _$GcreateListingData _build() {
    _$GcreateListingData _$result;
    try {
      _$result = _$v ??
          new _$GcreateListingData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GcreateListingData', 'G__typename'),
              createListing: _createListing?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createListing';
        _createListing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateListingData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateListingData_createListing
    extends GcreateListingData_createListing {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final GcreateListingData_createListing_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? actionType;

  factory _$GcreateListingData_createListing(
          [void Function(GcreateListingData_createListingBuilder)? updates]) =>
      (new GcreateListingData_createListingBuilder()..update(updates))._build();

  _$GcreateListingData_createListing._(
      {required this.G__typename,
      this.id,
      this.results,
      this.status,
      this.errorMessage,
      this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreateListingData_createListing', 'G__typename');
  }

  @override
  GcreateListingData_createListing rebuild(
          void Function(GcreateListingData_createListingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateListingData_createListingBuilder toBuilder() =>
      new GcreateListingData_createListingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateListingData_createListing &&
        G__typename == other.G__typename &&
        id == other.id &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateListingData_createListing')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('actionType', actionType))
        .toString();
  }
}

class GcreateListingData_createListingBuilder
    implements
        Builder<GcreateListingData_createListing,
            GcreateListingData_createListingBuilder> {
  _$GcreateListingData_createListing? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GcreateListingData_createListing_resultsBuilder? _results;
  GcreateListingData_createListing_resultsBuilder get results =>
      _$this._results ??= new GcreateListingData_createListing_resultsBuilder();
  set results(GcreateListingData_createListing_resultsBuilder? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _actionType;
  String? get actionType => _$this._actionType;
  set actionType(String? actionType) => _$this._actionType = actionType;

  GcreateListingData_createListingBuilder() {
    GcreateListingData_createListing._initializeBuilder(this);
  }

  GcreateListingData_createListingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateListingData_createListing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateListingData_createListing;
  }

  @override
  void update(void Function(GcreateListingData_createListingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateListingData_createListing build() => _build();

  _$GcreateListingData_createListing _build() {
    _$GcreateListingData_createListing _$result;
    try {
      _$result = _$v ??
          new _$GcreateListingData_createListing._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GcreateListingData_createListing', 'G__typename'),
              id: id,
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage,
              actionType: actionType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateListingData_createListing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateListingData_createListing_results
    extends GcreateListingData_createListing_results {
  @override
  final String G__typename;
  @override
  final String? carType;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? year;
  @override
  final String? transmission;
  @override
  final String? odometer;
  @override
  final int? personCapacity;
  @override
  final String? country;
  @override
  final String? street;
  @override
  final String? buildingName;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipcode;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final bool? isMapTouched;
  @override
  final BuiltList<int?>? carFeatures;

  factory _$GcreateListingData_createListing_results(
          [void Function(GcreateListingData_createListing_resultsBuilder)?
              updates]) =>
      (new GcreateListingData_createListing_resultsBuilder()..update(updates))
          ._build();

  _$GcreateListingData_createListing_results._(
      {required this.G__typename,
      this.carType,
      this.make,
      this.model,
      this.year,
      this.transmission,
      this.odometer,
      this.personCapacity,
      this.country,
      this.street,
      this.buildingName,
      this.city,
      this.state,
      this.zipcode,
      this.lat,
      this.lng,
      this.isMapTouched,
      this.carFeatures})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GcreateListingData_createListing_results', 'G__typename');
  }

  @override
  GcreateListingData_createListing_results rebuild(
          void Function(GcreateListingData_createListing_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateListingData_createListing_resultsBuilder toBuilder() =>
      new GcreateListingData_createListing_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateListingData_createListing_results &&
        G__typename == other.G__typename &&
        carType == other.carType &&
        make == other.make &&
        model == other.model &&
        year == other.year &&
        transmission == other.transmission &&
        odometer == other.odometer &&
        personCapacity == other.personCapacity &&
        country == other.country &&
        street == other.street &&
        buildingName == other.buildingName &&
        city == other.city &&
        state == other.state &&
        zipcode == other.zipcode &&
        lat == other.lat &&
        lng == other.lng &&
        isMapTouched == other.isMapTouched &&
        carFeatures == other.carFeatures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, carType.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, transmission.hashCode);
    _$hash = $jc(_$hash, odometer.hashCode);
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, buildingName.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, zipcode.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, isMapTouched.hashCode);
    _$hash = $jc(_$hash, carFeatures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GcreateListingData_createListing_results')
          ..add('G__typename', G__typename)
          ..add('carType', carType)
          ..add('make', make)
          ..add('model', model)
          ..add('year', year)
          ..add('transmission', transmission)
          ..add('odometer', odometer)
          ..add('personCapacity', personCapacity)
          ..add('country', country)
          ..add('street', street)
          ..add('buildingName', buildingName)
          ..add('city', city)
          ..add('state', state)
          ..add('zipcode', zipcode)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('isMapTouched', isMapTouched)
          ..add('carFeatures', carFeatures))
        .toString();
  }
}

class GcreateListingData_createListing_resultsBuilder
    implements
        Builder<GcreateListingData_createListing_results,
            GcreateListingData_createListing_resultsBuilder> {
  _$GcreateListingData_createListing_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _carType;
  String? get carType => _$this._carType;
  set carType(String? carType) => _$this._carType = carType;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _transmission;
  String? get transmission => _$this._transmission;
  set transmission(String? transmission) => _$this._transmission = transmission;

  String? _odometer;
  String? get odometer => _$this._odometer;
  set odometer(String? odometer) => _$this._odometer = odometer;

  int? _personCapacity;
  int? get personCapacity => _$this._personCapacity;
  set personCapacity(int? personCapacity) =>
      _$this._personCapacity = personCapacity;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _buildingName;
  String? get buildingName => _$this._buildingName;
  set buildingName(String? buildingName) => _$this._buildingName = buildingName;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  bool? _isMapTouched;
  bool? get isMapTouched => _$this._isMapTouched;
  set isMapTouched(bool? isMapTouched) => _$this._isMapTouched = isMapTouched;

  ListBuilder<int?>? _carFeatures;
  ListBuilder<int?> get carFeatures =>
      _$this._carFeatures ??= new ListBuilder<int?>();
  set carFeatures(ListBuilder<int?>? carFeatures) =>
      _$this._carFeatures = carFeatures;

  GcreateListingData_createListing_resultsBuilder() {
    GcreateListingData_createListing_results._initializeBuilder(this);
  }

  GcreateListingData_createListing_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _carType = $v.carType;
      _make = $v.make;
      _model = $v.model;
      _year = $v.year;
      _transmission = $v.transmission;
      _odometer = $v.odometer;
      _personCapacity = $v.personCapacity;
      _country = $v.country;
      _street = $v.street;
      _buildingName = $v.buildingName;
      _city = $v.city;
      _state = $v.state;
      _zipcode = $v.zipcode;
      _lat = $v.lat;
      _lng = $v.lng;
      _isMapTouched = $v.isMapTouched;
      _carFeatures = $v.carFeatures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateListingData_createListing_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateListingData_createListing_results;
  }

  @override
  void update(
      void Function(GcreateListingData_createListing_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateListingData_createListing_results build() => _build();

  _$GcreateListingData_createListing_results _build() {
    _$GcreateListingData_createListing_results _$result;
    try {
      _$result = _$v ??
          new _$GcreateListingData_createListing_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GcreateListingData_createListing_results', 'G__typename'),
              carType: carType,
              make: make,
              model: model,
              year: year,
              transmission: transmission,
              odometer: odometer,
              personCapacity: personCapacity,
              country: country,
              street: street,
              buildingName: buildingName,
              city: city,
              state: state,
              zipcode: zipcode,
              lat: lat,
              lng: lng,
              isMapTouched: isMapTouched,
              carFeatures: _carFeatures?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carFeatures';
        _carFeatures?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateListingData_createListing_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateListingStep2Data extends GUpdateListingStep2Data {
  @override
  final String G__typename;
  @override
  final GUpdateListingStep2Data_updateListingStep2? updateListingStep2;

  factory _$GUpdateListingStep2Data(
          [void Function(GUpdateListingStep2DataBuilder)? updates]) =>
      (new GUpdateListingStep2DataBuilder()..update(updates))._build();

  _$GUpdateListingStep2Data._(
      {required this.G__typename, this.updateListingStep2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateListingStep2Data', 'G__typename');
  }

  @override
  GUpdateListingStep2Data rebuild(
          void Function(GUpdateListingStep2DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateListingStep2DataBuilder toBuilder() =>
      new GUpdateListingStep2DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateListingStep2Data &&
        G__typename == other.G__typename &&
        updateListingStep2 == other.updateListingStep2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateListingStep2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateListingStep2Data')
          ..add('G__typename', G__typename)
          ..add('updateListingStep2', updateListingStep2))
        .toString();
  }
}

class GUpdateListingStep2DataBuilder
    implements
        Builder<GUpdateListingStep2Data, GUpdateListingStep2DataBuilder> {
  _$GUpdateListingStep2Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateListingStep2Data_updateListingStep2Builder? _updateListingStep2;
  GUpdateListingStep2Data_updateListingStep2Builder get updateListingStep2 =>
      _$this._updateListingStep2 ??=
          new GUpdateListingStep2Data_updateListingStep2Builder();
  set updateListingStep2(
          GUpdateListingStep2Data_updateListingStep2Builder?
              updateListingStep2) =>
      _$this._updateListingStep2 = updateListingStep2;

  GUpdateListingStep2DataBuilder() {
    GUpdateListingStep2Data._initializeBuilder(this);
  }

  GUpdateListingStep2DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateListingStep2 = $v.updateListingStep2?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateListingStep2Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateListingStep2Data;
  }

  @override
  void update(void Function(GUpdateListingStep2DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateListingStep2Data build() => _build();

  _$GUpdateListingStep2Data _build() {
    _$GUpdateListingStep2Data _$result;
    try {
      _$result = _$v ??
          new _$GUpdateListingStep2Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateListingStep2Data', 'G__typename'),
              updateListingStep2: _updateListingStep2?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateListingStep2';
        _updateListingStep2?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateListingStep2Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateListingStep2Data_updateListingStep2
    extends GUpdateListingStep2Data_updateListingStep2 {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final GUpdateListingStep2Data_updateListingStep2_results? results;
  @override
  final String? errorMessage;

  factory _$GUpdateListingStep2Data_updateListingStep2(
          [void Function(GUpdateListingStep2Data_updateListingStep2Builder)?
              updates]) =>
      (new GUpdateListingStep2Data_updateListingStep2Builder()..update(updates))
          ._build();

  _$GUpdateListingStep2Data_updateListingStep2._(
      {required this.G__typename, this.status, this.results, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUpdateListingStep2Data_updateListingStep2', 'G__typename');
  }

  @override
  GUpdateListingStep2Data_updateListingStep2 rebuild(
          void Function(GUpdateListingStep2Data_updateListingStep2Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateListingStep2Data_updateListingStep2Builder toBuilder() =>
      new GUpdateListingStep2Data_updateListingStep2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateListingStep2Data_updateListingStep2 &&
        G__typename == other.G__typename &&
        status == other.status &&
        results == other.results &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateListingStep2Data_updateListingStep2')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('results', results)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GUpdateListingStep2Data_updateListingStep2Builder
    implements
        Builder<GUpdateListingStep2Data_updateListingStep2,
            GUpdateListingStep2Data_updateListingStep2Builder> {
  _$GUpdateListingStep2Data_updateListingStep2? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  GUpdateListingStep2Data_updateListingStep2_resultsBuilder? _results;
  GUpdateListingStep2Data_updateListingStep2_resultsBuilder get results =>
      _$this._results ??=
          new GUpdateListingStep2Data_updateListingStep2_resultsBuilder();
  set results(
          GUpdateListingStep2Data_updateListingStep2_resultsBuilder? results) =>
      _$this._results = results;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GUpdateListingStep2Data_updateListingStep2Builder() {
    GUpdateListingStep2Data_updateListingStep2._initializeBuilder(this);
  }

  GUpdateListingStep2Data_updateListingStep2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _results = $v.results?.toBuilder();
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateListingStep2Data_updateListingStep2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateListingStep2Data_updateListingStep2;
  }

  @override
  void update(
      void Function(GUpdateListingStep2Data_updateListingStep2Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateListingStep2Data_updateListingStep2 build() => _build();

  _$GUpdateListingStep2Data_updateListingStep2 _build() {
    _$GUpdateListingStep2Data_updateListingStep2 _$result;
    try {
      _$result = _$v ??
          new _$GUpdateListingStep2Data_updateListingStep2._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUpdateListingStep2Data_updateListingStep2', 'G__typename'),
              status: status,
              results: _results?.build(),
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateListingStep2Data_updateListingStep2',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateListingStep2Data_updateListingStep2_results
    extends GUpdateListingStep2Data_updateListingStep2_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? coverPhoto;

  factory _$GUpdateListingStep2Data_updateListingStep2_results(
          [void Function(
                  GUpdateListingStep2Data_updateListingStep2_resultsBuilder)?
              updates]) =>
      (new GUpdateListingStep2Data_updateListingStep2_resultsBuilder()
            ..update(updates))
          ._build();

  _$GUpdateListingStep2Data_updateListingStep2_results._(
      {required this.G__typename,
      this.id,
      this.title,
      this.description,
      this.coverPhoto})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUpdateListingStep2Data_updateListingStep2_results', 'G__typename');
  }

  @override
  GUpdateListingStep2Data_updateListingStep2_results rebuild(
          void Function(
                  GUpdateListingStep2Data_updateListingStep2_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateListingStep2Data_updateListingStep2_resultsBuilder toBuilder() =>
      new GUpdateListingStep2Data_updateListingStep2_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateListingStep2Data_updateListingStep2_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        coverPhoto == other.coverPhoto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateListingStep2Data_updateListingStep2_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('coverPhoto', coverPhoto))
        .toString();
  }
}

class GUpdateListingStep2Data_updateListingStep2_resultsBuilder
    implements
        Builder<GUpdateListingStep2Data_updateListingStep2_results,
            GUpdateListingStep2Data_updateListingStep2_resultsBuilder> {
  _$GUpdateListingStep2Data_updateListingStep2_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _coverPhoto;
  int? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(int? coverPhoto) => _$this._coverPhoto = coverPhoto;

  GUpdateListingStep2Data_updateListingStep2_resultsBuilder() {
    GUpdateListingStep2Data_updateListingStep2_results._initializeBuilder(this);
  }

  GUpdateListingStep2Data_updateListingStep2_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _coverPhoto = $v.coverPhoto;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateListingStep2Data_updateListingStep2_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateListingStep2Data_updateListingStep2_results;
  }

  @override
  void update(
      void Function(GUpdateListingStep2Data_updateListingStep2_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateListingStep2Data_updateListingStep2_results build() => _build();

  _$GUpdateListingStep2Data_updateListingStep2_results _build() {
    final _$result = _$v ??
        new _$GUpdateListingStep2Data_updateListingStep2_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUpdateListingStep2Data_updateListingStep2_results',
                'G__typename'),
            id: id,
            title: title,
            description: description,
            coverPhoto: coverPhoto);
    replace(_$result);
    return _$result;
  }
}

class _$GmanagePublishStatusData extends GmanagePublishStatusData {
  @override
  final String G__typename;
  @override
  final GmanagePublishStatusData_managePublishStatus? managePublishStatus;

  factory _$GmanagePublishStatusData(
          [void Function(GmanagePublishStatusDataBuilder)? updates]) =>
      (new GmanagePublishStatusDataBuilder()..update(updates))._build();

  _$GmanagePublishStatusData._(
      {required this.G__typename, this.managePublishStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmanagePublishStatusData', 'G__typename');
  }

  @override
  GmanagePublishStatusData rebuild(
          void Function(GmanagePublishStatusDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanagePublishStatusDataBuilder toBuilder() =>
      new GmanagePublishStatusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanagePublishStatusData &&
        G__typename == other.G__typename &&
        managePublishStatus == other.managePublishStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, managePublishStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmanagePublishStatusData')
          ..add('G__typename', G__typename)
          ..add('managePublishStatus', managePublishStatus))
        .toString();
  }
}

class GmanagePublishStatusDataBuilder
    implements
        Builder<GmanagePublishStatusData, GmanagePublishStatusDataBuilder> {
  _$GmanagePublishStatusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GmanagePublishStatusData_managePublishStatusBuilder? _managePublishStatus;
  GmanagePublishStatusData_managePublishStatusBuilder get managePublishStatus =>
      _$this._managePublishStatus ??=
          new GmanagePublishStatusData_managePublishStatusBuilder();
  set managePublishStatus(
          GmanagePublishStatusData_managePublishStatusBuilder?
              managePublishStatus) =>
      _$this._managePublishStatus = managePublishStatus;

  GmanagePublishStatusDataBuilder() {
    GmanagePublishStatusData._initializeBuilder(this);
  }

  GmanagePublishStatusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _managePublishStatus = $v.managePublishStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmanagePublishStatusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanagePublishStatusData;
  }

  @override
  void update(void Function(GmanagePublishStatusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanagePublishStatusData build() => _build();

  _$GmanagePublishStatusData _build() {
    _$GmanagePublishStatusData _$result;
    try {
      _$result = _$v ??
          new _$GmanagePublishStatusData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmanagePublishStatusData', 'G__typename'),
              managePublishStatus: _managePublishStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'managePublishStatus';
        _managePublishStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmanagePublishStatusData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmanagePublishStatusData_managePublishStatus
    extends GmanagePublishStatusData_managePublishStatus {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GmanagePublishStatusData_managePublishStatus(
          [void Function(GmanagePublishStatusData_managePublishStatusBuilder)?
              updates]) =>
      (new GmanagePublishStatusData_managePublishStatusBuilder()
            ..update(updates))
          ._build();

  _$GmanagePublishStatusData_managePublishStatus._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmanagePublishStatusData_managePublishStatus', 'G__typename');
  }

  @override
  GmanagePublishStatusData_managePublishStatus rebuild(
          void Function(GmanagePublishStatusData_managePublishStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanagePublishStatusData_managePublishStatusBuilder toBuilder() =>
      new GmanagePublishStatusData_managePublishStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanagePublishStatusData_managePublishStatus &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmanagePublishStatusData_managePublishStatus')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GmanagePublishStatusData_managePublishStatusBuilder
    implements
        Builder<GmanagePublishStatusData_managePublishStatus,
            GmanagePublishStatusData_managePublishStatusBuilder> {
  _$GmanagePublishStatusData_managePublishStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GmanagePublishStatusData_managePublishStatusBuilder() {
    GmanagePublishStatusData_managePublishStatus._initializeBuilder(this);
  }

  GmanagePublishStatusData_managePublishStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmanagePublishStatusData_managePublishStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanagePublishStatusData_managePublishStatus;
  }

  @override
  void update(
      void Function(GmanagePublishStatusData_managePublishStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanagePublishStatusData_managePublishStatus build() => _build();

  _$GmanagePublishStatusData_managePublishStatus _build() {
    final _$result = _$v ??
        new _$GmanagePublishStatusData_managePublishStatus._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GmanagePublishStatusData_managePublishStatus', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GmanageListingStepsData extends GmanageListingStepsData {
  @override
  final String G__typename;
  @override
  final GmanageListingStepsData_manageListingSteps? manageListingSteps;

  factory _$GmanageListingStepsData(
          [void Function(GmanageListingStepsDataBuilder)? updates]) =>
      (new GmanageListingStepsDataBuilder()..update(updates))._build();

  _$GmanageListingStepsData._(
      {required this.G__typename, this.manageListingSteps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmanageListingStepsData', 'G__typename');
  }

  @override
  GmanageListingStepsData rebuild(
          void Function(GmanageListingStepsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanageListingStepsDataBuilder toBuilder() =>
      new GmanageListingStepsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanageListingStepsData &&
        G__typename == other.G__typename &&
        manageListingSteps == other.manageListingSteps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, manageListingSteps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmanageListingStepsData')
          ..add('G__typename', G__typename)
          ..add('manageListingSteps', manageListingSteps))
        .toString();
  }
}

class GmanageListingStepsDataBuilder
    implements
        Builder<GmanageListingStepsData, GmanageListingStepsDataBuilder> {
  _$GmanageListingStepsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GmanageListingStepsData_manageListingStepsBuilder? _manageListingSteps;
  GmanageListingStepsData_manageListingStepsBuilder get manageListingSteps =>
      _$this._manageListingSteps ??=
          new GmanageListingStepsData_manageListingStepsBuilder();
  set manageListingSteps(
          GmanageListingStepsData_manageListingStepsBuilder?
              manageListingSteps) =>
      _$this._manageListingSteps = manageListingSteps;

  GmanageListingStepsDataBuilder() {
    GmanageListingStepsData._initializeBuilder(this);
  }

  GmanageListingStepsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _manageListingSteps = $v.manageListingSteps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmanageListingStepsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanageListingStepsData;
  }

  @override
  void update(void Function(GmanageListingStepsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanageListingStepsData build() => _build();

  _$GmanageListingStepsData _build() {
    _$GmanageListingStepsData _$result;
    try {
      _$result = _$v ??
          new _$GmanageListingStepsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmanageListingStepsData', 'G__typename'),
              manageListingSteps: _manageListingSteps?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manageListingSteps';
        _manageListingSteps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmanageListingStepsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmanageListingStepsData_manageListingSteps
    extends GmanageListingStepsData_manageListingSteps {
  @override
  final String G__typename;
  @override
  final GmanageListingStepsData_manageListingSteps_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GmanageListingStepsData_manageListingSteps(
          [void Function(GmanageListingStepsData_manageListingStepsBuilder)?
              updates]) =>
      (new GmanageListingStepsData_manageListingStepsBuilder()..update(updates))
          ._build();

  _$GmanageListingStepsData_manageListingSteps._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmanageListingStepsData_manageListingSteps', 'G__typename');
  }

  @override
  GmanageListingStepsData_manageListingSteps rebuild(
          void Function(GmanageListingStepsData_manageListingStepsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanageListingStepsData_manageListingStepsBuilder toBuilder() =>
      new GmanageListingStepsData_manageListingStepsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanageListingStepsData_manageListingSteps &&
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
            r'GmanageListingStepsData_manageListingSteps')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GmanageListingStepsData_manageListingStepsBuilder
    implements
        Builder<GmanageListingStepsData_manageListingSteps,
            GmanageListingStepsData_manageListingStepsBuilder> {
  _$GmanageListingStepsData_manageListingSteps? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GmanageListingStepsData_manageListingSteps_resultsBuilder? _results;
  GmanageListingStepsData_manageListingSteps_resultsBuilder get results =>
      _$this._results ??=
          new GmanageListingStepsData_manageListingSteps_resultsBuilder();
  set results(
          GmanageListingStepsData_manageListingSteps_resultsBuilder? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GmanageListingStepsData_manageListingStepsBuilder() {
    GmanageListingStepsData_manageListingSteps._initializeBuilder(this);
  }

  GmanageListingStepsData_manageListingStepsBuilder get _$this {
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
  void replace(GmanageListingStepsData_manageListingSteps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanageListingStepsData_manageListingSteps;
  }

  @override
  void update(
      void Function(GmanageListingStepsData_manageListingStepsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanageListingStepsData_manageListingSteps build() => _build();

  _$GmanageListingStepsData_manageListingSteps _build() {
    _$GmanageListingStepsData_manageListingSteps _$result;
    try {
      _$result = _$v ??
          new _$GmanageListingStepsData_manageListingSteps._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GmanageListingStepsData_manageListingSteps', 'G__typename'),
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
            r'GmanageListingStepsData_manageListingSteps',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmanageListingStepsData_manageListingSteps_results
    extends GmanageListingStepsData_manageListingSteps_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? listId;
  @override
  final String? step1;
  @override
  final String? step2;
  @override
  final String? step3;
  @override
  final GmanageListingStepsData_manageListingSteps_results_listing? listing;

  factory _$GmanageListingStepsData_manageListingSteps_results(
          [void Function(
                  GmanageListingStepsData_manageListingSteps_resultsBuilder)?
              updates]) =>
      (new GmanageListingStepsData_manageListingSteps_resultsBuilder()
            ..update(updates))
          ._build();

  _$GmanageListingStepsData_manageListingSteps_results._(
      {required this.G__typename,
      this.id,
      this.listId,
      this.step1,
      this.step2,
      this.step3,
      this.listing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmanageListingStepsData_manageListingSteps_results', 'G__typename');
  }

  @override
  GmanageListingStepsData_manageListingSteps_results rebuild(
          void Function(
                  GmanageListingStepsData_manageListingSteps_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanageListingStepsData_manageListingSteps_resultsBuilder toBuilder() =>
      new GmanageListingStepsData_manageListingSteps_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanageListingStepsData_manageListingSteps_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        listId == other.listId &&
        step1 == other.step1 &&
        step2 == other.step2 &&
        step3 == other.step3 &&
        listing == other.listing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, step1.hashCode);
    _$hash = $jc(_$hash, step2.hashCode);
    _$hash = $jc(_$hash, step3.hashCode);
    _$hash = $jc(_$hash, listing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmanageListingStepsData_manageListingSteps_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('listId', listId)
          ..add('step1', step1)
          ..add('step2', step2)
          ..add('step3', step3)
          ..add('listing', listing))
        .toString();
  }
}

class GmanageListingStepsData_manageListingSteps_resultsBuilder
    implements
        Builder<GmanageListingStepsData_manageListingSteps_results,
            GmanageListingStepsData_manageListingSteps_resultsBuilder> {
  _$GmanageListingStepsData_manageListingSteps_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _step1;
  String? get step1 => _$this._step1;
  set step1(String? step1) => _$this._step1 = step1;

  String? _step2;
  String? get step2 => _$this._step2;
  set step2(String? step2) => _$this._step2 = step2;

  String? _step3;
  String? get step3 => _$this._step3;
  set step3(String? step3) => _$this._step3 = step3;

  GmanageListingStepsData_manageListingSteps_results_listingBuilder? _listing;
  GmanageListingStepsData_manageListingSteps_results_listingBuilder
      get listing => _$this._listing ??=
          new GmanageListingStepsData_manageListingSteps_results_listingBuilder();
  set listing(
          GmanageListingStepsData_manageListingSteps_results_listingBuilder?
              listing) =>
      _$this._listing = listing;

  GmanageListingStepsData_manageListingSteps_resultsBuilder() {
    GmanageListingStepsData_manageListingSteps_results._initializeBuilder(this);
  }

  GmanageListingStepsData_manageListingSteps_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _listId = $v.listId;
      _step1 = $v.step1;
      _step2 = $v.step2;
      _step3 = $v.step3;
      _listing = $v.listing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmanageListingStepsData_manageListingSteps_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanageListingStepsData_manageListingSteps_results;
  }

  @override
  void update(
      void Function(GmanageListingStepsData_manageListingSteps_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanageListingStepsData_manageListingSteps_results build() => _build();

  _$GmanageListingStepsData_manageListingSteps_results _build() {
    _$GmanageListingStepsData_manageListingSteps_results _$result;
    try {
      _$result = _$v ??
          new _$GmanageListingStepsData_manageListingSteps_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GmanageListingStepsData_manageListingSteps_results',
                  'G__typename'),
              id: id,
              listId: listId,
              step1: step1,
              step2: step2,
              step3: step3,
              listing: _listing?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listing';
        _listing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmanageListingStepsData_manageListingSteps_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmanageListingStepsData_manageListingSteps_results_listing
    extends GmanageListingStepsData_manageListingSteps_results_listing {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final bool? isReady;
  @override
  final bool? isPublished;
  @override
  final GmanageListingStepsData_manageListingSteps_results_listing_user? user;

  factory _$GmanageListingStepsData_manageListingSteps_results_listing(
          [void Function(
                  GmanageListingStepsData_manageListingSteps_results_listingBuilder)?
              updates]) =>
      (new GmanageListingStepsData_manageListingSteps_results_listingBuilder()
            ..update(updates))
          ._build();

  _$GmanageListingStepsData_manageListingSteps_results_listing._(
      {required this.G__typename,
      this.id,
      this.isReady,
      this.isPublished,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmanageListingStepsData_manageListingSteps_results_listing',
        'G__typename');
  }

  @override
  GmanageListingStepsData_manageListingSteps_results_listing rebuild(
          void Function(
                  GmanageListingStepsData_manageListingSteps_results_listingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanageListingStepsData_manageListingSteps_results_listingBuilder
      toBuilder() =>
          new GmanageListingStepsData_manageListingSteps_results_listingBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GmanageListingStepsData_manageListingSteps_results_listing &&
        G__typename == other.G__typename &&
        id == other.id &&
        isReady == other.isReady &&
        isPublished == other.isPublished &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isReady.hashCode);
    _$hash = $jc(_$hash, isPublished.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmanageListingStepsData_manageListingSteps_results_listing')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isReady', isReady)
          ..add('isPublished', isPublished)
          ..add('user', user))
        .toString();
  }
}

class GmanageListingStepsData_manageListingSteps_results_listingBuilder
    implements
        Builder<GmanageListingStepsData_manageListingSteps_results_listing,
            GmanageListingStepsData_manageListingSteps_results_listingBuilder> {
  _$GmanageListingStepsData_manageListingSteps_results_listing? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isReady;
  bool? get isReady => _$this._isReady;
  set isReady(bool? isReady) => _$this._isReady = isReady;

  bool? _isPublished;
  bool? get isPublished => _$this._isPublished;
  set isPublished(bool? isPublished) => _$this._isPublished = isPublished;

  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder? _user;
  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder
      get user => _$this._user ??=
          new GmanageListingStepsData_manageListingSteps_results_listing_userBuilder();
  set user(
          GmanageListingStepsData_manageListingSteps_results_listing_userBuilder?
              user) =>
      _$this._user = user;

  GmanageListingStepsData_manageListingSteps_results_listingBuilder() {
    GmanageListingStepsData_manageListingSteps_results_listing
        ._initializeBuilder(this);
  }

  GmanageListingStepsData_manageListingSteps_results_listingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isReady = $v.isReady;
      _isPublished = $v.isPublished;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GmanageListingStepsData_manageListingSteps_results_listing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanageListingStepsData_manageListingSteps_results_listing;
  }

  @override
  void update(
      void Function(
              GmanageListingStepsData_manageListingSteps_results_listingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanageListingStepsData_manageListingSteps_results_listing build() =>
      _build();

  _$GmanageListingStepsData_manageListingSteps_results_listing _build() {
    _$GmanageListingStepsData_manageListingSteps_results_listing _$result;
    try {
      _$result = _$v ??
          new _$GmanageListingStepsData_manageListingSteps_results_listing._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GmanageListingStepsData_manageListingSteps_results_listing',
                  'G__typename'),
              id: id,
              isReady: isReady,
              isPublished: isPublished,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmanageListingStepsData_manageListingSteps_results_listing',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmanageListingStepsData_manageListingSteps_results_listing_user
    extends GmanageListingStepsData_manageListingSteps_results_listing_user {
  @override
  final String G__typename;
  @override
  final int? userBanStatus;

  factory _$GmanageListingStepsData_manageListingSteps_results_listing_user(
          [void Function(
                  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder)?
              updates]) =>
      (new GmanageListingStepsData_manageListingSteps_results_listing_userBuilder()
            ..update(updates))
          ._build();

  _$GmanageListingStepsData_manageListingSteps_results_listing_user._(
      {required this.G__typename, this.userBanStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmanageListingStepsData_manageListingSteps_results_listing_user',
        'G__typename');
  }

  @override
  GmanageListingStepsData_manageListingSteps_results_listing_user rebuild(
          void Function(
                  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder
      toBuilder() =>
          new GmanageListingStepsData_manageListingSteps_results_listing_userBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GmanageListingStepsData_manageListingSteps_results_listing_user &&
        G__typename == other.G__typename &&
        userBanStatus == other.userBanStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmanageListingStepsData_manageListingSteps_results_listing_user')
          ..add('G__typename', G__typename)
          ..add('userBanStatus', userBanStatus))
        .toString();
  }
}

class GmanageListingStepsData_manageListingSteps_results_listing_userBuilder
    implements
        Builder<GmanageListingStepsData_manageListingSteps_results_listing_user,
            GmanageListingStepsData_manageListingSteps_results_listing_userBuilder> {
  _$GmanageListingStepsData_manageListingSteps_results_listing_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder() {
    GmanageListingStepsData_manageListingSteps_results_listing_user
        ._initializeBuilder(this);
  }

  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userBanStatus = $v.userBanStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GmanageListingStepsData_manageListingSteps_results_listing_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GmanageListingStepsData_manageListingSteps_results_listing_user;
  }

  @override
  void update(
      void Function(
              GmanageListingStepsData_manageListingSteps_results_listing_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanageListingStepsData_manageListingSteps_results_listing_user build() =>
      _build();

  _$GmanageListingStepsData_manageListingSteps_results_listing_user _build() {
    final _$result = _$v ??
        new _$GmanageListingStepsData_manageListingSteps_results_listing_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmanageListingStepsData_manageListingSteps_results_listing_user',
                'G__typename'),
            userBanStatus: userBanStatus);
    replace(_$result);
    return _$result;
  }
}

class _$GupdateListingStep3Data extends GupdateListingStep3Data {
  @override
  final String G__typename;
  @override
  final GupdateListingStep3Data_updateListingStep3? updateListingStep3;

  factory _$GupdateListingStep3Data(
          [void Function(GupdateListingStep3DataBuilder)? updates]) =>
      (new GupdateListingStep3DataBuilder()..update(updates))._build();

  _$GupdateListingStep3Data._(
      {required this.G__typename, this.updateListingStep3})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdateListingStep3Data', 'G__typename');
  }

  @override
  GupdateListingStep3Data rebuild(
          void Function(GupdateListingStep3DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateListingStep3DataBuilder toBuilder() =>
      new GupdateListingStep3DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateListingStep3Data &&
        G__typename == other.G__typename &&
        updateListingStep3 == other.updateListingStep3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateListingStep3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateListingStep3Data')
          ..add('G__typename', G__typename)
          ..add('updateListingStep3', updateListingStep3))
        .toString();
  }
}

class GupdateListingStep3DataBuilder
    implements
        Builder<GupdateListingStep3Data, GupdateListingStep3DataBuilder> {
  _$GupdateListingStep3Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateListingStep3Data_updateListingStep3Builder? _updateListingStep3;
  GupdateListingStep3Data_updateListingStep3Builder get updateListingStep3 =>
      _$this._updateListingStep3 ??=
          new GupdateListingStep3Data_updateListingStep3Builder();
  set updateListingStep3(
          GupdateListingStep3Data_updateListingStep3Builder?
              updateListingStep3) =>
      _$this._updateListingStep3 = updateListingStep3;

  GupdateListingStep3DataBuilder() {
    GupdateListingStep3Data._initializeBuilder(this);
  }

  GupdateListingStep3DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateListingStep3 = $v.updateListingStep3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateListingStep3Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateListingStep3Data;
  }

  @override
  void update(void Function(GupdateListingStep3DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateListingStep3Data build() => _build();

  _$GupdateListingStep3Data _build() {
    _$GupdateListingStep3Data _$result;
    try {
      _$result = _$v ??
          new _$GupdateListingStep3Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GupdateListingStep3Data', 'G__typename'),
              updateListingStep3: _updateListingStep3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateListingStep3';
        _updateListingStep3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateListingStep3Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateListingStep3Data_updateListingStep3
    extends GupdateListingStep3Data_updateListingStep3 {
  @override
  final String G__typename;
  @override
  final GupdateListingStep3Data_updateListingStep3_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? actionType;

  factory _$GupdateListingStep3Data_updateListingStep3(
          [void Function(GupdateListingStep3Data_updateListingStep3Builder)?
              updates]) =>
      (new GupdateListingStep3Data_updateListingStep3Builder()..update(updates))
          ._build();

  _$GupdateListingStep3Data_updateListingStep3._(
      {required this.G__typename,
      this.results,
      this.status,
      this.errorMessage,
      this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GupdateListingStep3Data_updateListingStep3', 'G__typename');
  }

  @override
  GupdateListingStep3Data_updateListingStep3 rebuild(
          void Function(GupdateListingStep3Data_updateListingStep3Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateListingStep3Data_updateListingStep3Builder toBuilder() =>
      new GupdateListingStep3Data_updateListingStep3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateListingStep3Data_updateListingStep3 &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GupdateListingStep3Data_updateListingStep3')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('actionType', actionType))
        .toString();
  }
}

class GupdateListingStep3Data_updateListingStep3Builder
    implements
        Builder<GupdateListingStep3Data_updateListingStep3,
            GupdateListingStep3Data_updateListingStep3Builder> {
  _$GupdateListingStep3Data_updateListingStep3? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateListingStep3Data_updateListingStep3_resultsBuilder? _results;
  GupdateListingStep3Data_updateListingStep3_resultsBuilder get results =>
      _$this._results ??=
          new GupdateListingStep3Data_updateListingStep3_resultsBuilder();
  set results(
          GupdateListingStep3Data_updateListingStep3_resultsBuilder? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _actionType;
  String? get actionType => _$this._actionType;
  set actionType(String? actionType) => _$this._actionType = actionType;

  GupdateListingStep3Data_updateListingStep3Builder() {
    GupdateListingStep3Data_updateListingStep3._initializeBuilder(this);
  }

  GupdateListingStep3Data_updateListingStep3Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateListingStep3Data_updateListingStep3 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateListingStep3Data_updateListingStep3;
  }

  @override
  void update(
      void Function(GupdateListingStep3Data_updateListingStep3Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateListingStep3Data_updateListingStep3 build() => _build();

  _$GupdateListingStep3Data_updateListingStep3 _build() {
    _$GupdateListingStep3Data_updateListingStep3 _$result;
    try {
      _$result = _$v ??
          new _$GupdateListingStep3Data_updateListingStep3._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GupdateListingStep3Data_updateListingStep3', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage,
              actionType: actionType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateListingStep3Data_updateListingStep3',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateListingStep3Data_updateListingStep3_results
    extends GupdateListingStep3Data_updateListingStep3_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final BuiltList<int?>? carRules;
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
  final double? basePrice;
  @override
  final double? delivery;
  @override
  final String? currency;
  @override
  final double? weeklyDiscount;
  @override
  final double? monthlyDiscount;
  @override
  final BuiltList<String?>? blockedDates;
  @override
  final String? bookingType;
  @override
  final String? cancellationPolicy;
  @override
  final double? securityDeposit;

  factory _$GupdateListingStep3Data_updateListingStep3_results(
          [void Function(
                  GupdateListingStep3Data_updateListingStep3_resultsBuilder)?
              updates]) =>
      (new GupdateListingStep3Data_updateListingStep3_resultsBuilder()
            ..update(updates))
          ._build();

  _$GupdateListingStep3Data_updateListingStep3_results._(
      {required this.G__typename,
      this.id,
      this.carRules,
      this.bookingNoticeTime,
      this.checkInStart,
      this.checkInEnd,
      this.maxDaysNotice,
      this.minDay,
      this.maxDay,
      this.basePrice,
      this.delivery,
      this.currency,
      this.weeklyDiscount,
      this.monthlyDiscount,
      this.blockedDates,
      this.bookingType,
      this.cancellationPolicy,
      this.securityDeposit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GupdateListingStep3Data_updateListingStep3_results', 'G__typename');
  }

  @override
  GupdateListingStep3Data_updateListingStep3_results rebuild(
          void Function(
                  GupdateListingStep3Data_updateListingStep3_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateListingStep3Data_updateListingStep3_resultsBuilder toBuilder() =>
      new GupdateListingStep3Data_updateListingStep3_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateListingStep3Data_updateListingStep3_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        carRules == other.carRules &&
        bookingNoticeTime == other.bookingNoticeTime &&
        checkInStart == other.checkInStart &&
        checkInEnd == other.checkInEnd &&
        maxDaysNotice == other.maxDaysNotice &&
        minDay == other.minDay &&
        maxDay == other.maxDay &&
        basePrice == other.basePrice &&
        delivery == other.delivery &&
        currency == other.currency &&
        weeklyDiscount == other.weeklyDiscount &&
        monthlyDiscount == other.monthlyDiscount &&
        blockedDates == other.blockedDates &&
        bookingType == other.bookingType &&
        cancellationPolicy == other.cancellationPolicy &&
        securityDeposit == other.securityDeposit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, carRules.hashCode);
    _$hash = $jc(_$hash, bookingNoticeTime.hashCode);
    _$hash = $jc(_$hash, checkInStart.hashCode);
    _$hash = $jc(_$hash, checkInEnd.hashCode);
    _$hash = $jc(_$hash, maxDaysNotice.hashCode);
    _$hash = $jc(_$hash, minDay.hashCode);
    _$hash = $jc(_$hash, maxDay.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, weeklyDiscount.hashCode);
    _$hash = $jc(_$hash, monthlyDiscount.hashCode);
    _$hash = $jc(_$hash, blockedDates.hashCode);
    _$hash = $jc(_$hash, bookingType.hashCode);
    _$hash = $jc(_$hash, cancellationPolicy.hashCode);
    _$hash = $jc(_$hash, securityDeposit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GupdateListingStep3Data_updateListingStep3_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('carRules', carRules)
          ..add('bookingNoticeTime', bookingNoticeTime)
          ..add('checkInStart', checkInStart)
          ..add('checkInEnd', checkInEnd)
          ..add('maxDaysNotice', maxDaysNotice)
          ..add('minDay', minDay)
          ..add('maxDay', maxDay)
          ..add('basePrice', basePrice)
          ..add('delivery', delivery)
          ..add('currency', currency)
          ..add('weeklyDiscount', weeklyDiscount)
          ..add('monthlyDiscount', monthlyDiscount)
          ..add('blockedDates', blockedDates)
          ..add('bookingType', bookingType)
          ..add('cancellationPolicy', cancellationPolicy)
          ..add('securityDeposit', securityDeposit))
        .toString();
  }
}

class GupdateListingStep3Data_updateListingStep3_resultsBuilder
    implements
        Builder<GupdateListingStep3Data_updateListingStep3_results,
            GupdateListingStep3Data_updateListingStep3_resultsBuilder> {
  _$GupdateListingStep3Data_updateListingStep3_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<int?>? _carRules;
  ListBuilder<int?> get carRules =>
      _$this._carRules ??= new ListBuilder<int?>();
  set carRules(ListBuilder<int?>? carRules) => _$this._carRules = carRules;

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

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

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

  ListBuilder<String?>? _blockedDates;
  ListBuilder<String?> get blockedDates =>
      _$this._blockedDates ??= new ListBuilder<String?>();
  set blockedDates(ListBuilder<String?>? blockedDates) =>
      _$this._blockedDates = blockedDates;

  String? _bookingType;
  String? get bookingType => _$this._bookingType;
  set bookingType(String? bookingType) => _$this._bookingType = bookingType;

  String? _cancellationPolicy;
  String? get cancellationPolicy => _$this._cancellationPolicy;
  set cancellationPolicy(String? cancellationPolicy) =>
      _$this._cancellationPolicy = cancellationPolicy;

  double? _securityDeposit;
  double? get securityDeposit => _$this._securityDeposit;
  set securityDeposit(double? securityDeposit) =>
      _$this._securityDeposit = securityDeposit;

  GupdateListingStep3Data_updateListingStep3_resultsBuilder() {
    GupdateListingStep3Data_updateListingStep3_results._initializeBuilder(this);
  }

  GupdateListingStep3Data_updateListingStep3_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _carRules = $v.carRules?.toBuilder();
      _bookingNoticeTime = $v.bookingNoticeTime;
      _checkInStart = $v.checkInStart;
      _checkInEnd = $v.checkInEnd;
      _maxDaysNotice = $v.maxDaysNotice;
      _minDay = $v.minDay;
      _maxDay = $v.maxDay;
      _basePrice = $v.basePrice;
      _delivery = $v.delivery;
      _currency = $v.currency;
      _weeklyDiscount = $v.weeklyDiscount;
      _monthlyDiscount = $v.monthlyDiscount;
      _blockedDates = $v.blockedDates?.toBuilder();
      _bookingType = $v.bookingType;
      _cancellationPolicy = $v.cancellationPolicy;
      _securityDeposit = $v.securityDeposit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateListingStep3Data_updateListingStep3_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateListingStep3Data_updateListingStep3_results;
  }

  @override
  void update(
      void Function(GupdateListingStep3Data_updateListingStep3_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateListingStep3Data_updateListingStep3_results build() => _build();

  _$GupdateListingStep3Data_updateListingStep3_results _build() {
    _$GupdateListingStep3Data_updateListingStep3_results _$result;
    try {
      _$result = _$v ??
          new _$GupdateListingStep3Data_updateListingStep3_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GupdateListingStep3Data_updateListingStep3_results',
                  'G__typename'),
              id: id,
              carRules: _carRules?.build(),
              bookingNoticeTime: bookingNoticeTime,
              checkInStart: checkInStart,
              checkInEnd: checkInEnd,
              maxDaysNotice: maxDaysNotice,
              minDay: minDay,
              maxDay: maxDay,
              basePrice: basePrice,
              delivery: delivery,
              currency: currency,
              weeklyDiscount: weeklyDiscount,
              monthlyDiscount: monthlyDiscount,
              blockedDates: _blockedDates?.build(),
              bookingType: bookingType,
              cancellationPolicy: cancellationPolicy,
              securityDeposit: securityDeposit);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carRules';
        _carRules?.build();

        _$failedField = 'blockedDates';
        _blockedDates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateListingStep3Data_updateListingStep3_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveListPhotosData extends GRemoveListPhotosData {
  @override
  final String G__typename;
  @override
  final GRemoveListPhotosData_removeListPhotos? removeListPhotos;

  factory _$GRemoveListPhotosData(
          [void Function(GRemoveListPhotosDataBuilder)? updates]) =>
      (new GRemoveListPhotosDataBuilder()..update(updates))._build();

  _$GRemoveListPhotosData._({required this.G__typename, this.removeListPhotos})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveListPhotosData', 'G__typename');
  }

  @override
  GRemoveListPhotosData rebuild(
          void Function(GRemoveListPhotosDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveListPhotosDataBuilder toBuilder() =>
      new GRemoveListPhotosDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveListPhotosData &&
        G__typename == other.G__typename &&
        removeListPhotos == other.removeListPhotos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeListPhotos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveListPhotosData')
          ..add('G__typename', G__typename)
          ..add('removeListPhotos', removeListPhotos))
        .toString();
  }
}

class GRemoveListPhotosDataBuilder
    implements Builder<GRemoveListPhotosData, GRemoveListPhotosDataBuilder> {
  _$GRemoveListPhotosData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRemoveListPhotosData_removeListPhotosBuilder? _removeListPhotos;
  GRemoveListPhotosData_removeListPhotosBuilder get removeListPhotos =>
      _$this._removeListPhotos ??=
          new GRemoveListPhotosData_removeListPhotosBuilder();
  set removeListPhotos(
          GRemoveListPhotosData_removeListPhotosBuilder? removeListPhotos) =>
      _$this._removeListPhotos = removeListPhotos;

  GRemoveListPhotosDataBuilder() {
    GRemoveListPhotosData._initializeBuilder(this);
  }

  GRemoveListPhotosDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeListPhotos = $v.removeListPhotos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveListPhotosData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveListPhotosData;
  }

  @override
  void update(void Function(GRemoveListPhotosDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveListPhotosData build() => _build();

  _$GRemoveListPhotosData _build() {
    _$GRemoveListPhotosData _$result;
    try {
      _$result = _$v ??
          new _$GRemoveListPhotosData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemoveListPhotosData', 'G__typename'),
              removeListPhotos: _removeListPhotos?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeListPhotos';
        _removeListPhotos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemoveListPhotosData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveListPhotosData_removeListPhotos
    extends GRemoveListPhotosData_removeListPhotos {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GRemoveListPhotosData_removeListPhotos(
          [void Function(GRemoveListPhotosData_removeListPhotosBuilder)?
              updates]) =>
      (new GRemoveListPhotosData_removeListPhotosBuilder()..update(updates))
          ._build();

  _$GRemoveListPhotosData_removeListPhotos._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveListPhotosData_removeListPhotos', 'G__typename');
  }

  @override
  GRemoveListPhotosData_removeListPhotos rebuild(
          void Function(GRemoveListPhotosData_removeListPhotosBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveListPhotosData_removeListPhotosBuilder toBuilder() =>
      new GRemoveListPhotosData_removeListPhotosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveListPhotosData_removeListPhotos &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GRemoveListPhotosData_removeListPhotos')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GRemoveListPhotosData_removeListPhotosBuilder
    implements
        Builder<GRemoveListPhotosData_removeListPhotos,
            GRemoveListPhotosData_removeListPhotosBuilder> {
  _$GRemoveListPhotosData_removeListPhotos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GRemoveListPhotosData_removeListPhotosBuilder() {
    GRemoveListPhotosData_removeListPhotos._initializeBuilder(this);
  }

  GRemoveListPhotosData_removeListPhotosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveListPhotosData_removeListPhotos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveListPhotosData_removeListPhotos;
  }

  @override
  void update(
      void Function(GRemoveListPhotosData_removeListPhotosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveListPhotosData_removeListPhotos build() => _build();

  _$GRemoveListPhotosData_removeListPhotos _build() {
    final _$result = _$v ??
        new _$GRemoveListPhotosData_removeListPhotos._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GRemoveListPhotosData_removeListPhotos', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
