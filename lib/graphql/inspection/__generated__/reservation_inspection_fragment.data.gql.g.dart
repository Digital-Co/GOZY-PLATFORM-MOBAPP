// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_inspection_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreservationInspectionFragmentData>
    _$greservationInspectionFragmentDataSerializer =
    new _$GreservationInspectionFragmentDataSerializer();
Serializer<GreservationInspectionFragmentData_inspectionSteps>
    _$greservationInspectionFragmentDataInspectionStepsSerializer =
    new _$GreservationInspectionFragmentData_inspectionStepsSerializer();
Serializer<GreservationInspectionFragmentData_inspectionSteps_checkin>
    _$greservationInspectionFragmentDataInspectionStepsCheckinSerializer =
    new _$GreservationInspectionFragmentData_inspectionSteps_checkinSerializer();
Serializer<GreservationInspectionFragmentData_inspectionSteps_checkout>
    _$greservationInspectionFragmentDataInspectionStepsCheckoutSerializer =
    new _$GreservationInspectionFragmentData_inspectionSteps_checkoutSerializer();

class _$GreservationInspectionFragmentDataSerializer
    implements StructuredSerializer<GreservationInspectionFragmentData> {
  @override
  final Iterable<Type> types = const [
    GreservationInspectionFragmentData,
    _$GreservationInspectionFragmentData
  ];
  @override
  final String wireName = 'GreservationInspectionFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreservationInspectionFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.inspectionStatus;
    if (value != null) {
      result
        ..add('inspectionStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.closureState;
    if (value != null) {
      result
        ..add('closureState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inspectionEnabled;
    if (value != null) {
      result
        ..add('inspectionEnabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.inspectionSteps;
    if (value != null) {
      result
        ..add('inspectionSteps')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GreservationInspectionFragmentData_inspectionSteps)));
    }
    return result;
  }

  @override
  GreservationInspectionFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreservationInspectionFragmentDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'inspectionStatus':
          result.inspectionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'closureState':
          result.closureState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inspectionEnabled':
          result.inspectionEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'inspectionSteps':
          result.inspectionSteps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GreservationInspectionFragmentData_inspectionSteps))!
              as GreservationInspectionFragmentData_inspectionSteps);
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationInspectionFragmentData_inspectionStepsSerializer
    implements
        StructuredSerializer<
            GreservationInspectionFragmentData_inspectionSteps> {
  @override
  final Iterable<Type> types = const [
    GreservationInspectionFragmentData_inspectionSteps,
    _$GreservationInspectionFragmentData_inspectionSteps
  ];
  @override
  final String wireName = 'GreservationInspectionFragmentData_inspectionSteps';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreservationInspectionFragmentData_inspectionSteps object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.checkin;
    if (value != null) {
      result
        ..add('checkin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GreservationInspectionFragmentData_inspectionSteps_checkin)));
    }
    value = object.checkout;
    if (value != null) {
      result
        ..add('checkout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GreservationInspectionFragmentData_inspectionSteps_checkout)));
    }
    return result;
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GreservationInspectionFragmentData_inspectionStepsBuilder();

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
        case 'checkin':
          result.checkin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GreservationInspectionFragmentData_inspectionSteps_checkin))!
              as GreservationInspectionFragmentData_inspectionSteps_checkin);
          break;
        case 'checkout':
          result.checkout.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GreservationInspectionFragmentData_inspectionSteps_checkout))!
              as GreservationInspectionFragmentData_inspectionSteps_checkout);
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationInspectionFragmentData_inspectionSteps_checkinSerializer
    implements
        StructuredSerializer<
            GreservationInspectionFragmentData_inspectionSteps_checkin> {
  @override
  final Iterable<Type> types = const [
    GreservationInspectionFragmentData_inspectionSteps_checkin,
    _$GreservationInspectionFragmentData_inspectionSteps_checkin
  ];
  @override
  final String wireName =
      'GreservationInspectionFragmentData_inspectionSteps_checkin';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreservationInspectionFragmentData_inspectionSteps_checkin object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.open;
    if (value != null) {
      result
        ..add('open')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.awaitingViewer;
    if (value != null) {
      result
        ..add('awaitingViewer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkin deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GreservationInspectionFragmentData_inspectionSteps_checkinBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'awaitingViewer':
          result.awaitingViewer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationInspectionFragmentData_inspectionSteps_checkoutSerializer
    implements
        StructuredSerializer<
            GreservationInspectionFragmentData_inspectionSteps_checkout> {
  @override
  final Iterable<Type> types = const [
    GreservationInspectionFragmentData_inspectionSteps_checkout,
    _$GreservationInspectionFragmentData_inspectionSteps_checkout
  ];
  @override
  final String wireName =
      'GreservationInspectionFragmentData_inspectionSteps_checkout';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreservationInspectionFragmentData_inspectionSteps_checkout object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.open;
    if (value != null) {
      result
        ..add('open')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.awaitingViewer;
    if (value != null) {
      result
        ..add('awaitingViewer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkout deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'awaitingViewer':
          result.awaitingViewer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GreservationInspectionFragmentData
    extends GreservationInspectionFragmentData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? inspectionStatus;
  @override
  final String? closureState;
  @override
  final bool? inspectionEnabled;
  @override
  final GreservationInspectionFragmentData_inspectionSteps? inspectionSteps;

  factory _$GreservationInspectionFragmentData(
          [void Function(GreservationInspectionFragmentDataBuilder)?
              updates]) =>
      (new GreservationInspectionFragmentDataBuilder()..update(updates))
          ._build();

  _$GreservationInspectionFragmentData._(
      {required this.G__typename,
      this.id,
      this.inspectionStatus,
      this.closureState,
      this.inspectionEnabled,
      this.inspectionSteps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GreservationInspectionFragmentData', 'G__typename');
  }

  @override
  GreservationInspectionFragmentData rebuild(
          void Function(GreservationInspectionFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationInspectionFragmentDataBuilder toBuilder() =>
      new GreservationInspectionFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationInspectionFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        inspectionStatus == other.inspectionStatus &&
        closureState == other.closureState &&
        inspectionEnabled == other.inspectionEnabled &&
        inspectionSteps == other.inspectionSteps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, inspectionStatus.hashCode);
    _$hash = $jc(_$hash, closureState.hashCode);
    _$hash = $jc(_$hash, inspectionEnabled.hashCode);
    _$hash = $jc(_$hash, inspectionSteps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GreservationInspectionFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('inspectionStatus', inspectionStatus)
          ..add('closureState', closureState)
          ..add('inspectionEnabled', inspectionEnabled)
          ..add('inspectionSteps', inspectionSteps))
        .toString();
  }
}

class GreservationInspectionFragmentDataBuilder
    implements
        Builder<GreservationInspectionFragmentData,
            GreservationInspectionFragmentDataBuilder> {
  _$GreservationInspectionFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _inspectionStatus;
  String? get inspectionStatus => _$this._inspectionStatus;
  set inspectionStatus(String? inspectionStatus) =>
      _$this._inspectionStatus = inspectionStatus;

  String? _closureState;
  String? get closureState => _$this._closureState;
  set closureState(String? closureState) => _$this._closureState = closureState;

  bool? _inspectionEnabled;
  bool? get inspectionEnabled => _$this._inspectionEnabled;
  set inspectionEnabled(bool? inspectionEnabled) =>
      _$this._inspectionEnabled = inspectionEnabled;

  GreservationInspectionFragmentData_inspectionStepsBuilder? _inspectionSteps;
  GreservationInspectionFragmentData_inspectionStepsBuilder
      get inspectionSteps => _$this._inspectionSteps ??=
          new GreservationInspectionFragmentData_inspectionStepsBuilder();
  set inspectionSteps(
          GreservationInspectionFragmentData_inspectionStepsBuilder?
              inspectionSteps) =>
      _$this._inspectionSteps = inspectionSteps;

  GreservationInspectionFragmentDataBuilder() {
    GreservationInspectionFragmentData._initializeBuilder(this);
  }

  GreservationInspectionFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _inspectionStatus = $v.inspectionStatus;
      _closureState = $v.closureState;
      _inspectionEnabled = $v.inspectionEnabled;
      _inspectionSteps = $v.inspectionSteps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreservationInspectionFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationInspectionFragmentData;
  }

  @override
  void update(
      void Function(GreservationInspectionFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationInspectionFragmentData build() => _build();

  _$GreservationInspectionFragmentData _build() {
    _$GreservationInspectionFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GreservationInspectionFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GreservationInspectionFragmentData', 'G__typename'),
              id: id,
              inspectionStatus: inspectionStatus,
              closureState: closureState,
              inspectionEnabled: inspectionEnabled,
              inspectionSteps: _inspectionSteps?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inspectionSteps';
        _inspectionSteps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GreservationInspectionFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreservationInspectionFragmentData_inspectionSteps
    extends GreservationInspectionFragmentData_inspectionSteps {
  @override
  final String G__typename;
  @override
  final GreservationInspectionFragmentData_inspectionSteps_checkin? checkin;
  @override
  final GreservationInspectionFragmentData_inspectionSteps_checkout? checkout;

  factory _$GreservationInspectionFragmentData_inspectionSteps(
          [void Function(
                  GreservationInspectionFragmentData_inspectionStepsBuilder)?
              updates]) =>
      (new GreservationInspectionFragmentData_inspectionStepsBuilder()
            ..update(updates))
          ._build();

  _$GreservationInspectionFragmentData_inspectionSteps._(
      {required this.G__typename, this.checkin, this.checkout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GreservationInspectionFragmentData_inspectionSteps', 'G__typename');
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps rebuild(
          void Function(
                  GreservationInspectionFragmentData_inspectionStepsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationInspectionFragmentData_inspectionStepsBuilder toBuilder() =>
      new GreservationInspectionFragmentData_inspectionStepsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreservationInspectionFragmentData_inspectionSteps &&
        G__typename == other.G__typename &&
        checkin == other.checkin &&
        checkout == other.checkout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, checkin.hashCode);
    _$hash = $jc(_$hash, checkout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GreservationInspectionFragmentData_inspectionSteps')
          ..add('G__typename', G__typename)
          ..add('checkin', checkin)
          ..add('checkout', checkout))
        .toString();
  }
}

class GreservationInspectionFragmentData_inspectionStepsBuilder
    implements
        Builder<GreservationInspectionFragmentData_inspectionSteps,
            GreservationInspectionFragmentData_inspectionStepsBuilder> {
  _$GreservationInspectionFragmentData_inspectionSteps? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder? _checkin;
  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder
      get checkin => _$this._checkin ??=
          new GreservationInspectionFragmentData_inspectionSteps_checkinBuilder();
  set checkin(
          GreservationInspectionFragmentData_inspectionSteps_checkinBuilder?
              checkin) =>
      _$this._checkin = checkin;

  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder? _checkout;
  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder
      get checkout => _$this._checkout ??=
          new GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder();
  set checkout(
          GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder?
              checkout) =>
      _$this._checkout = checkout;

  GreservationInspectionFragmentData_inspectionStepsBuilder() {
    GreservationInspectionFragmentData_inspectionSteps._initializeBuilder(this);
  }

  GreservationInspectionFragmentData_inspectionStepsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _checkin = $v.checkin?.toBuilder();
      _checkout = $v.checkout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreservationInspectionFragmentData_inspectionSteps other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationInspectionFragmentData_inspectionSteps;
  }

  @override
  void update(
      void Function(GreservationInspectionFragmentData_inspectionStepsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps build() => _build();

  _$GreservationInspectionFragmentData_inspectionSteps _build() {
    _$GreservationInspectionFragmentData_inspectionSteps _$result;
    try {
      _$result = _$v ??
          new _$GreservationInspectionFragmentData_inspectionSteps._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GreservationInspectionFragmentData_inspectionSteps',
                  'G__typename'),
              checkin: _checkin?.build(),
              checkout: _checkout?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checkin';
        _checkin?.build();
        _$failedField = 'checkout';
        _checkout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GreservationInspectionFragmentData_inspectionSteps',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreservationInspectionFragmentData_inspectionSteps_checkin
    extends GreservationInspectionFragmentData_inspectionSteps_checkin {
  @override
  final String G__typename;
  @override
  final String? status;
  @override
  final bool? open;
  @override
  final bool? awaitingViewer;

  factory _$GreservationInspectionFragmentData_inspectionSteps_checkin(
          [void Function(
                  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder)?
              updates]) =>
      (new GreservationInspectionFragmentData_inspectionSteps_checkinBuilder()
            ..update(updates))
          ._build();

  _$GreservationInspectionFragmentData_inspectionSteps_checkin._(
      {required this.G__typename, this.status, this.open, this.awaitingViewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GreservationInspectionFragmentData_inspectionSteps_checkin',
        'G__typename');
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkin rebuild(
          void Function(
                  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder
      toBuilder() =>
          new GreservationInspectionFragmentData_inspectionSteps_checkinBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GreservationInspectionFragmentData_inspectionSteps_checkin &&
        G__typename == other.G__typename &&
        status == other.status &&
        open == other.open &&
        awaitingViewer == other.awaitingViewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, awaitingViewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GreservationInspectionFragmentData_inspectionSteps_checkin')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('open', open)
          ..add('awaitingViewer', awaitingViewer))
        .toString();
  }
}

class GreservationInspectionFragmentData_inspectionSteps_checkinBuilder
    implements
        Builder<GreservationInspectionFragmentData_inspectionSteps_checkin,
            GreservationInspectionFragmentData_inspectionSteps_checkinBuilder> {
  _$GreservationInspectionFragmentData_inspectionSteps_checkin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _open;
  bool? get open => _$this._open;
  set open(bool? open) => _$this._open = open;

  bool? _awaitingViewer;
  bool? get awaitingViewer => _$this._awaitingViewer;
  set awaitingViewer(bool? awaitingViewer) =>
      _$this._awaitingViewer = awaitingViewer;

  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder() {
    GreservationInspectionFragmentData_inspectionSteps_checkin
        ._initializeBuilder(this);
  }

  GreservationInspectionFragmentData_inspectionSteps_checkinBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _open = $v.open;
      _awaitingViewer = $v.awaitingViewer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GreservationInspectionFragmentData_inspectionSteps_checkin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreservationInspectionFragmentData_inspectionSteps_checkin;
  }

  @override
  void update(
      void Function(
              GreservationInspectionFragmentData_inspectionSteps_checkinBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkin build() =>
      _build();

  _$GreservationInspectionFragmentData_inspectionSteps_checkin _build() {
    final _$result = _$v ??
        new _$GreservationInspectionFragmentData_inspectionSteps_checkin._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GreservationInspectionFragmentData_inspectionSteps_checkin',
                'G__typename'),
            status: status,
            open: open,
            awaitingViewer: awaitingViewer);
    replace(_$result);
    return _$result;
  }
}

class _$GreservationInspectionFragmentData_inspectionSteps_checkout
    extends GreservationInspectionFragmentData_inspectionSteps_checkout {
  @override
  final String G__typename;
  @override
  final String? status;
  @override
  final bool? open;
  @override
  final bool? awaitingViewer;

  factory _$GreservationInspectionFragmentData_inspectionSteps_checkout(
          [void Function(
                  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder)?
              updates]) =>
      (new GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder()
            ..update(updates))
          ._build();

  _$GreservationInspectionFragmentData_inspectionSteps_checkout._(
      {required this.G__typename, this.status, this.open, this.awaitingViewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GreservationInspectionFragmentData_inspectionSteps_checkout',
        'G__typename');
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkout rebuild(
          void Function(
                  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder
      toBuilder() =>
          new GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GreservationInspectionFragmentData_inspectionSteps_checkout &&
        G__typename == other.G__typename &&
        status == other.status &&
        open == other.open &&
        awaitingViewer == other.awaitingViewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, awaitingViewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GreservationInspectionFragmentData_inspectionSteps_checkout')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('open', open)
          ..add('awaitingViewer', awaitingViewer))
        .toString();
  }
}

class GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder
    implements
        Builder<GreservationInspectionFragmentData_inspectionSteps_checkout,
            GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder> {
  _$GreservationInspectionFragmentData_inspectionSteps_checkout? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _open;
  bool? get open => _$this._open;
  set open(bool? open) => _$this._open = open;

  bool? _awaitingViewer;
  bool? get awaitingViewer => _$this._awaitingViewer;
  set awaitingViewer(bool? awaitingViewer) =>
      _$this._awaitingViewer = awaitingViewer;

  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder() {
    GreservationInspectionFragmentData_inspectionSteps_checkout
        ._initializeBuilder(this);
  }

  GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _open = $v.open;
      _awaitingViewer = $v.awaitingViewer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GreservationInspectionFragmentData_inspectionSteps_checkout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GreservationInspectionFragmentData_inspectionSteps_checkout;
  }

  @override
  void update(
      void Function(
              GreservationInspectionFragmentData_inspectionSteps_checkoutBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreservationInspectionFragmentData_inspectionSteps_checkout build() =>
      _build();

  _$GreservationInspectionFragmentData_inspectionSteps_checkout _build() {
    final _$result = _$v ??
        new _$GreservationInspectionFragmentData_inspectionSteps_checkout._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GreservationInspectionFragmentData_inspectionSteps_checkout',
                'G__typename'),
            status: status,
            open: open,
            awaitingViewer: awaitingViewer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
