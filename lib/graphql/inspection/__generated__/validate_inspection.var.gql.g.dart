// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_inspection.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GvalidateInspectionVars> _$gvalidateInspectionVarsSerializer =
    new _$GvalidateInspectionVarsSerializer();

class _$GvalidateInspectionVarsSerializer
    implements StructuredSerializer<GvalidateInspectionVars> {
  @override
  final Iterable<Type> types = const [
    GvalidateInspectionVars,
    _$GvalidateInspectionVars
  ];
  @override
  final String wireName = 'GvalidateInspectionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GvalidateInspectionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GvalidateInspectionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvalidateInspectionVarsBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GvalidateInspectionVars extends GvalidateInspectionVars {
  @override
  final int reservationId;
  @override
  final String type;
  @override
  final int version;

  factory _$GvalidateInspectionVars(
          [void Function(GvalidateInspectionVarsBuilder)? updates]) =>
      (new GvalidateInspectionVarsBuilder()..update(updates))._build();

  _$GvalidateInspectionVars._(
      {required this.reservationId, required this.type, required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GvalidateInspectionVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GvalidateInspectionVars', 'type');
    BuiltValueNullFieldError.checkNotNull(
        version, r'GvalidateInspectionVars', 'version');
  }

  @override
  GvalidateInspectionVars rebuild(
          void Function(GvalidateInspectionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvalidateInspectionVarsBuilder toBuilder() =>
      new GvalidateInspectionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvalidateInspectionVars &&
        reservationId == other.reservationId &&
        type == other.type &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GvalidateInspectionVars')
          ..add('reservationId', reservationId)
          ..add('type', type)
          ..add('version', version))
        .toString();
  }
}

class GvalidateInspectionVarsBuilder
    implements
        Builder<GvalidateInspectionVars, GvalidateInspectionVarsBuilder> {
  _$GvalidateInspectionVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  GvalidateInspectionVarsBuilder();

  GvalidateInspectionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _type = $v.type;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvalidateInspectionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvalidateInspectionVars;
  }

  @override
  void update(void Function(GvalidateInspectionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GvalidateInspectionVars build() => _build();

  _$GvalidateInspectionVars _build() {
    final _$result = _$v ??
        new _$GvalidateInspectionVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GvalidateInspectionVars', 'reservationId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GvalidateInspectionVars', 'type'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'GvalidateInspectionVars', 'version'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
