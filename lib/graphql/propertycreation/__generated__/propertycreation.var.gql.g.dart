// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propertycreation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreateListingVars> _$gcreateListingVarsSerializer =
    new _$GcreateListingVarsSerializer();
Serializer<GUpdateListingStep2Vars> _$gUpdateListingStep2VarsSerializer =
    new _$GUpdateListingStep2VarsSerializer();
Serializer<GmanagePublishStatusVars> _$gmanagePublishStatusVarsSerializer =
    new _$GmanagePublishStatusVarsSerializer();
Serializer<GmanageListingStepsVars> _$gmanageListingStepsVarsSerializer =
    new _$GmanageListingStepsVarsSerializer();
Serializer<GupdateListingStep3Vars> _$gupdateListingStep3VarsSerializer =
    new _$GupdateListingStep3VarsSerializer();
Serializer<GRemoveListPhotosVars> _$gRemoveListPhotosVarsSerializer =
    new _$GRemoveListPhotosVarsSerializer();

class _$GcreateListingVarsSerializer
    implements StructuredSerializer<GcreateListingVars> {
  @override
  final Iterable<Type> types = const [GcreateListingVars, _$GcreateListingVars];
  @override
  final String wireName = 'GcreateListingVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateListingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
  GcreateListingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateListingVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$GUpdateListingStep2VarsSerializer
    implements StructuredSerializer<GUpdateListingStep2Vars> {
  @override
  final Iterable<Type> types = const [
    GUpdateListingStep2Vars,
    _$GUpdateListingStep2Vars
  ];
  @override
  final String wireName = 'GUpdateListingStep2Vars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateListingStep2Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('coverPhoto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dynamicListTitleandDesc;
    if (value != null) {
      result
        ..add('dynamicListTitleandDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateListingStep2Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateListingStep2VarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverPhoto':
          result.coverPhoto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dynamicListTitleandDesc':
          result.dynamicListTitleandDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GmanagePublishStatusVarsSerializer
    implements StructuredSerializer<GmanagePublishStatusVars> {
  @override
  final Iterable<Type> types = const [
    GmanagePublishStatusVars,
    _$GmanagePublishStatusVars
  ];
  @override
  final String wireName = 'GmanagePublishStatusVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmanagePublishStatusVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GmanagePublishStatusVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmanagePublishStatusVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GmanageListingStepsVarsSerializer
    implements StructuredSerializer<GmanageListingStepsVars> {
  @override
  final Iterable<Type> types = const [
    GmanageListingStepsVars,
    _$GmanageListingStepsVars
  ];
  @override
  final String wireName = 'GmanageListingStepsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmanageListingStepsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId,
          specifiedType: const FullType(String)),
      'currentStep',
      serializers.serialize(object.currentStep,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GmanageListingStepsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmanageListingStepsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentStep':
          result.currentStep = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateListingStep3VarsSerializer
    implements StructuredSerializer<GupdateListingStep3Vars> {
  @override
  final Iterable<Type> types = const [
    GupdateListingStep3Vars,
    _$GupdateListingStep3Vars
  ];
  @override
  final String wireName = 'GupdateListingStep3Vars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateListingStep3Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bookingType',
      serializers.serialize(object.bookingType,
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
    return result;
  }

  @override
  GupdateListingStep3Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateListingStep3VarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
              specifiedType: const FullType(String))! as String;
          break;
        case 'cancellationPolicy':
          result.cancellationPolicy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$GRemoveListPhotosVarsSerializer
    implements StructuredSerializer<GRemoveListPhotosVars> {
  @override
  final Iterable<Type> types = const [
    GRemoveListPhotosVars,
    _$GRemoveListPhotosVars
  ];
  @override
  final String wireName = 'GRemoveListPhotosVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveListPhotosVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listId',
      serializers.serialize(object.listId, specifiedType: const FullType(int)),
    ];
    Object? value;
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
  GRemoveListPhotosVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveListPhotosVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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

class _$GcreateListingVars extends GcreateListingVars {
  @override
  final int? listId;
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

  factory _$GcreateListingVars(
          [void Function(GcreateListingVarsBuilder)? updates]) =>
      (new GcreateListingVarsBuilder()..update(updates))._build();

  _$GcreateListingVars._(
      {this.listId,
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
      : super._();

  @override
  GcreateListingVars rebuild(
          void Function(GcreateListingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateListingVarsBuilder toBuilder() =>
      new GcreateListingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateListingVars &&
        listId == other.listId &&
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
    _$hash = $jc(_$hash, listId.hashCode);
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
    return (newBuiltValueToStringHelper(r'GcreateListingVars')
          ..add('listId', listId)
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

class GcreateListingVarsBuilder
    implements Builder<GcreateListingVars, GcreateListingVarsBuilder> {
  _$GcreateListingVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

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

  GcreateListingVarsBuilder();

  GcreateListingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
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
  void replace(GcreateListingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateListingVars;
  }

  @override
  void update(void Function(GcreateListingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateListingVars build() => _build();

  _$GcreateListingVars _build() {
    _$GcreateListingVars _$result;
    try {
      _$result = _$v ??
          new _$GcreateListingVars._(
              listId: listId,
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
            r'GcreateListingVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateListingStep2Vars extends GUpdateListingStep2Vars {
  @override
  final int? id;
  @override
  final String? description;
  @override
  final String? title;
  @override
  final int? coverPhoto;
  @override
  final String? dynamicListTitleandDesc;

  factory _$GUpdateListingStep2Vars(
          [void Function(GUpdateListingStep2VarsBuilder)? updates]) =>
      (new GUpdateListingStep2VarsBuilder()..update(updates))._build();

  _$GUpdateListingStep2Vars._(
      {this.id,
      this.description,
      this.title,
      this.coverPhoto,
      this.dynamicListTitleandDesc})
      : super._();

  @override
  GUpdateListingStep2Vars rebuild(
          void Function(GUpdateListingStep2VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateListingStep2VarsBuilder toBuilder() =>
      new GUpdateListingStep2VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateListingStep2Vars &&
        id == other.id &&
        description == other.description &&
        title == other.title &&
        coverPhoto == other.coverPhoto &&
        dynamicListTitleandDesc == other.dynamicListTitleandDesc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jc(_$hash, dynamicListTitleandDesc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateListingStep2Vars')
          ..add('id', id)
          ..add('description', description)
          ..add('title', title)
          ..add('coverPhoto', coverPhoto)
          ..add('dynamicListTitleandDesc', dynamicListTitleandDesc))
        .toString();
  }
}

class GUpdateListingStep2VarsBuilder
    implements
        Builder<GUpdateListingStep2Vars, GUpdateListingStep2VarsBuilder> {
  _$GUpdateListingStep2Vars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _coverPhoto;
  int? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(int? coverPhoto) => _$this._coverPhoto = coverPhoto;

  String? _dynamicListTitleandDesc;
  String? get dynamicListTitleandDesc => _$this._dynamicListTitleandDesc;
  set dynamicListTitleandDesc(String? dynamicListTitleandDesc) =>
      _$this._dynamicListTitleandDesc = dynamicListTitleandDesc;

  GUpdateListingStep2VarsBuilder();

  GUpdateListingStep2VarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _title = $v.title;
      _coverPhoto = $v.coverPhoto;
      _dynamicListTitleandDesc = $v.dynamicListTitleandDesc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateListingStep2Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateListingStep2Vars;
  }

  @override
  void update(void Function(GUpdateListingStep2VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateListingStep2Vars build() => _build();

  _$GUpdateListingStep2Vars _build() {
    final _$result = _$v ??
        new _$GUpdateListingStep2Vars._(
            id: id,
            description: description,
            title: title,
            coverPhoto: coverPhoto,
            dynamicListTitleandDesc: dynamicListTitleandDesc);
    replace(_$result);
    return _$result;
  }
}

class _$GmanagePublishStatusVars extends GmanagePublishStatusVars {
  @override
  final int listId;
  @override
  final String action;

  factory _$GmanagePublishStatusVars(
          [void Function(GmanagePublishStatusVarsBuilder)? updates]) =>
      (new GmanagePublishStatusVarsBuilder()..update(updates))._build();

  _$GmanagePublishStatusVars._({required this.listId, required this.action})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GmanagePublishStatusVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        action, r'GmanagePublishStatusVars', 'action');
  }

  @override
  GmanagePublishStatusVars rebuild(
          void Function(GmanagePublishStatusVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanagePublishStatusVarsBuilder toBuilder() =>
      new GmanagePublishStatusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanagePublishStatusVars &&
        listId == other.listId &&
        action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmanagePublishStatusVars')
          ..add('listId', listId)
          ..add('action', action))
        .toString();
  }
}

class GmanagePublishStatusVarsBuilder
    implements
        Builder<GmanagePublishStatusVars, GmanagePublishStatusVarsBuilder> {
  _$GmanagePublishStatusVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  GmanagePublishStatusVarsBuilder();

  GmanagePublishStatusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmanagePublishStatusVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanagePublishStatusVars;
  }

  @override
  void update(void Function(GmanagePublishStatusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanagePublishStatusVars build() => _build();

  _$GmanagePublishStatusVars _build() {
    final _$result = _$v ??
        new _$GmanagePublishStatusVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GmanagePublishStatusVars', 'listId'),
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'GmanagePublishStatusVars', 'action'));
    replace(_$result);
    return _$result;
  }
}

class _$GmanageListingStepsVars extends GmanageListingStepsVars {
  @override
  final String listId;
  @override
  final int currentStep;

  factory _$GmanageListingStepsVars(
          [void Function(GmanageListingStepsVarsBuilder)? updates]) =>
      (new GmanageListingStepsVarsBuilder()..update(updates))._build();

  _$GmanageListingStepsVars._({required this.listId, required this.currentStep})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GmanageListingStepsVars', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        currentStep, r'GmanageListingStepsVars', 'currentStep');
  }

  @override
  GmanageListingStepsVars rebuild(
          void Function(GmanageListingStepsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmanageListingStepsVarsBuilder toBuilder() =>
      new GmanageListingStepsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmanageListingStepsVars &&
        listId == other.listId &&
        currentStep == other.currentStep;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, currentStep.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmanageListingStepsVars')
          ..add('listId', listId)
          ..add('currentStep', currentStep))
        .toString();
  }
}

class GmanageListingStepsVarsBuilder
    implements
        Builder<GmanageListingStepsVars, GmanageListingStepsVarsBuilder> {
  _$GmanageListingStepsVars? _$v;

  String? _listId;
  String? get listId => _$this._listId;
  set listId(String? listId) => _$this._listId = listId;

  int? _currentStep;
  int? get currentStep => _$this._currentStep;
  set currentStep(int? currentStep) => _$this._currentStep = currentStep;

  GmanageListingStepsVarsBuilder();

  GmanageListingStepsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _currentStep = $v.currentStep;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmanageListingStepsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmanageListingStepsVars;
  }

  @override
  void update(void Function(GmanageListingStepsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmanageListingStepsVars build() => _build();

  _$GmanageListingStepsVars _build() {
    final _$result = _$v ??
        new _$GmanageListingStepsVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GmanageListingStepsVars', 'listId'),
            currentStep: BuiltValueNullFieldError.checkNotNull(
                currentStep, r'GmanageListingStepsVars', 'currentStep'));
    replace(_$result);
    return _$result;
  }
}

class _$GupdateListingStep3Vars extends GupdateListingStep3Vars {
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
  final String bookingType;
  @override
  final int? cancellationPolicy;
  @override
  final double? securityDeposit;

  factory _$GupdateListingStep3Vars(
          [void Function(GupdateListingStep3VarsBuilder)? updates]) =>
      (new GupdateListingStep3VarsBuilder()..update(updates))._build();

  _$GupdateListingStep3Vars._(
      {this.id,
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
      required this.bookingType,
      this.cancellationPolicy,
      this.securityDeposit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bookingType, r'GupdateListingStep3Vars', 'bookingType');
  }

  @override
  GupdateListingStep3Vars rebuild(
          void Function(GupdateListingStep3VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateListingStep3VarsBuilder toBuilder() =>
      new GupdateListingStep3VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateListingStep3Vars &&
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
    return (newBuiltValueToStringHelper(r'GupdateListingStep3Vars')
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

class GupdateListingStep3VarsBuilder
    implements
        Builder<GupdateListingStep3Vars, GupdateListingStep3VarsBuilder> {
  _$GupdateListingStep3Vars? _$v;

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

  int? _cancellationPolicy;
  int? get cancellationPolicy => _$this._cancellationPolicy;
  set cancellationPolicy(int? cancellationPolicy) =>
      _$this._cancellationPolicy = cancellationPolicy;

  double? _securityDeposit;
  double? get securityDeposit => _$this._securityDeposit;
  set securityDeposit(double? securityDeposit) =>
      _$this._securityDeposit = securityDeposit;

  GupdateListingStep3VarsBuilder();

  GupdateListingStep3VarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(GupdateListingStep3Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateListingStep3Vars;
  }

  @override
  void update(void Function(GupdateListingStep3VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateListingStep3Vars build() => _build();

  _$GupdateListingStep3Vars _build() {
    _$GupdateListingStep3Vars _$result;
    try {
      _$result = _$v ??
          new _$GupdateListingStep3Vars._(
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
              bookingType: BuiltValueNullFieldError.checkNotNull(
                  bookingType, r'GupdateListingStep3Vars', 'bookingType'),
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
            r'GupdateListingStep3Vars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveListPhotosVars extends GRemoveListPhotosVars {
  @override
  final int listId;
  @override
  final String? name;

  factory _$GRemoveListPhotosVars(
          [void Function(GRemoveListPhotosVarsBuilder)? updates]) =>
      (new GRemoveListPhotosVarsBuilder()..update(updates))._build();

  _$GRemoveListPhotosVars._({required this.listId, this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listId, r'GRemoveListPhotosVars', 'listId');
  }

  @override
  GRemoveListPhotosVars rebuild(
          void Function(GRemoveListPhotosVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveListPhotosVarsBuilder toBuilder() =>
      new GRemoveListPhotosVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveListPhotosVars &&
        listId == other.listId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveListPhotosVars')
          ..add('listId', listId)
          ..add('name', name))
        .toString();
  }
}

class GRemoveListPhotosVarsBuilder
    implements Builder<GRemoveListPhotosVars, GRemoveListPhotosVarsBuilder> {
  _$GRemoveListPhotosVars? _$v;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GRemoveListPhotosVarsBuilder();

  GRemoveListPhotosVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listId = $v.listId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveListPhotosVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveListPhotosVars;
  }

  @override
  void update(void Function(GRemoveListPhotosVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveListPhotosVars build() => _build();

  _$GRemoveListPhotosVars _build() {
    final _$result = _$v ??
        new _$GRemoveListPhotosVars._(
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, r'GRemoveListPhotosVars', 'listId'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
