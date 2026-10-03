// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_promo_code.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GvalidatePromoCodeVars> _$gvalidatePromoCodeVarsSerializer =
    new _$GvalidatePromoCodeVarsSerializer();

class _$GvalidatePromoCodeVarsSerializer
    implements StructuredSerializer<GvalidatePromoCodeVars> {
  @override
  final Iterable<Type> types = const [
    GvalidatePromoCodeVars,
    _$GvalidatePromoCodeVars
  ];
  @override
  final String wireName = 'GvalidatePromoCodeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GvalidatePromoCodeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GvalidatePromoCodeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvalidatePromoCodeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GvalidatePromoCodeVars extends GvalidatePromoCodeVars {
  @override
  final String code;

  factory _$GvalidatePromoCodeVars(
          [void Function(GvalidatePromoCodeVarsBuilder)? updates]) =>
      (new GvalidatePromoCodeVarsBuilder()..update(updates))._build();

  _$GvalidatePromoCodeVars._({required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        code, r'GvalidatePromoCodeVars', 'code');
  }

  @override
  GvalidatePromoCodeVars rebuild(
          void Function(GvalidatePromoCodeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvalidatePromoCodeVarsBuilder toBuilder() =>
      new GvalidatePromoCodeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvalidatePromoCodeVars && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GvalidatePromoCodeVars')
          ..add('code', code))
        .toString();
  }
}

class GvalidatePromoCodeVarsBuilder
    implements Builder<GvalidatePromoCodeVars, GvalidatePromoCodeVarsBuilder> {
  _$GvalidatePromoCodeVars? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GvalidatePromoCodeVarsBuilder();

  GvalidatePromoCodeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvalidatePromoCodeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvalidatePromoCodeVars;
  }

  @override
  void update(void Function(GvalidatePromoCodeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GvalidatePromoCodeVars build() => _build();

  _$GvalidatePromoCodeVars _build() {
    final _$result = _$v ??
        new _$GvalidatePromoCodeVars._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GvalidatePromoCodeVars', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
