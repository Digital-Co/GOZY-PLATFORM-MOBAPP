// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_inspection_draft.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsaveInspectionDraftVars> _$gsaveInspectionDraftVarsSerializer =
    new _$GsaveInspectionDraftVarsSerializer();

class _$GsaveInspectionDraftVarsSerializer
    implements StructuredSerializer<GsaveInspectionDraftVars> {
  @override
  final Iterable<Type> types = const [
    GsaveInspectionDraftVars,
    _$GsaveInspectionDraftVars
  ];
  @override
  final String wireName = 'GsaveInspectionDraftVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsaveInspectionDraftVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reservationId',
      serializers.serialize(object.reservationId,
          specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GInspectionInput)),
    ];
    Object? value;
    value = object.expectedVersion;
    if (value != null) {
      result
        ..add('expectedVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GsaveInspectionDraftVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsaveInspectionDraftVarsBuilder();

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
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GInspectionInput))!
              as _i1.GInspectionInput);
          break;
        case 'expectedVersion':
          result.expectedVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GsaveInspectionDraftVars extends GsaveInspectionDraftVars {
  @override
  final int reservationId;
  @override
  final String type;
  @override
  final _i1.GInspectionInput input;
  @override
  final int? expectedVersion;

  factory _$GsaveInspectionDraftVars(
          [void Function(GsaveInspectionDraftVarsBuilder)? updates]) =>
      (new GsaveInspectionDraftVarsBuilder()..update(updates))._build();

  _$GsaveInspectionDraftVars._(
      {required this.reservationId,
      required this.type,
      required this.input,
      this.expectedVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reservationId, r'GsaveInspectionDraftVars', 'reservationId');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GsaveInspectionDraftVars', 'type');
    BuiltValueNullFieldError.checkNotNull(
        input, r'GsaveInspectionDraftVars', 'input');
  }

  @override
  GsaveInspectionDraftVars rebuild(
          void Function(GsaveInspectionDraftVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsaveInspectionDraftVarsBuilder toBuilder() =>
      new GsaveInspectionDraftVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsaveInspectionDraftVars &&
        reservationId == other.reservationId &&
        type == other.type &&
        input == other.input &&
        expectedVersion == other.expectedVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, expectedVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsaveInspectionDraftVars')
          ..add('reservationId', reservationId)
          ..add('type', type)
          ..add('input', input)
          ..add('expectedVersion', expectedVersion))
        .toString();
  }
}

class GsaveInspectionDraftVarsBuilder
    implements
        Builder<GsaveInspectionDraftVars, GsaveInspectionDraftVarsBuilder> {
  _$GsaveInspectionDraftVars? _$v;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  _i1.GInspectionInputBuilder? _input;
  _i1.GInspectionInputBuilder get input =>
      _$this._input ??= new _i1.GInspectionInputBuilder();
  set input(_i1.GInspectionInputBuilder? input) => _$this._input = input;

  int? _expectedVersion;
  int? get expectedVersion => _$this._expectedVersion;
  set expectedVersion(int? expectedVersion) =>
      _$this._expectedVersion = expectedVersion;

  GsaveInspectionDraftVarsBuilder();

  GsaveInspectionDraftVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _type = $v.type;
      _input = $v.input.toBuilder();
      _expectedVersion = $v.expectedVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsaveInspectionDraftVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsaveInspectionDraftVars;
  }

  @override
  void update(void Function(GsaveInspectionDraftVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsaveInspectionDraftVars build() => _build();

  _$GsaveInspectionDraftVars _build() {
    _$GsaveInspectionDraftVars _$result;
    try {
      _$result = _$v ??
          new _$GsaveInspectionDraftVars._(
              reservationId: BuiltValueNullFieldError.checkNotNull(
                  reservationId, r'GsaveInspectionDraftVars', 'reservationId'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GsaveInspectionDraftVars', 'type'),
              input: input.build(),
              expectedVersion: expectedVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsaveInspectionDraftVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
