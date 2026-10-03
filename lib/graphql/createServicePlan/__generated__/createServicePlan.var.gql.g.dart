// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createServicePlan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePurchaseServicePlanVars>
    _$gCreatePurchaseServicePlanVarsSerializer =
    new _$GCreatePurchaseServicePlanVarsSerializer();

class _$GCreatePurchaseServicePlanVarsSerializer
    implements StructuredSerializer<GCreatePurchaseServicePlanVars> {
  @override
  final Iterable<Type> types = const [
    GCreatePurchaseServicePlanVars,
    _$GCreatePurchaseServicePlanVars
  ];
  @override
  final String wireName = 'GCreatePurchaseServicePlanVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePurchaseServicePlanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'servicePlanId',
      serializers.serialize(object.servicePlanId,
          specifiedType: const FullType(int)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.paymentType;
    if (value != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cardToken;
    if (value != null) {
      result
        ..add('cardToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentCurrency;
    if (value != null) {
      result
        ..add('paymentCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreatePurchaseServicePlanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePurchaseServicePlanVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'servicePlanId':
          result.servicePlanId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cardToken':
          result.cardToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paymentCurrency':
          result.paymentCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePurchaseServicePlanVars extends GCreatePurchaseServicePlanVars {
  @override
  final int servicePlanId;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int? paymentType;
  @override
  final String? cardToken;
  @override
  final String? paymentCurrency;

  factory _$GCreatePurchaseServicePlanVars(
          [void Function(GCreatePurchaseServicePlanVarsBuilder)? updates]) =>
      (new GCreatePurchaseServicePlanVarsBuilder()..update(updates))._build();

  _$GCreatePurchaseServicePlanVars._(
      {required this.servicePlanId,
      required this.startDate,
      required this.endDate,
      this.paymentType,
      this.cardToken,
      this.paymentCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        servicePlanId, r'GCreatePurchaseServicePlanVars', 'servicePlanId');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GCreatePurchaseServicePlanVars', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'GCreatePurchaseServicePlanVars', 'endDate');
  }

  @override
  GCreatePurchaseServicePlanVars rebuild(
          void Function(GCreatePurchaseServicePlanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePurchaseServicePlanVarsBuilder toBuilder() =>
      new GCreatePurchaseServicePlanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePurchaseServicePlanVars &&
        servicePlanId == other.servicePlanId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        paymentType == other.paymentType &&
        cardToken == other.cardToken &&
        paymentCurrency == other.paymentCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, servicePlanId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, paymentType.hashCode);
    _$hash = $jc(_$hash, cardToken.hashCode);
    _$hash = $jc(_$hash, paymentCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePurchaseServicePlanVars')
          ..add('servicePlanId', servicePlanId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('paymentType', paymentType)
          ..add('cardToken', cardToken)
          ..add('paymentCurrency', paymentCurrency))
        .toString();
  }
}

class GCreatePurchaseServicePlanVarsBuilder
    implements
        Builder<GCreatePurchaseServicePlanVars,
            GCreatePurchaseServicePlanVarsBuilder> {
  _$GCreatePurchaseServicePlanVars? _$v;

  int? _servicePlanId;
  int? get servicePlanId => _$this._servicePlanId;
  set servicePlanId(int? servicePlanId) =>
      _$this._servicePlanId = servicePlanId;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  int? _paymentType;
  int? get paymentType => _$this._paymentType;
  set paymentType(int? paymentType) => _$this._paymentType = paymentType;

  String? _cardToken;
  String? get cardToken => _$this._cardToken;
  set cardToken(String? cardToken) => _$this._cardToken = cardToken;

  String? _paymentCurrency;
  String? get paymentCurrency => _$this._paymentCurrency;
  set paymentCurrency(String? paymentCurrency) =>
      _$this._paymentCurrency = paymentCurrency;

  GCreatePurchaseServicePlanVarsBuilder();

  GCreatePurchaseServicePlanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _servicePlanId = $v.servicePlanId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _paymentType = $v.paymentType;
      _cardToken = $v.cardToken;
      _paymentCurrency = $v.paymentCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePurchaseServicePlanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePurchaseServicePlanVars;
  }

  @override
  void update(void Function(GCreatePurchaseServicePlanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePurchaseServicePlanVars build() => _build();

  _$GCreatePurchaseServicePlanVars _build() {
    final _$result = _$v ??
        new _$GCreatePurchaseServicePlanVars._(
            servicePlanId: BuiltValueNullFieldError.checkNotNull(servicePlanId,
                r'GCreatePurchaseServicePlanVars', 'servicePlanId'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'GCreatePurchaseServicePlanVars', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'GCreatePurchaseServicePlanVars', 'endDate'),
            paymentType: paymentType,
            cardToken: cardToken,
            paymentCurrency: paymentCurrency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
