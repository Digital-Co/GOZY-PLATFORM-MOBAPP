// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getAllPurchaseServicePlan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetAllPurchaseServicePlanData>
    _$ggetAllPurchaseServicePlanDataSerializer =
    new _$GgetAllPurchaseServicePlanDataSerializer();
Serializer<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan>
    _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanSerializer =
    new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanSerializer();
Serializer<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results>
    _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanResultsSerializer =
    new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsSerializer();
Serializer<
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData>
    _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanResultsServicePlanDataSerializer =
    new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataSerializer();
Serializer<
        GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData>
    _$ggetAllPurchaseServicePlanDataGetAllPurchaseServicePlanResultsPurchaserDataSerializer =
    new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataSerializer();

class _$GgetAllPurchaseServicePlanDataSerializer
    implements StructuredSerializer<GgetAllPurchaseServicePlanData> {
  @override
  final Iterable<Type> types = const [
    GgetAllPurchaseServicePlanData,
    _$GgetAllPurchaseServicePlanData
  ];
  @override
  final String wireName = 'GgetAllPurchaseServicePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetAllPurchaseServicePlanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getAllPurchaseServicePlan;
    if (value != null) {
      result
        ..add('getAllPurchaseServicePlan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan)));
    }
    return result;
  }

  @override
  GgetAllPurchaseServicePlanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetAllPurchaseServicePlanDataBuilder();

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
        case 'getAllPurchaseServicePlan':
          result.getAllPurchaseServicePlan.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan))!
              as GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanSerializer
    implements
        StructuredSerializer<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan> {
  @override
  final Iterable<Type> types = const [
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan,
    _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan
  ];
  @override
  final String wireName =
      'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan object,
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
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results)
            ])));
    }
    return result;
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder();

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
                    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsSerializer
    implements
        StructuredSerializer<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results> {
  @override
  final Iterable<Type> types = const [
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results,
    _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
  ];
  @override
  final String wireName =
      'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results object,
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
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
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
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
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
    value = object.servicePlanId;
    if (value != null) {
      result
        ..add('servicePlanId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.serviceFee;
    if (value != null) {
      result
        ..add('serviceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.servicePlanName;
    if (value != null) {
      result
        ..add('servicePlanName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceDescription;
    if (value != null) {
      result
        ..add('serviceDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceAIFeature;
    if (value != null) {
      result
        ..add('serviceAIFeature')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.servicePlanStatus;
    if (value != null) {
      result
        ..add('servicePlanStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentType;
    if (value != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.paymentState;
    if (value != null) {
      result
        ..add('paymentState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.servicePlanData;
    if (value != null) {
      result
        ..add('servicePlanData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData)));
    }
    value = object.PurchaserData;
    if (value != null) {
      result
        ..add('PurchaserData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData)));
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
    return result;
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'servicePlanId':
          result.servicePlanId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'serviceFee':
          result.serviceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'servicePlanName':
          result.servicePlanName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'serviceDescription':
          result.serviceDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'serviceAIFeature':
          result.serviceAIFeature = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'servicePlanStatus':
          result.servicePlanStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'paymentState':
          result.paymentState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'servicePlanData':
          result.servicePlanData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData))!
              as GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData);
          break;
        case 'PurchaserData':
          result.PurchaserData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData))!
              as GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataSerializer
    implements
        StructuredSerializer<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData> {
  @override
  final Iterable<Type> types = const [
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData,
    _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
  ];
  @override
  final String wireName =
      'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mediaImage;
    if (value != null) {
      result
        ..add('mediaImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder();

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
        case 'mediaImage':
          result.mediaImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataSerializer
    implements
        StructuredSerializer<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData> {
  @override
  final Iterable<Type> types = const [
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData,
    _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
  ];
  @override
  final String wireName =
      'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetAllPurchaseServicePlanData extends GgetAllPurchaseServicePlanData {
  @override
  final String G__typename;
  @override
  final GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan?
      getAllPurchaseServicePlan;

  factory _$GgetAllPurchaseServicePlanData(
          [void Function(GgetAllPurchaseServicePlanDataBuilder)? updates]) =>
      (new GgetAllPurchaseServicePlanDataBuilder()..update(updates))._build();

  _$GgetAllPurchaseServicePlanData._(
      {required this.G__typename, this.getAllPurchaseServicePlan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetAllPurchaseServicePlanData', 'G__typename');
  }

  @override
  GgetAllPurchaseServicePlanData rebuild(
          void Function(GgetAllPurchaseServicePlanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllPurchaseServicePlanDataBuilder toBuilder() =>
      new GgetAllPurchaseServicePlanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllPurchaseServicePlanData &&
        G__typename == other.G__typename &&
        getAllPurchaseServicePlan == other.getAllPurchaseServicePlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAllPurchaseServicePlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetAllPurchaseServicePlanData')
          ..add('G__typename', G__typename)
          ..add('getAllPurchaseServicePlan', getAllPurchaseServicePlan))
        .toString();
  }
}

class GgetAllPurchaseServicePlanDataBuilder
    implements
        Builder<GgetAllPurchaseServicePlanData,
            GgetAllPurchaseServicePlanDataBuilder> {
  _$GgetAllPurchaseServicePlanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder?
      _getAllPurchaseServicePlan;
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder
      get getAllPurchaseServicePlan => _$this._getAllPurchaseServicePlan ??=
          new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder();
  set getAllPurchaseServicePlan(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder?
              getAllPurchaseServicePlan) =>
      _$this._getAllPurchaseServicePlan = getAllPurchaseServicePlan;

  GgetAllPurchaseServicePlanDataBuilder() {
    GgetAllPurchaseServicePlanData._initializeBuilder(this);
  }

  GgetAllPurchaseServicePlanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAllPurchaseServicePlan = $v.getAllPurchaseServicePlan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetAllPurchaseServicePlanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllPurchaseServicePlanData;
  }

  @override
  void update(void Function(GgetAllPurchaseServicePlanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllPurchaseServicePlanData build() => _build();

  _$GgetAllPurchaseServicePlanData _build() {
    _$GgetAllPurchaseServicePlanData _$result;
    try {
      _$result = _$v ??
          new _$GgetAllPurchaseServicePlanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetAllPurchaseServicePlanData', 'G__typename'),
              getAllPurchaseServicePlan: _getAllPurchaseServicePlan?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAllPurchaseServicePlan';
        _getAllPurchaseServicePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllPurchaseServicePlanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan
    extends GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final int? count;
  @override
  final BuiltList<
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?>?
      results;

  factory _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder)?
              updates]) =>
      (new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder()
            ..update(updates))
          ._build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan._(
      {required this.G__typename,
      this.status,
      this.errorMessage,
      this.count,
      this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan',
        'G__typename');
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan rebuild(
          void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder toBuilder() =>
      new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan &&
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
            r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder
    implements
        Builder<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder> {
  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan? _$v;

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

  ListBuilder<
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?>?
      _results;
  ListBuilder<GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?>
      get results => _$this._results ??= new ListBuilder<
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?>();
  set results(
          ListBuilder<
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results?>?
              results) =>
      _$this._results = results;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder() {
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan._initializeBuilder(
        this);
  }

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder get _$this {
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
  void replace(GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan;
  }

  @override
  void update(
      void Function(
              GgetAllPurchaseServicePlanData_getAllPurchaseServicePlanBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan build() => _build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan _build() {
    _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan _$result;
    try {
      _$result = _$v ??
          new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan',
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
            r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
    extends GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String? userId;
  @override
  final double? price;
  @override
  final String? currency;
  @override
  final String? userType;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? duration;
  @override
  final int? servicePlanId;
  @override
  final double? serviceFee;
  @override
  final String? servicePlanName;
  @override
  final String? serviceDescription;
  @override
  final bool? serviceAIFeature;
  @override
  final String? servicePlanStatus;
  @override
  final int? paymentType;
  @override
  final String? paymentState;
  @override
  final GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData?
      servicePlanData;
  @override
  final GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData?
      PurchaserData;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder)?
              updates]) =>
      (new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder()
            ..update(updates))
          ._build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results._(
      {required this.G__typename,
      this.id,
      this.userId,
      this.price,
      this.currency,
      this.userType,
      this.startDate,
      this.endDate,
      this.duration,
      this.servicePlanId,
      this.serviceFee,
      this.servicePlanName,
      this.serviceDescription,
      this.serviceAIFeature,
      this.servicePlanStatus,
      this.paymentType,
      this.paymentState,
      this.servicePlanData,
      this.PurchaserData,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results',
        'G__typename');
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results rebuild(
          void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder
      toBuilder() =>
          new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        price == other.price &&
        currency == other.currency &&
        userType == other.userType &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        duration == other.duration &&
        servicePlanId == other.servicePlanId &&
        serviceFee == other.serviceFee &&
        servicePlanName == other.servicePlanName &&
        serviceDescription == other.serviceDescription &&
        serviceAIFeature == other.serviceAIFeature &&
        servicePlanStatus == other.servicePlanStatus &&
        paymentType == other.paymentType &&
        paymentState == other.paymentState &&
        servicePlanData == other.servicePlanData &&
        PurchaserData == other.PurchaserData &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, servicePlanId.hashCode);
    _$hash = $jc(_$hash, serviceFee.hashCode);
    _$hash = $jc(_$hash, servicePlanName.hashCode);
    _$hash = $jc(_$hash, serviceDescription.hashCode);
    _$hash = $jc(_$hash, serviceAIFeature.hashCode);
    _$hash = $jc(_$hash, servicePlanStatus.hashCode);
    _$hash = $jc(_$hash, paymentType.hashCode);
    _$hash = $jc(_$hash, paymentState.hashCode);
    _$hash = $jc(_$hash, servicePlanData.hashCode);
    _$hash = $jc(_$hash, PurchaserData.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('price', price)
          ..add('currency', currency)
          ..add('userType', userType)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('duration', duration)
          ..add('servicePlanId', servicePlanId)
          ..add('serviceFee', serviceFee)
          ..add('servicePlanName', servicePlanName)
          ..add('serviceDescription', serviceDescription)
          ..add('serviceAIFeature', serviceAIFeature)
          ..add('servicePlanStatus', servicePlanStatus)
          ..add('paymentType', paymentType)
          ..add('paymentState', paymentState)
          ..add('servicePlanData', servicePlanData)
          ..add('PurchaserData', PurchaserData)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder
    implements
        Builder<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder> {
  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  int? _servicePlanId;
  int? get servicePlanId => _$this._servicePlanId;
  set servicePlanId(int? servicePlanId) =>
      _$this._servicePlanId = servicePlanId;

  double? _serviceFee;
  double? get serviceFee => _$this._serviceFee;
  set serviceFee(double? serviceFee) => _$this._serviceFee = serviceFee;

  String? _servicePlanName;
  String? get servicePlanName => _$this._servicePlanName;
  set servicePlanName(String? servicePlanName) =>
      _$this._servicePlanName = servicePlanName;

  String? _serviceDescription;
  String? get serviceDescription => _$this._serviceDescription;
  set serviceDescription(String? serviceDescription) =>
      _$this._serviceDescription = serviceDescription;

  bool? _serviceAIFeature;
  bool? get serviceAIFeature => _$this._serviceAIFeature;
  set serviceAIFeature(bool? serviceAIFeature) =>
      _$this._serviceAIFeature = serviceAIFeature;

  String? _servicePlanStatus;
  String? get servicePlanStatus => _$this._servicePlanStatus;
  set servicePlanStatus(String? servicePlanStatus) =>
      _$this._servicePlanStatus = servicePlanStatus;

  int? _paymentType;
  int? get paymentType => _$this._paymentType;
  set paymentType(int? paymentType) => _$this._paymentType = paymentType;

  String? _paymentState;
  String? get paymentState => _$this._paymentState;
  set paymentState(String? paymentState) => _$this._paymentState = paymentState;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder?
      _servicePlanData;
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder
      get servicePlanData => _$this._servicePlanData ??=
          new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder();
  set servicePlanData(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder?
              servicePlanData) =>
      _$this._servicePlanData = servicePlanData;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder?
      _PurchaserData;
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder
      get PurchaserData => _$this._PurchaserData ??=
          new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder();
  set PurchaserData(
          GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder?
              PurchaserData) =>
      _$this._PurchaserData = PurchaserData;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder() {
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
        ._initializeBuilder(this);
  }

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _price = $v.price;
      _currency = $v.currency;
      _userType = $v.userType;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _duration = $v.duration;
      _servicePlanId = $v.servicePlanId;
      _serviceFee = $v.serviceFee;
      _servicePlanName = $v.servicePlanName;
      _serviceDescription = $v.serviceDescription;
      _serviceAIFeature = $v.serviceAIFeature;
      _servicePlanStatus = $v.servicePlanStatus;
      _paymentType = $v.paymentType;
      _paymentState = $v.paymentState;
      _servicePlanData = $v.servicePlanData?.toBuilder();
      _PurchaserData = $v.PurchaserData?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results;
  }

  @override
  void update(
      void Function(
              GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results build() =>
      _build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results _build() {
    _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results _$result;
    try {
      _$result = _$v ??
          new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results',
                  'G__typename'),
              id: id,
              userId: userId,
              price: price,
              currency: currency,
              userType: userType,
              startDate: startDate,
              endDate: endDate,
              duration: duration,
              servicePlanId: servicePlanId,
              serviceFee: serviceFee,
              servicePlanName: servicePlanName,
              serviceDescription: serviceDescription,
              serviceAIFeature: serviceAIFeature,
              servicePlanStatus: servicePlanStatus,
              paymentType: paymentType,
              paymentState: paymentState,
              servicePlanData: _servicePlanData?.build(),
              PurchaserData: _PurchaserData?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'servicePlanData';
        _servicePlanData?.build();
        _$failedField = 'PurchaserData';
        _PurchaserData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
    extends GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData {
  @override
  final String G__typename;
  @override
  final String? mediaImage;

  factory _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder)?
              updates]) =>
      (new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder()
            ..update(updates))
          ._build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData._(
      {required this.G__typename, this.mediaImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData',
        'G__typename');
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
      rebuild(
              void Function(
                      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder
      toBuilder() =>
          new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData &&
        G__typename == other.G__typename &&
        mediaImage == other.mediaImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, mediaImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData')
          ..add('G__typename', G__typename)
          ..add('mediaImage', mediaImage))
        .toString();
  }
}

class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder
    implements
        Builder<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder> {
  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _mediaImage;
  String? get mediaImage => _$this._mediaImage;
  set mediaImage(String? mediaImage) => _$this._mediaImage = mediaImage;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder() {
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
        ._initializeBuilder(this);
  }

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mediaImage = $v.mediaImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData;
  }

  @override
  void update(
      void Function(
              GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
      build() => _build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
      _build() {
    final _$result = _$v ??
        new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_servicePlanData',
                'G__typename'),
            mediaImage: mediaImage);
    replace(_$result);
    return _$result;
  }
}

class _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
    extends GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData(
          [void Function(
                  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder)?
              updates]) =>
      (new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder()
            ..update(updates))
          ._build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData._(
      {required this.G__typename, this.firstName, this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData',
        'G__typename');
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
      rebuild(
              void Function(
                      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder
      toBuilder() =>
          new GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder
    implements
        Builder<
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData,
            GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder> {
  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder() {
    GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
        ._initializeBuilder(this);
  }

  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData;
  }

  @override
  void update(
      void Function(
              GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
      build() => _build();

  _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
      _build() {
    final _$result = _$v ??
        new _$GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetAllPurchaseServicePlanData_getAllPurchaseServicePlan_results_PurchaserData',
                'G__typename'),
            firstName: firstName,
            lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
