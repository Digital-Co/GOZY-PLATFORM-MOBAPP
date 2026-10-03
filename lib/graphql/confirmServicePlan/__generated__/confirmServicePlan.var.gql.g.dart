// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmServicePlan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GconfirmPurchaseServicePlanVars>
    _$gconfirmPurchaseServicePlanVarsSerializer =
    new _$GconfirmPurchaseServicePlanVarsSerializer();

class _$GconfirmPurchaseServicePlanVarsSerializer
    implements StructuredSerializer<GconfirmPurchaseServicePlanVars> {
  @override
  final Iterable<Type> types = const [
    GconfirmPurchaseServicePlanVars,
    _$GconfirmPurchaseServicePlanVars
  ];
  @override
  final String wireName = 'GconfirmPurchaseServicePlanVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmPurchaseServicePlanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'servicePlanId',
      serializers.serialize(object.servicePlanId,
          specifiedType: const FullType(int)),
      'paymentIntentId',
      serializers.serialize(object.paymentIntentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GconfirmPurchaseServicePlanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmPurchaseServicePlanVarsBuilder();

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
        case 'paymentIntentId':
          result.paymentIntentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmPurchaseServicePlanVars
    extends GconfirmPurchaseServicePlanVars {
  @override
  final int servicePlanId;
  @override
  final String paymentIntentId;

  factory _$GconfirmPurchaseServicePlanVars(
          [void Function(GconfirmPurchaseServicePlanVarsBuilder)? updates]) =>
      (new GconfirmPurchaseServicePlanVarsBuilder()..update(updates))._build();

  _$GconfirmPurchaseServicePlanVars._(
      {required this.servicePlanId, required this.paymentIntentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        servicePlanId, r'GconfirmPurchaseServicePlanVars', 'servicePlanId');
    BuiltValueNullFieldError.checkNotNull(
        paymentIntentId, r'GconfirmPurchaseServicePlanVars', 'paymentIntentId');
  }

  @override
  GconfirmPurchaseServicePlanVars rebuild(
          void Function(GconfirmPurchaseServicePlanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPurchaseServicePlanVarsBuilder toBuilder() =>
      new GconfirmPurchaseServicePlanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmPurchaseServicePlanVars &&
        servicePlanId == other.servicePlanId &&
        paymentIntentId == other.paymentIntentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, servicePlanId.hashCode);
    _$hash = $jc(_$hash, paymentIntentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmPurchaseServicePlanVars')
          ..add('servicePlanId', servicePlanId)
          ..add('paymentIntentId', paymentIntentId))
        .toString();
  }
}

class GconfirmPurchaseServicePlanVarsBuilder
    implements
        Builder<GconfirmPurchaseServicePlanVars,
            GconfirmPurchaseServicePlanVarsBuilder> {
  _$GconfirmPurchaseServicePlanVars? _$v;

  int? _servicePlanId;
  int? get servicePlanId => _$this._servicePlanId;
  set servicePlanId(int? servicePlanId) =>
      _$this._servicePlanId = servicePlanId;

  String? _paymentIntentId;
  String? get paymentIntentId => _$this._paymentIntentId;
  set paymentIntentId(String? paymentIntentId) =>
      _$this._paymentIntentId = paymentIntentId;

  GconfirmPurchaseServicePlanVarsBuilder();

  GconfirmPurchaseServicePlanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _servicePlanId = $v.servicePlanId;
      _paymentIntentId = $v.paymentIntentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmPurchaseServicePlanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPurchaseServicePlanVars;
  }

  @override
  void update(void Function(GconfirmPurchaseServicePlanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPurchaseServicePlanVars build() => _build();

  _$GconfirmPurchaseServicePlanVars _build() {
    final _$result = _$v ??
        new _$GconfirmPurchaseServicePlanVars._(
            servicePlanId: BuiltValueNullFieldError.checkNotNull(servicePlanId,
                r'GconfirmPurchaseServicePlanVars', 'servicePlanId'),
            paymentIntentId: BuiltValueNullFieldError.checkNotNull(
                paymentIntentId,
                r'GconfirmPurchaseServicePlanVars',
                'paymentIntentId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
