// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_inspection_comparison.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetInspectionComparisonData>
    _$ggetInspectionComparisonDataSerializer =
    new _$GgetInspectionComparisonDataSerializer();
Serializer<GgetInspectionComparisonData_getInspectionComparison>
    _$ggetInspectionComparisonDataGetInspectionComparisonSerializer =
    new _$GgetInspectionComparisonData_getInspectionComparisonSerializer();
Serializer<GgetInspectionComparisonData_getInspectionComparison_alerts>
    _$ggetInspectionComparisonDataGetInspectionComparisonAlertsSerializer =
    new _$GgetInspectionComparisonData_getInspectionComparison_alertsSerializer();

class _$GgetInspectionComparisonDataSerializer
    implements StructuredSerializer<GgetInspectionComparisonData> {
  @override
  final Iterable<Type> types = const [
    GgetInspectionComparisonData,
    _$GgetInspectionComparisonData
  ];
  @override
  final String wireName = 'GgetInspectionComparisonData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetInspectionComparisonData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getInspectionComparison;
    if (value != null) {
      result
        ..add('getInspectionComparison')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetInspectionComparisonData_getInspectionComparison)));
    }
    return result;
  }

  @override
  GgetInspectionComparisonData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetInspectionComparisonDataBuilder();

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
        case 'getInspectionComparison':
          result.getInspectionComparison.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetInspectionComparisonData_getInspectionComparison))!
              as GgetInspectionComparisonData_getInspectionComparison);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetInspectionComparisonData_getInspectionComparisonSerializer
    implements
        StructuredSerializer<
            GgetInspectionComparisonData_getInspectionComparison> {
  @override
  final Iterable<Type> types = const [
    GgetInspectionComparisonData_getInspectionComparison,
    _$GgetInspectionComparisonData_getInspectionComparison
  ];
  @override
  final String wireName =
      'GgetInspectionComparisonData_getInspectionComparison';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetInspectionComparisonData_getInspectionComparison object,
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
    value = object.kmDriven;
    if (value != null) {
      result
        ..add('kmDriven')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fuelDelta;
    if (value != null) {
      result
        ..add('fuelDelta')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasDamage;
    if (value != null) {
      result
        ..add('hasDamage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.newDamagePhotos;
    if (value != null) {
      result
        ..add('newDamagePhotos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.globalStatus;
    if (value != null) {
      result
        ..add('globalStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alerts;
    if (value != null) {
      result
        ..add('alerts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetInspectionComparisonData_getInspectionComparison_alerts)
            ])));
    }
    return result;
  }

  @override
  GgetInspectionComparisonData_getInspectionComparison deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetInspectionComparisonData_getInspectionComparisonBuilder();

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
        case 'kmDriven':
          result.kmDriven = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fuelDelta':
          result.fuelDelta = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasDamage':
          result.hasDamage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'newDamagePhotos':
          result.newDamagePhotos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'globalStatus':
          result.globalStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alerts':
          result.alerts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetInspectionComparisonData_getInspectionComparison_alerts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetInspectionComparisonData_getInspectionComparison_alertsSerializer
    implements
        StructuredSerializer<
            GgetInspectionComparisonData_getInspectionComparison_alerts> {
  @override
  final Iterable<Type> types = const [
    GgetInspectionComparisonData_getInspectionComparison_alerts,
    _$GgetInspectionComparisonData_getInspectionComparison_alerts
  ];
  @override
  final String wireName =
      'GgetInspectionComparisonData_getInspectionComparison_alerts';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetInspectionComparisonData_getInspectionComparison_alerts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.severity;
    if (value != null) {
      result
        ..add('severity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetInspectionComparisonData_getInspectionComparison_alerts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetInspectionComparisonData_getInspectionComparison_alertsBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'severity':
          result.severity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetInspectionComparisonData extends GgetInspectionComparisonData {
  @override
  final String G__typename;
  @override
  final GgetInspectionComparisonData_getInspectionComparison?
      getInspectionComparison;

  factory _$GgetInspectionComparisonData(
          [void Function(GgetInspectionComparisonDataBuilder)? updates]) =>
      (new GgetInspectionComparisonDataBuilder()..update(updates))._build();

  _$GgetInspectionComparisonData._(
      {required this.G__typename, this.getInspectionComparison})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetInspectionComparisonData', 'G__typename');
  }

  @override
  GgetInspectionComparisonData rebuild(
          void Function(GgetInspectionComparisonDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetInspectionComparisonDataBuilder toBuilder() =>
      new GgetInspectionComparisonDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetInspectionComparisonData &&
        G__typename == other.G__typename &&
        getInspectionComparison == other.getInspectionComparison;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getInspectionComparison.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetInspectionComparisonData')
          ..add('G__typename', G__typename)
          ..add('getInspectionComparison', getInspectionComparison))
        .toString();
  }
}

class GgetInspectionComparisonDataBuilder
    implements
        Builder<GgetInspectionComparisonData,
            GgetInspectionComparisonDataBuilder> {
  _$GgetInspectionComparisonData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetInspectionComparisonData_getInspectionComparisonBuilder?
      _getInspectionComparison;
  GgetInspectionComparisonData_getInspectionComparisonBuilder
      get getInspectionComparison => _$this._getInspectionComparison ??=
          new GgetInspectionComparisonData_getInspectionComparisonBuilder();
  set getInspectionComparison(
          GgetInspectionComparisonData_getInspectionComparisonBuilder?
              getInspectionComparison) =>
      _$this._getInspectionComparison = getInspectionComparison;

  GgetInspectionComparisonDataBuilder() {
    GgetInspectionComparisonData._initializeBuilder(this);
  }

  GgetInspectionComparisonDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getInspectionComparison = $v.getInspectionComparison?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetInspectionComparisonData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetInspectionComparisonData;
  }

  @override
  void update(void Function(GgetInspectionComparisonDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetInspectionComparisonData build() => _build();

  _$GgetInspectionComparisonData _build() {
    _$GgetInspectionComparisonData _$result;
    try {
      _$result = _$v ??
          new _$GgetInspectionComparisonData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetInspectionComparisonData', 'G__typename'),
              getInspectionComparison: _getInspectionComparison?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getInspectionComparison';
        _getInspectionComparison?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetInspectionComparisonData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetInspectionComparisonData_getInspectionComparison
    extends GgetInspectionComparisonData_getInspectionComparison {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final int? kmDriven;
  @override
  final int? fuelDelta;
  @override
  final bool? hasDamage;
  @override
  final int? newDamagePhotos;
  @override
  final String? globalStatus;
  @override
  final BuiltList<GgetInspectionComparisonData_getInspectionComparison_alerts?>?
      alerts;

  factory _$GgetInspectionComparisonData_getInspectionComparison(
          [void Function(
                  GgetInspectionComparisonData_getInspectionComparisonBuilder)?
              updates]) =>
      (new GgetInspectionComparisonData_getInspectionComparisonBuilder()
            ..update(updates))
          ._build();

  _$GgetInspectionComparisonData_getInspectionComparison._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.kmDriven,
      this.fuelDelta,
      this.hasDamage,
      this.newDamagePhotos,
      this.globalStatus,
      this.alerts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetInspectionComparisonData_getInspectionComparison', 'G__typename');
  }

  @override
  GgetInspectionComparisonData_getInspectionComparison rebuild(
          void Function(
                  GgetInspectionComparisonData_getInspectionComparisonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetInspectionComparisonData_getInspectionComparisonBuilder toBuilder() =>
      new GgetInspectionComparisonData_getInspectionComparisonBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetInspectionComparisonData_getInspectionComparison &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        kmDriven == other.kmDriven &&
        fuelDelta == other.fuelDelta &&
        hasDamage == other.hasDamage &&
        newDamagePhotos == other.newDamagePhotos &&
        globalStatus == other.globalStatus &&
        alerts == other.alerts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, kmDriven.hashCode);
    _$hash = $jc(_$hash, fuelDelta.hashCode);
    _$hash = $jc(_$hash, hasDamage.hashCode);
    _$hash = $jc(_$hash, newDamagePhotos.hashCode);
    _$hash = $jc(_$hash, globalStatus.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetInspectionComparisonData_getInspectionComparison')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('kmDriven', kmDriven)
          ..add('fuelDelta', fuelDelta)
          ..add('hasDamage', hasDamage)
          ..add('newDamagePhotos', newDamagePhotos)
          ..add('globalStatus', globalStatus)
          ..add('alerts', alerts))
        .toString();
  }
}

class GgetInspectionComparisonData_getInspectionComparisonBuilder
    implements
        Builder<GgetInspectionComparisonData_getInspectionComparison,
            GgetInspectionComparisonData_getInspectionComparisonBuilder> {
  _$GgetInspectionComparisonData_getInspectionComparison? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _kmDriven;
  int? get kmDriven => _$this._kmDriven;
  set kmDriven(int? kmDriven) => _$this._kmDriven = kmDriven;

  int? _fuelDelta;
  int? get fuelDelta => _$this._fuelDelta;
  set fuelDelta(int? fuelDelta) => _$this._fuelDelta = fuelDelta;

  bool? _hasDamage;
  bool? get hasDamage => _$this._hasDamage;
  set hasDamage(bool? hasDamage) => _$this._hasDamage = hasDamage;

  int? _newDamagePhotos;
  int? get newDamagePhotos => _$this._newDamagePhotos;
  set newDamagePhotos(int? newDamagePhotos) =>
      _$this._newDamagePhotos = newDamagePhotos;

  String? _globalStatus;
  String? get globalStatus => _$this._globalStatus;
  set globalStatus(String? globalStatus) => _$this._globalStatus = globalStatus;

  ListBuilder<GgetInspectionComparisonData_getInspectionComparison_alerts?>?
      _alerts;
  ListBuilder<GgetInspectionComparisonData_getInspectionComparison_alerts?>
      get alerts => _$this._alerts ??= new ListBuilder<
          GgetInspectionComparisonData_getInspectionComparison_alerts?>();
  set alerts(
          ListBuilder<
                  GgetInspectionComparisonData_getInspectionComparison_alerts?>?
              alerts) =>
      _$this._alerts = alerts;

  GgetInspectionComparisonData_getInspectionComparisonBuilder() {
    GgetInspectionComparisonData_getInspectionComparison._initializeBuilder(
        this);
  }

  GgetInspectionComparisonData_getInspectionComparisonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _kmDriven = $v.kmDriven;
      _fuelDelta = $v.fuelDelta;
      _hasDamage = $v.hasDamage;
      _newDamagePhotos = $v.newDamagePhotos;
      _globalStatus = $v.globalStatus;
      _alerts = $v.alerts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetInspectionComparisonData_getInspectionComparison other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetInspectionComparisonData_getInspectionComparison;
  }

  @override
  void update(
      void Function(
              GgetInspectionComparisonData_getInspectionComparisonBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetInspectionComparisonData_getInspectionComparison build() => _build();

  _$GgetInspectionComparisonData_getInspectionComparison _build() {
    _$GgetInspectionComparisonData_getInspectionComparison _$result;
    try {
      _$result = _$v ??
          new _$GgetInspectionComparisonData_getInspectionComparison._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetInspectionComparisonData_getInspectionComparison',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              kmDriven: kmDriven,
              fuelDelta: fuelDelta,
              hasDamage: hasDamage,
              newDamagePhotos: newDamagePhotos,
              globalStatus: globalStatus,
              alerts: _alerts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alerts';
        _alerts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetInspectionComparisonData_getInspectionComparison',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetInspectionComparisonData_getInspectionComparison_alerts
    extends GgetInspectionComparisonData_getInspectionComparison_alerts {
  @override
  final String G__typename;
  @override
  final String? code;
  @override
  final String? severity;
  @override
  final double? value;

  factory _$GgetInspectionComparisonData_getInspectionComparison_alerts(
          [void Function(
                  GgetInspectionComparisonData_getInspectionComparison_alertsBuilder)?
              updates]) =>
      (new GgetInspectionComparisonData_getInspectionComparison_alertsBuilder()
            ..update(updates))
          ._build();

  _$GgetInspectionComparisonData_getInspectionComparison_alerts._(
      {required this.G__typename, this.code, this.severity, this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetInspectionComparisonData_getInspectionComparison_alerts',
        'G__typename');
  }

  @override
  GgetInspectionComparisonData_getInspectionComparison_alerts rebuild(
          void Function(
                  GgetInspectionComparisonData_getInspectionComparison_alertsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetInspectionComparisonData_getInspectionComparison_alertsBuilder
      toBuilder() =>
          new GgetInspectionComparisonData_getInspectionComparison_alertsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetInspectionComparisonData_getInspectionComparison_alerts &&
        G__typename == other.G__typename &&
        code == other.code &&
        severity == other.severity &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetInspectionComparisonData_getInspectionComparison_alerts')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('severity', severity)
          ..add('value', value))
        .toString();
  }
}

class GgetInspectionComparisonData_getInspectionComparison_alertsBuilder
    implements
        Builder<GgetInspectionComparisonData_getInspectionComparison_alerts,
            GgetInspectionComparisonData_getInspectionComparison_alertsBuilder> {
  _$GgetInspectionComparisonData_getInspectionComparison_alerts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  GgetInspectionComparisonData_getInspectionComparison_alertsBuilder() {
    GgetInspectionComparisonData_getInspectionComparison_alerts
        ._initializeBuilder(this);
  }

  GgetInspectionComparisonData_getInspectionComparison_alertsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _severity = $v.severity;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetInspectionComparisonData_getInspectionComparison_alerts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GgetInspectionComparisonData_getInspectionComparison_alerts;
  }

  @override
  void update(
      void Function(
              GgetInspectionComparisonData_getInspectionComparison_alertsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetInspectionComparisonData_getInspectionComparison_alerts build() =>
      _build();

  _$GgetInspectionComparisonData_getInspectionComparison_alerts _build() {
    final _$result = _$v ??
        new _$GgetInspectionComparisonData_getInspectionComparison_alerts._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetInspectionComparisonData_getInspectionComparison_alerts',
                'G__typename'),
            code: code,
            severity: severity,
            value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
