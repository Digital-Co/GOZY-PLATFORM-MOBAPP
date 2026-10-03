// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_billing_calculation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetBillingCalculationData> _$ggetBillingCalculationDataSerializer =
    new _$GgetBillingCalculationDataSerializer();
Serializer<GgetBillingCalculationData_getBillingCalculation>
    _$ggetBillingCalculationDataGetBillingCalculationSerializer =
    new _$GgetBillingCalculationData_getBillingCalculationSerializer();
Serializer<GgetBillingCalculationData_getBillingCalculation_result>
    _$ggetBillingCalculationDataGetBillingCalculationResultSerializer =
    new _$GgetBillingCalculationData_getBillingCalculation_resultSerializer();
Serializer<
        GgetBillingCalculationData_getBillingCalculation_result_specialPricing>
    _$ggetBillingCalculationDataGetBillingCalculationResultSpecialPricingSerializer =
    new _$GgetBillingCalculationData_getBillingCalculation_result_specialPricingSerializer();

class _$GgetBillingCalculationDataSerializer
    implements StructuredSerializer<GgetBillingCalculationData> {
  @override
  final Iterable<Type> types = const [
    GgetBillingCalculationData,
    _$GgetBillingCalculationData
  ];
  @override
  final String wireName = 'GgetBillingCalculationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetBillingCalculationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getBillingCalculation;
    if (value != null) {
      result
        ..add('getBillingCalculation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GgetBillingCalculationData_getBillingCalculation)));
    }
    return result;
  }

  @override
  GgetBillingCalculationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetBillingCalculationDataBuilder();

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
        case 'getBillingCalculation':
          result.getBillingCalculation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetBillingCalculationData_getBillingCalculation))!
              as GgetBillingCalculationData_getBillingCalculation);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetBillingCalculationData_getBillingCalculationSerializer
    implements
        StructuredSerializer<GgetBillingCalculationData_getBillingCalculation> {
  @override
  final Iterable<Type> types = const [
    GgetBillingCalculationData_getBillingCalculation,
    _$GgetBillingCalculationData_getBillingCalculation
  ];
  @override
  final String wireName = 'GgetBillingCalculationData_getBillingCalculation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetBillingCalculationData_getBillingCalculation object,
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
                GgetBillingCalculationData_getBillingCalculation_result)));
    }
    return result;
  }

  @override
  GgetBillingCalculationData_getBillingCalculation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetBillingCalculationData_getBillingCalculationBuilder();

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
                      GgetBillingCalculationData_getBillingCalculation_result))!
              as GgetBillingCalculationData_getBillingCalculation_result);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetBillingCalculationData_getBillingCalculation_resultSerializer
    implements
        StructuredSerializer<
            GgetBillingCalculationData_getBillingCalculation_result> {
  @override
  final Iterable<Type> types = const [
    GgetBillingCalculationData_getBillingCalculation_result,
    _$GgetBillingCalculationData_getBillingCalculation_result
  ];
  @override
  final String wireName =
      'GgetBillingCalculationData_getBillingCalculation_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetBillingCalculationData_getBillingCalculation_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.checkIn;
    if (value != null) {
      result
        ..add('checkIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkOut;
    if (value != null) {
      result
        ..add('checkOut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.basePrice;
    if (value != null) {
      result
        ..add('basePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('delivery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guests;
    if (value != null) {
      result
        ..add('guests')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.specialPricing;
    if (value != null) {
      result
        ..add('specialPricing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GgetBillingCalculationData_getBillingCalculation_result_specialPricing)
            ])));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guestServiceFeePercentage;
    if (value != null) {
      result
        ..add('guestServiceFeePercentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostServiceFeePercentage;
    if (value != null) {
      result
        ..add('hostServiceFeePercentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.weeklyDiscountPercentage;
    if (value != null) {
      result
        ..add('weeklyDiscountPercentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.monthlyDiscountPercentage;
    if (value != null) {
      result
        ..add('monthlyDiscountPercentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.guestServiceFee;
    if (value != null) {
      result
        ..add('guestServiceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.hostServiceFee;
    if (value != null) {
      result
        ..add('hostServiceFee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.promoDiscount;
    if (value != null) {
      result
        ..add('promoDiscount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.promoId;
    if (value != null) {
      result
        ..add('promoId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.promoCodeDescription;
    if (value != null) {
      result
        ..add('promoCodeDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discountLabel;
    if (value != null) {
      result
        ..add('discountLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.subtotal;
    if (value != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.availableStatus;
    if (value != null) {
      result
        ..add('availableStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.averagePrice;
    if (value != null) {
      result
        ..add('averagePrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.priceForDays;
    if (value != null) {
      result
        ..add('priceForDays')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isSpecialPriceAssigned;
    if (value != null) {
      result
        ..add('isSpecialPriceAssigned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.securityDeposit;
    if (value != null) {
      result
        ..add('securityDeposit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetBillingCalculationData_getBillingCalculation_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetBillingCalculationData_getBillingCalculation_resultBuilder();

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
        case 'checkIn':
          result.checkIn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkOut':
          result.checkOut = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'basePrice':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guests':
          result.guests = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'specialPricing':
          result.specialPricing.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GgetBillingCalculationData_getBillingCalculation_result_specialPricing)
              ]))! as BuiltList<Object?>);
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guestServiceFeePercentage':
          result.guestServiceFeePercentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostServiceFeePercentage':
          result.hostServiceFeePercentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'weeklyDiscountPercentage':
          result.weeklyDiscountPercentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'monthlyDiscountPercentage':
          result.monthlyDiscountPercentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'guestServiceFee':
          result.guestServiceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'hostServiceFee':
          result.hostServiceFee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'promoDiscount':
          result.promoDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'promoId':
          result.promoId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'promoCodeDescription':
          result.promoCodeDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'discountLabel':
          result.discountLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'availableStatus':
          result.availableStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'averagePrice':
          result.averagePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'priceForDays':
          result.priceForDays = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isSpecialPriceAssigned':
          result.isSpecialPriceAssigned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'securityDeposit':
          result.securityDeposit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetBillingCalculationData_getBillingCalculation_result_specialPricingSerializer
    implements
        StructuredSerializer<
            GgetBillingCalculationData_getBillingCalculation_result_specialPricing> {
  @override
  final Iterable<Type> types = const [
    GgetBillingCalculationData_getBillingCalculation_result_specialPricing,
    _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing
  ];
  @override
  final String wireName =
      'GgetBillingCalculationData_getBillingCalculation_result_specialPricing';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetBillingCalculationData_getBillingCalculation_result_specialPricing
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.blockedDates;
    if (value != null) {
      result
        ..add('blockedDates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSpecialPrice;
    if (value != null) {
      result
        ..add('isSpecialPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GgetBillingCalculationData_getBillingCalculation_result_specialPricing
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'blockedDates':
          result.blockedDates = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isSpecialPrice':
          result.isSpecialPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetBillingCalculationData extends GgetBillingCalculationData {
  @override
  final String G__typename;
  @override
  final GgetBillingCalculationData_getBillingCalculation? getBillingCalculation;

  factory _$GgetBillingCalculationData(
          [void Function(GgetBillingCalculationDataBuilder)? updates]) =>
      (new GgetBillingCalculationDataBuilder()..update(updates))._build();

  _$GgetBillingCalculationData._(
      {required this.G__typename, this.getBillingCalculation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetBillingCalculationData', 'G__typename');
  }

  @override
  GgetBillingCalculationData rebuild(
          void Function(GgetBillingCalculationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetBillingCalculationDataBuilder toBuilder() =>
      new GgetBillingCalculationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetBillingCalculationData &&
        G__typename == other.G__typename &&
        getBillingCalculation == other.getBillingCalculation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getBillingCalculation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetBillingCalculationData')
          ..add('G__typename', G__typename)
          ..add('getBillingCalculation', getBillingCalculation))
        .toString();
  }
}

class GgetBillingCalculationDataBuilder
    implements
        Builder<GgetBillingCalculationData, GgetBillingCalculationDataBuilder> {
  _$GgetBillingCalculationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetBillingCalculationData_getBillingCalculationBuilder?
      _getBillingCalculation;
  GgetBillingCalculationData_getBillingCalculationBuilder
      get getBillingCalculation => _$this._getBillingCalculation ??=
          new GgetBillingCalculationData_getBillingCalculationBuilder();
  set getBillingCalculation(
          GgetBillingCalculationData_getBillingCalculationBuilder?
              getBillingCalculation) =>
      _$this._getBillingCalculation = getBillingCalculation;

  GgetBillingCalculationDataBuilder() {
    GgetBillingCalculationData._initializeBuilder(this);
  }

  GgetBillingCalculationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getBillingCalculation = $v.getBillingCalculation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetBillingCalculationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetBillingCalculationData;
  }

  @override
  void update(void Function(GgetBillingCalculationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetBillingCalculationData build() => _build();

  _$GgetBillingCalculationData _build() {
    _$GgetBillingCalculationData _$result;
    try {
      _$result = _$v ??
          new _$GgetBillingCalculationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetBillingCalculationData', 'G__typename'),
              getBillingCalculation: _getBillingCalculation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getBillingCalculation';
        _getBillingCalculation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetBillingCalculationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetBillingCalculationData_getBillingCalculation
    extends GgetBillingCalculationData_getBillingCalculation {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final GgetBillingCalculationData_getBillingCalculation_result? result;

  factory _$GgetBillingCalculationData_getBillingCalculation(
          [void Function(
                  GgetBillingCalculationData_getBillingCalculationBuilder)?
              updates]) =>
      (new GgetBillingCalculationData_getBillingCalculationBuilder()
            ..update(updates))
          ._build();

  _$GgetBillingCalculationData_getBillingCalculation._(
      {required this.G__typename, this.status, this.errorMessage, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetBillingCalculationData_getBillingCalculation', 'G__typename');
  }

  @override
  GgetBillingCalculationData_getBillingCalculation rebuild(
          void Function(GgetBillingCalculationData_getBillingCalculationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetBillingCalculationData_getBillingCalculationBuilder toBuilder() =>
      new GgetBillingCalculationData_getBillingCalculationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetBillingCalculationData_getBillingCalculation &&
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
            r'GgetBillingCalculationData_getBillingCalculation')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('result', result))
        .toString();
  }
}

class GgetBillingCalculationData_getBillingCalculationBuilder
    implements
        Builder<GgetBillingCalculationData_getBillingCalculation,
            GgetBillingCalculationData_getBillingCalculationBuilder> {
  _$GgetBillingCalculationData_getBillingCalculation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GgetBillingCalculationData_getBillingCalculation_resultBuilder? _result;
  GgetBillingCalculationData_getBillingCalculation_resultBuilder get result =>
      _$this._result ??=
          new GgetBillingCalculationData_getBillingCalculation_resultBuilder();
  set result(
          GgetBillingCalculationData_getBillingCalculation_resultBuilder?
              result) =>
      _$this._result = result;

  GgetBillingCalculationData_getBillingCalculationBuilder() {
    GgetBillingCalculationData_getBillingCalculation._initializeBuilder(this);
  }

  GgetBillingCalculationData_getBillingCalculationBuilder get _$this {
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
  void replace(GgetBillingCalculationData_getBillingCalculation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetBillingCalculationData_getBillingCalculation;
  }

  @override
  void update(
      void Function(GgetBillingCalculationData_getBillingCalculationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetBillingCalculationData_getBillingCalculation build() => _build();

  _$GgetBillingCalculationData_getBillingCalculation _build() {
    _$GgetBillingCalculationData_getBillingCalculation _$result;
    try {
      _$result = _$v ??
          new _$GgetBillingCalculationData_getBillingCalculation._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetBillingCalculationData_getBillingCalculation',
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
            r'GgetBillingCalculationData_getBillingCalculation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetBillingCalculationData_getBillingCalculation_result
    extends GgetBillingCalculationData_getBillingCalculation_result {
  @override
  final String G__typename;
  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final double? startTime;
  @override
  final double? endTime;
  @override
  final int? days;
  @override
  final double? basePrice;
  @override
  final double? delivery;
  @override
  final int? guests;
  @override
  final BuiltList<
          GgetBillingCalculationData_getBillingCalculation_result_specialPricing?>?
      specialPricing;
  @override
  final String? currency;
  @override
  final double? guestServiceFeePercentage;
  @override
  final double? hostServiceFeePercentage;
  @override
  final double? weeklyDiscountPercentage;
  @override
  final double? monthlyDiscountPercentage;
  @override
  final double? guestServiceFee;
  @override
  final double? hostServiceFee;
  @override
  final double? promoDiscount;
  @override
  final int? promoId;
  @override
  final String? promoCodeDescription;
  @override
  final String? discountLabel;
  @override
  final double? discount;
  @override
  final double? subtotal;
  @override
  final double? total;
  @override
  final String? availableStatus;
  @override
  final double? averagePrice;
  @override
  final double? priceForDays;
  @override
  final bool? isSpecialPriceAssigned;
  @override
  final double? securityDeposit;

  factory _$GgetBillingCalculationData_getBillingCalculation_result(
          [void Function(
                  GgetBillingCalculationData_getBillingCalculation_resultBuilder)?
              updates]) =>
      (new GgetBillingCalculationData_getBillingCalculation_resultBuilder()
            ..update(updates))
          ._build();

  _$GgetBillingCalculationData_getBillingCalculation_result._(
      {required this.G__typename,
      this.checkIn,
      this.checkOut,
      this.startTime,
      this.endTime,
      this.days,
      this.basePrice,
      this.delivery,
      this.guests,
      this.specialPricing,
      this.currency,
      this.guestServiceFeePercentage,
      this.hostServiceFeePercentage,
      this.weeklyDiscountPercentage,
      this.monthlyDiscountPercentage,
      this.guestServiceFee,
      this.hostServiceFee,
      this.promoDiscount,
      this.promoId,
      this.promoCodeDescription,
      this.discountLabel,
      this.discount,
      this.subtotal,
      this.total,
      this.availableStatus,
      this.averagePrice,
      this.priceForDays,
      this.isSpecialPriceAssigned,
      this.securityDeposit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetBillingCalculationData_getBillingCalculation_result',
        'G__typename');
  }

  @override
  GgetBillingCalculationData_getBillingCalculation_result rebuild(
          void Function(
                  GgetBillingCalculationData_getBillingCalculation_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetBillingCalculationData_getBillingCalculation_resultBuilder toBuilder() =>
      new GgetBillingCalculationData_getBillingCalculation_resultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetBillingCalculationData_getBillingCalculation_result &&
        G__typename == other.G__typename &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        days == other.days &&
        basePrice == other.basePrice &&
        delivery == other.delivery &&
        guests == other.guests &&
        specialPricing == other.specialPricing &&
        currency == other.currency &&
        guestServiceFeePercentage == other.guestServiceFeePercentage &&
        hostServiceFeePercentage == other.hostServiceFeePercentage &&
        weeklyDiscountPercentage == other.weeklyDiscountPercentage &&
        monthlyDiscountPercentage == other.monthlyDiscountPercentage &&
        guestServiceFee == other.guestServiceFee &&
        hostServiceFee == other.hostServiceFee &&
        promoDiscount == other.promoDiscount &&
        promoId == other.promoId &&
        promoCodeDescription == other.promoCodeDescription &&
        discountLabel == other.discountLabel &&
        discount == other.discount &&
        subtotal == other.subtotal &&
        total == other.total &&
        availableStatus == other.availableStatus &&
        averagePrice == other.averagePrice &&
        priceForDays == other.priceForDays &&
        isSpecialPriceAssigned == other.isSpecialPriceAssigned &&
        securityDeposit == other.securityDeposit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, checkIn.hashCode);
    _$hash = $jc(_$hash, checkOut.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, delivery.hashCode);
    _$hash = $jc(_$hash, guests.hashCode);
    _$hash = $jc(_$hash, specialPricing.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, guestServiceFeePercentage.hashCode);
    _$hash = $jc(_$hash, hostServiceFeePercentage.hashCode);
    _$hash = $jc(_$hash, weeklyDiscountPercentage.hashCode);
    _$hash = $jc(_$hash, monthlyDiscountPercentage.hashCode);
    _$hash = $jc(_$hash, guestServiceFee.hashCode);
    _$hash = $jc(_$hash, hostServiceFee.hashCode);
    _$hash = $jc(_$hash, promoDiscount.hashCode);
    _$hash = $jc(_$hash, promoId.hashCode);
    _$hash = $jc(_$hash, promoCodeDescription.hashCode);
    _$hash = $jc(_$hash, discountLabel.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, availableStatus.hashCode);
    _$hash = $jc(_$hash, averagePrice.hashCode);
    _$hash = $jc(_$hash, priceForDays.hashCode);
    _$hash = $jc(_$hash, isSpecialPriceAssigned.hashCode);
    _$hash = $jc(_$hash, securityDeposit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetBillingCalculationData_getBillingCalculation_result')
          ..add('G__typename', G__typename)
          ..add('checkIn', checkIn)
          ..add('checkOut', checkOut)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('days', days)
          ..add('basePrice', basePrice)
          ..add('delivery', delivery)
          ..add('guests', guests)
          ..add('specialPricing', specialPricing)
          ..add('currency', currency)
          ..add('guestServiceFeePercentage', guestServiceFeePercentage)
          ..add('hostServiceFeePercentage', hostServiceFeePercentage)
          ..add('weeklyDiscountPercentage', weeklyDiscountPercentage)
          ..add('monthlyDiscountPercentage', monthlyDiscountPercentage)
          ..add('guestServiceFee', guestServiceFee)
          ..add('hostServiceFee', hostServiceFee)
          ..add('promoDiscount', promoDiscount)
          ..add('promoId', promoId)
          ..add('promoCodeDescription', promoCodeDescription)
          ..add('discountLabel', discountLabel)
          ..add('discount', discount)
          ..add('subtotal', subtotal)
          ..add('total', total)
          ..add('availableStatus', availableStatus)
          ..add('averagePrice', averagePrice)
          ..add('priceForDays', priceForDays)
          ..add('isSpecialPriceAssigned', isSpecialPriceAssigned)
          ..add('securityDeposit', securityDeposit))
        .toString();
  }
}

class GgetBillingCalculationData_getBillingCalculation_resultBuilder
    implements
        Builder<GgetBillingCalculationData_getBillingCalculation_result,
            GgetBillingCalculationData_getBillingCalculation_resultBuilder> {
  _$GgetBillingCalculationData_getBillingCalculation_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _checkIn;
  String? get checkIn => _$this._checkIn;
  set checkIn(String? checkIn) => _$this._checkIn = checkIn;

  String? _checkOut;
  String? get checkOut => _$this._checkOut;
  set checkOut(String? checkOut) => _$this._checkOut = checkOut;

  double? _startTime;
  double? get startTime => _$this._startTime;
  set startTime(double? startTime) => _$this._startTime = startTime;

  double? _endTime;
  double? get endTime => _$this._endTime;
  set endTime(double? endTime) => _$this._endTime = endTime;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  double? _basePrice;
  double? get basePrice => _$this._basePrice;
  set basePrice(double? basePrice) => _$this._basePrice = basePrice;

  double? _delivery;
  double? get delivery => _$this._delivery;
  set delivery(double? delivery) => _$this._delivery = delivery;

  int? _guests;
  int? get guests => _$this._guests;
  set guests(int? guests) => _$this._guests = guests;

  ListBuilder<
          GgetBillingCalculationData_getBillingCalculation_result_specialPricing?>?
      _specialPricing;
  ListBuilder<
          GgetBillingCalculationData_getBillingCalculation_result_specialPricing?>
      get specialPricing => _$this._specialPricing ??= new ListBuilder<
          GgetBillingCalculationData_getBillingCalculation_result_specialPricing?>();
  set specialPricing(
          ListBuilder<
                  GgetBillingCalculationData_getBillingCalculation_result_specialPricing?>?
              specialPricing) =>
      _$this._specialPricing = specialPricing;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  double? _guestServiceFeePercentage;
  double? get guestServiceFeePercentage => _$this._guestServiceFeePercentage;
  set guestServiceFeePercentage(double? guestServiceFeePercentage) =>
      _$this._guestServiceFeePercentage = guestServiceFeePercentage;

  double? _hostServiceFeePercentage;
  double? get hostServiceFeePercentage => _$this._hostServiceFeePercentage;
  set hostServiceFeePercentage(double? hostServiceFeePercentage) =>
      _$this._hostServiceFeePercentage = hostServiceFeePercentage;

  double? _weeklyDiscountPercentage;
  double? get weeklyDiscountPercentage => _$this._weeklyDiscountPercentage;
  set weeklyDiscountPercentage(double? weeklyDiscountPercentage) =>
      _$this._weeklyDiscountPercentage = weeklyDiscountPercentage;

  double? _monthlyDiscountPercentage;
  double? get monthlyDiscountPercentage => _$this._monthlyDiscountPercentage;
  set monthlyDiscountPercentage(double? monthlyDiscountPercentage) =>
      _$this._monthlyDiscountPercentage = monthlyDiscountPercentage;

  double? _guestServiceFee;
  double? get guestServiceFee => _$this._guestServiceFee;
  set guestServiceFee(double? guestServiceFee) =>
      _$this._guestServiceFee = guestServiceFee;

  double? _hostServiceFee;
  double? get hostServiceFee => _$this._hostServiceFee;
  set hostServiceFee(double? hostServiceFee) =>
      _$this._hostServiceFee = hostServiceFee;

  double? _promoDiscount;
  double? get promoDiscount => _$this._promoDiscount;
  set promoDiscount(double? promoDiscount) =>
      _$this._promoDiscount = promoDiscount;

  int? _promoId;
  int? get promoId => _$this._promoId;
  set promoId(int? promoId) => _$this._promoId = promoId;

  String? _promoCodeDescription;
  String? get promoCodeDescription => _$this._promoCodeDescription;
  set promoCodeDescription(String? promoCodeDescription) =>
      _$this._promoCodeDescription = promoCodeDescription;

  String? _discountLabel;
  String? get discountLabel => _$this._discountLabel;
  set discountLabel(String? discountLabel) =>
      _$this._discountLabel = discountLabel;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  String? _availableStatus;
  String? get availableStatus => _$this._availableStatus;
  set availableStatus(String? availableStatus) =>
      _$this._availableStatus = availableStatus;

  double? _averagePrice;
  double? get averagePrice => _$this._averagePrice;
  set averagePrice(double? averagePrice) => _$this._averagePrice = averagePrice;

  double? _priceForDays;
  double? get priceForDays => _$this._priceForDays;
  set priceForDays(double? priceForDays) => _$this._priceForDays = priceForDays;

  bool? _isSpecialPriceAssigned;
  bool? get isSpecialPriceAssigned => _$this._isSpecialPriceAssigned;
  set isSpecialPriceAssigned(bool? isSpecialPriceAssigned) =>
      _$this._isSpecialPriceAssigned = isSpecialPriceAssigned;

  double? _securityDeposit;
  double? get securityDeposit => _$this._securityDeposit;
  set securityDeposit(double? securityDeposit) =>
      _$this._securityDeposit = securityDeposit;

  GgetBillingCalculationData_getBillingCalculation_resultBuilder() {
    GgetBillingCalculationData_getBillingCalculation_result._initializeBuilder(
        this);
  }

  GgetBillingCalculationData_getBillingCalculation_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _checkIn = $v.checkIn;
      _checkOut = $v.checkOut;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _days = $v.days;
      _basePrice = $v.basePrice;
      _delivery = $v.delivery;
      _guests = $v.guests;
      _specialPricing = $v.specialPricing?.toBuilder();
      _currency = $v.currency;
      _guestServiceFeePercentage = $v.guestServiceFeePercentage;
      _hostServiceFeePercentage = $v.hostServiceFeePercentage;
      _weeklyDiscountPercentage = $v.weeklyDiscountPercentage;
      _monthlyDiscountPercentage = $v.monthlyDiscountPercentage;
      _guestServiceFee = $v.guestServiceFee;
      _hostServiceFee = $v.hostServiceFee;
      _promoDiscount = $v.promoDiscount;
      _promoId = $v.promoId;
      _promoCodeDescription = $v.promoCodeDescription;
      _discountLabel = $v.discountLabel;
      _discount = $v.discount;
      _subtotal = $v.subtotal;
      _total = $v.total;
      _availableStatus = $v.availableStatus;
      _averagePrice = $v.averagePrice;
      _priceForDays = $v.priceForDays;
      _isSpecialPriceAssigned = $v.isSpecialPriceAssigned;
      _securityDeposit = $v.securityDeposit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetBillingCalculationData_getBillingCalculation_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetBillingCalculationData_getBillingCalculation_result;
  }

  @override
  void update(
      void Function(
              GgetBillingCalculationData_getBillingCalculation_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetBillingCalculationData_getBillingCalculation_result build() => _build();

  _$GgetBillingCalculationData_getBillingCalculation_result _build() {
    _$GgetBillingCalculationData_getBillingCalculation_result _$result;
    try {
      _$result = _$v ??
          new _$GgetBillingCalculationData_getBillingCalculation_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetBillingCalculationData_getBillingCalculation_result',
                  'G__typename'),
              checkIn: checkIn,
              checkOut: checkOut,
              startTime: startTime,
              endTime: endTime,
              days: days,
              basePrice: basePrice,
              delivery: delivery,
              guests: guests,
              specialPricing: _specialPricing?.build(),
              currency: currency,
              guestServiceFeePercentage: guestServiceFeePercentage,
              hostServiceFeePercentage: hostServiceFeePercentage,
              weeklyDiscountPercentage: weeklyDiscountPercentage,
              monthlyDiscountPercentage: monthlyDiscountPercentage,
              guestServiceFee: guestServiceFee,
              hostServiceFee: hostServiceFee,
              promoDiscount: promoDiscount,
              promoId: promoId,
              promoCodeDescription: promoCodeDescription,
              discountLabel: discountLabel,
              discount: discount,
              subtotal: subtotal,
              total: total,
              availableStatus: availableStatus,
              averagePrice: averagePrice,
              priceForDays: priceForDays,
              isSpecialPriceAssigned: isSpecialPriceAssigned,
              securityDeposit: securityDeposit);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'specialPricing';
        _specialPricing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetBillingCalculationData_getBillingCalculation_result',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing
    extends GgetBillingCalculationData_getBillingCalculation_result_specialPricing {
  @override
  final String? blockedDates;
  @override
  final double? isSpecialPrice;
  @override
  final String G__typename;

  factory _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing(
          [void Function(
                  GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder)?
              updates]) =>
      (new GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder()
            ..update(updates))
          ._build();

  _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing._(
      {this.blockedDates, this.isSpecialPrice, required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetBillingCalculationData_getBillingCalculation_result_specialPricing',
        'G__typename');
  }

  @override
  GgetBillingCalculationData_getBillingCalculation_result_specialPricing rebuild(
          void Function(
                  GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder
      toBuilder() =>
          new GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetBillingCalculationData_getBillingCalculation_result_specialPricing &&
        blockedDates == other.blockedDates &&
        isSpecialPrice == other.isSpecialPrice &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockedDates.hashCode);
    _$hash = $jc(_$hash, isSpecialPrice.hashCode);
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetBillingCalculationData_getBillingCalculation_result_specialPricing')
          ..add('blockedDates', blockedDates)
          ..add('isSpecialPrice', isSpecialPrice)
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder
    implements
        Builder<
            GgetBillingCalculationData_getBillingCalculation_result_specialPricing,
            GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder> {
  _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing? _$v;

  String? _blockedDates;
  String? get blockedDates => _$this._blockedDates;
  set blockedDates(String? blockedDates) => _$this._blockedDates = blockedDates;

  double? _isSpecialPrice;
  double? get isSpecialPrice => _$this._isSpecialPrice;
  set isSpecialPrice(double? isSpecialPrice) =>
      _$this._isSpecialPrice = isSpecialPrice;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder() {
    GgetBillingCalculationData_getBillingCalculation_result_specialPricing
        ._initializeBuilder(this);
  }

  GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockedDates = $v.blockedDates;
      _isSpecialPrice = $v.isSpecialPrice;
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetBillingCalculationData_getBillingCalculation_result_specialPricing
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing;
  }

  @override
  void update(
      void Function(
              GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetBillingCalculationData_getBillingCalculation_result_specialPricing
      build() => _build();

  _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing
      _build() {
    final _$result = _$v ??
        new _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing
            ._(
            blockedDates: blockedDates,
            isSpecialPrice: isSpecialPrice,
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetBillingCalculationData_getBillingCalculation_result_specialPricing',
                'G__typename'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
