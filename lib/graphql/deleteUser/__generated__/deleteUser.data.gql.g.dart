// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteUser.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdeleteUserData> _$gdeleteUserDataSerializer =
    new _$GdeleteUserDataSerializer();
Serializer<GdeleteUserData_deleteUser> _$gdeleteUserDataDeleteUserSerializer =
    new _$GdeleteUserData_deleteUserSerializer();

class _$GdeleteUserDataSerializer
    implements StructuredSerializer<GdeleteUserData> {
  @override
  final Iterable<Type> types = const [GdeleteUserData, _$GdeleteUserData];
  @override
  final String wireName = 'GdeleteUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeleteUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleteUser;
    if (value != null) {
      result
        ..add('deleteUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GdeleteUserData_deleteUser)));
    }
    return result;
  }

  @override
  GdeleteUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserDataBuilder();

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
        case 'deleteUser':
          result.deleteUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GdeleteUserData_deleteUser))!
              as GdeleteUserData_deleteUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteUserData_deleteUserSerializer
    implements StructuredSerializer<GdeleteUserData_deleteUser> {
  @override
  final Iterable<Type> types = const [
    GdeleteUserData_deleteUser,
    _$GdeleteUserData_deleteUser
  ];
  @override
  final String wireName = 'GdeleteUserData_deleteUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteUserData_deleteUser object,
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
  GdeleteUserData_deleteUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserData_deleteUserBuilder();

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

class _$GdeleteUserData extends GdeleteUserData {
  @override
  final String G__typename;
  @override
  final GdeleteUserData_deleteUser? deleteUser;

  factory _$GdeleteUserData([void Function(GdeleteUserDataBuilder)? updates]) =>
      (new GdeleteUserDataBuilder()..update(updates))._build();

  _$GdeleteUserData._({required this.G__typename, this.deleteUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdeleteUserData', 'G__typename');
  }

  @override
  GdeleteUserData rebuild(void Function(GdeleteUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserDataBuilder toBuilder() =>
      new GdeleteUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserData &&
        G__typename == other.G__typename &&
        deleteUser == other.deleteUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteUserData')
          ..add('G__typename', G__typename)
          ..add('deleteUser', deleteUser))
        .toString();
  }
}

class GdeleteUserDataBuilder
    implements Builder<GdeleteUserData, GdeleteUserDataBuilder> {
  _$GdeleteUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GdeleteUserData_deleteUserBuilder? _deleteUser;
  GdeleteUserData_deleteUserBuilder get deleteUser =>
      _$this._deleteUser ??= new GdeleteUserData_deleteUserBuilder();
  set deleteUser(GdeleteUserData_deleteUserBuilder? deleteUser) =>
      _$this._deleteUser = deleteUser;

  GdeleteUserDataBuilder() {
    GdeleteUserData._initializeBuilder(this);
  }

  GdeleteUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteUser = $v.deleteUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserData;
  }

  @override
  void update(void Function(GdeleteUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserData build() => _build();

  _$GdeleteUserData _build() {
    _$GdeleteUserData _$result;
    try {
      _$result = _$v ??
          new _$GdeleteUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdeleteUserData', 'G__typename'),
              deleteUser: _deleteUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteUser';
        _deleteUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdeleteUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserData_deleteUser extends GdeleteUserData_deleteUser {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GdeleteUserData_deleteUser(
          [void Function(GdeleteUserData_deleteUserBuilder)? updates]) =>
      (new GdeleteUserData_deleteUserBuilder()..update(updates))._build();

  _$GdeleteUserData_deleteUser._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdeleteUserData_deleteUser', 'G__typename');
  }

  @override
  GdeleteUserData_deleteUser rebuild(
          void Function(GdeleteUserData_deleteUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserData_deleteUserBuilder toBuilder() =>
      new GdeleteUserData_deleteUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserData_deleteUser &&
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
    return (newBuiltValueToStringHelper(r'GdeleteUserData_deleteUser')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GdeleteUserData_deleteUserBuilder
    implements
        Builder<GdeleteUserData_deleteUser, GdeleteUserData_deleteUserBuilder> {
  _$GdeleteUserData_deleteUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GdeleteUserData_deleteUserBuilder() {
    GdeleteUserData_deleteUser._initializeBuilder(this);
  }

  GdeleteUserData_deleteUserBuilder get _$this {
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
  void replace(GdeleteUserData_deleteUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserData_deleteUser;
  }

  @override
  void update(void Function(GdeleteUserData_deleteUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserData_deleteUser build() => _build();

  _$GdeleteUserData_deleteUser _build() {
    final _$result = _$v ??
        new _$GdeleteUserData_deleteUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdeleteUserData_deleteUser', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
