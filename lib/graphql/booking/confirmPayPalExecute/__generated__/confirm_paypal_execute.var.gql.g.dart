// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_paypal_execute.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GconfirmPayPalExecuteVars> _$gconfirmPayPalExecuteVarsSerializer =
    new _$GconfirmPayPalExecuteVarsSerializer();

class _$GconfirmPayPalExecuteVarsSerializer
    implements StructuredSerializer<GconfirmPayPalExecuteVars> {
  @override
  final Iterable<Type> types = const [
    GconfirmPayPalExecuteVars,
    _$GconfirmPayPalExecuteVars
  ];
  @override
  final String wireName = 'GconfirmPayPalExecuteVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmPayPalExecuteVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'paymentId',
      serializers.serialize(object.paymentId,
          specifiedType: const FullType(String)),
      'payerId',
      serializers.serialize(object.payerId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isServicePlan;
    if (value != null) {
      result
        ..add('isServicePlan')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GconfirmPayPalExecuteVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmPayPalExecuteVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'paymentId':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'payerId':
          result.payerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isServicePlan':
          result.isServicePlan = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmPayPalExecuteVars extends GconfirmPayPalExecuteVars {
  @override
  final String paymentId;
  @override
  final String payerId;
  @override
  final bool? isServicePlan;
  @override
  final String? userType;

  factory _$GconfirmPayPalExecuteVars(
          [void Function(GconfirmPayPalExecuteVarsBuilder)? updates]) =>
      (new GconfirmPayPalExecuteVarsBuilder()..update(updates))._build();

  _$GconfirmPayPalExecuteVars._(
      {required this.paymentId,
      required this.payerId,
      this.isServicePlan,
      this.userType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        paymentId, r'GconfirmPayPalExecuteVars', 'paymentId');
    BuiltValueNullFieldError.checkNotNull(
        payerId, r'GconfirmPayPalExecuteVars', 'payerId');
  }

  @override
  GconfirmPayPalExecuteVars rebuild(
          void Function(GconfirmPayPalExecuteVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPayPalExecuteVarsBuilder toBuilder() =>
      new GconfirmPayPalExecuteVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmPayPalExecuteVars &&
        paymentId == other.paymentId &&
        payerId == other.payerId &&
        isServicePlan == other.isServicePlan &&
        userType == other.userType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentId.hashCode);
    _$hash = $jc(_$hash, payerId.hashCode);
    _$hash = $jc(_$hash, isServicePlan.hashCode);
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmPayPalExecuteVars')
          ..add('paymentId', paymentId)
          ..add('payerId', payerId)
          ..add('isServicePlan', isServicePlan)
          ..add('userType', userType))
        .toString();
  }
}

class GconfirmPayPalExecuteVarsBuilder
    implements
        Builder<GconfirmPayPalExecuteVars, GconfirmPayPalExecuteVarsBuilder> {
  _$GconfirmPayPalExecuteVars? _$v;

  String? _paymentId;
  String? get paymentId => _$this._paymentId;
  set paymentId(String? paymentId) => _$this._paymentId = paymentId;

  String? _payerId;
  String? get payerId => _$this._payerId;
  set payerId(String? payerId) => _$this._payerId = payerId;

  bool? _isServicePlan;
  bool? get isServicePlan => _$this._isServicePlan;
  set isServicePlan(bool? isServicePlan) =>
      _$this._isServicePlan = isServicePlan;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  GconfirmPayPalExecuteVarsBuilder();

  GconfirmPayPalExecuteVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentId = $v.paymentId;
      _payerId = $v.payerId;
      _isServicePlan = $v.isServicePlan;
      _userType = $v.userType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmPayPalExecuteVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPayPalExecuteVars;
  }

  @override
  void update(void Function(GconfirmPayPalExecuteVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPayPalExecuteVars build() => _build();

  _$GconfirmPayPalExecuteVars _build() {
    final _$result = _$v ??
        new _$GconfirmPayPalExecuteVars._(
            paymentId: BuiltValueNullFieldError.checkNotNull(
                paymentId, r'GconfirmPayPalExecuteVars', 'paymentId'),
            payerId: BuiltValueNullFieldError.checkNotNull(
                payerId, r'GconfirmPayPalExecuteVars', 'payerId'),
            isServicePlan: isServicePlan,
            userType: userType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
