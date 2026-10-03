// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmServicePlan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GconfirmPurchaseServicePlanData>
    _$gconfirmPurchaseServicePlanDataSerializer =
    new _$GconfirmPurchaseServicePlanDataSerializer();
Serializer<GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan>
    _$gconfirmPurchaseServicePlanDataConfirmPurchaseServicePlanSerializer =
    new _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanSerializer();

class _$GconfirmPurchaseServicePlanDataSerializer
    implements StructuredSerializer<GconfirmPurchaseServicePlanData> {
  @override
  final Iterable<Type> types = const [
    GconfirmPurchaseServicePlanData,
    _$GconfirmPurchaseServicePlanData
  ];
  @override
  final String wireName = 'GconfirmPurchaseServicePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconfirmPurchaseServicePlanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.confirmPurchaseServicePlan;
    if (value != null) {
      result
        ..add('confirmPurchaseServicePlan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan)));
    }
    return result;
  }

  @override
  GconfirmPurchaseServicePlanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconfirmPurchaseServicePlanDataBuilder();

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
        case 'confirmPurchaseServicePlan':
          result.confirmPurchaseServicePlan.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan))!
              as GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan);
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanSerializer
    implements
        StructuredSerializer<
            GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan> {
  @override
  final Iterable<Type> types = const [
    GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan,
    _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan
  ];
  @override
  final String wireName =
      'GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.requireAdditionalAction;
    if (value != null) {
      result
        ..add('requireAdditionalAction')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.paymentIntentSecret;
    if (value != null) {
      result
        ..add('paymentIntentSecret')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.redirectUrl;
    if (value != null) {
      result
        ..add('redirectUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'requireAdditionalAction':
          result.requireAdditionalAction = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'paymentIntentSecret':
          result.paymentIntentSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'redirectUrl':
          result.redirectUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GconfirmPurchaseServicePlanData
    extends GconfirmPurchaseServicePlanData {
  @override
  final String G__typename;
  @override
  final GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan?
      confirmPurchaseServicePlan;

  factory _$GconfirmPurchaseServicePlanData(
          [void Function(GconfirmPurchaseServicePlanDataBuilder)? updates]) =>
      (new GconfirmPurchaseServicePlanDataBuilder()..update(updates))._build();

  _$GconfirmPurchaseServicePlanData._(
      {required this.G__typename, this.confirmPurchaseServicePlan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GconfirmPurchaseServicePlanData', 'G__typename');
  }

  @override
  GconfirmPurchaseServicePlanData rebuild(
          void Function(GconfirmPurchaseServicePlanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPurchaseServicePlanDataBuilder toBuilder() =>
      new GconfirmPurchaseServicePlanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconfirmPurchaseServicePlanData &&
        G__typename == other.G__typename &&
        confirmPurchaseServicePlan == other.confirmPurchaseServicePlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, confirmPurchaseServicePlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GconfirmPurchaseServicePlanData')
          ..add('G__typename', G__typename)
          ..add('confirmPurchaseServicePlan', confirmPurchaseServicePlan))
        .toString();
  }
}

class GconfirmPurchaseServicePlanDataBuilder
    implements
        Builder<GconfirmPurchaseServicePlanData,
            GconfirmPurchaseServicePlanDataBuilder> {
  _$GconfirmPurchaseServicePlanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder?
      _confirmPurchaseServicePlan;
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder
      get confirmPurchaseServicePlan => _$this._confirmPurchaseServicePlan ??=
          new GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder();
  set confirmPurchaseServicePlan(
          GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder?
              confirmPurchaseServicePlan) =>
      _$this._confirmPurchaseServicePlan = confirmPurchaseServicePlan;

  GconfirmPurchaseServicePlanDataBuilder() {
    GconfirmPurchaseServicePlanData._initializeBuilder(this);
  }

  GconfirmPurchaseServicePlanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _confirmPurchaseServicePlan = $v.confirmPurchaseServicePlan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GconfirmPurchaseServicePlanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPurchaseServicePlanData;
  }

  @override
  void update(void Function(GconfirmPurchaseServicePlanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPurchaseServicePlanData build() => _build();

  _$GconfirmPurchaseServicePlanData _build() {
    _$GconfirmPurchaseServicePlanData _$result;
    try {
      _$result = _$v ??
          new _$GconfirmPurchaseServicePlanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GconfirmPurchaseServicePlanData', 'G__typename'),
              confirmPurchaseServicePlan: _confirmPurchaseServicePlan?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'confirmPurchaseServicePlan';
        _confirmPurchaseServicePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GconfirmPurchaseServicePlanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan
    extends GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final int? status;
  @override
  final String? errorMessage;
  @override
  final bool? requireAdditionalAction;
  @override
  final String? paymentIntentSecret;
  @override
  final String? redirectUrl;

  factory _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan(
          [void Function(
                  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder)?
              updates]) =>
      (new GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder()
            ..update(updates))
          ._build();

  _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan._(
      {required this.G__typename,
      this.count,
      this.status,
      this.errorMessage,
      this.requireAdditionalAction,
      this.paymentIntentSecret,
      this.redirectUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan',
        'G__typename');
  }

  @override
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan rebuild(
          void Function(
                  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder
      toBuilder() =>
          new GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan &&
        G__typename == other.G__typename &&
        count == other.count &&
        status == other.status &&
        errorMessage == other.errorMessage &&
        requireAdditionalAction == other.requireAdditionalAction &&
        paymentIntentSecret == other.paymentIntentSecret &&
        redirectUrl == other.redirectUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, requireAdditionalAction.hashCode);
    _$hash = $jc(_$hash, paymentIntentSecret.hashCode);
    _$hash = $jc(_$hash, redirectUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('status', status)
          ..add('errorMessage', errorMessage)
          ..add('requireAdditionalAction', requireAdditionalAction)
          ..add('paymentIntentSecret', paymentIntentSecret)
          ..add('redirectUrl', redirectUrl))
        .toString();
  }
}

class GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder
    implements
        Builder<GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan,
            GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder> {
  _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  bool? _requireAdditionalAction;
  bool? get requireAdditionalAction => _$this._requireAdditionalAction;
  set requireAdditionalAction(bool? requireAdditionalAction) =>
      _$this._requireAdditionalAction = requireAdditionalAction;

  String? _paymentIntentSecret;
  String? get paymentIntentSecret => _$this._paymentIntentSecret;
  set paymentIntentSecret(String? paymentIntentSecret) =>
      _$this._paymentIntentSecret = paymentIntentSecret;

  String? _redirectUrl;
  String? get redirectUrl => _$this._redirectUrl;
  set redirectUrl(String? redirectUrl) => _$this._redirectUrl = redirectUrl;

  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder() {
    GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan
        ._initializeBuilder(this);
  }

  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _requireAdditionalAction = $v.requireAdditionalAction;
      _paymentIntentSecret = $v.paymentIntentSecret;
      _redirectUrl = $v.redirectUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan;
  }

  @override
  void update(
      void Function(
              GconfirmPurchaseServicePlanData_confirmPurchaseServicePlanBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan build() =>
      _build();

  _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan _build() {
    final _$result = _$v ??
        new _$GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GconfirmPurchaseServicePlanData_confirmPurchaseServicePlan',
                'G__typename'),
            count: count,
            status: status,
            errorMessage: errorMessage,
            requireAdditionalAction: requireAdditionalAction,
            paymentIntentSecret: paymentIntentSecret,
            redirectUrl: redirectUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
