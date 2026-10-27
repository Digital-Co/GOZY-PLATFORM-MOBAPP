// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_checkout.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsubmitCheckoutVars> _$gsubmitCheckoutVarsSerializer =
    new _$GsubmitCheckoutVarsSerializer();

class _$GsubmitCheckoutVarsSerializer
    implements StructuredSerializer<GsubmitCheckoutVars> {
  @override
  final Iterable<Type> types = const [
    GsubmitCheckoutVars,
    _$GsubmitCheckoutVars
  ];
  @override
  final String wireName = 'GsubmitCheckoutVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsubmitCheckoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'hasDamage',
      serializers.serialize(object.hasDamage,
          specifiedType: const FullType(bool)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GCheckoutInput)),
    ];

    return result;
  }

  @override
  GsubmitCheckoutVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsubmitCheckoutVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hasDamage':
          result.hasDamage = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCheckoutInput))!
              as _i1.GCheckoutInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GsubmitCheckoutVars extends GsubmitCheckoutVars {
  @override
  final int reservationId;
  @override
  final bool hasDamage;
  @override
  final _i1.GCheckoutInput input;

  factory _$GsubmitCheckoutVars(
          [void Function(GsubmitCheckoutVarsBuilder)? updates]) =>
      (new GsubmitCheckoutVarsBuilder()..update(updates))._build();

  _$GsubmitCheckoutVars._(
      {required this.reservationId,
      required this.hasDamage,
      required this.input})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GsubmitCheckoutVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        hasDamage, r'GsubmitCheckoutVars', 'hasDamage');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GsubmitCheckoutVars', 'input');
  }

  @override
  GsubmitCheckoutVars rebuild(
          void Function(GsubmitCheckoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsubmitCheckoutVarsBuilder toBuilder() =>
      new GsubmitCheckoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsubmitCheckoutVars &&
        reservationId == other.reservationId &&
        hasDamage == other.hasDamage &&
        input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, hasDamage.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsubmitCheckoutVars')
          ..add('reservationId', reservationId)
          ..add('hasDamage', hasDamage)
          ..add('input', input))
        .toString();
  }
}

class GsubmitCheckoutVarsBuilder
    implements Builder<GsubmitCheckoutVars, GsubmitCheckoutVarsBuilder> {
  _$GsubmitCheckoutVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  bool? _hasDamage;
  bool? get hasDamage => _$this._hasDamage;
  set hasDamage(bool? hasDamage) => _$this._hasDamage = hasDamage;

  _i1.GCheckoutInputBuilder? _input;
  _i1.GCheckoutInputBuilder get input =>
      _$this._input ??= new _i1.GCheckoutInputBuilder();
  set input(_i1.GCheckoutInputBuilder? input) => _$this._input = input;

  GsubmitCheckoutVarsBuilder();

  GsubmitCheckoutVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _hasDamage = $v.hasDamage;
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsubmitCheckoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsubmitCheckoutVars;
  }

  @override
  void update(void Function(GsubmitCheckoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsubmitCheckoutVars build() => _build();

  _$GsubmitCheckoutVars _build() {
    _$GsubmitCheckoutVars _$result;
    try {
      _$result = _$v ??
          new _$GsubmitCheckoutVars._(
              reservationId: BuiltValueNullFieldError.checkNotNull(
                  reservationId, r'GsubmitCheckoutVars', 'reservationId'),
              hasDamage: BuiltValueNullFieldError.checkNotNull(
                  hasDamage, r'GsubmitCheckoutVars', 'hasDamage'),
              input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsubmitCheckoutVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
