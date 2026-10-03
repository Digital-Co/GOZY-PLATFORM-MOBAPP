// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reservation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetReservationVars> _$ggetReservationVarsSerializer =
    new _$GgetReservationVarsSerializer();

class _$GgetReservationVarsSerializer
    implements StructuredSerializer<GgetReservationVars> {
  @override
  final Iterable<Type> types = const [
    GgetReservationVars,
    _$GgetReservationVars
  ];
  @override
  final String wireName = 'GgetReservationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetReservationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.convertCurrency;
    if (value != null) {
      result
        ..add('convertCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetReservationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetReservationVarsBuilder();

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
        case 'convertCurrency':
          result.convertCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetReservationVars extends GgetReservationVars {
  @override
  final int reservationId;
  @override
  final String? convertCurrency;

  factory _$GgetReservationVars(
          [void Function(GgetReservationVarsBuilder)? updates]) =>
      (new GgetReservationVarsBuilder()..update(updates))._build();

  _$GgetReservationVars._({required this.reservationId, this.convertCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GgetReservationVars', 'reservationId');
  }

  @override
  GgetReservationVars rebuild(
          void Function(GgetReservationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetReservationVarsBuilder toBuilder() =>
      new GgetReservationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetReservationVars &&
        reservationId == other.reservationId &&
        convertCurrency == other.convertCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, convertCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetReservationVars')
          ..add('reservationId', reservationId)
          ..add('convertCurrency', convertCurrency))
        .toString();
  }
}

class GgetReservationVarsBuilder
    implements Builder<GgetReservationVars, GgetReservationVarsBuilder> {
  _$GgetReservationVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _convertCurrency;
  String? get convertCurrency => _$this._convertCurrency;
  set convertCurrency(String? convertCurrency) =>
      _$this._convertCurrency = convertCurrency;

  GgetReservationVarsBuilder();

  GgetReservationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _convertCurrency = $v.convertCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetReservationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetReservationVars;
  }

  @override
  void update(void Function(GgetReservationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetReservationVars build() => _build();

  _$GgetReservationVars _build() {
    final _$result = _$v ??
        new _$GgetReservationVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GgetReservationVars', 'reservationId'),
            convertCurrency: convertCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
