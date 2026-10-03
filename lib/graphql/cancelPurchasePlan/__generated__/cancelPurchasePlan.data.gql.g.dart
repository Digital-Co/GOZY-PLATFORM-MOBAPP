// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelPurchasePlan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcancelPurchasePlanData> _$gcancelPurchasePlanDataSerializer =
    new _$GcancelPurchasePlanDataSerializer();
Serializer<GcancelPurchasePlanData_cancelPurchasePlan>
    _$gcancelPurchasePlanDataCancelPurchasePlanSerializer =
    new _$GcancelPurchasePlanData_cancelPurchasePlanSerializer();

class _$GcancelPurchasePlanDataSerializer
    implements StructuredSerializer<GcancelPurchasePlanData> {
  @override
  final Iterable<Type> types = const [
    GcancelPurchasePlanData,
    _$GcancelPurchasePlanData
  ];
  @override
  final String wireName = 'GcancelPurchasePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcancelPurchasePlanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.cancelPurchasePlan;
    if (value != null) {
      result
        ..add('cancelPurchasePlan')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GcancelPurchasePlanData_cancelPurchasePlan)));
    }
    return result;
  }

  @override
  GcancelPurchasePlanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancelPurchasePlanDataBuilder();

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
        case 'cancelPurchasePlan':
          result.cancelPurchasePlan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GcancelPurchasePlanData_cancelPurchasePlan))!
              as GcancelPurchasePlanData_cancelPurchasePlan);
          break;
      }
    }

    return result.build();
  }
}

class _$GcancelPurchasePlanData_cancelPurchasePlanSerializer
    implements
        StructuredSerializer<GcancelPurchasePlanData_cancelPurchasePlan> {
  @override
  final Iterable<Type> types = const [
    GcancelPurchasePlanData_cancelPurchasePlan,
    _$GcancelPurchasePlanData_cancelPurchasePlan
  ];
  @override
  final String wireName = 'GcancelPurchasePlanData_cancelPurchasePlan';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GcancelPurchasePlanData_cancelPurchasePlan object,
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
  GcancelPurchasePlanData_cancelPurchasePlan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcancelPurchasePlanData_cancelPurchasePlanBuilder();

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

class _$GcancelPurchasePlanData extends GcancelPurchasePlanData {
  @override
  final String G__typename;
  @override
  final GcancelPurchasePlanData_cancelPurchasePlan? cancelPurchasePlan;

  factory _$GcancelPurchasePlanData(
          [void Function(GcancelPurchasePlanDataBuilder)? updates]) =>
      (new GcancelPurchasePlanDataBuilder()..update(updates))._build();

  _$GcancelPurchasePlanData._(
      {required this.G__typename, this.cancelPurchasePlan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcancelPurchasePlanData', 'G__typename');
  }

  @override
  GcancelPurchasePlanData rebuild(
          void Function(GcancelPurchasePlanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancelPurchasePlanDataBuilder toBuilder() =>
      new GcancelPurchasePlanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancelPurchasePlanData &&
        G__typename == other.G__typename &&
        cancelPurchasePlan == other.cancelPurchasePlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, cancelPurchasePlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcancelPurchasePlanData')
          ..add('G__typename', G__typename)
          ..add('cancelPurchasePlan', cancelPurchasePlan))
        .toString();
  }
}

class GcancelPurchasePlanDataBuilder
    implements
        Builder<GcancelPurchasePlanData, GcancelPurchasePlanDataBuilder> {
  _$GcancelPurchasePlanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcancelPurchasePlanData_cancelPurchasePlanBuilder? _cancelPurchasePlan;
  GcancelPurchasePlanData_cancelPurchasePlanBuilder get cancelPurchasePlan =>
      _$this._cancelPurchasePlan ??=
          new GcancelPurchasePlanData_cancelPurchasePlanBuilder();
  set cancelPurchasePlan(
          GcancelPurchasePlanData_cancelPurchasePlanBuilder?
              cancelPurchasePlan) =>
      _$this._cancelPurchasePlan = cancelPurchasePlan;

  GcancelPurchasePlanDataBuilder() {
    GcancelPurchasePlanData._initializeBuilder(this);
  }

  GcancelPurchasePlanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cancelPurchasePlan = $v.cancelPurchasePlan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcancelPurchasePlanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancelPurchasePlanData;
  }

  @override
  void update(void Function(GcancelPurchasePlanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancelPurchasePlanData build() => _build();

  _$GcancelPurchasePlanData _build() {
    _$GcancelPurchasePlanData _$result;
    try {
      _$result = _$v ??
          new _$GcancelPurchasePlanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GcancelPurchasePlanData', 'G__typename'),
              cancelPurchasePlan: _cancelPurchasePlan?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cancelPurchasePlan';
        _cancelPurchasePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcancelPurchasePlanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcancelPurchasePlanData_cancelPurchasePlan
    extends GcancelPurchasePlanData_cancelPurchasePlan {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GcancelPurchasePlanData_cancelPurchasePlan(
          [void Function(GcancelPurchasePlanData_cancelPurchasePlanBuilder)?
              updates]) =>
      (new GcancelPurchasePlanData_cancelPurchasePlanBuilder()..update(updates))
          ._build();

  _$GcancelPurchasePlanData_cancelPurchasePlan._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GcancelPurchasePlanData_cancelPurchasePlan', 'G__typename');
  }

  @override
  GcancelPurchasePlanData_cancelPurchasePlan rebuild(
          void Function(GcancelPurchasePlanData_cancelPurchasePlanBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcancelPurchasePlanData_cancelPurchasePlanBuilder toBuilder() =>
      new GcancelPurchasePlanData_cancelPurchasePlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcancelPurchasePlanData_cancelPurchasePlan &&
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
            r'GcancelPurchasePlanData_cancelPurchasePlan')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GcancelPurchasePlanData_cancelPurchasePlanBuilder
    implements
        Builder<GcancelPurchasePlanData_cancelPurchasePlan,
            GcancelPurchasePlanData_cancelPurchasePlanBuilder> {
  _$GcancelPurchasePlanData_cancelPurchasePlan? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GcancelPurchasePlanData_cancelPurchasePlanBuilder() {
    GcancelPurchasePlanData_cancelPurchasePlan._initializeBuilder(this);
  }

  GcancelPurchasePlanData_cancelPurchasePlanBuilder get _$this {
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
  void replace(GcancelPurchasePlanData_cancelPurchasePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcancelPurchasePlanData_cancelPurchasePlan;
  }

  @override
  void update(
      void Function(GcancelPurchasePlanData_cancelPurchasePlanBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GcancelPurchasePlanData_cancelPurchasePlan build() => _build();

  _$GcancelPurchasePlanData_cancelPurchasePlan _build() {
    final _$result = _$v ??
        new _$GcancelPurchasePlanData_cancelPurchasePlan._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GcancelPurchasePlanData_cancelPurchasePlan', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
