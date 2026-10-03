// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_phone_number.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddPhoneNumberVars> _$gAddPhoneNumberVarsSerializer =
    new _$GAddPhoneNumberVarsSerializer();

class _$GAddPhoneNumberVarsSerializer
    implements StructuredSerializer<GAddPhoneNumberVars> {
  @override
  final Iterable<Type> types = const [
    GAddPhoneNumberVars,
    _$GAddPhoneNumberVars
  ];
  @override
  final String wireName = 'GAddPhoneNumberVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddPhoneNumberVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'countryCode',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.countryName;
    if (value != null) {
      result
        ..add('countryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAddPhoneNumberVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddPhoneNumberVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'countryName':
          result.countryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddPhoneNumberVars extends GAddPhoneNumberVars {
  @override
  final String countryCode;
  @override
  final String phoneNumber;
  @override
  final String? countryName;

  factory _$GAddPhoneNumberVars(
          [void Function(GAddPhoneNumberVarsBuilder)? updates]) =>
      (new GAddPhoneNumberVarsBuilder()..update(updates))._build();

  _$GAddPhoneNumberVars._(
      {required this.countryCode, required this.phoneNumber, this.countryName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countryCode, r'GAddPhoneNumberVars', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'GAddPhoneNumberVars', 'phoneNumber');
  }

  @override
  GAddPhoneNumberVars rebuild(
          void Function(GAddPhoneNumberVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddPhoneNumberVarsBuilder toBuilder() =>
      new GAddPhoneNumberVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddPhoneNumberVars &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        countryName == other.countryName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, countryName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddPhoneNumberVars')
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('countryName', countryName))
        .toString();
  }
}

class GAddPhoneNumberVarsBuilder
    implements Builder<GAddPhoneNumberVars, GAddPhoneNumberVarsBuilder> {
  _$GAddPhoneNumberVars? _$v;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  GAddPhoneNumberVarsBuilder();

  GAddPhoneNumberVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _countryName = $v.countryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddPhoneNumberVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddPhoneNumberVars;
  }

  @override
  void update(void Function(GAddPhoneNumberVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddPhoneNumberVars build() => _build();

  _$GAddPhoneNumberVars _build() {
    final _$result = _$v ??
        new _$GAddPhoneNumberVars._(
            countryCode: BuiltValueNullFieldError.checkNotNull(
                countryCode, r'GAddPhoneNumberVars', 'countryCode'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'GAddPhoneNumberVars', 'phoneNumber'),
            countryName: countryName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
