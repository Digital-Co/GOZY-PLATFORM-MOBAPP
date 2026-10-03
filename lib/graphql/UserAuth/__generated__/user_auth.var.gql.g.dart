// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginVars> _$gLoginVarsSerializer = new _$GLoginVarsSerializer();
Serializer<GSignupVars> _$gSignupVarsSerializer = new _$GSignupVarsSerializer();
Serializer<GSocialLoginVars> _$gSocialLoginVarsSerializer =
    new _$GSocialLoginVarsSerializer();
Serializer<GLogoutVars> _$gLogoutVarsSerializer = new _$GLogoutVarsSerializer();
Serializer<GForgotPasswordVars> _$gForgotPasswordVarsSerializer =
    new _$GForgotPasswordVarsSerializer();
Serializer<GForgotPasswordVerificationVars>
    _$gForgotPasswordVerificationVarsSerializer =
    new _$GForgotPasswordVerificationVarsSerializer();
Serializer<GResetPasswordVars> _$gResetPasswordVarsSerializer =
    new _$GResetPasswordVarsSerializer();
Serializer<GdeleteUserVars> _$gdeleteUserVarsSerializer =
    new _$GdeleteUserVarsSerializer();

class _$GLoginVarsSerializer implements StructuredSerializer<GLoginVars> {
  @override
  final Iterable<Type> types = const [GLoginVars, _$GLoginVars];
  @override
  final String wireName = 'GLoginVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'deviceType',
      serializers.serialize(object.deviceType,
          specifiedType: const FullType(String)),
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deviceDetail;
    if (value != null) {
      result
        ..add('deviceDetail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLoginVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceType':
          result.deviceType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceDetail':
          result.deviceDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupVarsSerializer implements StructuredSerializer<GSignupVars> {
  @override
  final Iterable<Type> types = const [GSignupVars, _$GSignupVars];
  @override
  final String wireName = 'GSignupVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'deviceType',
      serializers.serialize(object.deviceType,
          specifiedType: const FullType(String)),
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceDetail;
    if (value != null) {
      result
        ..add('deviceDetail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registerType;
    if (value != null) {
      result
        ..add('registerType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSignupVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceType':
          result.deviceType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceDetail':
          result.deviceDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'registerType':
          result.registerType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginVarsSerializer
    implements StructuredSerializer<GSocialLoginVars> {
  @override
  final Iterable<Type> types = const [GSocialLoginVars, _$GSocialLoginVars];
  @override
  final String wireName = 'GSocialLoginVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSocialLoginVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'deviceType',
      serializers.serialize(object.deviceType,
          specifiedType: const FullType(String)),
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deviceDetail;
    if (value != null) {
      result
        ..add('deviceDetail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registerType;
    if (value != null) {
      result
        ..add('registerType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profilePicture;
    if (value != null) {
      result
        ..add('profilePicture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSocialLoginVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceType':
          result.deviceType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceDetail':
          result.deviceDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'registerType':
          result.registerType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profilePicture':
          result.profilePicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLogoutVarsSerializer implements StructuredSerializer<GLogoutVars> {
  @override
  final Iterable<Type> types = const [GLogoutVars, _$GLogoutVars];
  @override
  final String wireName = 'GLogoutVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLogoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deviceType',
      serializers.serialize(object.deviceType,
          specifiedType: const FullType(String)),
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLogoutVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLogoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deviceType':
          result.deviceType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GForgotPasswordVarsSerializer
    implements StructuredSerializer<GForgotPasswordVars> {
  @override
  final Iterable<Type> types = const [
    GForgotPasswordVars,
    _$GForgotPasswordVars
  ];
  @override
  final String wireName = 'GForgotPasswordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForgotPasswordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GForgotPasswordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForgotPasswordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GForgotPasswordVerificationVarsSerializer
    implements StructuredSerializer<GForgotPasswordVerificationVars> {
  @override
  final Iterable<Type> types = const [
    GForgotPasswordVerificationVars,
    _$GForgotPasswordVerificationVars
  ];
  @override
  final String wireName = 'GForgotPasswordVerificationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForgotPasswordVerificationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GForgotPasswordVerificationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForgotPasswordVerificationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GResetPasswordVarsSerializer
    implements StructuredSerializer<GResetPasswordVars> {
  @override
  final Iterable<Type> types = const [GResetPasswordVars, _$GResetPasswordVars];
  @override
  final String wireName = 'GResetPasswordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GResetPasswordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GResetPasswordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GResetPasswordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteUserVarsSerializer
    implements StructuredSerializer<GdeleteUserVars> {
  @override
  final Iterable<Type> types = const [GdeleteUserVars, _$GdeleteUserVars];
  @override
  final String wireName = 'GdeleteUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeleteUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdeleteUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdeleteUserVarsBuilder().build();
  }
}

class _$GLoginVars extends GLoginVars {
  @override
  final String email;
  @override
  final String password;
  @override
  final String deviceType;
  @override
  final String? deviceDetail;
  @override
  final String deviceId;

  factory _$GLoginVars([void Function(GLoginVarsBuilder)? updates]) =>
      (new GLoginVarsBuilder()..update(updates))._build();

  _$GLoginVars._(
      {required this.email,
      required this.password,
      required this.deviceType,
      this.deviceDetail,
      required this.deviceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GLoginVars', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'GLoginVars', 'password');
    BuiltValueNullFieldError.checkNotNull(
        deviceType, r'GLoginVars', 'deviceType');
    BuiltValueNullFieldError.checkNotNull(deviceId, r'GLoginVars', 'deviceId');
  }

  @override
  GLoginVars rebuild(void Function(GLoginVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginVarsBuilder toBuilder() => new GLoginVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginVars &&
        email == other.email &&
        password == other.password &&
        deviceType == other.deviceType &&
        deviceDetail == other.deviceDetail &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, deviceDetail.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginVars')
          ..add('email', email)
          ..add('password', password)
          ..add('deviceType', deviceType)
          ..add('deviceDetail', deviceDetail)
          ..add('deviceId', deviceId))
        .toString();
  }
}

class GLoginVarsBuilder implements Builder<GLoginVars, GLoginVarsBuilder> {
  _$GLoginVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(String? deviceType) => _$this._deviceType = deviceType;

  String? _deviceDetail;
  String? get deviceDetail => _$this._deviceDetail;
  set deviceDetail(String? deviceDetail) => _$this._deviceDetail = deviceDetail;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  GLoginVarsBuilder();

  GLoginVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _deviceType = $v.deviceType;
      _deviceDetail = $v.deviceDetail;
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginVars;
  }

  @override
  void update(void Function(GLoginVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginVars build() => _build();

  _$GLoginVars _build() {
    final _$result = _$v ??
        new _$GLoginVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GLoginVars', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GLoginVars', 'password'),
            deviceType: BuiltValueNullFieldError.checkNotNull(
                deviceType, r'GLoginVars', 'deviceType'),
            deviceDetail: deviceDetail,
            deviceId: BuiltValueNullFieldError.checkNotNull(
                deviceId, r'GLoginVars', 'deviceId'));
    replace(_$result);
    return _$result;
  }
}

class _$GSignupVars extends GSignupVars {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? dateOfBirth;
  @override
  final String deviceType;
  @override
  final String? deviceDetail;
  @override
  final String deviceId;
  @override
  final String? registerType;

  factory _$GSignupVars([void Function(GSignupVarsBuilder)? updates]) =>
      (new GSignupVarsBuilder()..update(updates))._build();

  _$GSignupVars._(
      {this.firstName,
      this.lastName,
      required this.email,
      required this.password,
      this.dateOfBirth,
      required this.deviceType,
      this.deviceDetail,
      required this.deviceId,
      this.registerType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GSignupVars', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'GSignupVars', 'password');
    BuiltValueNullFieldError.checkNotNull(
        deviceType, r'GSignupVars', 'deviceType');
    BuiltValueNullFieldError.checkNotNull(deviceId, r'GSignupVars', 'deviceId');
  }

  @override
  GSignupVars rebuild(void Function(GSignupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupVarsBuilder toBuilder() => new GSignupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupVars &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        password == other.password &&
        dateOfBirth == other.dateOfBirth &&
        deviceType == other.deviceType &&
        deviceDetail == other.deviceDetail &&
        deviceId == other.deviceId &&
        registerType == other.registerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, deviceDetail.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, registerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignupVars')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password)
          ..add('dateOfBirth', dateOfBirth)
          ..add('deviceType', deviceType)
          ..add('deviceDetail', deviceDetail)
          ..add('deviceId', deviceId)
          ..add('registerType', registerType))
        .toString();
  }
}

class GSignupVarsBuilder implements Builder<GSignupVars, GSignupVarsBuilder> {
  _$GSignupVars? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(String? deviceType) => _$this._deviceType = deviceType;

  String? _deviceDetail;
  String? get deviceDetail => _$this._deviceDetail;
  set deviceDetail(String? deviceDetail) => _$this._deviceDetail = deviceDetail;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _registerType;
  String? get registerType => _$this._registerType;
  set registerType(String? registerType) => _$this._registerType = registerType;

  GSignupVarsBuilder();

  GSignupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _dateOfBirth = $v.dateOfBirth;
      _deviceType = $v.deviceType;
      _deviceDetail = $v.deviceDetail;
      _deviceId = $v.deviceId;
      _registerType = $v.registerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupVars;
  }

  @override
  void update(void Function(GSignupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupVars build() => _build();

  _$GSignupVars _build() {
    final _$result = _$v ??
        new _$GSignupVars._(
            firstName: firstName,
            lastName: lastName,
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GSignupVars', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GSignupVars', 'password'),
            dateOfBirth: dateOfBirth,
            deviceType: BuiltValueNullFieldError.checkNotNull(
                deviceType, r'GSignupVars', 'deviceType'),
            deviceDetail: deviceDetail,
            deviceId: BuiltValueNullFieldError.checkNotNull(
                deviceId, r'GSignupVars', 'deviceId'),
            registerType: registerType);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginVars extends GSocialLoginVars {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String email;
  @override
  final String? dateOfBirth;
  @override
  final String deviceType;
  @override
  final String? deviceDetail;
  @override
  final String deviceId;
  @override
  final String? registerType;
  @override
  final String? gender;
  @override
  final String? profilePicture;

  factory _$GSocialLoginVars(
          [void Function(GSocialLoginVarsBuilder)? updates]) =>
      (new GSocialLoginVarsBuilder()..update(updates))._build();

  _$GSocialLoginVars._(
      {this.firstName,
      this.lastName,
      required this.email,
      this.dateOfBirth,
      required this.deviceType,
      this.deviceDetail,
      required this.deviceId,
      this.registerType,
      this.gender,
      this.profilePicture})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GSocialLoginVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        deviceType, r'GSocialLoginVars', 'deviceType');
    BuiltValueNullFieldError.checkNotNull(
        deviceId, r'GSocialLoginVars', 'deviceId');
  }

  @override
  GSocialLoginVars rebuild(void Function(GSocialLoginVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginVarsBuilder toBuilder() =>
      new GSocialLoginVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginVars &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        dateOfBirth == other.dateOfBirth &&
        deviceType == other.deviceType &&
        deviceDetail == other.deviceDetail &&
        deviceId == other.deviceId &&
        registerType == other.registerType &&
        gender == other.gender &&
        profilePicture == other.profilePicture;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, deviceDetail.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, registerType.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialLoginVars')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('dateOfBirth', dateOfBirth)
          ..add('deviceType', deviceType)
          ..add('deviceDetail', deviceDetail)
          ..add('deviceId', deviceId)
          ..add('registerType', registerType)
          ..add('gender', gender)
          ..add('profilePicture', profilePicture))
        .toString();
  }
}

class GSocialLoginVarsBuilder
    implements Builder<GSocialLoginVars, GSocialLoginVarsBuilder> {
  _$GSocialLoginVars? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(String? deviceType) => _$this._deviceType = deviceType;

  String? _deviceDetail;
  String? get deviceDetail => _$this._deviceDetail;
  set deviceDetail(String? deviceDetail) => _$this._deviceDetail = deviceDetail;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _registerType;
  String? get registerType => _$this._registerType;
  set registerType(String? registerType) => _$this._registerType = registerType;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _profilePicture;
  String? get profilePicture => _$this._profilePicture;
  set profilePicture(String? profilePicture) =>
      _$this._profilePicture = profilePicture;

  GSocialLoginVarsBuilder();

  GSocialLoginVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _dateOfBirth = $v.dateOfBirth;
      _deviceType = $v.deviceType;
      _deviceDetail = $v.deviceDetail;
      _deviceId = $v.deviceId;
      _registerType = $v.registerType;
      _gender = $v.gender;
      _profilePicture = $v.profilePicture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginVars;
  }

  @override
  void update(void Function(GSocialLoginVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginVars build() => _build();

  _$GSocialLoginVars _build() {
    final _$result = _$v ??
        new _$GSocialLoginVars._(
            firstName: firstName,
            lastName: lastName,
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GSocialLoginVars', 'email'),
            dateOfBirth: dateOfBirth,
            deviceType: BuiltValueNullFieldError.checkNotNull(
                deviceType, r'GSocialLoginVars', 'deviceType'),
            deviceDetail: deviceDetail,
            deviceId: BuiltValueNullFieldError.checkNotNull(
                deviceId, r'GSocialLoginVars', 'deviceId'),
            registerType: registerType,
            gender: gender,
            profilePicture: profilePicture);
    replace(_$result);
    return _$result;
  }
}

class _$GLogoutVars extends GLogoutVars {
  @override
  final String deviceType;
  @override
  final String deviceId;

  factory _$GLogoutVars([void Function(GLogoutVarsBuilder)? updates]) =>
      (new GLogoutVarsBuilder()..update(updates))._build();

  _$GLogoutVars._({required this.deviceType, required this.deviceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceType, r'GLogoutVars', 'deviceType');
    BuiltValueNullFieldError.checkNotNull(deviceId, r'GLogoutVars', 'deviceId');
  }

  @override
  GLogoutVars rebuild(void Function(GLogoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLogoutVarsBuilder toBuilder() => new GLogoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLogoutVars &&
        deviceType == other.deviceType &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLogoutVars')
          ..add('deviceType', deviceType)
          ..add('deviceId', deviceId))
        .toString();
  }
}

class GLogoutVarsBuilder implements Builder<GLogoutVars, GLogoutVarsBuilder> {
  _$GLogoutVars? _$v;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(String? deviceType) => _$this._deviceType = deviceType;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  GLogoutVarsBuilder();

  GLogoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceType = $v.deviceType;
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLogoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLogoutVars;
  }

  @override
  void update(void Function(GLogoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLogoutVars build() => _build();

  _$GLogoutVars _build() {
    final _$result = _$v ??
        new _$GLogoutVars._(
            deviceType: BuiltValueNullFieldError.checkNotNull(
                deviceType, r'GLogoutVars', 'deviceType'),
            deviceId: BuiltValueNullFieldError.checkNotNull(
                deviceId, r'GLogoutVars', 'deviceId'));
    replace(_$result);
    return _$result;
  }
}

class _$GForgotPasswordVars extends GForgotPasswordVars {
  @override
  final String email;

  factory _$GForgotPasswordVars(
          [void Function(GForgotPasswordVarsBuilder)? updates]) =>
      (new GForgotPasswordVarsBuilder()..update(updates))._build();

  _$GForgotPasswordVars._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'GForgotPasswordVars', 'email');
  }

  @override
  GForgotPasswordVars rebuild(
          void Function(GForgotPasswordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForgotPasswordVarsBuilder toBuilder() =>
      new GForgotPasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgotPasswordVars && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForgotPasswordVars')
          ..add('email', email))
        .toString();
  }
}

class GForgotPasswordVarsBuilder
    implements Builder<GForgotPasswordVars, GForgotPasswordVarsBuilder> {
  _$GForgotPasswordVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GForgotPasswordVarsBuilder();

  GForgotPasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgotPasswordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForgotPasswordVars;
  }

  @override
  void update(void Function(GForgotPasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgotPasswordVars build() => _build();

  _$GForgotPasswordVars _build() {
    final _$result = _$v ??
        new _$GForgotPasswordVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GForgotPasswordVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$GForgotPasswordVerificationVars
    extends GForgotPasswordVerificationVars {
  @override
  final String email;
  @override
  final String token;

  factory _$GForgotPasswordVerificationVars(
          [void Function(GForgotPasswordVerificationVarsBuilder)? updates]) =>
      (new GForgotPasswordVerificationVarsBuilder()..update(updates))._build();

  _$GForgotPasswordVerificationVars._(
      {required this.email, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'GForgotPasswordVerificationVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        token, r'GForgotPasswordVerificationVars', 'token');
  }

  @override
  GForgotPasswordVerificationVars rebuild(
          void Function(GForgotPasswordVerificationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForgotPasswordVerificationVarsBuilder toBuilder() =>
      new GForgotPasswordVerificationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgotPasswordVerificationVars &&
        email == other.email &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForgotPasswordVerificationVars')
          ..add('email', email)
          ..add('token', token))
        .toString();
  }
}

class GForgotPasswordVerificationVarsBuilder
    implements
        Builder<GForgotPasswordVerificationVars,
            GForgotPasswordVerificationVarsBuilder> {
  _$GForgotPasswordVerificationVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GForgotPasswordVerificationVarsBuilder();

  GForgotPasswordVerificationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgotPasswordVerificationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForgotPasswordVerificationVars;
  }

  @override
  void update(void Function(GForgotPasswordVerificationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgotPasswordVerificationVars build() => _build();

  _$GForgotPasswordVerificationVars _build() {
    final _$result = _$v ??
        new _$GForgotPasswordVerificationVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GForgotPasswordVerificationVars', 'email'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GForgotPasswordVerificationVars', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$GResetPasswordVars extends GResetPasswordVars {
  @override
  final String email;
  @override
  final String password;
  @override
  final String token;

  factory _$GResetPasswordVars(
          [void Function(GResetPasswordVarsBuilder)? updates]) =>
      (new GResetPasswordVarsBuilder()..update(updates))._build();

  _$GResetPasswordVars._(
      {required this.email, required this.password, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'GResetPasswordVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GResetPasswordVars', 'password');
    BuiltValueNullFieldError.checkNotNull(
        token, r'GResetPasswordVars', 'token');
  }

  @override
  GResetPasswordVars rebuild(
          void Function(GResetPasswordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GResetPasswordVarsBuilder toBuilder() =>
      new GResetPasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPasswordVars &&
        email == other.email &&
        password == other.password &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GResetPasswordVars')
          ..add('email', email)
          ..add('password', password)
          ..add('token', token))
        .toString();
  }
}

class GResetPasswordVarsBuilder
    implements Builder<GResetPasswordVars, GResetPasswordVarsBuilder> {
  _$GResetPasswordVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GResetPasswordVarsBuilder();

  GResetPasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResetPasswordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GResetPasswordVars;
  }

  @override
  void update(void Function(GResetPasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPasswordVars build() => _build();

  _$GResetPasswordVars _build() {
    final _$result = _$v ??
        new _$GResetPasswordVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GResetPasswordVars', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GResetPasswordVars', 'password'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GResetPasswordVars', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserVars extends GdeleteUserVars {
  factory _$GdeleteUserVars([void Function(GdeleteUserVarsBuilder)? updates]) =>
      (new GdeleteUserVarsBuilder()..update(updates))._build();

  _$GdeleteUserVars._() : super._();

  @override
  GdeleteUserVars rebuild(void Function(GdeleteUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserVarsBuilder toBuilder() =>
      new GdeleteUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserVars;
  }

  @override
  int get hashCode {
    return 187263691;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdeleteUserVars').toString();
  }
}

class GdeleteUserVarsBuilder
    implements Builder<GdeleteUserVars, GdeleteUserVarsBuilder> {
  _$GdeleteUserVars? _$v;

  GdeleteUserVarsBuilder();

  @override
  void replace(GdeleteUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserVars;
  }

  @override
  void update(void Function(GdeleteUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserVars build() => _build();

  _$GdeleteUserVars _build() {
    final _$result = _$v ?? new _$GdeleteUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
