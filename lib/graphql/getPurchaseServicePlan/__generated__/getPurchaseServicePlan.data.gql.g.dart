// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getPurchaseServicePlan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetPurchaseServicePlanData>
    _$ggetPurchaseServicePlanDataSerializer =
    new _$GgetPurchaseServicePlanDataSerializer();
Serializer<GgetPurchaseServicePlanData_getPurchaseServicePlan>
    _$ggetPurchaseServicePlanDataGetPurchaseServicePlanSerializer =
    new _$GgetPurchaseServicePlanData_getPurchaseServicePlanSerializer();
Serializer<GgetPurchaseServicePlanData_getPurchaseServicePlan_result>
    _$ggetPurchaseServicePlanDataGetPurchaseServicePlanResultSerializer =
    new _$GgetPurchaseServicePlanData_getPurchaseServicePlan_resultSerializer();
Serializer<GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features>
    _$ggetPurchaseServicePlanDataGetPurchaseServicePlanResultFeaturesSerializer =
    new _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresSerializer();
Serializer<
        GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData>
    _$ggetPurchaseServicePlanDataGetPurchaseServicePlanResultPurchaserDataSerializer =
    new _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataSerializer();

class _$GgetPurchaseServicePlanDataSerializer
    implements StructuredSerializer<GgetPurchaseServicePlanData> {
  @override
  final Iterable<Type> types = const [
    GgetPurchaseServicePlanData,
    _$GgetPurchaseServicePlanData
  ];
  @override
  final String wireName = 'GgetPurchaseServicePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPurchaseServicePlanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPurchaseServicePlan;
    if (value != null) {
      result
        ..add('getPurchaseServicePlan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetPurchaseServicePlanData_getPurchaseServicePlan)));
    }
    return result;
  }

  @override
  GgetPurchaseServicePlanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPurchaseServicePlanDataBuilder();

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
        case 'getPurchaseServicePlan':
          result.getPurchaseServicePlan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPurchaseServicePlanData_getPurchaseServicePlan))!
              as GgetPurchaseServicePlanData_getPurchaseServicePlan);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlanSerializer
    implements
        StructuredSerializer<
            GgetPurchaseServicePlanData_getPurchaseServicePlan> {
  @override
  final Iterable<Type> types = const [
    GgetPurchaseServicePlanData_getPurchaseServicePlan,
    _$GgetPurchaseServicePlanData_getPurchaseServicePlan
  ];
  @override
  final String wireName = 'GgetPurchaseServicePlanData_getPurchaseServicePlan';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPurchaseServicePlanData_getPurchaseServicePlan object,
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
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetPurchaseServicePlanData_getPurchaseServicePlan_result)));
    }
    return result;
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder();

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
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPurchaseServicePlanData_getPurchaseServicePlan_result))!
              as GgetPurchaseServicePlanData_getPurchaseServicePlan_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan_resultSerializer
    implements
        StructuredSerializer<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result> {
  @override
  final Iterable<Type> types = const [
    GgetPurchaseServicePlanData_getPurchaseServicePlan_result,
    _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result
  ];
  @override
  final String wireName =
      'GgetPurchaseServicePlanData_getPurchaseServicePlan_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPurchaseServicePlanData_getPurchaseServicePlan_result object,
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
    value = object.serviceFee;
    if (value != null) {
      result
        ..add('serviceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
    value = object.paymentType;
    if (value != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.servicePlanStatus;
    if (value != null) {
      result
        ..add('servicePlanStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentState;
    if (value != null) {
      result
        ..add('paymentState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.features;
    if (value != null) {
      result
        ..add('features')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features)
            ])));
    }
    value = object.PurchaserData;
    if (value != null) {
      result
        ..add('PurchaserData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData)));
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
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder();

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
        case 'serviceFee':
          result.serviceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'servicePlanId':
          result.servicePlanId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'servicePlanStatus':
          result.servicePlanStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentState':
          result.paymentState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'features':
          result.features.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features)
              ]))! as BuiltList<Object?>);
          break;
        case 'PurchaserData':
          result.PurchaserData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData))!
              as GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData);
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

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresSerializer
    implements
        StructuredSerializer<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features> {
  @override
  final Iterable<Type> types = const [
    GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features,
    _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
  ];
  @override
  final String wireName =
      'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.serviceFee;
    if (value != null) {
      result
        ..add('serviceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.serviceAIFeature;
    if (value != null) {
      result
        ..add('serviceAIFeature')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder();

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
        case 'serviceFee':
          result.serviceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'serviceAIFeature':
          result.serviceAIFeature = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataSerializer
    implements
        StructuredSerializer<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData> {
  @override
  final Iterable<Type> types = const [
    GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData,
    _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
  ];
  @override
  final String wireName =
      'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder();

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
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GgetPurchaseServicePlanData extends GgetPurchaseServicePlanData {
  @override
  final String G__typename;
  @override
  final GgetPurchaseServicePlanData_getPurchaseServicePlan?
      getPurchaseServicePlan;

  factory _$GgetPurchaseServicePlanData(
          [void Function(GgetPurchaseServicePlanDataBuilder)? updates]) =>
      (new GgetPurchaseServicePlanDataBuilder()..update(updates))._build();

  _$GgetPurchaseServicePlanData._(
      {required this.G__typename, this.getPurchaseServicePlan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPurchaseServicePlanData', 'G__typename');
  }

  @override
  GgetPurchaseServicePlanData rebuild(
          void Function(GgetPurchaseServicePlanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPurchaseServicePlanDataBuilder toBuilder() =>
      new GgetPurchaseServicePlanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPurchaseServicePlanData &&
        G__typename == other.G__typename &&
        getPurchaseServicePlan == other.getPurchaseServicePlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPurchaseServicePlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPurchaseServicePlanData')
          ..add('G__typename', G__typename)
          ..add('getPurchaseServicePlan', getPurchaseServicePlan))
        .toString();
  }
}

class GgetPurchaseServicePlanDataBuilder
    implements
        Builder<GgetPurchaseServicePlanData,
            GgetPurchaseServicePlanDataBuilder> {
  _$GgetPurchaseServicePlanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder?
      _getPurchaseServicePlan;
  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder
      get getPurchaseServicePlan => _$this._getPurchaseServicePlan ??=
          new GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder();
  set getPurchaseServicePlan(
          GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder?
              getPurchaseServicePlan) =>
      _$this._getPurchaseServicePlan = getPurchaseServicePlan;

  GgetPurchaseServicePlanDataBuilder() {
    GgetPurchaseServicePlanData._initializeBuilder(this);
  }

  GgetPurchaseServicePlanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPurchaseServicePlan = $v.getPurchaseServicePlan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPurchaseServicePlanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPurchaseServicePlanData;
  }

  @override
  void update(void Function(GgetPurchaseServicePlanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPurchaseServicePlanData build() => _build();

  _$GgetPurchaseServicePlanData _build() {
    _$GgetPurchaseServicePlanData _$result;
    try {
      _$result = _$v ??
          new _$GgetPurchaseServicePlanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPurchaseServicePlanData', 'G__typename'),
              getPurchaseServicePlan: _getPurchaseServicePlan?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPurchaseServicePlan';
        _getPurchaseServicePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPurchaseServicePlanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan
    extends GgetPurchaseServicePlanData_getPurchaseServicePlan {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GgetPurchaseServicePlanData_getPurchaseServicePlan_result? result;

  factory _$GgetPurchaseServicePlanData_getPurchaseServicePlan(
          [void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder)?
              updates]) =>
      (new GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder()
            ..update(updates))
          ._build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan._(
      {required this.G__typename, this.status, this.errorMessage, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPurchaseServicePlanData_getPurchaseServicePlan', 'G__typename');
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan rebuild(
          void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder toBuilder() =>
      new GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPurchaseServicePlanData_getPurchaseServicePlan &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPurchaseServicePlanData_getPurchaseServicePlan')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('result', result))
        .toString();
  }
}

class GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder
    implements
        Builder<GgetPurchaseServicePlanData_getPurchaseServicePlan,
            GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder> {
  _$GgetPurchaseServicePlanData_getPurchaseServicePlan? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder? _result;
  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder get result =>
      _$this._result ??=
          new GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder();
  set result(
          GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder?
              result) =>
      _$this._result = result;

  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder() {
    GgetPurchaseServicePlanData_getPurchaseServicePlan._initializeBuilder(this);
  }

  GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPurchaseServicePlanData_getPurchaseServicePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPurchaseServicePlanData_getPurchaseServicePlan;
  }

  @override
  void update(
      void Function(GgetPurchaseServicePlanData_getPurchaseServicePlanBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan build() => _build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan _build() {
    _$GgetPurchaseServicePlanData_getPurchaseServicePlan _$result;
    try {
      _$result = _$v ??
          new _$GgetPurchaseServicePlanData_getPurchaseServicePlan._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPurchaseServicePlanData_getPurchaseServicePlan',
                  'G__typename'),
              status: status,
              errorMessage: errorMessage,
              result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPurchaseServicePlanData_getPurchaseServicePlan',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result
    extends GgetPurchaseServicePlanData_getPurchaseServicePlan_result {
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
  final double? serviceFee;
  @override
  final String? duration;
  @override
  final int? servicePlanId;
  @override
  final String? servicePlanName;
  @override
  final String? serviceDescription;
  @override
  final bool? serviceAIFeature;
  @override
  final int? paymentType;
  @override
  final String? servicePlanStatus;
  @override
  final String? paymentState;
  @override
  final BuiltList<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?>?
      features;
  @override
  final GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData?
      PurchaserData;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result(
          [void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder)?
              updates]) =>
      (new GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder()
            ..update(updates))
          ._build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result._(
      {required this.G__typename,
      this.id,
      this.userId,
      this.price,
      this.currency,
      this.userType,
      this.startDate,
      this.endDate,
      this.serviceFee,
      this.duration,
      this.servicePlanId,
      this.servicePlanName,
      this.serviceDescription,
      this.serviceAIFeature,
      this.paymentType,
      this.servicePlanStatus,
      this.paymentState,
      this.features,
      this.PurchaserData,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result',
        'G__typename');
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result rebuild(
          void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder
      toBuilder() =>
          new GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPurchaseServicePlanData_getPurchaseServicePlan_result &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        price == other.price &&
        currency == other.currency &&
        userType == other.userType &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        serviceFee == other.serviceFee &&
        duration == other.duration &&
        servicePlanId == other.servicePlanId &&
        servicePlanName == other.servicePlanName &&
        serviceDescription == other.serviceDescription &&
        serviceAIFeature == other.serviceAIFeature &&
        paymentType == other.paymentType &&
        servicePlanStatus == other.servicePlanStatus &&
        paymentState == other.paymentState &&
        features == other.features &&
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
    _$hash = $jc(_$hash, serviceFee.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, servicePlanId.hashCode);
    _$hash = $jc(_$hash, servicePlanName.hashCode);
    _$hash = $jc(_$hash, serviceDescription.hashCode);
    _$hash = $jc(_$hash, serviceAIFeature.hashCode);
    _$hash = $jc(_$hash, paymentType.hashCode);
    _$hash = $jc(_$hash, servicePlanStatus.hashCode);
    _$hash = $jc(_$hash, paymentState.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, PurchaserData.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('price', price)
          ..add('currency', currency)
          ..add('userType', userType)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('serviceFee', serviceFee)
          ..add('duration', duration)
          ..add('servicePlanId', servicePlanId)
          ..add('servicePlanName', servicePlanName)
          ..add('serviceDescription', serviceDescription)
          ..add('serviceAIFeature', serviceAIFeature)
          ..add('paymentType', paymentType)
          ..add('servicePlanStatus', servicePlanStatus)
          ..add('paymentState', paymentState)
          ..add('features', features)
          ..add('PurchaserData', PurchaserData)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder
    implements
        Builder<GgetPurchaseServicePlanData_getPurchaseServicePlan_result,
            GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder> {
  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result? _$v;

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

  double? _serviceFee;
  double? get serviceFee => _$this._serviceFee;
  set serviceFee(double? serviceFee) => _$this._serviceFee = serviceFee;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  int? _servicePlanId;
  int? get servicePlanId => _$this._servicePlanId;
  set servicePlanId(int? servicePlanId) =>
      _$this._servicePlanId = servicePlanId;

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

  int? _paymentType;
  int? get paymentType => _$this._paymentType;
  set paymentType(int? paymentType) => _$this._paymentType = paymentType;

  String? _servicePlanStatus;
  String? get servicePlanStatus => _$this._servicePlanStatus;
  set servicePlanStatus(String? servicePlanStatus) =>
      _$this._servicePlanStatus = servicePlanStatus;

  String? _paymentState;
  String? get paymentState => _$this._paymentState;
  set paymentState(String? paymentState) => _$this._paymentState = paymentState;

  ListBuilder<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?>?
      _features;
  ListBuilder<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?>
      get features => _$this._features ??= new ListBuilder<
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?>();
  set features(
          ListBuilder<
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features?>?
              features) =>
      _$this._features = features;

  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder?
      _PurchaserData;
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder
      get PurchaserData => _$this._PurchaserData ??=
          new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder();
  set PurchaserData(
          GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder?
              PurchaserData) =>
      _$this._PurchaserData = PurchaserData;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder() {
    GgetPurchaseServicePlanData_getPurchaseServicePlan_result
        ._initializeBuilder(this);
  }

  GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder get _$this {
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
      _serviceFee = $v.serviceFee;
      _duration = $v.duration;
      _servicePlanId = $v.servicePlanId;
      _servicePlanName = $v.servicePlanName;
      _serviceDescription = $v.serviceDescription;
      _serviceAIFeature = $v.serviceAIFeature;
      _paymentType = $v.paymentType;
      _servicePlanStatus = $v.servicePlanStatus;
      _paymentState = $v.paymentState;
      _features = $v.features?.toBuilder();
      _PurchaserData = $v.PurchaserData?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPurchaseServicePlanData_getPurchaseServicePlan_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result;
  }

  @override
  void update(
      void Function(
              GgetPurchaseServicePlanData_getPurchaseServicePlan_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result build() => _build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result _build() {
    _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result _$result;
    try {
      _$result = _$v ??
          new _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result',
                  'G__typename'),
              id: id,
              userId: userId,
              price: price,
              currency: currency,
              userType: userType,
              startDate: startDate,
              endDate: endDate,
              serviceFee: serviceFee,
              duration: duration,
              servicePlanId: servicePlanId,
              servicePlanName: servicePlanName,
              serviceDescription: serviceDescription,
              serviceAIFeature: serviceAIFeature,
              paymentType: paymentType,
              servicePlanStatus: servicePlanStatus,
              paymentState: paymentState,
              features: _features?.build(),
              PurchaserData: _PurchaserData?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        _features?.build();
        _$failedField = 'PurchaserData';
        _PurchaserData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
    extends GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features {
  @override
  final String G__typename;
  @override
  final double? serviceFee;
  @override
  final bool? serviceAIFeature;

  factory _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features(
          [void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder)?
              updates]) =>
      (new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder()
            ..update(updates))
          ._build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features._(
      {required this.G__typename, this.serviceFee, this.serviceAIFeature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features',
        'G__typename');
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features rebuild(
          void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder
      toBuilder() =>
          new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features &&
        G__typename == other.G__typename &&
        serviceFee == other.serviceFee &&
        serviceAIFeature == other.serviceAIFeature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, serviceFee.hashCode);
    _$hash = $jc(_$hash, serviceAIFeature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features')
          ..add('G__typename', G__typename)
          ..add('serviceFee', serviceFee)
          ..add('serviceAIFeature', serviceAIFeature))
        .toString();
  }
}

class GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder
    implements
        Builder<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features,
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder> {
  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _serviceFee;
  double? get serviceFee => _$this._serviceFee;
  set serviceFee(double? serviceFee) => _$this._serviceFee = serviceFee;

  bool? _serviceAIFeature;
  bool? get serviceAIFeature => _$this._serviceAIFeature;
  set serviceAIFeature(bool? serviceAIFeature) =>
      _$this._serviceAIFeature = serviceAIFeature;

  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder() {
    GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
        ._initializeBuilder(this);
  }

  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _serviceFee = $v.serviceFee;
      _serviceAIFeature = $v.serviceAIFeature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features;
  }

  @override
  void update(
      void Function(
              GgetPurchaseServicePlanData_getPurchaseServicePlan_result_featuresBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features build() =>
      _build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
      _build() {
    final _$result = _$v ??
        new _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_features',
                'G__typename'),
            serviceFee: serviceFee,
            serviceAIFeature: serviceAIFeature);
    replace(_$result);
    return _$result;
  }
}

class _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
    extends GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData {
  @override
  final String G__typename;
  @override
  final String? createdAt;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData(
          [void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder)?
              updates]) =>
      (new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder()
            ..update(updates))
          ._build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData._(
      {required this.G__typename,
      this.createdAt,
      this.firstName,
      this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData',
        'G__typename');
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData rebuild(
          void Function(
                  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder
      toBuilder() =>
          new GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData &&
        G__typename == other.G__typename &&
        createdAt == other.createdAt &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData')
          ..add('G__typename', G__typename)
          ..add('createdAt', createdAt)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder
    implements
        Builder<
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData,
            GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder> {
  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder() {
    GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
        ._initializeBuilder(this);
  }

  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createdAt = $v.createdAt;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData;
  }

  @override
  void update(
      void Function(
              GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
      build() => _build();

  _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
      _build() {
    final _$result = _$v ??
        new _$GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPurchaseServicePlanData_getPurchaseServicePlan_result_PurchaserData',
                'G__typename'),
            createdAt: createdAt,
            firstName: firstName,
            lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
