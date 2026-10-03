// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_promo_code.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GvalidatePromoCodeData> _$gvalidatePromoCodeDataSerializer =
    new _$GvalidatePromoCodeDataSerializer();
Serializer<GvalidatePromoCodeData_validatePromoCode>
    _$gvalidatePromoCodeDataValidatePromoCodeSerializer =
    new _$GvalidatePromoCodeData_validatePromoCodeSerializer();
Serializer<GvalidatePromoCodeData_validatePromoCode_result>
    _$gvalidatePromoCodeDataValidatePromoCodeResultSerializer =
    new _$GvalidatePromoCodeData_validatePromoCode_resultSerializer();

class _$GvalidatePromoCodeDataSerializer
    implements StructuredSerializer<GvalidatePromoCodeData> {
  @override
  final Iterable<Type> types = const [
    GvalidatePromoCodeData,
    _$GvalidatePromoCodeData
  ];
  @override
  final String wireName = 'GvalidatePromoCodeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GvalidatePromoCodeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.validatePromoCode;
    if (value != null) {
      result
        ..add('validatePromoCode')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GvalidatePromoCodeData_validatePromoCode)));
    }
    return result;
  }

  @override
  GvalidatePromoCodeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvalidatePromoCodeDataBuilder();

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
        case 'validatePromoCode':
          result.validatePromoCode.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GvalidatePromoCodeData_validatePromoCode))!
              as GvalidatePromoCodeData_validatePromoCode);
          break;
      }
    }

    return result.build();
  }
}

