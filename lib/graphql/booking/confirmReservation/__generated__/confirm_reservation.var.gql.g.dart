// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_reservation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GconfirmReservationVars> _$gconfirmReservationVarsSerializer =
    new _$GconfirmReservationVarsSerializer();

class _$GconfirmReservationVarsSerializer
    implements StructuredSerializer<GconfirmReservationVars> {
  @override
  final Iterable<Type> types = const [
    GconfirmReservationVars,
    _$GconfirmReservationVars
  ];
  @override
  final String wireName = 'GconfirmReservationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmReservationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'paymentIntentId',
      serializers.serialize(object.paymentIntentId,
          specifiedType: const FullType(String)),
      'paymentType',
      serializers.serialize(object.paymentType,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GconfirmReservationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmReservationVarsBuilder();

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
        case 'paymentIntentId':
          result.paymentIntentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmReservationVars extends GconfirmReservationVars {
  @override
  final int reservationId;
  @override
  final String paymentIntentId;
  @override
  final int paymentType;

  factory _$GconfirmReservationVars(
          [void Function(GconfirmReservationVarsBuilder)? updates]) =>
      (new GconfirmReservationVarsBuilder()..update(updates))._build();

  _$GconfirmReservationVars._(
      {required this.reservationId,
      required this.paymentIntentId,
      required this.paymentType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GconfirmReservationVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        paymentIntentId, r'GconfirmReservationVars', 'paymentIntentId');
    BuiltValueNullFieldError.checkNotNull(
        paymentType, r'GconfirmReservationVars', 'paymentType');
  }

  @override
  GconfirmReservationVars rebuild(
          void Function(GconfirmReservationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmReservationVarsBuilder toBuilder() =>
      new GconfirmReservationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmReservationVars &&
        reservationId == other.reservationId &&
        paymentIntentId == other.paymentIntentId &&
        paymentType == other.paymentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, paymentIntentId.hashCode);
    _$hash = $jc(_$hash, paymentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmReservationVars')
          ..add('reservationId', reservationId)
          ..add('paymentIntentId', paymentIntentId)
          ..add('paymentType', paymentType))
        .toString();
  }
}

class GconfirmReservationVarsBuilder
    implements
        Builder<GconfirmReservationVars, GconfirmReservationVarsBuilder> {
  _$GconfirmReservationVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _paymentIntentId;
  String? get paymentIntentId => _$this._paymentIntentId;
  set paymentIntentId(String? paymentIntentId) =>
      _$this._paymentIntentId = paymentIntentId;

  int? _paymentType;
  int? get paymentType => _$this._paymentType;
  set paymentType(int? paymentType) => _$this._paymentType = paymentType;

  GconfirmReservationVarsBuilder();

  GconfirmReservationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _paymentIntentId = $v.paymentIntentId;
      _paymentType = $v.paymentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmReservationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmReservationVars;
  }

  @override
  void update(void Function(GconfirmReservationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmReservationVars build() => _build();

  _$GconfirmReservationVars _build() {
    final _$result = _$v ??
        new _$GconfirmReservationVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GconfirmReservationVars', 'reservationId'),
            paymentIntentId: BuiltValueNullFieldError.checkNotNull(
                paymentIntentId, r'GconfirmReservationVars', 'paymentIntentId'),
            paymentType: BuiltValueNullFieldError.checkNotNull(
                paymentType, r'GconfirmReservationVars', 'paymentType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
