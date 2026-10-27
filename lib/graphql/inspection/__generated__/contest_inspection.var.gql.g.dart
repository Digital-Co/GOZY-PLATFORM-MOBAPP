// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest_inspection.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcontestInspectionVars> _$gcontestInspectionVarsSerializer =
    new _$GcontestInspectionVarsSerializer();

class _$GcontestInspectionVarsSerializer
    implements StructuredSerializer<GcontestInspectionVars> {
  @override
  final Iterable<Type> types = const [
    GcontestInspectionVars,
    _$GcontestInspectionVars
  ];
  @override
  final String wireName = 'GcontestInspectionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcontestInspectionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GcontestInspectionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcontestInspectionVarsBuilder();

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
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcontestInspectionVars extends GcontestInspectionVars {
  @override
  final int reservationId;
  @override
  final String type;
  @override
  final String comment;

  factory _$GcontestInspectionVars(
          [void Function(GcontestInspectionVarsBuilder)? updates]) =>
      (new GcontestInspectionVarsBuilder()..update(updates))._build();

  _$GcontestInspectionVars._(
      {required this.reservationId, required this.type, required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GcontestInspectionVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GcontestInspectionVars', 'type');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'GcontestInspectionVars', 'comment');
  }

  @override
  GcontestInspectionVars rebuild(
          void Function(GcontestInspectionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcontestInspectionVarsBuilder toBuilder() =>
      new GcontestInspectionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcontestInspectionVars &&
        reservationId == other.reservationId &&
        type == other.type &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcontestInspectionVars')
          ..add('reservationId', reservationId)
          ..add('type', type)
          ..add('comment', comment))
        .toString();
  }
}

class GcontestInspectionVarsBuilder
    implements Builder<GcontestInspectionVars, GcontestInspectionVarsBuilder> {
  _$GcontestInspectionVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GcontestInspectionVarsBuilder();

  GcontestInspectionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _type = $v.type;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcontestInspectionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcontestInspectionVars;
  }

  @override
  void update(void Function(GcontestInspectionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcontestInspectionVars build() => _build();

  _$GcontestInspectionVars _build() {
    final _$result = _$v ??
        new _$GcontestInspectionVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(
                reservationId, r'GcontestInspectionVars', 'reservationId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GcontestInspectionVars', 'type'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'GcontestInspectionVars', 'comment'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