class _$GvalidatePromoCodeData_validatePromoCodeSerializer
    implements StructuredSerializer<GvalidatePromoCodeData_validatePromoCode> {
  @override
  final Iterable<Type> types = const [
    GvalidatePromoCodeData_validatePromoCode,
    _$GvalidatePromoCodeData_validatePromoCode
  ];
  @override
  final String wireName = 'GvalidatePromoCodeData_validatePromoCode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GvalidatePromoCodeData_validatePromoCode object,
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
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GvalidatePromoCodeData_validatePromoCode_result)));
    }
    return result;
  }

  @override
  GvalidatePromoCodeData_validatePromoCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvalidatePromoCodeData_validatePromoCodeBuilder();

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
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GvalidatePromoCodeData_validatePromoCode_result))!
              as GvalidatePromoCodeData_validatePromoCode_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GvalidatePromoCodeData_validatePromoCode_resultSerializer
    implements
        StructuredSerializer<GvalidatePromoCodeData_validatePromoCode_result> {
  @override
  final Iterable<Type> types = const [
    GvalidatePromoCodeData_validatePromoCode_result,
    _$GvalidatePromoCodeData_validatePromoCode_result
  ];
  @override
  final String wireName = 'GvalidatePromoCodeData_validatePromoCode_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GvalidatePromoCodeData_validatePromoCode_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.promoValue;
    if (value != null) {
      result
        ..add('promoValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deductionType;
    if (value != null) {
      result
        ..add('deductionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GvalidatePromoCodeData_validatePromoCode_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvalidatePromoCodeData_validatePromoCode_resultBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'promoValue':
          result.promoValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'deductionType':
          result.deductionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GvalidatePromoCodeData extends GvalidatePromoCodeData {
  @override
  final String G__typename;
  @override
  final GvalidatePromoCodeData_validatePromoCode? validatePromoCode;

  factory _$GvalidatePromoCodeData(
          [void Function(GvalidatePromoCodeDataBuilder)? updates]) =>
      (new GvalidatePromoCodeDataBuilder()..update(updates))._build();

  _$GvalidatePromoCodeData._(
      {required this.G__typename, this.validatePromoCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GvalidatePromoCodeData', 'G__typename');
  }

  @override
  GvalidatePromoCodeData rebuild(
          void Function(GvalidatePromoCodeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvalidatePromoCodeDataBuilder toBuilder() =>
      new GvalidatePromoCodeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvalidatePromoCodeData &&
        G__typename == other.G__typename &&
        validatePromoCode == other.validatePromoCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, validatePromoCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GvalidatePromoCodeData')
          ..add('G__typename', G__typename)
          ..add('validatePromoCode', validatePromoCode))
        .toString();
  }
}

class GvalidatePromoCodeDataBuilder
    implements Builder<GvalidatePromoCodeData, GvalidatePromoCodeDataBuilder> {
  _$GvalidatePromoCodeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GvalidatePromoCodeData_validatePromoCodeBuilder? _validatePromoCode;
  GvalidatePromoCodeData_validatePromoCodeBuilder get validatePromoCode =>
      _$this._validatePromoCode ??=
          new GvalidatePromoCodeData_validatePromoCodeBuilder();
  set validatePromoCode(
          GvalidatePromoCodeData_validatePromoCodeBuilder? validatePromoCode) =>
      _$this._validatePromoCode = validatePromoCode;

  GvalidatePromoCodeDataBuilder() {
    GvalidatePromoCodeData._initializeBuilder(this);
  }

  GvalidatePromoCodeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _validatePromoCode = $v.validatePromoCode?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvalidatePromoCodeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvalidatePromoCodeData;
  }

  @override
  void update(void Function(GvalidatePromoCodeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GvalidatePromoCodeData build() => _build();

  _$GvalidatePromoCodeData _build() {
    _$GvalidatePromoCodeData _$result;
    try {
      _$result = _$v ??
          new _$GvalidatePromoCodeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GvalidatePromoCodeData', 'G__typename'),
              validatePromoCode: _validatePromoCode?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'validatePromoCode';
        _validatePromoCode?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GvalidatePromoCodeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GvalidatePromoCodeData_validatePromoCode
    extends GvalidatePromoCodeData_validatePromoCode {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GvalidatePromoCodeData_validatePromoCode_result? result;

  factory _$GvalidatePromoCodeData_validatePromoCode(
          [void Function(GvalidatePromoCodeData_validatePromoCodeBuilder)?
              updates]) =>
      (new GvalidatePromoCodeData_validatePromoCodeBuilder()..update(updates))
          ._build();

  _$GvalidatePromoCodeData_validatePromoCode._(
      {required this.G__typename, this.status, this.errorMessage, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GvalidatePromoCodeData_validatePromoCode', 'G__typename');
  }

  @override
  GvalidatePromoCodeData_validatePromoCode rebuild(
          void Function(GvalidatePromoCodeData_validatePromoCodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvalidatePromoCodeData_validatePromoCodeBuilder toBuilder() =>
      new GvalidatePromoCodeData_validatePromoCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvalidatePromoCodeData_validatePromoCode &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GvalidatePromoCodeData_validatePromoCode')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('result', result))
        .toString();
  }
}

class GvalidatePromoCodeData_validatePromoCodeBuilder
    implements
        Builder<GvalidatePromoCodeData_validatePromoCode,
            GvalidatePromoCodeData_validatePromoCodeBuilder> {
  _$GvalidatePromoCodeData_validatePromoCode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GvalidatePromoCodeData_validatePromoCode_resultBuilder? _result;
  GvalidatePromoCodeData_validatePromoCode_resultBuilder get result =>
      _$this._result ??=
          new GvalidatePromoCodeData_validatePromoCode_resultBuilder();
  set result(GvalidatePromoCodeData_validatePromoCode_resultBuilder? result) =>
      _$this._result = result;

  GvalidatePromoCodeData_validatePromoCodeBuilder() {
    GvalidatePromoCodeData_validatePromoCode._initializeBuilder(this);
  }

  GvalidatePromoCodeData_validatePromoCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvalidatePromoCodeData_validatePromoCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvalidatePromoCodeData_validatePromoCode;
  }

  @override
  void update(
      void Function(GvalidatePromoCodeData_validatePromoCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GvalidatePromoCodeData_validatePromoCode build() => _build();

  _$GvalidatePromoCodeData_validatePromoCode _build() {
    _$GvalidatePromoCodeData_validatePromoCode _$result;
    try {
      _$result = _$v ??
          new _$GvalidatePromoCodeData_validatePromoCode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GvalidatePromoCodeData_validatePromoCode', 'G__typename'),
              status: status,
              errorMessage: errorMessage,
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GvalidatePromoCodeData_validatePromoCode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GvalidatePromoCodeData_validatePromoCode_result
    extends GvalidatePromoCodeData_validatePromoCode_result {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? code;
  @override
  final double? promoValue;
  @override
  final String? deductionType;

  factory _$GvalidatePromoCodeData_validatePromoCode_result(
          [void Function(
                  GvalidatePromoCodeData_validatePromoCode_resultBuilder)?
              updates]) =>
      (new GvalidatePromoCodeData_validatePromoCode_resultBuilder()
            ..update(updates))
          ._build();

  _$GvalidatePromoCodeData_validatePromoCode_result._(
      {required this.G__typename,
      this.id,
      this.code,
      this.promoValue,
      this.deductionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GvalidatePromoCodeData_validatePromoCode_result', 'G__typename');
  }

  @override
  GvalidatePromoCodeData_validatePromoCode_result rebuild(
          void Function(GvalidatePromoCodeData_validatePromoCode_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvalidatePromoCodeData_validatePromoCode_resultBuilder toBuilder() =>
      new GvalidatePromoCodeData_validatePromoCode_resultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvalidatePromoCodeData_validatePromoCode_result &&
        G__typename == other.G__typename &&
        id == other.id &&
        code == other.code &&
        promoValue == other.promoValue &&
        deductionType == other.deductionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, promoValue.hashCode);
    _$hash = $jc(_$hash, deductionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GvalidatePromoCodeData_validatePromoCode_result')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('code', code)
          ..add('promoValue', promoValue)
          ..add('deductionType', deductionType))
        .toString();
  }
}

class GvalidatePromoCodeData_validatePromoCode_resultBuilder
    implements
        Builder<GvalidatePromoCodeData_validatePromoCode_result,
            GvalidatePromoCodeData_validatePromoCode_resultBuilder> {
  _$GvalidatePromoCodeData_validatePromoCode_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  double? _promoValue;
  double? get promoValue => _$this._promoValue;
  set promoValue(double? promoValue) => _$this._promoValue = promoValue;

  String? _deductionType;
  String? get deductionType => _$this._deductionType;
  set deductionType(String? deductionType) =>
      _$this._deductionType = deductionType;

  GvalidatePromoCodeData_validatePromoCode_resultBuilder() {
    GvalidatePromoCodeData_validatePromoCode_result._initializeBuilder(this);
  }

  GvalidatePromoCodeData_validatePromoCode_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _code = $v.code;
      _promoValue = $v.promoValue;
      _deductionType = $v.deductionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvalidatePromoCodeData_validatePromoCode_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvalidatePromoCodeData_validatePromoCode_result;
  }

  @override
  void update(
      void Function(GvalidatePromoCodeData_validatePromoCode_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GvalidatePromoCodeData_validatePromoCode_result build() => _build();

  _$GvalidatePromoCodeData_validatePromoCode_result _build() {
    final _$result = _$v ??
        new _$GvalidatePromoCodeData_validatePromoCode_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GvalidatePromoCodeData_validatePromoCode_result',
                'G__typename'),
            id: id,
            code: code,
            promoValue: promoValue,
            deductionType: deductionType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
