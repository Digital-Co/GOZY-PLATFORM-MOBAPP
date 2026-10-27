// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_inspection_comparison.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetInspectionComparisonVars>
    _$ggetInspectionComparisonVarsSerializer =
    new _$GgetInspectionComparisonVarsSerializer();

class _$GgetInspectionComparisonVarsSerializer
    implements StructuredSerializer<GgetInspectionComparisonVars> {
  @override
  final Iterable<Type> types = const [
    GgetInspectionComparisonVars,
    _$GgetInspectionComparisonVars
  ];
  @override
  final String wireName = 'GgetInspectionComparisonVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetInspectionComparisonVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GgetInspectionComparisonVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetInspectionComparisonVarsBuilder();

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

class _$GgetInspectionComparisonVars extends GgetInspectionComparisonVars {
  @override
  final int reservationId;

  factory _$GgetInspectionComparisonVars(
          [void Function(GgetInspectionComparisonVarsBuilder)? updates]) =>
      (new GgetInspectionComparisonVarsBuilder()..update(updates))._build();

  _$GgetInspectionComparisonVars._({required this.reservationId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GgetInspectionComparisonVars', 'reservationId');
  }

  @override
  GgetInspectionComparisonVars rebuild(
          void Function(GgetInspectionComparisonVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetInspectionComparisonVarsBuilder toBuilder() =>
      new GgetInspectionComparisonVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetInspectionComparisonVars &&
        reservationId == other.reservationId;
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
    return (newBuiltValueToStringHelper(r'GgetInspectionComparisonVars')
          ..add('reservationId', reservationId))
        .toString();
  }
}

class GgetInspectionComparisonVarsBuilder
    implements
        Builder<GgetInspectionComparisonVars,
            GgetInspectionComparisonVarsBuilder> {
  _$GgetInspectionComparisonVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  GgetInspectionComparisonVarsBuilder();

  GgetInspectionComparisonVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetInspectionComparisonVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetInspectionComparisonVars;
  }

  @override
  void update(void Function(GgetInspectionComparisonVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetInspectionComparisonVars build() => _build();

  _$GgetInspectionComparisonVars _build() {
    final _$result = _$v ??
        new _$GgetInspectionComparisonVars._(
            reservationId: BuiltValueNullFieldError.checkNotNull(reservationId,
                r'GgetInspectionComparisonVars', 'reservationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
