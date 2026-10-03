// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changepassword.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GchangePasswordData> _$gchangePasswordDataSerializer =
    new _$GchangePasswordDataSerializer();
Serializer<GchangePasswordData_changePassword>
    _$gchangePasswordDataChangePasswordSerializer =
    new _$GchangePasswordData_changePasswordSerializer();

class _$GchangePasswordDataSerializer
    implements StructuredSerializer<GchangePasswordData> {
  @override
  final Iterable<Type> types = const [
    GchangePasswordData,
    _$GchangePasswordData
  ];
  @override
  final String wireName = 'GchangePasswordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchangePasswordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.changePassword;
    if (value != null) {
      result
        ..add('changePassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GchangePasswordData_changePassword)));
    }
    return result;
  }

  @override
  GchangePasswordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GchangePasswordDataBuilder();

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
        case 'changePassword':
          result.changePassword.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GchangePasswordData_changePassword))!
              as GchangePasswordData_changePassword);
          break;
      }
    }

    return result.build();
  }
}

class _$GchangePasswordData_changePasswordSerializer
    implements StructuredSerializer<GchangePasswordData_changePassword> {
  @override
  final Iterable<Type> types = const [
    GchangePasswordData_changePassword,
    _$GchangePasswordData_changePassword
  ];
  @override
  final String wireName = 'GchangePasswordData_changePassword';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchangePasswordData_changePassword object,
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
  GchangePasswordData_changePassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GchangePasswordData_changePasswordBuilder();

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

class _$GchangePasswordData extends GchangePasswordData {
  @override
  final String G__typename;
  @override
  final GchangePasswordData_changePassword? changePassword;

  factory _$GchangePasswordData(
          [void Function(GchangePasswordDataBuilder)? updates]) =>
      (new GchangePasswordDataBuilder()..update(updates))._build();

  _$GchangePasswordData._({required this.G__typename, this.changePassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GchangePasswordData', 'G__typename');
  }

  @override
  GchangePasswordData rebuild(
          void Function(GchangePasswordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchangePasswordDataBuilder toBuilder() =>
      new GchangePasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchangePasswordData &&
        G__typename == other.G__typename &&
        changePassword == other.changePassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, changePassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GchangePasswordData')
          ..add('G__typename', G__typename)
          ..add('changePassword', changePassword))
        .toString();
  }
}

class GchangePasswordDataBuilder
    implements Builder<GchangePasswordData, GchangePasswordDataBuilder> {
  _$GchangePasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GchangePasswordData_changePasswordBuilder? _changePassword;
  GchangePasswordData_changePasswordBuilder get changePassword =>
      _$this._changePassword ??=
          new GchangePasswordData_changePasswordBuilder();
  set changePassword(
          GchangePasswordData_changePasswordBuilder? changePassword) =>
      _$this._changePassword = changePassword;

  GchangePasswordDataBuilder() {
    GchangePasswordData._initializeBuilder(this);
  }

  GchangePasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _changePassword = $v.changePassword?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GchangePasswordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchangePasswordData;
  }

  @override
  void update(void Function(GchangePasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchangePasswordData build() => _build();

  _$GchangePasswordData _build() {
    _$GchangePasswordData _$result;
    try {
      _$result = _$v ??
          new _$GchangePasswordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GchangePasswordData', 'G__typename'),
              changePassword: _changePassword?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changePassword';
        _changePassword?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GchangePasswordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GchangePasswordData_changePassword
    extends GchangePasswordData_changePassword {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GchangePasswordData_changePassword(
          [void Function(GchangePasswordData_changePasswordBuilder)?
              updates]) =>
      (new GchangePasswordData_changePasswordBuilder()..update(updates))
          ._build();

  _$GchangePasswordData_changePassword._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GchangePasswordData_changePassword', 'G__typename');
  }

  @override
  GchangePasswordData_changePassword rebuild(
          void Function(GchangePasswordData_changePasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchangePasswordData_changePasswordBuilder toBuilder() =>
      new GchangePasswordData_changePasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchangePasswordData_changePassword &&
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
    return (newBuiltValueToStringHelper(r'GchangePasswordData_changePassword')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GchangePasswordData_changePasswordBuilder
    implements
        Builder<GchangePasswordData_changePassword,
            GchangePasswordData_changePasswordBuilder> {
  _$GchangePasswordData_changePassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GchangePasswordData_changePasswordBuilder() {
    GchangePasswordData_changePassword._initializeBuilder(this);
  }

  GchangePasswordData_changePasswordBuilder get _$this {
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
  void replace(GchangePasswordData_changePassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchangePasswordData_changePassword;
  }

  @override
  void update(
      void Function(GchangePasswordData_changePasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchangePasswordData_changePassword build() => _build();

  _$GchangePasswordData_changePassword _build() {
    final _$result = _$v ??
        new _$GchangePasswordData_changePassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GchangePasswordData_changePassword', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
