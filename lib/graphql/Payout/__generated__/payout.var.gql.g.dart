// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetPayoutsVars> _$ggetPayoutsVarsSerializer =
    new _$GgetPayoutsVarsSerializer();
Serializer<GconfirmPayoutVars> _$gconfirmPayoutVarsSerializer =
    new _$GconfirmPayoutVarsSerializer();
Serializer<GsetDefaultPayoutVars> _$gsetDefaultPayoutVarsSerializer =
    new _$GsetDefaultPayoutVarsSerializer();
Serializer<GgetPaymentMethodsVars> _$ggetPaymentMethodsVarsSerializer =
    new _$GgetPaymentMethodsVarsSerializer();
Serializer<GaddPayoutVars> _$gaddPayoutVarsSerializer =
    new _$GaddPayoutVarsSerializer();
Serializer<GverifyPayoutVars> _$gverifyPayoutVarsSerializer =
    new _$GverifyPayoutVarsSerializer();

class _$GgetPayoutsVarsSerializer
    implements StructuredSerializer<GgetPayoutsVars> {
  @override
  final Iterable<Type> types = const [GgetPayoutsVars, _$GgetPayoutsVars];
  @override
  final String wireName = 'GgetPayoutsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetPayoutsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetPayoutsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetPayoutsVarsBuilder().build();
  }
}

