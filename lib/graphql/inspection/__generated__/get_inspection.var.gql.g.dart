// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_inspection.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetInspectionVars> _$ggetInspectionVarsSerializer =
    new _$GgetInspectionVarsSerializer();

class _$GgetInspectionVarsSerializer
    implements StructuredSerializer<GgetInspectionVars> {
  @override
  final Iterable<Type> types = const [GgetInspectionVars, _$GgetInspectionVars];
  @override
  final String wireName = 'GgetInspectionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetInspectionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GgetInspectionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetInspectionVarsBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetInspectionVars extends GgetInspectionVars {
  @override
  final int reservationId;
  @override
  final String type;

  factory _$GgetInspectionVars(
          [void Function(GgetInspectionVarsBuilder)? updates]) =>
      (new GgetInspectionVarsBuilder()..update(updates))._build();

  _$GgetInspectionVars._({required this.reservationId, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GgetInspectionVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(type, r'GgetInspectionVars', 'type');
  }

  @override
  GgetInspectionVars rebuild(
          void Function(GgetInspectionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetInspectionVarsBuilder toBuilder() =>
      new GgetInspectionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetInspectionVars &&
        reservationId == other.reservationId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetInspectionVars')
          ..add('reservationId', reservationId)
          ..add('type', type))
        .toString();
  }
}

class GgetInspectionVarsBuilder
    implements Builder<GgetInspectionVars, GgetInspectionVarsBuilder> {
  _$GgetInspectionVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GgetInspectionVarsBuilder();

  GgetInspectionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetInspectionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetInspectionVars;
  }

  @override
  void update(void Function(GgetInspectionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetInspectionVars build() => _build();

  _$GgetInspectionVars _build() {
    final _$result = _$v ??
        new _$GgetInspectionVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GgetInspectionVars', 'reservationId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GgetInspectionVars', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
