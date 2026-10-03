// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_number.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVerifyPhoneNumberData> _$gVerifyPhoneNumberDataSerializer =
    new _$GVerifyPhoneNumberDataSerializer();
Serializer<GVerifyPhoneNumberData_VerifyPhoneNumber>
    _$gVerifyPhoneNumberDataVerifyPhoneNumberSerializer =
    new _$GVerifyPhoneNumberData_VerifyPhoneNumberSerializer();

class _$GVerifyPhoneNumberDataSerializer
    implements StructuredSerializer<GVerifyPhoneNumberData> {
  @override
  final Iterable<Type> types = const [
    GVerifyPhoneNumberData,
    _$GVerifyPhoneNumberData
  ];
  @override
  final String wireName = 'GVerifyPhoneNumberData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVerifyPhoneNumberData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.VerifyPhoneNumber;
    if (value != null) {
      result
        ..add('VerifyPhoneNumber')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GVerifyPhoneNumberData_VerifyPhoneNumber)));
    }
    return result;
  }

  @override
  GVerifyPhoneNumberData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVerifyPhoneNumberDataBuilder();

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
        case 'VerifyPhoneNumber':
          result.VerifyPhoneNumber.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GVerifyPhoneNumberData_VerifyPhoneNumber))!
              as GVerifyPhoneNumberData_VerifyPhoneNumber);
          break;
      }
    }

    return result.build();
  }
}

class _$GVerifyPhoneNumberData_VerifyPhoneNumberSerializer
    implements StructuredSerializer<GVerifyPhoneNumberData_VerifyPhoneNumber> {
  @override
  final Iterable<Type> types = const [
    GVerifyPhoneNumberData_VerifyPhoneNumber,
    _$GVerifyPhoneNumberData_VerifyPhoneNumber
  ];
  @override
  final String wireName = 'GVerifyPhoneNumberData_VerifyPhoneNumber';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVerifyPhoneNumberData_VerifyPhoneNumber object,
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
    return result;
  }

  @override
  GVerifyPhoneNumberData_VerifyPhoneNumber deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVerifyPhoneNumberData_VerifyPhoneNumberBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GVerifyPhoneNumberData extends GVerifyPhoneNumberData {
  @override
  final String G__typename;
  @override
  final GVerifyPhoneNumberData_VerifyPhoneNumber? VerifyPhoneNumber;

  factory _$GVerifyPhoneNumberData(
          [void Function(GVerifyPhoneNumberDataBuilder)? updates]) =>
      (new GVerifyPhoneNumberDataBuilder()..update(updates))._build();

  _$GVerifyPhoneNumberData._(
      {required this.G__typename, this.VerifyPhoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GVerifyPhoneNumberData', 'G__typename');
  }

  @override
  GVerifyPhoneNumberData rebuild(
          void Function(GVerifyPhoneNumberDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVerifyPhoneNumberDataBuilder toBuilder() =>
      new GVerifyPhoneNumberDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVerifyPhoneNumberData &&
        G__typename == other.G__typename &&
        VerifyPhoneNumber == other.VerifyPhoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, VerifyPhoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVerifyPhoneNumberData')
          ..add('G__typename', G__typename)
          ..add('VerifyPhoneNumber', VerifyPhoneNumber))
        .toString();
  }
}

class GVerifyPhoneNumberDataBuilder
    implements Builder<GVerifyPhoneNumberData, GVerifyPhoneNumberDataBuilder> {
  _$GVerifyPhoneNumberData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GVerifyPhoneNumberData_VerifyPhoneNumberBuilder? _VerifyPhoneNumber;
  GVerifyPhoneNumberData_VerifyPhoneNumberBuilder get VerifyPhoneNumber =>
      _$this._VerifyPhoneNumber ??=
          new GVerifyPhoneNumberData_VerifyPhoneNumberBuilder();
  set VerifyPhoneNumber(
          GVerifyPhoneNumberData_VerifyPhoneNumberBuilder? VerifyPhoneNumber) =>
      _$this._VerifyPhoneNumber = VerifyPhoneNumber;

  GVerifyPhoneNumberDataBuilder() {
    GVerifyPhoneNumberData._initializeBuilder(this);
  }

  GVerifyPhoneNumberDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _VerifyPhoneNumber = $v.VerifyPhoneNumber?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVerifyPhoneNumberData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVerifyPhoneNumberData;
  }

  @override
  void update(void Function(GVerifyPhoneNumberDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVerifyPhoneNumberData build() => _build();

  _$GVerifyPhoneNumberData _build() {
    _$GVerifyPhoneNumberData _$result;
    try {
      _$result = _$v ??
          new _$GVerifyPhoneNumberData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GVerifyPhoneNumberData', 'G__typename'),
              VerifyPhoneNumber: _VerifyPhoneNumber?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'VerifyPhoneNumber';
        _VerifyPhoneNumber?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GVerifyPhoneNumberData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GVerifyPhoneNumberData_VerifyPhoneNumber
    extends GVerifyPhoneNumberData_VerifyPhoneNumber {
  @override
  final String G__typename;
  @override
  final int? status;

  factory _$GVerifyPhoneNumberData_VerifyPhoneNumber(
          [void Function(GVerifyPhoneNumberData_VerifyPhoneNumberBuilder)?
              updates]) =>
      (new GVerifyPhoneNumberData_VerifyPhoneNumberBuilder()..update(updates))
          ._build();

  _$GVerifyPhoneNumberData_VerifyPhoneNumber._(
      {required this.G__typename, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GVerifyPhoneNumberData_VerifyPhoneNumber', 'G__typename');
  }

  @override
  GVerifyPhoneNumberData_VerifyPhoneNumber rebuild(
          void Function(GVerifyPhoneNumberData_VerifyPhoneNumberBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVerifyPhoneNumberData_VerifyPhoneNumberBuilder toBuilder() =>
      new GVerifyPhoneNumberData_VerifyPhoneNumberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVerifyPhoneNumberData_VerifyPhoneNumber &&
        G__typename == other.G__typename &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GVerifyPhoneNumberData_VerifyPhoneNumber')
          ..add('G__typename', G__typename)
          ..add('status', status))
        .toString();
  }
}

class GVerifyPhoneNumberData_VerifyPhoneNumberBuilder
    implements
        Builder<GVerifyPhoneNumberData_VerifyPhoneNumber,
            GVerifyPhoneNumberData_VerifyPhoneNumberBuilder> {
  _$GVerifyPhoneNumberData_VerifyPhoneNumber? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  GVerifyPhoneNumberData_VerifyPhoneNumberBuilder() {
    GVerifyPhoneNumberData_VerifyPhoneNumber._initializeBuilder(this);
  }

  GVerifyPhoneNumberData_VerifyPhoneNumberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVerifyPhoneNumberData_VerifyPhoneNumber other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVerifyPhoneNumberData_VerifyPhoneNumber;
  }

  @override
  void update(
      void Function(GVerifyPhoneNumberData_VerifyPhoneNumberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVerifyPhoneNumberData_VerifyPhoneNumber build() => _build();

  _$GVerifyPhoneNumberData_VerifyPhoneNumber _build() {
    final _$result = _$v ??
        new _$GVerifyPhoneNumberData_VerifyPhoneNumber._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GVerifyPhoneNumberData_VerifyPhoneNumber', 'G__typename'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
