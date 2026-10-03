// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createServicePlan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePurchaseServicePlanData>
    _$gCreatePurchaseServicePlanDataSerializer =
    new _$GCreatePurchaseServicePlanDataSerializer();
Serializer<GCreatePurchaseServicePlanData_createPurchaseServicePlan>
    _$gCreatePurchaseServicePlanDataCreatePurchaseServicePlanSerializer =
    new _$GCreatePurchaseServicePlanData_createPurchaseServicePlanSerializer();
Serializer<GCreatePurchaseServicePlanData_createPurchaseServicePlan_result>
    _$gCreatePurchaseServicePlanDataCreatePurchaseServicePlanResultSerializer =
    new _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultSerializer();

class _$GCreatePurchaseServicePlanDataSerializer
    implements StructuredSerializer<GCreatePurchaseServicePlanData> {
  @override
  final Iterable<Type> types = const [
    GCreatePurchaseServicePlanData,
    _$GCreatePurchaseServicePlanData
  ];
  @override
  final String wireName = 'GCreatePurchaseServicePlanData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePurchaseServicePlanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createPurchaseServicePlan;
    if (value != null) {
      result
        ..add('createPurchaseServicePlan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCreatePurchaseServicePlanData_createPurchaseServicePlan)));
    }
    return result;
  }

  @override
  GCreatePurchaseServicePlanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePurchaseServicePlanDataBuilder();

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
        case 'createPurchaseServicePlan':
          result.createPurchaseServicePlan.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      GCreatePurchaseServicePlanData_createPurchaseServicePlan))!
              as GCreatePurchaseServicePlanData_createPurchaseServicePlan);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePurchaseServicePlanData_createPurchaseServicePlanSerializer
    implements
        StructuredSerializer<
            GCreatePurchaseServicePlanData_createPurchaseServicePlan> {
  @override
  final Iterable<Type> types = const [
    GCreatePurchaseServicePlanData_createPurchaseServicePlan,
    _$GCreatePurchaseServicePlanData_createPurchaseServicePlan
  ];
  @override
  final String wireName =
      'GCreatePurchaseServicePlanData_createPurchaseServicePlan';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreatePurchaseServicePlanData_createPurchaseServicePlan object,
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
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCreatePurchaseServicePlanData_createPurchaseServicePlan_result)));
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
  GCreatePurchaseServicePlanData_createPurchaseServicePlan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder();

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
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCreatePurchaseServicePlanData_createPurchaseServicePlan_result))!
              as GCreatePurchaseServicePlanData_createPurchaseServicePlan_result);
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

