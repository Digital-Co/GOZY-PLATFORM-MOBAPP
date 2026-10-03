// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_data.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetListingSettingsCommonReq>
    _$ggetListingSettingsCommonReqSerializer =
    new _$GgetListingSettingsCommonReqSerializer();
Serializer<GgetListSettingsItemNameReq>
    _$ggetListSettingsItemNameReqSerializer =
    new _$GgetListSettingsItemNameReqSerializer();

class _$GgetListingSettingsCommonReqSerializer
    implements StructuredSerializer<GgetListingSettingsCommonReq> {
  @override
  final Iterable<Type> types = const [
    GgetListingSettingsCommonReq,
    _$GgetListingSettingsCommonReq
  ];
  @override
  final String wireName = 'GgetListingSettingsCommonReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListingSettingsCommonReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetListingSettingsCommonVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GgetListingSettingsCommonData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GgetListingSettingsCommonReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListingSettingsCommonReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GgetListingSettingsCommonVars))!
              as _i3.GgetListingSettingsCommonVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GgetListingSettingsCommonData))!
              as _i2.GgetListingSettingsCommonData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListSettingsItemNameReqSerializer
    implements StructuredSerializer<GgetListSettingsItemNameReq> {
  @override
  final Iterable<Type> types = const [
    GgetListSettingsItemNameReq,
    _$GgetListSettingsItemNameReq
  ];
  @override
  final String wireName = 'GgetListSettingsItemNameReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetListSettingsItemNameReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgetListSettingsItemNameVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GgetListSettingsItemNameData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GgetListSettingsItemNameReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetListSettingsItemNameReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GgetListSettingsItemNameVars))!
              as _i3.GgetListSettingsItemNameVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GgetListSettingsItemNameData))!
              as _i2.GgetListSettingsItemNameData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetListingSettingsCommonReq extends GgetListingSettingsCommonReq {
  @override
  final _i3.GgetListingSettingsCommonVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetListingSettingsCommonData? Function(
      _i2.GgetListingSettingsCommonData?,
      _i2.GgetListingSettingsCommonData?)? updateResult;
  @override
  final _i2.GgetListingSettingsCommonData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$GgetListingSettingsCommonReq(
          [void Function(GgetListingSettingsCommonReqBuilder)? updates]) =>
      (new GgetListingSettingsCommonReqBuilder()..update(updates))._build();

  _$GgetListingSettingsCommonReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GgetListingSettingsCommonReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetListingSettingsCommonReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetListingSettingsCommonReq', 'executeOnListen');
  }

  @override
  GgetListingSettingsCommonReq rebuild(
          void Function(GgetListingSettingsCommonReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListingSettingsCommonReqBuilder toBuilder() =>
      new GgetListingSettingsCommonReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetListingSettingsCommonReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListingSettingsCommonReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class GgetListingSettingsCommonReqBuilder
    implements
        Builder<GgetListingSettingsCommonReq,
            GgetListingSettingsCommonReqBuilder> {
  _$GgetListingSettingsCommonReq? _$v;

  _i3.GgetListingSettingsCommonVarsBuilder? _vars;
  _i3.GgetListingSettingsCommonVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetListingSettingsCommonVarsBuilder();
  set vars(_i3.GgetListingSettingsCommonVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetListingSettingsCommonData? Function(
      _i2.GgetListingSettingsCommonData?,
      _i2.GgetListingSettingsCommonData?)? _updateResult;
  _i2.GgetListingSettingsCommonData? Function(
          _i2.GgetListingSettingsCommonData?,
          _i2.GgetListingSettingsCommonData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetListingSettingsCommonData? Function(
                  _i2.GgetListingSettingsCommonData?,
                  _i2.GgetListingSettingsCommonData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetListingSettingsCommonDataBuilder? _optimisticResponse;
  _i2.GgetListingSettingsCommonDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GgetListingSettingsCommonDataBuilder();
  set optimisticResponse(
          _i2.GgetListingSettingsCommonDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  GgetListingSettingsCommonReqBuilder() {
    GgetListingSettingsCommonReq._initializeBuilder(this);
  }

  GgetListingSettingsCommonReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListingSettingsCommonReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListingSettingsCommonReq;
  }

  @override
  void update(void Function(GgetListingSettingsCommonReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListingSettingsCommonReq build() => _build();

  _$GgetListingSettingsCommonReq _build() {
    _$GgetListingSettingsCommonReq _$result;
    try {
      _$result = _$v ??
          new _$GgetListingSettingsCommonReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetListingSettingsCommonReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GgetListingSettingsCommonReq',
                  'executeOnListen'),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListingSettingsCommonReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetListSettingsItemNameReq extends GgetListSettingsItemNameReq {
  @override
  final _i3.GgetListSettingsItemNameVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgetListSettingsItemNameData? Function(
          _i2.GgetListSettingsItemNameData?, _i2.GgetListSettingsItemNameData?)?
      updateResult;
  @override
  final _i2.GgetListSettingsItemNameData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;
  @override
  final _i4.Context? context;

  factory _$GgetListSettingsItemNameReq(
          [void Function(GgetListSettingsItemNameReqBuilder)? updates]) =>
      (new GgetListSettingsItemNameReqBuilder()..update(updates))._build();

  _$GgetListSettingsItemNameReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GgetListSettingsItemNameReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgetListSettingsItemNameReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgetListSettingsItemNameReq', 'executeOnListen');
  }

  @override
  GgetListSettingsItemNameReq rebuild(
          void Function(GgetListSettingsItemNameReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetListSettingsItemNameReqBuilder toBuilder() =>
      new GgetListSettingsItemNameReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgetListSettingsItemNameReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetListSettingsItemNameReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen)
          ..add('context', context))
        .toString();
  }
}

class GgetListSettingsItemNameReqBuilder
    implements
        Builder<GgetListSettingsItemNameReq,
            GgetListSettingsItemNameReqBuilder> {
  _$GgetListSettingsItemNameReq? _$v;

  _i3.GgetListSettingsItemNameVarsBuilder? _vars;
  _i3.GgetListSettingsItemNameVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgetListSettingsItemNameVarsBuilder();
  set vars(_i3.GgetListSettingsItemNameVarsBuilder? vars) =>
      _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgetListSettingsItemNameData? Function(
          _i2.GgetListSettingsItemNameData?, _i2.GgetListSettingsItemNameData?)?
      _updateResult;
  _i2.GgetListSettingsItemNameData? Function(
          _i2.GgetListSettingsItemNameData?, _i2.GgetListSettingsItemNameData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgetListSettingsItemNameData? Function(
                  _i2.GgetListSettingsItemNameData?,
                  _i2.GgetListSettingsItemNameData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgetListSettingsItemNameDataBuilder? _optimisticResponse;
  _i2.GgetListSettingsItemNameDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GgetListSettingsItemNameDataBuilder();
  set optimisticResponse(
          _i2.GgetListSettingsItemNameDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  _i4.Context? _context;
  _i4.Context? get context => _$this._context;
  set context(_i4.Context? context) => _$this._context = context;

  GgetListSettingsItemNameReqBuilder() {
    GgetListSettingsItemNameReq._initializeBuilder(this);
  }

  GgetListSettingsItemNameReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetListSettingsItemNameReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetListSettingsItemNameReq;
  }

  @override
  void update(void Function(GgetListSettingsItemNameReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetListSettingsItemNameReq build() => _build();

  _$GgetListSettingsItemNameReq _build() {
    _$GgetListSettingsItemNameReq _$result;
    try {
      _$result = _$v ??
          new _$GgetListSettingsItemNameReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgetListSettingsItemNameReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GgetListSettingsItemNameReq',
                  'executeOnListen'),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetListSettingsItemNameReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
