// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_listing_option_active.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsetListingOptionActiveReq> _$gsetListingOptionActiveReqSerializer =
    new _$GsetListingOptionActiveReqSerializer();

class _$GsetListingOptionActiveReqSerializer
    implements StructuredSerializer<GsetListingOptionActiveReq> {
  @override
  final Iterable<Type> types = const [
    GsetListingOptionActiveReq,
    _$GsetListingOptionActiveReq
  ];
  @override
  final String wireName = 'GsetListingOptionActiveReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsetListingOptionActiveReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GsetListingOptionActiveVars)),
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
            specifiedType: const FullType(_i2.GsetListingOptionActiveData)));
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
  GsetListingOptionActiveReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsetListingOptionActiveReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GsetListingOptionActiveVars))!
              as _i3.GsetListingOptionActiveVars);
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
                      const FullType(_i2.GsetListingOptionActiveData))!
              as _i2.GsetListingOptionActiveData);
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

class _$GsetListingOptionActiveReq extends GsetListingOptionActiveReq {
  @override
  final _i3.GsetListingOptionActiveVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GsetListingOptionActiveData? Function(
          _i2.GsetListingOptionActiveData?, _i2.GsetListingOptionActiveData?)?
      updateResult;
  @override
  final _i2.GsetListingOptionActiveData? optimisticResponse;
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

  factory _$GsetListingOptionActiveReq(
          [void Function(GsetListingOptionActiveReqBuilder)? updates]) =>
      (new GsetListingOptionActiveReqBuilder()..update(updates))._build();

  _$GsetListingOptionActiveReq._(
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
        vars, r'GsetListingOptionActiveReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GsetListingOptionActiveReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GsetListingOptionActiveReq', 'executeOnListen');
  }

  @override
  GsetListingOptionActiveReq rebuild(
          void Function(GsetListingOptionActiveReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsetListingOptionActiveReqBuilder toBuilder() =>
      new GsetListingOptionActiveReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GsetListingOptionActiveReq &&
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
    return (newBuiltValueToStringHelper(r'GsetListingOptionActiveReq')
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

class GsetListingOptionActiveReqBuilder
    implements
        Builder<GsetListingOptionActiveReq, GsetListingOptionActiveReqBuilder> {
  _$GsetListingOptionActiveReq? _$v;

  _i3.GsetListingOptionActiveVarsBuilder? _vars;
  _i3.GsetListingOptionActiveVarsBuilder get vars =>
      _$this._vars ??= new _i3.GsetListingOptionActiveVarsBuilder();
  set vars(_i3.GsetListingOptionActiveVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GsetListingOptionActiveData? Function(
          _i2.GsetListingOptionActiveData?, _i2.GsetListingOptionActiveData?)?
      _updateResult;
  _i2.GsetListingOptionActiveData? Function(
          _i2.GsetListingOptionActiveData?, _i2.GsetListingOptionActiveData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GsetListingOptionActiveData? Function(
                  _i2.GsetListingOptionActiveData?,
                  _i2.GsetListingOptionActiveData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GsetListingOptionActiveDataBuilder? _optimisticResponse;
  _i2.GsetListingOptionActiveDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GsetListingOptionActiveDataBuilder();
  set optimisticResponse(
          _i2.GsetListingOptionActiveDataBuilder? optimisticResponse) =>
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

  GsetListingOptionActiveReqBuilder() {
    GsetListingOptionActiveReq._initializeBuilder(this);
  }

  GsetListingOptionActiveReqBuilder get _$this {
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
  void replace(GsetListingOptionActiveReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsetListingOptionActiveReq;
  }

  @override
  void update(void Function(GsetListingOptionActiveReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsetListingOptionActiveReq build() => _build();

  _$GsetListingOptionActiveReq _build() {
    _$GsetListingOptionActiveReq _$result;
    try {
      _$result = _$v ??
          new _$GsetListingOptionActiveReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GsetListingOptionActiveReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GsetListingOptionActiveReq',
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
            r'GsetListingOptionActiveReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
