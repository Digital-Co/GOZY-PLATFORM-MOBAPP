// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserUpdateVars> _$guserUpdateVarsSerializer =
    new _$GuserUpdateVarsSerializer();
Serializer<GSendConfirmEmailVars> _$gSendConfirmEmailVarsSerializer =
    new _$GSendConfirmEmailVarsSerializer();
Serializer<GCodeVerificationVars> _$gCodeVerificationVarsSerializer =
    new _$GCodeVerificationVarsSerializer();
Serializer<GSocialLoginVerifyVars> _$gSocialLoginVerifyVarsSerializer =
    new _$GSocialLoginVerifyVarsSerializer();
Serializer<GshowUserProfileVars> _$gshowUserProfileVarsSerializer =
    new _$GshowUserProfileVarsSerializer();
Serializer<GuserAccountVars> _$guserAccountVarsSerializer =
    new _$GuserAccountVarsSerializer();

class _$GuserUpdateVarsSerializer
    implements StructuredSerializer<GuserUpdateVars> {
  @override
  final Iterable<Type> types = const [GuserUpdateVars, _$GuserUpdateVars];
  @override
  final String wireName = 'GuserUpdateVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserUpdateVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'fieldName',
      serializers.serialize(object.fieldName,
          specifiedType: const FullType(String)),
      'deviceType',
      serializers.serialize(object.deviceType,
          specifiedType: const FullType(String)),
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.fieldValue;
    if (value != null) {
      result
        ..add('fieldValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GuserUpdateVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserUpdateVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fieldName':
          result.fieldName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fieldValue':
          result.fieldValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
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

class _$GSendConfirmEmailVarsSerializer
    implements StructuredSerializer<GSendConfirmEmailVars> {
  @override
  final Iterable<Type> types = const [
    GSendConfirmEmailVars,
    _$GSendConfirmEmailVars
  ];
  @override
  final String wireName = 'GSendConfirmEmailVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendConfirmEmailVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GSendConfirmEmailVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GSendConfirmEmailVarsBuilder().build();
  }
}

class _$GCodeVerificationVarsSerializer
    implements StructuredSerializer<GCodeVerificationVars> {
  @override
  final Iterable<Type> types = const [
    GCodeVerificationVars,
    _$GCodeVerificationVars
  ];
  @override
  final String wireName = 'GCodeVerificationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCodeVerificationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCodeVerificationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCodeVerificationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginVerifyVarsSerializer
    implements StructuredSerializer<GSocialLoginVerifyVars> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginVerifyVars,
    _$GSocialLoginVerifyVars
  ];
  @override
  final String wireName = 'GSocialLoginVerifyVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialLoginVerifyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'verificationType',
      serializers.serialize(object.verificationType,
          specifiedType: const FullType(String)),
      'actionType',
      serializers.serialize(object.actionType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSocialLoginVerifyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginVerifyVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'verificationType':
          result.verificationType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionType':
          result.actionType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileVarsSerializer
    implements StructuredSerializer<GshowUserProfileVars> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileVars,
    _$GshowUserProfileVars
  ];
  @override
  final String wireName = 'GshowUserProfileVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GshowUserProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isUser;
    if (value != null) {
      result
        ..add('isUser')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GshowUserProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GshowUserProfileVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isUser':
          result.isUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserAccountVarsSerializer
    implements StructuredSerializer<GuserAccountVars> {
  @override
  final Iterable<Type> types = const [GuserAccountVars, _$GuserAccountVars];
  @override
  final String wireName = 'GuserAccountVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserAccountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GuserAccountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GuserAccountVarsBuilder().build();
  }
}

class _$GuserUpdateVars extends GuserUpdateVars {
  @override
  final String userId;
  @override
  final String fieldName;
  @override
  final String? fieldValue;
  @override
  final String deviceType;
  @override
  final String deviceId;

  factory _$GuserUpdateVars([void Function(GuserUpdateVarsBuilder)? updates]) =>
      (new GuserUpdateVarsBuilder()..update(updates))._build();

  _$GuserUpdateVars._(
      {required this.userId,
      required this.fieldName,
      this.fieldValue,
      required this.deviceType,
      required this.deviceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'GuserUpdateVars', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        fieldName, r'GuserUpdateVars', 'fieldName');
    BuiltValueNullFieldError.checkNotNull(
        deviceType, r'GuserUpdateVars', 'deviceType');
    BuiltValueNullFieldError.checkNotNull(
        deviceId, r'GuserUpdateVars', 'deviceId');
  }

  @override
  GuserUpdateVars rebuild(void Function(GuserUpdateVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserUpdateVarsBuilder toBuilder() =>
      new GuserUpdateVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserUpdateVars &&
        userId == other.userId &&
        fieldName == other.fieldName &&
        fieldValue == other.fieldValue &&
        deviceType == other.deviceType &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, fieldName.hashCode);
    _$hash = $jc(_$hash, fieldValue.hashCode);
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserUpdateVars')
          ..add('userId', userId)
          ..add('fieldName', fieldName)
          ..add('fieldValue', fieldValue)
          ..add('deviceType', deviceType)
          ..add('deviceId', deviceId))
        .toString();
  }
}

class GuserUpdateVarsBuilder
    implements Builder<GuserUpdateVars, GuserUpdateVarsBuilder> {
  _$GuserUpdateVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _fieldName;
  String? get fieldName => _$this._fieldName;
  set fieldName(String? fieldName) => _$this._fieldName = fieldName;

  String? _fieldValue;
  String? get fieldValue => _$this._fieldValue;
  set fieldValue(String? fieldValue) => _$this._fieldValue = fieldValue;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(String? deviceType) => _$this._deviceType = deviceType;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  GuserUpdateVarsBuilder();

  GuserUpdateVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _fieldName = $v.fieldName;
      _fieldValue = $v.fieldValue;
      _deviceType = $v.deviceType;
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserUpdateVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserUpdateVars;
  }

  @override
  void update(void Function(GuserUpdateVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserUpdateVars build() => _build();

  _$GuserUpdateVars _build() {
    final _$result = _$v ??
        new _$GuserUpdateVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GuserUpdateVars', 'userId'),
            fieldName: BuiltValueNullFieldError.checkNotNull(
                fieldName, r'GuserUpdateVars', 'fieldName'),
            fieldValue: fieldValue,
            deviceType: BuiltValueNullFieldError.checkNotNull(
                deviceType, r'GuserUpdateVars', 'deviceType'),
            deviceId: BuiltValueNullFieldError.checkNotNull(
                deviceId, r'GuserUpdateVars', 'deviceId'));
    replace(_$result);
    return _$result;
  }
}

class _$GSendConfirmEmailVars extends GSendConfirmEmailVars {
  factory _$GSendConfirmEmailVars(
          [void Function(GSendConfirmEmailVarsBuilder)? updates]) =>
      (new GSendConfirmEmailVarsBuilder()..update(updates))._build();

  _$GSendConfirmEmailVars._() : super._();

  @override
  GSendConfirmEmailVars rebuild(
          void Function(GSendConfirmEmailVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendConfirmEmailVarsBuilder toBuilder() =>
      new GSendConfirmEmailVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendConfirmEmailVars;
  }

  @override
  int get hashCode {
    return 776180729;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GSendConfirmEmailVars').toString();
  }
}

class GSendConfirmEmailVarsBuilder
    implements Builder<GSendConfirmEmailVars, GSendConfirmEmailVarsBuilder> {
  _$GSendConfirmEmailVars? _$v;

  GSendConfirmEmailVarsBuilder();

  @override
  void replace(GSendConfirmEmailVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendConfirmEmailVars;
  }

  @override
  void update(void Function(GSendConfirmEmailVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendConfirmEmailVars build() => _build();

  _$GSendConfirmEmailVars _build() {
    final _$result = _$v ?? new _$GSendConfirmEmailVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GCodeVerificationVars extends GCodeVerificationVars {
  @override
  final String token;
  @override
  final String email;

  factory _$GCodeVerificationVars(
          [void Function(GCodeVerificationVarsBuilder)? updates]) =>
      (new GCodeVerificationVarsBuilder()..update(updates))._build();

  _$GCodeVerificationVars._({required this.token, required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, r'GCodeVerificationVars', 'token');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GCodeVerificationVars', 'email');
  }

  @override
  GCodeVerificationVars rebuild(
          void Function(GCodeVerificationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCodeVerificationVarsBuilder toBuilder() =>
      new GCodeVerificationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCodeVerificationVars &&
        token == other.token &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCodeVerificationVars')
          ..add('token', token)
          ..add('email', email))
        .toString();
  }
}

class GCodeVerificationVarsBuilder
    implements Builder<GCodeVerificationVars, GCodeVerificationVarsBuilder> {
  _$GCodeVerificationVars? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GCodeVerificationVarsBuilder();

  GCodeVerificationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCodeVerificationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCodeVerificationVars;
  }

  @override
  void update(void Function(GCodeVerificationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCodeVerificationVars build() => _build();

  _$GCodeVerificationVars _build() {
    final _$result = _$v ??
        new _$GCodeVerificationVars._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GCodeVerificationVars', 'token'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GCodeVerificationVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginVerifyVars extends GSocialLoginVerifyVars {
  @override
  final String verificationType;
  @override
  final String actionType;

  factory _$GSocialLoginVerifyVars(
          [void Function(GSocialLoginVerifyVarsBuilder)? updates]) =>
      (new GSocialLoginVerifyVarsBuilder()..update(updates))._build();

  _$GSocialLoginVerifyVars._(
      {required this.verificationType, required this.actionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        verificationType, r'GSocialLoginVerifyVars', 'verificationType');
    BuiltValueNullFieldError.checkNotNull(
        actionType, r'GSocialLoginVerifyVars', 'actionType');
  }

  @override
  GSocialLoginVerifyVars rebuild(
          void Function(GSocialLoginVerifyVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginVerifyVarsBuilder toBuilder() =>
      new GSocialLoginVerifyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginVerifyVars &&
        verificationType == other.verificationType &&
        actionType == other.actionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verificationType.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialLoginVerifyVars')
          ..add('verificationType', verificationType)
          ..add('actionType', actionType))
        .toString();
  }
}

class GSocialLoginVerifyVarsBuilder
    implements Builder<GSocialLoginVerifyVars, GSocialLoginVerifyVarsBuilder> {
  _$GSocialLoginVerifyVars? _$v;

  String? _verificationType;
  String? get verificationType => _$this._verificationType;
  set verificationType(String? verificationType) =>
      _$this._verificationType = verificationType;

  String? _actionType;
  String? get actionType => _$this._actionType;
  set actionType(String? actionType) => _$this._actionType = actionType;

  GSocialLoginVerifyVarsBuilder();

  GSocialLoginVerifyVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verificationType = $v.verificationType;
      _actionType = $v.actionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginVerifyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginVerifyVars;
  }

  @override
  void update(void Function(GSocialLoginVerifyVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginVerifyVars build() => _build();

  _$GSocialLoginVerifyVars _build() {
    final _$result = _$v ??
        new _$GSocialLoginVerifyVars._(
            verificationType: BuiltValueNullFieldError.checkNotNull(
                verificationType,
                r'GSocialLoginVerifyVars',
                'verificationType'),
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType, r'GSocialLoginVerifyVars', 'actionType'));
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileVars extends GshowUserProfileVars {
  @override
  final int? profileId;
  @override
  final bool? isUser;

  factory _$GshowUserProfileVars(
          [void Function(GshowUserProfileVarsBuilder)? updates]) =>
      (new GshowUserProfileVarsBuilder()..update(updates))._build();

  _$GshowUserProfileVars._({this.profileId, this.isUser}) : super._();

  @override
  GshowUserProfileVars rebuild(
          void Function(GshowUserProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileVarsBuilder toBuilder() =>
      new GshowUserProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GshowUserProfileVars &&
        profileId == other.profileId &&
        isUser == other.isUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, isUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GshowUserProfileVars')
          ..add('profileId', profileId)
          ..add('isUser', isUser))
        .toString();
  }
}

class GshowUserProfileVarsBuilder
    implements Builder<GshowUserProfileVars, GshowUserProfileVarsBuilder> {
  _$GshowUserProfileVars? _$v;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  bool? _isUser;
  bool? get isUser => _$this._isUser;
  set isUser(bool? isUser) => _$this._isUser = isUser;

  GshowUserProfileVarsBuilder();

  GshowUserProfileVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profileId = $v.profileId;
      _isUser = $v.isUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GshowUserProfileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GshowUserProfileVars;
  }

  @override
  void update(void Function(GshowUserProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileVars build() => _build();

  _$GshowUserProfileVars _build() {
    final _$result = _$v ??
        new _$GshowUserProfileVars._(profileId: profileId, isUser: isUser);
    replace(_$result);
    return _$result;
  }
}

class _$GuserAccountVars extends GuserAccountVars {
  factory _$GuserAccountVars(
          [void Function(GuserAccountVarsBuilder)? updates]) =>
      (new GuserAccountVarsBuilder()..update(updates))._build();

  _$GuserAccountVars._() : super._();

  @override
  GuserAccountVars rebuild(void Function(GuserAccountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserAccountVarsBuilder toBuilder() =>
      new GuserAccountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserAccountVars;
  }

  @override
  int get hashCode {
    return 900470020;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GuserAccountVars').toString();
  }
}

class GuserAccountVarsBuilder
    implements Builder<GuserAccountVars, GuserAccountVarsBuilder> {
  _$GuserAccountVars? _$v;

  GuserAccountVarsBuilder();

  @override
  void replace(GuserAccountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserAccountVars;
  }

  @override
  void update(void Function(GuserAccountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserAccountVars build() => _build();

  _$GuserAccountVars _build() {
    final _$result = _$v ?? new _$GuserAccountVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
