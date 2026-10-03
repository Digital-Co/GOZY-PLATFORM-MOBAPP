// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatePayoutForReservation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdatePayoutForReservationData>
    _$gupdatePayoutForReservationDataSerializer =
    new _$GupdatePayoutForReservationDataSerializer();
Serializer<GupdatePayoutForReservationData_updatePayoutForReservation>
    _$gupdatePayoutForReservationDataUpdatePayoutForReservationSerializer =
    new _$GupdatePayoutForReservationData_updatePayoutForReservationSerializer();

class _$GupdatePayoutForReservationDataSerializer
    implements StructuredSerializer<GupdatePayoutForReservationData> {
  @override
  final Iterable<Type> types = const [
    GupdatePayoutForReservationData,
    _$GupdatePayoutForReservationData
  ];
  @override
  final String wireName = 'GupdatePayoutForReservationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdatePayoutForReservationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updatePayoutForReservation;
    if (value != null) {
      result
        ..add('updatePayoutForReservation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GupdatePayoutForReservationData_updatePayoutForReservation)));
    }
    return result;
  }

  @override
  GupdatePayoutForReservationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdatePayoutForReservationDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatePayoutForReservation':
          result.updatePayoutForReservation.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GupdatePayoutForReservationData_updatePayoutForReservation))!
              as GupdatePayoutForReservationData_updatePayoutForReservation);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdatePayoutForReservationData_updatePayoutForReservationSerializer
    implements
        StructuredSerializer<
            GupdatePayoutForReservationData_updatePayoutForReservation> {
  @override
  final Iterable<Type> types = const [
    GupdatePayoutForReservationData_updatePayoutForReservation,
    _$GupdatePayoutForReservationData_updatePayoutForReservation
  ];
  @override
  final String wireName =
      'GupdatePayoutForReservationData_updatePayoutForReservation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupdatePayoutForReservationData_updatePayoutForReservation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GupdatePayoutForReservationData_updatePayoutForReservation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GupdatePayoutForReservationData_updatePayoutForReservationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdatePayoutForReservationData
    extends GupdatePayoutForReservationData {
  @override
  final String G__typename;
  @override
  final GupdatePayoutForReservationData_updatePayoutForReservation?
      updatePayoutForReservation;

  factory _$GupdatePayoutForReservationData(
          [void Function(GupdatePayoutForReservationDataBuilder)? updates]) =>
      (new GupdatePayoutForReservationDataBuilder()..update(updates))._build();

  _$GupdatePayoutForReservationData._(
      {required this.G__typename, this.updatePayoutForReservation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdatePayoutForReservationData', 'G__typename');
  }

  @override
  GupdatePayoutForReservationData rebuild(
          void Function(GupdatePayoutForReservationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePayoutForReservationDataBuilder toBuilder() =>
      new GupdatePayoutForReservationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdatePayoutForReservationData &&
        G__typename == other.G__typename &&
        updatePayoutForReservation == other.updatePayoutForReservation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updatePayoutForReservation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdatePayoutForReservationData')
          ..add('G__typename', G__typename)
          ..add('updatePayoutForReservation', updatePayoutForReservation))
        .toString();
  }
}

class GupdatePayoutForReservationDataBuilder
    implements
        Builder<GupdatePayoutForReservationData,
            GupdatePayoutForReservationDataBuilder> {
  _$GupdatePayoutForReservationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdatePayoutForReservationData_updatePayoutForReservationBuilder?
      _updatePayoutForReservation;
  GupdatePayoutForReservationData_updatePayoutForReservationBuilder
      get updatePayoutForReservation => _$this._updatePayoutForReservation ??=
          new GupdatePayoutForReservationData_updatePayoutForReservationBuilder();
  set updatePayoutForReservation(
          GupdatePayoutForReservationData_updatePayoutForReservationBuilder?
              updatePayoutForReservation) =>
      _$this._updatePayoutForReservation = updatePayoutForReservation;

  GupdatePayoutForReservationDataBuilder() {
    GupdatePayoutForReservationData._initializeBuilder(this);
  }

  GupdatePayoutForReservationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updatePayoutForReservation = $v.updatePayoutForReservation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdatePayoutForReservationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePayoutForReservationData;
  }

  @override
  void update(void Function(GupdatePayoutForReservationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePayoutForReservationData build() => _build();

  _$GupdatePayoutForReservationData _build() {
    _$GupdatePayoutForReservationData _$result;
    try {
      _$result = _$v ??
          new _$GupdatePayoutForReservationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GupdatePayoutForReservationData', 'G__typename'),
              updatePayoutForReservation: _updatePayoutForReservation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatePayoutForReservation';
        _updatePayoutForReservation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdatePayoutForReservationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdatePayoutForReservationData_updatePayoutForReservation
    extends GupdatePayoutForReservationData_updatePayoutForReservation {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GupdatePayoutForReservationData_updatePayoutForReservation(
          [void Function(
                  GupdatePayoutForReservationData_updatePayoutForReservationBuilder)?
              updates]) =>
      (new GupdatePayoutForReservationData_updatePayoutForReservationBuilder()
            ..update(updates))
          ._build();

  _$GupdatePayoutForReservationData_updatePayoutForReservation._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GupdatePayoutForReservationData_updatePayoutForReservation',
        'G__typename');
  }

  @override
  GupdatePayoutForReservationData_updatePayoutForReservation rebuild(
          void Function(
                  GupdatePayoutForReservationData_updatePayoutForReservationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePayoutForReservationData_updatePayoutForReservationBuilder
      toBuilder() =>
          new GupdatePayoutForReservationData_updatePayoutForReservationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GupdatePayoutForReservationData_updatePayoutForReservation &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GupdatePayoutForReservationData_updatePayoutForReservation')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GupdatePayoutForReservationData_updatePayoutForReservationBuilder
    implements
        Builder<GupdatePayoutForReservationData_updatePayoutForReservation,
            GupdatePayoutForReservationData_updatePayoutForReservationBuilder> {
  _$GupdatePayoutForReservationData_updatePayoutForReservation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GupdatePayoutForReservationData_updatePayoutForReservationBuilder() {
    GupdatePayoutForReservationData_updatePayoutForReservation
        ._initializeBuilder(this);
  }

  GupdatePayoutForReservationData_updatePayoutForReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GupdatePayoutForReservationData_updatePayoutForReservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePayoutForReservationData_updatePayoutForReservation;
  }

  @override
  void update(
      void Function(
              GupdatePayoutForReservationData_updatePayoutForReservationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePayoutForReservationData_updatePayoutForReservation build() =>
      _build();

  _$GupdatePayoutForReservationData_updatePayoutForReservation _build() {
    final _$result = _$v ??
        new _$GupdatePayoutForReservationData_updatePayoutForReservation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GupdatePayoutForReservationData_updatePayoutForReservation',
                'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
