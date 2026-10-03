// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchListing.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchListingVars> _$gSearchListingVarsSerializer =
    new _$GSearchListingVarsSerializer();

class _$GSearchListingVarsSerializer
    implements StructuredSerializer<GSearchListingVars> {
  @override
  final Iterable<Type> types = const [GSearchListingVars, _$GSearchListingVars];
  @override
  final String wireName = 'GSearchListingVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchListingVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.personCapacity;
    if (value != null) {
      result
        ..add('personCapacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dates;
    if (value != null) {
      result
        ..add('dates')
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
    value = object.carFeatures;
    if (value != null) {
      result
        ..add('carFeatures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.carType;
    if (value != null) {
      result
        ..add('carType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.carRules;
    if (value != null) {
      result
        ..add('carRules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.priceRange;
    if (value != null) {
      result
        ..add('priceRange')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.make;
    if (value != null) {
      result
        ..add('make')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.transmission;
    if (value != null) {
      result
        ..add('transmission')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bookingType;
    if (value != null) {
      result
        ..add('bookingType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GSearchListingVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchListingVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'personCapacity':
          result.personCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dates':
          result.dates = serializers.deserialize(value,
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
        case 'carFeatures':
          result.carFeatures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'carType':
          result.carType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'carRules':
          result.carRules.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'priceRange':
          result.priceRange.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'transmission':
          result.transmission = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bookingType':
          result.bookingType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GSearchListingVars extends GSearchListingVars {
  @override
  final int? personCapacity;
  @override
  final int? currentPage;
  @override
  final String? dates;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final BuiltList<int?>? carFeatures;
  @override
  final BuiltList<int?>? carType;
  @override
  final BuiltList<int?>? carRules;
  @override
  final BuiltList<int?>? priceRange;
  @override
  final String? address;
  @override
  final int? make;
  @override
  final int? transmission;
  @override
  final String? bookingType;
  @override
  final String? currency;

  factory _$GSearchListingVars(
          [void Function(GSearchListingVarsBuilder)? updates]) =>
      (new GSearchListingVarsBuilder()..update(updates))._build();

  _$GSearchListingVars._(
      {this.personCapacity,
      this.currentPage,
      this.dates,
      this.lat,
      this.lng,
      this.carFeatures,
      this.carType,
      this.carRules,
      this.priceRange,
      this.address,
      this.make,
      this.transmission,
      this.bookingType,
      this.currency})
      : super._();

  @override
  GSearchListingVars rebuild(
          void Function(GSearchListingVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchListingVarsBuilder toBuilder() =>
      new GSearchListingVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchListingVars &&
        personCapacity == other.personCapacity &&
        currentPage == other.currentPage &&
        dates == other.dates &&
        lat == other.lat &&
        lng == other.lng &&
        carFeatures == other.carFeatures &&
        carType == other.carType &&
        carRules == other.carRules &&
        priceRange == other.priceRange &&
        address == other.address &&
        make == other.make &&
        transmission == other.transmission &&
        bookingType == other.bookingType &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personCapacity.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, dates.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, carFeatures.hashCode);
    _$hash = $jc(_$hash, carType.hashCode);
    _$hash = $jc(_$hash, carRules.hashCode);
    _$hash = $jc(_$hash, priceRange.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, transmission.hashCode);
    _$hash = $jc(_$hash, bookingType.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchListingVars')
          ..add('personCapacity', personCapacity)
          ..add('currentPage', currentPage)
          ..add('dates', dates)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('carFeatures', carFeatures)
          ..add('carType', carType)
          ..add('carRules', carRules)
          ..add('priceRange', priceRange)
          ..add('address', address)
          ..add('make', make)
          ..add('transmission', transmission)
          ..add('bookingType', bookingType)
          ..add('currency', currency))
        .toString();
  }
}

class GSearchListingVarsBuilder
    implements Builder<GSearchListingVars, GSearchListingVarsBuilder> {
  _$GSearchListingVars? _$v;

  int? _personCapacity;
  int? get personCapacity => _$this._personCapacity;
  set personCapacity(int? personCapacity) =>
      _$this._personCapacity = personCapacity;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  String? _dates;
  String? get dates => _$this._dates;
  set dates(String? dates) => _$this._dates = dates;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lng;
  double? get lng => _$this._lng;
  set lng(double? lng) => _$this._lng = lng;

  ListBuilder<int?>? _carFeatures;
  ListBuilder<int?> get carFeatures =>
      _$this._carFeatures ??= new ListBuilder<int?>();
  set carFeatures(ListBuilder<int?>? carFeatures) =>
      _$this._carFeatures = carFeatures;

  ListBuilder<int?>? _carType;
  ListBuilder<int?> get carType => _$this._carType ??= new ListBuilder<int?>();
  set carType(ListBuilder<int?>? carType) => _$this._carType = carType;

  ListBuilder<int?>? _carRules;
  ListBuilder<int?> get carRules =>
      _$this._carRules ??= new ListBuilder<int?>();
  set carRules(ListBuilder<int?>? carRules) => _$this._carRules = carRules;

  ListBuilder<int?>? _priceRange;
  ListBuilder<int?> get priceRange =>
      _$this._priceRange ??= new ListBuilder<int?>();
  set priceRange(ListBuilder<int?>? priceRange) =>
      _$this._priceRange = priceRange;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  int? _make;
  int? get make => _$this._make;
  set make(int? make) => _$this._make = make;

  int? _transmission;
  int? get transmission => _$this._transmission;
  set transmission(int? transmission) => _$this._transmission = transmission;

  String? _bookingType;
  String? get bookingType => _$this._bookingType;
  set bookingType(String? bookingType) => _$this._bookingType = bookingType;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  GSearchListingVarsBuilder();

  GSearchListingVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personCapacity = $v.personCapacity;
      _currentPage = $v.currentPage;
      _dates = $v.dates;
      _lat = $v.lat;
      _lng = $v.lng;
      _carFeatures = $v.carFeatures?.toBuilder();
      _carType = $v.carType?.toBuilder();
      _carRules = $v.carRules?.toBuilder();
      _priceRange = $v.priceRange?.toBuilder();
      _address = $v.address;
      _make = $v.make;
      _transmission = $v.transmission;
      _bookingType = $v.bookingType;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchListingVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchListingVars;
  }

  @override
  void update(void Function(GSearchListingVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchListingVars build() => _build();

  _$GSearchListingVars _build() {
    _$GSearchListingVars _$result;
    try {
      _$result = _$v ??
          new _$GSearchListingVars._(
              personCapacity: personCapacity,
              currentPage: currentPage,
              dates: dates,
              lat: lat,
              lng: lng,
              carFeatures: _carFeatures?.build(),
              carType: _carType?.build(),
              carRules: _carRules?.build(),
              priceRange: _priceRange?.build(),
              address: address,
              make: make,
              transmission: transmission,
              bookingType: bookingType,
              currency: currency);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carFeatures';
        _carFeatures?.build();
        _$failedField = 'carType';
        _carType?.build();
        _$failedField = 'carRules';
        _carRules?.build();
        _$failedField = 'priceRange';
        _priceRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchListingVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