class _$GconfirmPayoutVarsSerializer
    implements StructuredSerializer<GconfirmPayoutVars> {
  @override
  final Iterable<Type> types = const [GconfirmPayoutVars, _$GconfirmPayoutVars];
  @override
  final String wireName = 'GconfirmPayoutVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmPayoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.currentAccountId;
    if (value != null) {
      result
        ..add('currentAccountId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GconfirmPayoutVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmPayoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currentAccountId':
          result.currentAccountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsetDefaultPayoutVarsSerializer
    implements StructuredSerializer<GsetDefaultPayoutVars> {
  @override
  final Iterable<Type> types = const [
    GsetDefaultPayoutVars,
    _$GsetDefaultPayoutVars
  ];
  @override
  final String wireName = 'GsetDefaultPayoutVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsetDefaultPayoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GsetDefaultPayoutVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsetDefaultPayoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentMethodsVarsSerializer
    implements StructuredSerializer<GgetPaymentMethodsVars> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentMethodsVars,
    _$GgetPaymentMethodsVars
  ];
  @override
  final String wireName = 'GgetPaymentMethodsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPaymentMethodsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetPaymentMethodsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgetPaymentMethodsVarsBuilder().build();
  }
}

class _$GaddPayoutVarsSerializer
    implements StructuredSerializer<GaddPayoutVars> {
  @override
  final Iterable<Type> types = const [GaddPayoutVars, _$GaddPayoutVars];
  @override
  final String wireName = 'GaddPayoutVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GaddPayoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'methodId',
      serializers.serialize(object.methodId,
          specifiedType: const FullType(int)),
      'payEmail',
      serializers.serialize(object.payEmail,
          specifiedType: const FullType(String)),
      'address1',
      serializers.serialize(object.address1,
          specifiedType: const FullType(String)),
      'address2',
      serializers.serialize(object.address2,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'zipcode',
      serializers.serialize(object.zipcode,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstname;
    if (value != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountNumber;
    if (value != null) {
      result
        ..add('accountNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.routingNumber;
    if (value != null) {
      result
        ..add('routingNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.businessType;
    if (value != null) {
      result
        ..add('businessType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountToken;
    if (value != null) {
      result
        ..add('accountToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.personToken;
    if (value != null) {
      result
        ..add('personToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GaddPayoutVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddPayoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'methodId':
          result.methodId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'payEmail':
          result.payEmail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accountNumber':
          result.accountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'routingNumber':
          result.routingNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'businessType':
          result.businessType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accountToken':
          result.accountToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'personToken':
          result.personToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GverifyPayoutVarsSerializer
    implements StructuredSerializer<GverifyPayoutVars> {
  @override
  final Iterable<Type> types = const [GverifyPayoutVars, _$GverifyPayoutVars];
  @override
  final String wireName = 'GverifyPayoutVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GverifyPayoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.stripeAccount;
    if (value != null) {
      result
        ..add('stripeAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GverifyPayoutVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GverifyPayoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'stripeAccount':
          result.stripeAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPayoutsVars extends GgetPayoutsVars {
  factory _$GgetPayoutsVars([void Function(GgetPayoutsVarsBuilder)? updates]) =>
      (new GgetPayoutsVarsBuilder()..update(updates))._build();

  _$GgetPayoutsVars._() : super._();

  @override
  GgetPayoutsVars rebuild(void Function(GgetPayoutsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPayoutsVarsBuilder toBuilder() =>
      new GgetPayoutsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPayoutsVars;
  }

  @override
  int get hashCode {
    return 810404501;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetPayoutsVars').toString();
  }
}

class GgetPayoutsVarsBuilder
    implements Builder<GgetPayoutsVars, GgetPayoutsVarsBuilder> {
  _$GgetPayoutsVars? _$v;

  GgetPayoutsVarsBuilder();

  @override
  void replace(GgetPayoutsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPayoutsVars;
  }

  @override
  void update(void Function(GgetPayoutsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPayoutsVars build() => _build();

  _$GgetPayoutsVars _build() {
    final _$result = _$v ?? new _$GgetPayoutsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GconfirmPayoutVars extends GconfirmPayoutVars {
  @override
  final String? currentAccountId;

  factory _$GconfirmPayoutVars(
          [void Function(GconfirmPayoutVarsBuilder)? updates]) =>
      (new GconfirmPayoutVarsBuilder()..update(updates))._build();

  _$GconfirmPayoutVars._({this.currentAccountId}) : super._();

  @override
  GconfirmPayoutVars rebuild(
          void Function(GconfirmPayoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPayoutVarsBuilder toBuilder() =>
      new GconfirmPayoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmPayoutVars &&
        currentAccountId == other.currentAccountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentAccountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmPayoutVars')
          ..add('currentAccountId', currentAccountId))
        .toString();
  }
}

class GconfirmPayoutVarsBuilder
    implements Builder<GconfirmPayoutVars, GconfirmPayoutVarsBuilder> {
  _$GconfirmPayoutVars? _$v;

  String? _currentAccountId;
  String? get currentAccountId => _$this._currentAccountId;
  set currentAccountId(String? currentAccountId) =>
      _$this._currentAccountId = currentAccountId;

  GconfirmPayoutVarsBuilder();

  GconfirmPayoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentAccountId = $v.currentAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmPayoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPayoutVars;
  }

  @override
  void update(void Function(GconfirmPayoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPayoutVars build() => _build();

  _$GconfirmPayoutVars _build() {
    final _$result =
        _$v ?? new _$GconfirmPayoutVars._(currentAccountId: currentAccountId);
    replace(_$result);
    return _$result;
  }
}

class _$GsetDefaultPayoutVars extends GsetDefaultPayoutVars {
  @override
  final int id;
  @override
  final String type;

  factory _$GsetDefaultPayoutVars(
          [void Function(GsetDefaultPayoutVarsBuilder)? updates]) =>
      (new GsetDefaultPayoutVarsBuilder()..update(updates))._build();

  _$GsetDefaultPayoutVars._({required this.id, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GsetDefaultPayoutVars', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GsetDefaultPayoutVars', 'type');
  }

  @override
  GsetDefaultPayoutVars rebuild(
          void Function(GsetDefaultPayoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsetDefaultPayoutVarsBuilder toBuilder() =>
      new GsetDefaultPayoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsetDefaultPayoutVars &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsetDefaultPayoutVars')
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class GsetDefaultPayoutVarsBuilder
    implements Builder<GsetDefaultPayoutVars, GsetDefaultPayoutVarsBuilder> {
  _$GsetDefaultPayoutVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GsetDefaultPayoutVarsBuilder();

  GsetDefaultPayoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsetDefaultPayoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsetDefaultPayoutVars;
  }

  @override
  void update(void Function(GsetDefaultPayoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsetDefaultPayoutVars build() => _build();

  _$GsetDefaultPayoutVars _build() {
    final _$result = _$v ??
        new _$GsetDefaultPayoutVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GsetDefaultPayoutVars', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GsetDefaultPayoutVars', 'type'));
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentMethodsVars extends GgetPaymentMethodsVars {
  factory _$GgetPaymentMethodsVars(
          [void Function(GgetPaymentMethodsVarsBuilder)? updates]) =>
      (new GgetPaymentMethodsVarsBuilder()..update(updates))._build();

  _$GgetPaymentMethodsVars._() : super._();

  @override
  GgetPaymentMethodsVars rebuild(
          void Function(GgetPaymentMethodsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentMethodsVarsBuilder toBuilder() =>
      new GgetPaymentMethodsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentMethodsVars;
  }

  @override
  int get hashCode {
    return 79101008;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetPaymentMethodsVars').toString();
  }
}

class GgetPaymentMethodsVarsBuilder
    implements Builder<GgetPaymentMethodsVars, GgetPaymentMethodsVarsBuilder> {
  _$GgetPaymentMethodsVars? _$v;

  GgetPaymentMethodsVarsBuilder();

  @override
  void replace(GgetPaymentMethodsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentMethodsVars;
  }

  @override
  void update(void Function(GgetPaymentMethodsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentMethodsVars build() => _build();

  _$GgetPaymentMethodsVars _build() {
    final _$result = _$v ?? new _$GgetPaymentMethodsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GaddPayoutVars extends GaddPayoutVars {
  @override
  final int methodId;
  @override
  final String payEmail;
  @override
  final String address1;
  @override
  final String address2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final String zipcode;
  @override
  final String currency;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? accountNumber;
  @override
  final String? routingNumber;
  @override
  final String? businessType;
  @override
  final String? accountToken;
  @override
  final String? personToken;

  factory _$GaddPayoutVars([void Function(GaddPayoutVarsBuilder)? updates]) =>
      (new GaddPayoutVarsBuilder()..update(updates))._build();

  _$GaddPayoutVars._(
      {required this.methodId,
      required this.payEmail,
      required this.address1,
      required this.address2,
      required this.city,
      required this.state,
      required this.country,
      required this.zipcode,
      required this.currency,
      this.firstname,
      this.lastname,
      this.accountNumber,
      this.routingNumber,
      this.businessType,
      this.accountToken,
      this.personToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        methodId, r'GaddPayoutVars', 'methodId');
    BuiltValueNullFieldError.checkNotNull(
        payEmail, r'GaddPayoutVars', 'payEmail');
    BuiltValueNullFieldError.checkNotNull(
        address1, r'GaddPayoutVars', 'address1');
    BuiltValueNullFieldError.checkNotNull(
        address2, r'GaddPayoutVars', 'address2');
    BuiltValueNullFieldError.checkNotNull(city, r'GaddPayoutVars', 'city');
    BuiltValueNullFieldError.checkNotNull(state, r'GaddPayoutVars', 'state');
    BuiltValueNullFieldError.checkNotNull(
        country, r'GaddPayoutVars', 'country');
    BuiltValueNullFieldError.checkNotNull(
        zipcode, r'GaddPayoutVars', 'zipcode');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'GaddPayoutVars', 'currency');
  }

  @override
  GaddPayoutVars rebuild(void Function(GaddPayoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddPayoutVarsBuilder toBuilder() =>
      new GaddPayoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddPayoutVars &&
        methodId == other.methodId &&
        payEmail == other.payEmail &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        zipcode == other.zipcode &&
        currency == other.currency &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        accountNumber == other.accountNumber &&
        routingNumber == other.routingNumber &&
        businessType == other.businessType &&
        accountToken == other.accountToken &&
        personToken == other.personToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, methodId.hashCode);
    _$hash = $jc(_$hash, payEmail.hashCode);
    _$hash = $jc(_$hash, address1.hashCode);
    _$hash = $jc(_$hash, address2.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, zipcode.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, routingNumber.hashCode);
    _$hash = $jc(_$hash, businessType.hashCode);
    _$hash = $jc(_$hash, accountToken.hashCode);
    _$hash = $jc(_$hash, personToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GaddPayoutVars')
          ..add('methodId', methodId)
          ..add('payEmail', payEmail)
          ..add('address1', address1)
          ..add('address2', address2)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('zipcode', zipcode)
          ..add('currency', currency)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('accountNumber', accountNumber)
          ..add('routingNumber', routingNumber)
          ..add('businessType', businessType)
          ..add('accountToken', accountToken)
          ..add('personToken', personToken))
        .toString();
  }
}

class GaddPayoutVarsBuilder
    implements Builder<GaddPayoutVars, GaddPayoutVarsBuilder> {
  _$GaddPayoutVars? _$v;

  int? _methodId;
  int? get methodId => _$this._methodId;
  set methodId(int? methodId) => _$this._methodId = methodId;

  String? _payEmail;
  String? get payEmail => _$this._payEmail;
  set payEmail(String? payEmail) => _$this._payEmail = payEmail;

  String? _address1;
  String? get address1 => _$this._address1;
  set address1(String? address1) => _$this._address1 = address1;

  String? _address2;
  String? get address2 => _$this._address2;
  set address2(String? address2) => _$this._address2 = address2;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _routingNumber;
  String? get routingNumber => _$this._routingNumber;
  set routingNumber(String? routingNumber) =>
      _$this._routingNumber = routingNumber;

  String? _businessType;
  String? get businessType => _$this._businessType;
  set businessType(String? businessType) => _$this._businessType = businessType;

  String? _accountToken;
  String? get accountToken => _$this._accountToken;
  set accountToken(String? accountToken) => _$this._accountToken = accountToken;

  String? _personToken;
  String? get personToken => _$this._personToken;
  set personToken(String? personToken) => _$this._personToken = personToken;

  GaddPayoutVarsBuilder();

  GaddPayoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _methodId = $v.methodId;
      _payEmail = $v.payEmail;
      _address1 = $v.address1;
      _address2 = $v.address2;
      _city = $v.city;
      _state = $v.state;
      _country = $v.country;
      _zipcode = $v.zipcode;
      _currency = $v.currency;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _accountNumber = $v.accountNumber;
      _routingNumber = $v.routingNumber;
      _businessType = $v.businessType;
      _accountToken = $v.accountToken;
      _personToken = $v.personToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddPayoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddPayoutVars;
  }

  @override
  void update(void Function(GaddPayoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GaddPayoutVars build() => _build();

  _$GaddPayoutVars _build() {
    final _$result = _$v ??
        new _$GaddPayoutVars._(
            methodId: BuiltValueNullFieldError.checkNotNull(
                methodId, r'GaddPayoutVars', 'methodId'),
            payEmail: BuiltValueNullFieldError.checkNotNull(
                payEmail, r'GaddPayoutVars', 'payEmail'),
            address1: BuiltValueNullFieldError.checkNotNull(
                address1, r'GaddPayoutVars', 'address1'),
            address2: BuiltValueNullFieldError.checkNotNull(
                address2, r'GaddPayoutVars', 'address2'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, r'GaddPayoutVars', 'city'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'GaddPayoutVars', 'state'),
            country: BuiltValueNullFieldError.checkNotNull(
                country, r'GaddPayoutVars', 'country'),
            zipcode: BuiltValueNullFieldError.checkNotNull(
                zipcode, r'GaddPayoutVars', 'zipcode'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'GaddPayoutVars', 'currency'),
            firstname: firstname,
            lastname: lastname,
            accountNumber: accountNumber,
            routingNumber: routingNumber,
            businessType: businessType,
            accountToken: accountToken,
            personToken: personToken);
    replace(_$result);
    return _$result;
  }
}

class _$GverifyPayoutVars extends GverifyPayoutVars {
  @override
  final String? stripeAccount;

  factory _$GverifyPayoutVars(
          [void Function(GverifyPayoutVarsBuilder)? updates]) =>
      (new GverifyPayoutVarsBuilder()..update(updates))._build();

  _$GverifyPayoutVars._({this.stripeAccount}) : super._();

  @override
  GverifyPayoutVars rebuild(void Function(GverifyPayoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GverifyPayoutVarsBuilder toBuilder() =>
      new GverifyPayoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GverifyPayoutVars && stripeAccount == other.stripeAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stripeAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GverifyPayoutVars')
          ..add('stripeAccount', stripeAccount))
        .toString();
  }
}

class GverifyPayoutVarsBuilder
    implements Builder<GverifyPayoutVars, GverifyPayoutVarsBuilder> {
  _$GverifyPayoutVars? _$v;

  String? _stripeAccount;
  String? get stripeAccount => _$this._stripeAccount;
  set stripeAccount(String? stripeAccount) =>
      _$this._stripeAccount = stripeAccount;

  GverifyPayoutVarsBuilder();

  GverifyPayoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stripeAccount = $v.stripeAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GverifyPayoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GverifyPayoutVars;
  }

  @override
  void update(void Function(GverifyPayoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GverifyPayoutVars build() => _build();

  _$GverifyPayoutVars _build() {
    final _$result =
        _$v ?? new _$GverifyPayoutVars._(stripeAccount: stripeAccount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
