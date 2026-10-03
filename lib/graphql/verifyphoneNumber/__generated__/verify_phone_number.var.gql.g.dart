// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_number.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GVerifyPhoneNumberVars> _$gVerifyPhoneNumberVarsSerializer =
    new _$GVerifyPhoneNumberVarsSerializer();

class _$GVerifyPhoneNumberVarsSerializer
    implements StructuredSerializer<GVerifyPhoneNumberVars> {
  @override
  final Iterable<Type> types = const [
    GVerifyPhoneNumberVars,
    _$GVerifyPhoneNumberVars
  ];
  @override
  final String wireName = 'GVerifyPhoneNumberVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GVerifyPhoneNumberVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'verificationCode',
      serializers.serialize(object.verificationCode,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GVerifyPhoneNumberVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GVerifyPhoneNumberVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'verificationCode':
          result.verificationCode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GVerifyPhoneNumberVars extends GVerifyPhoneNumberVars {
  @override
  final int verificationCode;

  factory _$GVerifyPhoneNumberVars(
          [void Function(GVerifyPhoneNumberVarsBuilder)? updates]) =>
      (new GVerifyPhoneNumberVarsBuilder()..update(updates))._build();

  _$GVerifyPhoneNumberVars._({required this.verificationCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        verificationCode, r'GVerifyPhoneNumberVars', 'verificationCode');
  }

  @override
  GVerifyPhoneNumberVars rebuild(
          void Function(GVerifyPhoneNumberVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GVerifyPhoneNumberVarsBuilder toBuilder() =>
      new GVerifyPhoneNumberVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GVerifyPhoneNumberVars &&
        verificationCode == other.verificationCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verificationCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GVerifyPhoneNumberVars')
          ..add('verificationCode', verificationCode))
        .toString();
  }
}

class GVerifyPhoneNumberVarsBuilder
    implements Builder<GVerifyPhoneNumberVars, GVerifyPhoneNumberVarsBuilder> {
  _$GVerifyPhoneNumberVars? _$v;

  int? _verificationCode;
  int? get verificationCode => _$this._verificationCode;
  set verificationCode(int? verificationCode) =>
      _$this._verificationCode = verificationCode;

  GVerifyPhoneNumberVarsBuilder();

  GVerifyPhoneNumberVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verificationCode = $v.verificationCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GVerifyPhoneNumberVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GVerifyPhoneNumberVars;
  }

  @override
  void update(void Function(GVerifyPhoneNumberVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GVerifyPhoneNumberVars build() => _build();

  _$GVerifyPhoneNumberVars _build() {
    final _$result = _$v ??
        new _$GVerifyPhoneNumberVars._(
            verificationCode: BuiltValueNullFieldError.checkNotNull(
                verificationCode,
                r'GVerifyPhoneNumberVars',
                'verificationCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
