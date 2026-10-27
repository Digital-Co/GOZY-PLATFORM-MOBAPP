// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_dispute.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetDisputeVars> _$ggetDisputeVarsSerializer =
    new _$GgetDisputeVarsSerializer();

class _$GgetDisputeVarsSerializer
    implements StructuredSerializer<GgetDisputeVars> {
  @override
  final Iterable<Type> types = const [GgetDisputeVars, _$GgetDisputeVars];
  @override
  final String wireName = 'GgetDisputeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetDisputeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetDisputeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetDisputeVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GgetDisputeVars extends GgetDisputeVars {
  @override
  final int reservationId;

  factory _$GgetDisputeVars([void Function(GgetDisputeVarsBuilder)? updates]) =>
      (new GgetDisputeVarsBuilder()..update(updates))._build();

  _$GgetDisputeVars._({required this.reservationId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GgetDisputeVars', 'reservationId');
  }

  @override
  GgetDisputeVars rebuild(void Function(GgetDisputeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetDisputeVarsBuilder toBuilder() =>
      new GgetDisputeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetDisputeVars && reservationId == other.reservationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetDisputeVars')
          ..add('reservationId', reservationId))
        .toString();
  }
}

class GgetDisputeVarsBuilder
    implements Builder<GgetDisputeVars, GgetDisputeVarsBuilder> {
  _$GgetDisputeVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  GgetDisputeVarsBuilder();

  GgetDisputeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetDisputeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetDisputeVars;
  }

  @override
  void update(void Function(GgetDisputeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetDisputeVars build() => _build();

  _$GgetDisputeVars _build() {
    final _$result = _$v ??
        new _$GgetDisputeVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GgetDisputeVars', 'reservationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
