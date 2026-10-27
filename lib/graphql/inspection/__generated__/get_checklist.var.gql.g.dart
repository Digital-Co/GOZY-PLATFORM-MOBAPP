// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_checklist.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetChecklistVars> _$ggetChecklistVarsSerializer =
    new _$GgetChecklistVarsSerializer();

class _$GgetChecklistVarsSerializer
    implements StructuredSerializer<GgetChecklistVars> {
  @override
  final Iterable<Type> types = const [GgetChecklistVars, _$GgetChecklistVars];
  @override
  final String wireName = 'GgetChecklistVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetChecklistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetChecklistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetChecklistVarsBuilder();

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

class _$GgetChecklistVars extends GgetChecklistVars {
  @override
  final int reservationId;

  factory _$GgetChecklistVars(
          [void Function(GgetChecklistVarsBuilder)? updates]) =>
      (new GgetChecklistVarsBuilder()..update(updates))._build();

  _$GgetChecklistVars._({required this.reservationId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GgetChecklistVars', 'reservationId');
  }

  @override
  GgetChecklistVars rebuild(void Function(GgetChecklistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetChecklistVarsBuilder toBuilder() =>
      new GgetChecklistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetChecklistVars && reservationId == other.reservationId;
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
    return (newBuiltValueToStringHelper(r'GgetChecklistVars')
          ..add('reservationId', reservationId))
        .toString();
  }
}

class GgetChecklistVarsBuilder
    implements Builder<GgetChecklistVars, GgetChecklistVarsBuilder> {
  _$GgetChecklistVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  GgetChecklistVarsBuilder();

  GgetChecklistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetChecklistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetChecklistVars;
  }

  @override
  void update(void Function(GgetChecklistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetChecklistVars build() => _build();

  _$GgetChecklistVars _build() {
    final _$result = _$v ??
        new _$GgetChecklistVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GgetChecklistVars', 'reservationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
