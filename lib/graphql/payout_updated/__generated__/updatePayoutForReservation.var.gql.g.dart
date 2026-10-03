// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatePayoutForReservation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdatePayoutForReservationVars>
    _$gupdatePayoutForReservationVarsSerializer =
    new _$GupdatePayoutForReservationVarsSerializer();

class _$GupdatePayoutForReservationVarsSerializer
    implements StructuredSerializer<GupdatePayoutForReservationVars> {
  @override
  final Iterable<Type> types = const [
    GupdatePayoutForReservationVars,
    _$GupdatePayoutForReservationVars
  ];
  @override
  final String wireName = 'GupdatePayoutForReservationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdatePayoutForReservationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'payoutId',
      serializers.serialize(object.payoutId,
          specifiedType: const FullType(int)),
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GupdatePayoutForReservationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdatePayoutForReservationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'payoutId':
          result.payoutId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdatePayoutForReservationVars
    extends GupdatePayoutForReservationVars {
  @override
  final int payoutId;
  @override
  final int reservationId;

  factory _$GupdatePayoutForReservationVars(
          [void Function(GupdatePayoutForReservationVarsBuilder)? updates]) =>
      (new GupdatePayoutForReservationVarsBuilder()..update(updates))._build();

  _$GupdatePayoutForReservationVars._(
      {required this.payoutId, required this.reservationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        payoutId, r'GupdatePayoutForReservationVars', 'payoutId');
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GupdatePayoutForReservationVars', 'reservationId');
  }

  @override
  GupdatePayoutForReservationVars rebuild(
          void Function(GupdatePayoutForReservationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePayoutForReservationVarsBuilder toBuilder() =>
      new GupdatePayoutForReservationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdatePayoutForReservationVars &&
        payoutId == other.payoutId &&
        reservationId == other.reservationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payoutId.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdatePayoutForReservationVars')
          ..add('payoutId', payoutId)
          ..add('reservationId', reservationId))
        .toString();
  }
}

class GupdatePayoutForReservationVarsBuilder
    implements
        Builder<GupdatePayoutForReservationVars,
            GupdatePayoutForReservationVarsBuilder> {
  _$GupdatePayoutForReservationVars? _$v;

  int? _payoutId;
  int? get payoutId => _$this._payoutId;
  set payoutId(int? payoutId) => _$this._payoutId = payoutId;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  GupdatePayoutForReservationVarsBuilder();

  GupdatePayoutForReservationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payoutId = $v.payoutId;
      _reservationId = $v.reservationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdatePayoutForReservationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePayoutForReservationVars;
  }

  @override
  void update(void Function(GupdatePayoutForReservationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePayoutForReservationVars build() => _build();

  _$GupdatePayoutForReservationVars _build() {
    final _$result = _$v ??
        new _$GupdatePayoutForReservationVars._(
            payoutId: BuiltValueNullFieldError.checkNotNull(
                payoutId, r'GupdatePayoutForReservationVars', 'payoutId'),
            reservationId: BuiltValueNullFieldError.checkNotNull(reservationId,
                r'GupdatePayoutForReservationVars', 'reservationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
