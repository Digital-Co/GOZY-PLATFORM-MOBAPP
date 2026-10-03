// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_claim_damage.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdateClaimData> _$gupdateClaimDataSerializer =
    new _$GupdateClaimDataSerializer();
Serializer<GupdateClaimData_updateClaim>
    _$gupdateClaimDataUpdateClaimSerializer =
    new _$GupdateClaimData_updateClaimSerializer();

class _$GupdateClaimDataSerializer
    implements StructuredSerializer<GupdateClaimData> {
  @override
  final Iterable<Type> types = const [GupdateClaimData, _$GupdateClaimData];
  @override
  final String wireName = 'GupdateClaimData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdateClaimData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateClaim;
    if (value != null) {
      result
        ..add('updateClaim')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GupdateClaimData_updateClaim)));
    }
    return result;
  }

  @override
  GupdateClaimData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateClaimDataBuilder();

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
        case 'updateClaim':
          result.updateClaim.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GupdateClaimData_updateClaim))!
              as GupdateClaimData_updateClaim);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateClaimData_updateClaimSerializer
    implements StructuredSerializer<GupdateClaimData_updateClaim> {
  @override
  final Iterable<Type> types = const [
    GupdateClaimData_updateClaim,
    _$GupdateClaimData_updateClaim
  ];
  @override
  final String wireName = 'GupdateClaimData_updateClaim';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateClaimData_updateClaim object,
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
  GupdateClaimData_updateClaim deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateClaimData_updateClaimBuilder();

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

class _$GupdateClaimData extends GupdateClaimData {
  @override
  final String G__typename;
  @override
  final GupdateClaimData_updateClaim? updateClaim;

  factory _$GupdateClaimData(
          [void Function(GupdateClaimDataBuilder)? updates]) =>
      (new GupdateClaimDataBuilder()..update(updates))._build();

  _$GupdateClaimData._({required this.G__typename, this.updateClaim})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdateClaimData', 'G__typename');
  }

  @override
  GupdateClaimData rebuild(void Function(GupdateClaimDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateClaimDataBuilder toBuilder() =>
      new GupdateClaimDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateClaimData &&
        G__typename == other.G__typename &&
        updateClaim == other.updateClaim;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateClaim.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateClaimData')
          ..add('G__typename', G__typename)
          ..add('updateClaim', updateClaim))
        .toString();
  }
}

class GupdateClaimDataBuilder
    implements Builder<GupdateClaimData, GupdateClaimDataBuilder> {
  _$GupdateClaimData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateClaimData_updateClaimBuilder? _updateClaim;
  GupdateClaimData_updateClaimBuilder get updateClaim =>
      _$this._updateClaim ??= new GupdateClaimData_updateClaimBuilder();
  set updateClaim(GupdateClaimData_updateClaimBuilder? updateClaim) =>
      _$this._updateClaim = updateClaim;

  GupdateClaimDataBuilder() {
    GupdateClaimData._initializeBuilder(this);
  }

  GupdateClaimDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateClaim = $v.updateClaim?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateClaimData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateClaimData;
  }

  @override
  void update(void Function(GupdateClaimDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateClaimData build() => _build();

  _$GupdateClaimData _build() {
    _$GupdateClaimData _$result;
    try {
      _$result = _$v ??
          new _$GupdateClaimData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GupdateClaimData', 'G__typename'),
              updateClaim: _updateClaim?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateClaim';
        _updateClaim?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateClaimData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateClaimData_updateClaim extends GupdateClaimData_updateClaim {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GupdateClaimData_updateClaim(
          [void Function(GupdateClaimData_updateClaimBuilder)? updates]) =>
      (new GupdateClaimData_updateClaimBuilder()..update(updates))._build();

  _$GupdateClaimData_updateClaim._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdateClaimData_updateClaim', 'G__typename');
  }

  @override
  GupdateClaimData_updateClaim rebuild(
          void Function(GupdateClaimData_updateClaimBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateClaimData_updateClaimBuilder toBuilder() =>
      new GupdateClaimData_updateClaimBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateClaimData_updateClaim &&
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
    return (newBuiltValueToStringHelper(r'GupdateClaimData_updateClaim')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GupdateClaimData_updateClaimBuilder
    implements
        Builder<GupdateClaimData_updateClaim,
            GupdateClaimData_updateClaimBuilder> {
  _$GupdateClaimData_updateClaim? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GupdateClaimData_updateClaimBuilder() {
    GupdateClaimData_updateClaim._initializeBuilder(this);
  }

  GupdateClaimData_updateClaimBuilder get _$this {
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
  void replace(GupdateClaimData_updateClaim other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateClaimData_updateClaim;
  }

  @override
  void update(void Function(GupdateClaimData_updateClaimBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateClaimData_updateClaim build() => _build();

  _$GupdateClaimData_updateClaim _build() {
    final _$result = _$v ??
        new _$GupdateClaimData_updateClaim._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GupdateClaimData_updateClaim', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
