// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicePlan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllUserServicePlanData> _$ggetAllUserServicePlanDataSerializer =
    new _$GgetAllUserServicePlanDataSerializer();
Serializer<GgetAllUserServicePlanData_getAllUserServicePlan>
    _$ggetAllUserServicePlanDataGetAllUserServicePlanSerializer =
    new _$GgetAllUserServicePlanData_getAllUserServicePlanSerializer();
Serializer<GgetAllUserServicePlanData_getAllUserServicePlan_results>
    _$ggetAllUserServicePlanDataGetAllUserServicePlanResultsSerializer =
    new _$GgetAllUserServicePlanData_getAllUserServicePlan_resultsSerializer();
Serializer<
        GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData>
    _$ggetAllUserServicePlanDataGetAllUserServicePlanResultsPurchaseDataSerializer =
    new _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataSerializer();

class _$GgetAllUserServicePlanDataSerializer
    implements StructuredSerializer<GgetAllUserServicePlanData> {
  @override
  final Iterable<Type> types = const [
    GgetAllUserServicePlanData,
    _$GgetAllUserServicePlanData
  ];
  @override
  final String wireName = 'GgetAllUserServicePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllUserServicePlanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getAllUserServicePlan;
    if (value != null) {
      result
        ..add('getAllUserServicePlan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetAllUserServicePlanData_getAllUserServicePlan)));
    }
    return result;
  }

  @override
  GgetAllUserServicePlanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllUserServicePlanDataBuilder();

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
        case 'getAllUserServicePlan':
          result.getAllUserServicePlan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetAllUserServicePlanData_getAllUserServicePlan))!
              as GgetAllUserServicePlanData_getAllUserServicePlan);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllUserServicePlanData_getAllUserServicePlanSerializer
    implements
        StructuredSerializer<GgetAllUserServicePlanData_getAllUserServicePlan> {
  @override
  final Iterable<Type> types = const [
    GgetAllUserServicePlanData_getAllUserServicePlan,
    _$GgetAllUserServicePlanData_getAllUserServicePlan
  ];
  @override
  final String wireName = 'GgetAllUserServicePlanData_getAllUserServicePlan';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAllUserServicePlanData_getAllUserServicePlan object,
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
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetAllUserServicePlanData_getAllUserServicePlan_results)
            ])));
    }
    return result;
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllUserServicePlanData_getAllUserServicePlanBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetAllUserServicePlanData_getAllUserServicePlan_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllUserServicePlanData_getAllUserServicePlan_resultsSerializer
    implements
        StructuredSerializer<
            GgetAllUserServicePlanData_getAllUserServicePlan_results> {
  @override
  final Iterable<Type> types = const [
    GgetAllUserServicePlanData_getAllUserServicePlan_results,
    _$GgetAllUserServicePlanData_getAllUserServicePlan_results
  ];
  @override
  final String wireName =
      'GgetAllUserServicePlanData_getAllUserServicePlan_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAllUserServicePlanData_getAllUserServicePlan_results object,
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
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.planName;
    if (value != null) {
      result
        ..add('planName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.aiFeaturesStatus;
    if (value != null) {
      result
        ..add('aiFeaturesStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.serviceFee;
    if (value != null) {
      result
        ..add('serviceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.purchaseStatus;
    if (value != null) {
      result
        ..add('purchaseStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.servicePlanStartDate;
    if (value != null) {
      result
        ..add('servicePlanStartDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.servicePlanEndDate;
    if (value != null) {
      result
        ..add('servicePlanEndDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceType;
    if (value != null) {
      result
        ..add('serviceType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isEnable;
    if (value != null) {
      result
        ..add('isEnable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaImage;
    if (value != null) {
      result
        ..add('mediaImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.PurchaseData;
    if (value != null) {
      result
        ..add('PurchaseData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData)));
    }
    return result;
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder();

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
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'planName':
          result.planName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'aiFeaturesStatus':
          result.aiFeaturesStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'serviceFee':
          result.serviceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'purchaseStatus':
          result.purchaseStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'servicePlanStartDate':
          result.servicePlanStartDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'servicePlanEndDate':
          result.servicePlanEndDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'serviceType':
          result.serviceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isEnable':
          result.isEnable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mediaImage':
          result.mediaImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PurchaseData':
          result.PurchaseData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData))!
              as GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataSerializer
    implements
        StructuredSerializer<
            GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData> {
  @override
  final Iterable<Type> types = const [
    GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData,
    _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
  ];
  @override
  final String wireName =
      'GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
          object,
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
    value = object.servicePlanId;
    if (value != null) {
      result
        ..add('servicePlanId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder();

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
        case 'servicePlanId':
          result.servicePlanId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllUserServicePlanData extends GgetAllUserServicePlanData {
  @override
  final String G__typename;
  @override
  final GgetAllUserServicePlanData_getAllUserServicePlan? getAllUserServicePlan;

  factory _$GgetAllUserServicePlanData(
          [void Function(GgetAllUserServicePlanDataBuilder)? updates]) =>
      (new GgetAllUserServicePlanDataBuilder()..update(updates))._build();

  _$GgetAllUserServicePlanData._(
      {required this.G__typename, this.getAllUserServicePlan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllUserServicePlanData', 'G__typename');
  }

  @override
  GgetAllUserServicePlanData rebuild(
          void Function(GgetAllUserServicePlanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllUserServicePlanDataBuilder toBuilder() =>
      new GgetAllUserServicePlanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllUserServicePlanData &&
        G__typename == other.G__typename &&
        getAllUserServicePlan == other.getAllUserServicePlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAllUserServicePlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllUserServicePlanData')
          ..add('G__typename', G__typename)
          ..add('getAllUserServicePlan', getAllUserServicePlan))
        .toString();
  }
}

class GgetAllUserServicePlanDataBuilder
    implements
        Builder<GgetAllUserServicePlanData, GgetAllUserServicePlanDataBuilder> {
  _$GgetAllUserServicePlanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetAllUserServicePlanData_getAllUserServicePlanBuilder?
      _getAllUserServicePlan;
  GgetAllUserServicePlanData_getAllUserServicePlanBuilder
      get getAllUserServicePlan => _$this._getAllUserServicePlan ??=
          new GgetAllUserServicePlanData_getAllUserServicePlanBuilder();
  set getAllUserServicePlan(
          GgetAllUserServicePlanData_getAllUserServicePlanBuilder?
              getAllUserServicePlan) =>
      _$this._getAllUserServicePlan = getAllUserServicePlan;

  GgetAllUserServicePlanDataBuilder() {
    GgetAllUserServicePlanData._initializeBuilder(this);
  }

  GgetAllUserServicePlanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAllUserServicePlan = $v.getAllUserServicePlan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllUserServicePlanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllUserServicePlanData;
  }

  @override
  void update(void Function(GgetAllUserServicePlanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllUserServicePlanData build() => _build();

  _$GgetAllUserServicePlanData _build() {
    _$GgetAllUserServicePlanData _$result;
    try {
      _$result = _$v ??
          new _$GgetAllUserServicePlanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetAllUserServicePlanData', 'G__typename'),
              getAllUserServicePlan: _getAllUserServicePlan?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAllUserServicePlan';
        _getAllUserServicePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllUserServicePlanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllUserServicePlanData_getAllUserServicePlan
    extends GgetAllUserServicePlanData_getAllUserServicePlan {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final int? count;
  @override
  final BuiltList<GgetAllUserServicePlanData_getAllUserServicePlan_results?>?
      results;

  factory _$GgetAllUserServicePlanData_getAllUserServicePlan(
          [void Function(
                  GgetAllUserServicePlanData_getAllUserServicePlanBuilder)?
              updates]) =>
      (new GgetAllUserServicePlanData_getAllUserServicePlanBuilder()
            ..update(updates))
          ._build();

  _$GgetAllUserServicePlanData_getAllUserServicePlan._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.count,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetAllUserServicePlanData_getAllUserServicePlan', 'G__typename');
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan rebuild(
          void Function(GgetAllUserServicePlanData_getAllUserServicePlanBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllUserServicePlanData_getAllUserServicePlanBuilder toBuilder() =>
      new GgetAllUserServicePlanData_getAllUserServicePlanBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllUserServicePlanData_getAllUserServicePlan &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAllUserServicePlanData_getAllUserServicePlan')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class GgetAllUserServicePlanData_getAllUserServicePlanBuilder
    implements
        Builder<GgetAllUserServicePlanData_getAllUserServicePlan,
            GgetAllUserServicePlanData_getAllUserServicePlanBuilder> {
  _$GgetAllUserServicePlanData_getAllUserServicePlan? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<GgetAllUserServicePlanData_getAllUserServicePlan_results?>?
      _results;
  ListBuilder<GgetAllUserServicePlanData_getAllUserServicePlan_results?>
      get results => _$this._results ??= new ListBuilder<
          GgetAllUserServicePlanData_getAllUserServicePlan_results?>();
  set results(
          ListBuilder<
                  GgetAllUserServicePlanData_getAllUserServicePlan_results?>?
              results) =>
      _$this._results = results;

  GgetAllUserServicePlanData_getAllUserServicePlanBuilder() {
    GgetAllUserServicePlanData_getAllUserServicePlan._initializeBuilder(this);
  }

  GgetAllUserServicePlanData_getAllUserServicePlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllUserServicePlanData_getAllUserServicePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllUserServicePlanData_getAllUserServicePlan;
  }

  @override
  void update(
      void Function(GgetAllUserServicePlanData_getAllUserServicePlanBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan build() => _build();

  _$GgetAllUserServicePlanData_getAllUserServicePlan _build() {
    _$GgetAllUserServicePlanData_getAllUserServicePlan _$result;
    try {
      _$result = _$v ??
          new _$GgetAllUserServicePlanData_getAllUserServicePlan._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetAllUserServicePlanData_getAllUserServicePlan',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              count: count,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllUserServicePlanData_getAllUserServicePlan',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllUserServicePlanData_getAllUserServicePlan_results
    extends GgetAllUserServicePlanData_getAllUserServicePlan_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? userType;
  @override
  final String? planName;
  @override
  final String? duration;
  @override
  final String? currency;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final bool? aiFeaturesStatus;
  @override
  final double? serviceFee;
  @override
  final bool? purchaseStatus;
  @override
  final String? servicePlanStartDate;
  @override
  final String? servicePlanEndDate;
  @override
  final String? serviceType;
  @override
  final bool? isEnable;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? mediaImage;
  @override
  final GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData?
      PurchaseData;

  factory _$GgetAllUserServicePlanData_getAllUserServicePlan_results(
          [void Function(
                  GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder)?
              updates]) =>
      (new GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetAllUserServicePlanData_getAllUserServicePlan_results._(
      {required this.G__typename,
      this.id,
      this.userType,
      this.planName,
      this.duration,
      this.currency,
      this.description,
      this.price,
      this.aiFeaturesStatus,
      this.serviceFee,
      this.purchaseStatus,
      this.servicePlanStartDate,
      this.servicePlanEndDate,
      this.serviceType,
      this.isEnable,
      this.createdAt,
      this.updatedAt,
      this.mediaImage,
      this.PurchaseData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAllUserServicePlanData_getAllUserServicePlan_results',
        'G__typename');
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results rebuild(
          void Function(
                  GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder toBuilder() =>
      new GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllUserServicePlanData_getAllUserServicePlan_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        userType == other.userType &&
        planName == other.planName &&
        duration == other.duration &&
        currency == other.currency &&
        description == other.description &&
        price == other.price &&
        aiFeaturesStatus == other.aiFeaturesStatus &&
        serviceFee == other.serviceFee &&
        purchaseStatus == other.purchaseStatus &&
        servicePlanStartDate == other.servicePlanStartDate &&
        servicePlanEndDate == other.servicePlanEndDate &&
        serviceType == other.serviceType &&
        isEnable == other.isEnable &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        mediaImage == other.mediaImage &&
        PurchaseData == other.PurchaseData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, planName.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, aiFeaturesStatus.hashCode);
    _$hash = $jc(_$hash, serviceFee.hashCode);
    _$hash = $jc(_$hash, purchaseStatus.hashCode);
    _$hash = $jc(_$hash, servicePlanStartDate.hashCode);
    _$hash = $jc(_$hash, servicePlanEndDate.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, mediaImage.hashCode);
    _$hash = $jc(_$hash, PurchaseData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAllUserServicePlanData_getAllUserServicePlan_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userType', userType)
          ..add('planName', planName)
          ..add('duration', duration)
          ..add('currency', currency)
          ..add('description', description)
          ..add('price', price)
          ..add('aiFeaturesStatus', aiFeaturesStatus)
          ..add('serviceFee', serviceFee)
          ..add('purchaseStatus', purchaseStatus)
          ..add('servicePlanStartDate', servicePlanStartDate)
          ..add('servicePlanEndDate', servicePlanEndDate)
          ..add('serviceType', serviceType)
          ..add('isEnable', isEnable)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('mediaImage', mediaImage)
          ..add('PurchaseData', PurchaseData))
        .toString();
  }
}

class GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder
    implements
        Builder<GgetAllUserServicePlanData_getAllUserServicePlan_results,
            GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder> {
  _$GgetAllUserServicePlanData_getAllUserServicePlan_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  String? _planName;
  String? get planName => _$this._planName;
  set planName(String? planName) => _$this._planName = planName;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  bool? _aiFeaturesStatus;
  bool? get aiFeaturesStatus => _$this._aiFeaturesStatus;
  set aiFeaturesStatus(bool? aiFeaturesStatus) =>
      _$this._aiFeaturesStatus = aiFeaturesStatus;

  double? _serviceFee;
  double? get serviceFee => _$this._serviceFee;
  set serviceFee(double? serviceFee) => _$this._serviceFee = serviceFee;

  bool? _purchaseStatus;
  bool? get purchaseStatus => _$this._purchaseStatus;
  set purchaseStatus(bool? purchaseStatus) =>
      _$this._purchaseStatus = purchaseStatus;

  String? _servicePlanStartDate;
  String? get servicePlanStartDate => _$this._servicePlanStartDate;
  set servicePlanStartDate(String? servicePlanStartDate) =>
      _$this._servicePlanStartDate = servicePlanStartDate;

  String? _servicePlanEndDate;
  String? get servicePlanEndDate => _$this._servicePlanEndDate;
  set servicePlanEndDate(String? servicePlanEndDate) =>
      _$this._servicePlanEndDate = servicePlanEndDate;

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(String? serviceType) => _$this._serviceType = serviceType;

  bool? _isEnable;
  bool? get isEnable => _$this._isEnable;
  set isEnable(bool? isEnable) => _$this._isEnable = isEnable;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _mediaImage;
  String? get mediaImage => _$this._mediaImage;
  set mediaImage(String? mediaImage) => _$this._mediaImage = mediaImage;

  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder?
      _PurchaseData;
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder
      get PurchaseData => _$this._PurchaseData ??=
          new GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder();
  set PurchaseData(
          GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder?
              PurchaseData) =>
      _$this._PurchaseData = PurchaseData;

  GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder() {
    GgetAllUserServicePlanData_getAllUserServicePlan_results._initializeBuilder(
        this);
  }

  GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userType = $v.userType;
      _planName = $v.planName;
      _duration = $v.duration;
      _currency = $v.currency;
      _description = $v.description;
      _price = $v.price;
      _aiFeaturesStatus = $v.aiFeaturesStatus;
      _serviceFee = $v.serviceFee;
      _purchaseStatus = $v.purchaseStatus;
      _servicePlanStartDate = $v.servicePlanStartDate;
      _servicePlanEndDate = $v.servicePlanEndDate;
      _serviceType = $v.serviceType;
      _isEnable = $v.isEnable;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _mediaImage = $v.mediaImage;
      _PurchaseData = $v.PurchaseData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllUserServicePlanData_getAllUserServicePlan_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllUserServicePlanData_getAllUserServicePlan_results;
  }

  @override
  void update(
      void Function(
              GgetAllUserServicePlanData_getAllUserServicePlan_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results build() => _build();

  _$GgetAllUserServicePlanData_getAllUserServicePlan_results _build() {
    _$GgetAllUserServicePlanData_getAllUserServicePlan_results _$result;
    try {
      _$result = _$v ??
          new _$GgetAllUserServicePlanData_getAllUserServicePlan_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetAllUserServicePlanData_getAllUserServicePlan_results',
                  'G__typename'),
              id: id,
              userType: userType,
              planName: planName,
              duration: duration,
              currency: currency,
              description: description,
              price: price,
              aiFeaturesStatus: aiFeaturesStatus,
              serviceFee: serviceFee,
              purchaseStatus: purchaseStatus,
              servicePlanStartDate: servicePlanStartDate,
              servicePlanEndDate: servicePlanEndDate,
              serviceType: serviceType,
              isEnable: isEnable,
              createdAt: createdAt,
              updatedAt: updatedAt,
              mediaImage: mediaImage,
              PurchaseData: _PurchaseData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'PurchaseData';
        _PurchaseData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllUserServicePlanData_getAllUserServicePlan_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
    extends GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? servicePlanId;

  factory _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData(
          [void Function(
                  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder)?
              updates]) =>
      (new GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder()
            ..update(updates))
          ._build();

  _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData._(
      {required this.G__typename, this.id, this.servicePlanId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData',
        'G__typename');
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData rebuild(
          void Function(
                  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder
      toBuilder() =>
          new GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData &&
        G__typename == other.G__typename &&
        id == other.id &&
        servicePlanId == other.servicePlanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, servicePlanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('servicePlanId', servicePlanId))
        .toString();
  }
}

class GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder
    implements
        Builder<
            GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData,
            GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder> {
  _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _servicePlanId;
  int? get servicePlanId => _$this._servicePlanId;
  set servicePlanId(int? servicePlanId) =>
      _$this._servicePlanId = servicePlanId;

  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder() {
    GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
        ._initializeBuilder(this);
  }

  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _servicePlanId = $v.servicePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData;
  }

  @override
  void update(
      void Function(
              GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
      build() => _build();

  _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
      _build() {
    final _$result = _$v ??
        new _$GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAllUserServicePlanData_getAllUserServicePlan_results_PurchaseData',
                'G__typename'),
            id: id,
            servicePlanId: servicePlanId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