class _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultSerializer
    implements
        StructuredSerializer<
            GCreatePurchaseServicePlanData_createPurchaseServicePlan_result> {
  @override
  final Iterable<Type> types = const [
    GCreatePurchaseServicePlanData_createPurchaseServicePlan_result,
    _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result
  ];
  @override
  final String wireName =
      'GCreatePurchaseServicePlanData_createPurchaseServicePlan_result';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCreatePurchaseServicePlanData_createPurchaseServicePlan_result object,
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
    return result;
  }

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCreatePurchaseServicePlanData extends GCreatePurchaseServicePlanData {
  @override
  final String G__typename;
  @override
  final GCreatePurchaseServicePlanData_createPurchaseServicePlan?
      createPurchaseServicePlan;

  factory _$GCreatePurchaseServicePlanData(
          [void Function(GCreatePurchaseServicePlanDataBuilder)? updates]) =>
      (new GCreatePurchaseServicePlanDataBuilder()..update(updates))._build();

  _$GCreatePurchaseServicePlanData._(
      {required this.G__typename, this.createPurchaseServicePlan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePurchaseServicePlanData', 'G__typename');
  }

  @override
  GCreatePurchaseServicePlanData rebuild(
          void Function(GCreatePurchaseServicePlanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePurchaseServicePlanDataBuilder toBuilder() =>
      new GCreatePurchaseServicePlanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePurchaseServicePlanData &&
        G__typename == other.G__typename &&
        createPurchaseServicePlan == other.createPurchaseServicePlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createPurchaseServicePlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePurchaseServicePlanData')
          ..add('G__typename', G__typename)
          ..add('createPurchaseServicePlan', createPurchaseServicePlan))
        .toString();
  }
}

class GCreatePurchaseServicePlanDataBuilder
    implements
        Builder<GCreatePurchaseServicePlanData,
            GCreatePurchaseServicePlanDataBuilder> {
  _$GCreatePurchaseServicePlanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder?
      _createPurchaseServicePlan;
  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder
      get createPurchaseServicePlan => _$this._createPurchaseServicePlan ??=
          new GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder();
  set createPurchaseServicePlan(
          GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder?
              createPurchaseServicePlan) =>
      _$this._createPurchaseServicePlan = createPurchaseServicePlan;

  GCreatePurchaseServicePlanDataBuilder() {
    GCreatePurchaseServicePlanData._initializeBuilder(this);
  }

  GCreatePurchaseServicePlanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createPurchaseServicePlan = $v.createPurchaseServicePlan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePurchaseServicePlanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePurchaseServicePlanData;
  }

  @override
  void update(void Function(GCreatePurchaseServicePlanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePurchaseServicePlanData build() => _build();

  _$GCreatePurchaseServicePlanData _build() {
    _$GCreatePurchaseServicePlanData _$result;
    try {
      _$result = _$v ??
          new _$GCreatePurchaseServicePlanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCreatePurchaseServicePlanData', 'G__typename'),
              createPurchaseServicePlan: _createPurchaseServicePlan?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createPurchaseServicePlan';
        _createPurchaseServicePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePurchaseServicePlanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePurchaseServicePlanData_createPurchaseServicePlan
    extends GCreatePurchaseServicePlanData_createPurchaseServicePlan {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final GCreatePurchaseServicePlanData_createPurchaseServicePlan_result? result;
  @override
  final String? errorMessage;
  @override
  final bool? requireAdditionalAction;
  @override
  final String? paymentIntentSecret;
  @override
  final String? redirectUrl;

  factory _$GCreatePurchaseServicePlanData_createPurchaseServicePlan(
          [void Function(
                  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder)?
              updates]) =>
      (new GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder()
            ..update(updates))
          ._build();

  _$GCreatePurchaseServicePlanData_createPurchaseServicePlan._(
      {required this.G__typename,
      this.status,
      this.result,
      this.errorMessage,
      this.requireAdditionalAction,
      this.paymentIntentSecret,
      this.redirectUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCreatePurchaseServicePlanData_createPurchaseServicePlan',
        'G__typename');
  }

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlan rebuild(
          void Function(
                  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder toBuilder() =>
      new GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePurchaseServicePlanData_createPurchaseServicePlan &&
        G__typename == other.G__typename &&
        status == other.status &&
        result == other.result &&
        errorMessage == other.errorMessage &&
        requireAdditionalAction == other.requireAdditionalAction &&
        paymentIntentSecret == other.paymentIntentSecret &&
        redirectUrl == other.redirectUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
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
            r'GCreatePurchaseServicePlanData_createPurchaseServicePlan')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('result', result)
          ..add('errorMessage', errorMessage)
          ..add('requireAdditionalAction', requireAdditionalAction)
          ..add('paymentIntentSecret', paymentIntentSecret)
          ..add('redirectUrl', redirectUrl))
        .toString();
  }
}

class GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder
    implements
        Builder<GCreatePurchaseServicePlanData_createPurchaseServicePlan,
            GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder> {
  _$GCreatePurchaseServicePlanData_createPurchaseServicePlan? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder?
      _result;
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder
      get result => _$this._result ??=
          new GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder();
  set result(
          GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder?
              result) =>
      _$this._result = result;

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

  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder() {
    GCreatePurchaseServicePlanData_createPurchaseServicePlan._initializeBuilder(
        this);
  }

  GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _result = $v.result?.toBuilder();
      _errorMessage = $v.errorMessage;
      _requireAdditionalAction = $v.requireAdditionalAction;
      _paymentIntentSecret = $v.paymentIntentSecret;
      _redirectUrl = $v.redirectUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePurchaseServicePlanData_createPurchaseServicePlan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePurchaseServicePlanData_createPurchaseServicePlan;
  }

  @override
  void update(
      void Function(
              GCreatePurchaseServicePlanData_createPurchaseServicePlanBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlan build() => _build();

  _$GCreatePurchaseServicePlanData_createPurchaseServicePlan _build() {
    _$GCreatePurchaseServicePlanData_createPurchaseServicePlan _$result;
    try {
      _$result = _$v ??
          new _$GCreatePurchaseServicePlanData_createPurchaseServicePlan._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCreatePurchaseServicePlanData_createPurchaseServicePlan',
                  'G__typename'),
              status: status,
              result: _result?.build(),
              errorMessage: errorMessage,
              requireAdditionalAction: requireAdditionalAction,
              paymentIntentSecret: paymentIntentSecret,
              redirectUrl: redirectUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePurchaseServicePlanData_createPurchaseServicePlan',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result
    extends GCreatePurchaseServicePlanData_createPurchaseServicePlan_result {
  @override
  final String G__typename;
  @override
  final int? id;

  factory _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result(
          [void Function(
                  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder)?
              updates]) =>
      (new GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder()
            ..update(updates))
          ._build();

  _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result._(
      {required this.G__typename, this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCreatePurchaseServicePlanData_createPurchaseServicePlan_result',
        'G__typename');
  }

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_result rebuild(
          void Function(
                  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder
      toBuilder() =>
          new GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCreatePurchaseServicePlanData_createPurchaseServicePlan_result &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCreatePurchaseServicePlanData_createPurchaseServicePlan_result')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder
    implements
        Builder<GCreatePurchaseServicePlanData_createPurchaseServicePlan_result,
            GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder> {
  _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder() {
    GCreatePurchaseServicePlanData_createPurchaseServicePlan_result
        ._initializeBuilder(this);
  }

  GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCreatePurchaseServicePlanData_createPurchaseServicePlan_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result;
  }

  @override
  void update(
      void Function(
              GCreatePurchaseServicePlanData_createPurchaseServicePlan_resultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePurchaseServicePlanData_createPurchaseServicePlan_result build() =>
      _build();

  _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result _build() {
    final _$result = _$v ??
        new _$GCreatePurchaseServicePlanData_createPurchaseServicePlan_result._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCreatePurchaseServicePlanData_createPurchaseServicePlan_result',
                'G__typename'),
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
