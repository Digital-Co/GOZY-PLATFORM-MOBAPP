// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_phone_number.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddPhoneNumberData> _$gAddPhoneNumberDataSerializer =
    new _$GAddPhoneNumberDataSerializer();
Serializer<GAddPhoneNumberData_AddPhoneNumber>
    _$gAddPhoneNumberDataAddPhoneNumberSerializer =
    new _$GAddPhoneNumberData_AddPhoneNumberSerializer();

class _$GAddPhoneNumberDataSerializer
    implements StructuredSerializer<GAddPhoneNumberData> {
  @override
  final Iterable<Type> types = const [
    GAddPhoneNumberData,
    _$GAddPhoneNumberData
  ];
  @override
  final String wireName = 'GAddPhoneNumberData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPhoneNumberData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.AddPhoneNumber;
    if (value != null) {
      result
        ..add('AddPhoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAddPhoneNumberData_AddPhoneNumber)));
    }
    return result;
  }

  @override
  GAddPhoneNumberData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPhoneNumberDataBuilder();

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
        case 'AddPhoneNumber':
          result.AddPhoneNumber.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAddPhoneNumberData_AddPhoneNumber))!
              as GAddPhoneNumberData_AddPhoneNumber);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPhoneNumberData_AddPhoneNumberSerializer
    implements StructuredSerializer<GAddPhoneNumberData_AddPhoneNumber> {
  @override
  final Iterable<Type> types = const [
    GAddPhoneNumberData_AddPhoneNumber,
    _$GAddPhoneNumberData_AddPhoneNumber
  ];
  @override
  final String wireName = 'GAddPhoneNumberData_AddPhoneNumber';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPhoneNumberData_AddPhoneNumber object,
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
    value = object.phoneNumberStatus;
    if (value != null) {
      result
        ..add('phoneNumberStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationCode;
    if (value != null) {
      result
        ..add('verificationCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GAddPhoneNumberData_AddPhoneNumber deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPhoneNumberData_AddPhoneNumberBuilder();

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
        case 'phoneNumberStatus':
          result.phoneNumberStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'verificationCode':
          result.verificationCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPhoneNumberData extends GAddPhoneNumberData {
  @override
  final String G__typename;
  @override
  final GAddPhoneNumberData_AddPhoneNumber? AddPhoneNumber;

  factory _$GAddPhoneNumberData(
          [void Function(GAddPhoneNumberDataBuilder)? updates]) =>
      (new GAddPhoneNumberDataBuilder()..update(updates))._build();

  _$GAddPhoneNumberData._({required this.G__typename, this.AddPhoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddPhoneNumberData', 'G__typename');
  }

  @override
  GAddPhoneNumberData rebuild(
          void Function(GAddPhoneNumberDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPhoneNumberDataBuilder toBuilder() =>
      new GAddPhoneNumberDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPhoneNumberData &&
        G__typename == other.G__typename &&
        AddPhoneNumber == other.AddPhoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, AddPhoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddPhoneNumberData')
          ..add('G__typename', G__typename)
          ..add('AddPhoneNumber', AddPhoneNumber))
        .toString();
  }
}

class GAddPhoneNumberDataBuilder
    implements Builder<GAddPhoneNumberData, GAddPhoneNumberDataBuilder> {
  _$GAddPhoneNumberData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAddPhoneNumberData_AddPhoneNumberBuilder? _AddPhoneNumber;
  GAddPhoneNumberData_AddPhoneNumberBuilder get AddPhoneNumber =>
      _$this._AddPhoneNumber ??=
          new GAddPhoneNumberData_AddPhoneNumberBuilder();
  set AddPhoneNumber(
          GAddPhoneNumberData_AddPhoneNumberBuilder? AddPhoneNumber) =>
      _$this._AddPhoneNumber = AddPhoneNumber;

  GAddPhoneNumberDataBuilder() {
    GAddPhoneNumberData._initializeBuilder(this);
  }

  GAddPhoneNumberDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _AddPhoneNumber = $v.AddPhoneNumber?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPhoneNumberData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPhoneNumberData;
  }

  @override
  void update(void Function(GAddPhoneNumberDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPhoneNumberData build() => _build();

  _$GAddPhoneNumberData _build() {
    _$GAddPhoneNumberData _$result;
    try {
      _$result = _$v ??
          new _$GAddPhoneNumberData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAddPhoneNumberData', 'G__typename'),
              AddPhoneNumber: _AddPhoneNumber?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'AddPhoneNumber';
        _AddPhoneNumber?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAddPhoneNumberData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAddPhoneNumberData_AddPhoneNumber
    extends GAddPhoneNumberData_AddPhoneNumber {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final String? phoneNumberStatus;
  @override
  final int? verificationCode;

  factory _$GAddPhoneNumberData_AddPhoneNumber(
          [void Function(GAddPhoneNumberData_AddPhoneNumberBuilder)?
              updates]) =>
      (new GAddPhoneNumberData_AddPhoneNumberBuilder()..update(updates))
          ._build();

  _$GAddPhoneNumberData_AddPhoneNumber._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.phoneNumberStatus,
      this.verificationCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAddPhoneNumberData_AddPhoneNumber', 'G__typename');
  }

  @override
  GAddPhoneNumberData_AddPhoneNumber rebuild(
          void Function(GAddPhoneNumberData_AddPhoneNumberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPhoneNumberData_AddPhoneNumberBuilder toBuilder() =>
      new GAddPhoneNumberData_AddPhoneNumberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPhoneNumberData_AddPhoneNumber &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        phoneNumberStatus == other.phoneNumberStatus &&
        verificationCode == other.verificationCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, phoneNumberStatus.hashCode);
    _$hash = $jc(_$hash, verificationCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddPhoneNumberData_AddPhoneNumber')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('phoneNumberStatus', phoneNumberStatus)
          ..add('verificationCode', verificationCode))
        .toString();
  }
}

class GAddPhoneNumberData_AddPhoneNumberBuilder
    implements
        Builder<GAddPhoneNumberData_AddPhoneNumber,
            GAddPhoneNumberData_AddPhoneNumberBuilder> {
  _$GAddPhoneNumberData_AddPhoneNumber? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _phoneNumberStatus;
  String? get phoneNumberStatus => _$this._phoneNumberStatus;
  set phoneNumberStatus(String? phoneNumberStatus) =>
      _$this._phoneNumberStatus = phoneNumberStatus;

  int? _verificationCode;
  int? get verificationCode => _$this._verificationCode;
  set verificationCode(int? verificationCode) =>
      _$this._verificationCode = verificationCode;

  GAddPhoneNumberData_AddPhoneNumberBuilder() {
    GAddPhoneNumberData_AddPhoneNumber._initializeBuilder(this);
  }

  GAddPhoneNumberData_AddPhoneNumberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _phoneNumberStatus = $v.phoneNumberStatus;
      _verificationCode = $v.verificationCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPhoneNumberData_AddPhoneNumber other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPhoneNumberData_AddPhoneNumber;
  }

  @override
  void update(
      void Function(GAddPhoneNumberData_AddPhoneNumberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPhoneNumberData_AddPhoneNumber build() => _build();

  _$GAddPhoneNumberData_AddPhoneNumber _build() {
    final _$result = _$v ??
        new _$GAddPhoneNumberData_AddPhoneNumber._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAddPhoneNumberData_AddPhoneNumber', 'G__typename'),
            status: status,
            errorMessage: errorMessage,
            phoneNumberStatus: phoneNumberStatus,
            verificationCode: verificationCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
