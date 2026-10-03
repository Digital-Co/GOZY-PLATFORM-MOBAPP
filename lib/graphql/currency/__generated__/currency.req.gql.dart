// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/currency/__generated__/currency.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/currency/__generated__/currency.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/currency/__generated__/currency.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'currency.req.gql.g.dart';

abstract class GpriceSettingsReq
    implements
        Built<GpriceSettingsReq, GpriceSettingsReqBuilder>,
        _i1.OperationRequest<_i2.GpriceSettingsData, _i3.GpriceSettingsVars> {
  GpriceSettingsReq._();

  factory GpriceSettingsReq(
          [void Function(GpriceSettingsReqBuilder b) updates]) =
      _$GpriceSettingsReq;

  static void _initializeBuilder(GpriceSettingsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'priceSettings',
    )
    ..executeOnListen = true;

  @override
  _i3.GpriceSettingsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GpriceSettingsData? Function(
    _i2.GpriceSettingsData?,
    _i2.GpriceSettingsData?,
  )? get updateResult;
  @override
  _i2.GpriceSettingsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GpriceSettingsData? parseData(Map<String, dynamic> json) =>
      _i2.GpriceSettingsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GpriceSettingsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GpriceSettingsData, _i3.GpriceSettingsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GpriceSettingsReq> get serializer =>
      _$gpriceSettingsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GpriceSettingsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpriceSettingsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GpriceSettingsReq.serializer,
        json,
      );
}

abstract class GgetCurrenciesListReq
    implements
        Built<GgetCurrenciesListReq, GgetCurrenciesListReqBuilder>,
        _i1.OperationRequest<_i2.GgetCurrenciesListData,
            _i3.GgetCurrenciesListVars> {
  GgetCurrenciesListReq._();

  factory GgetCurrenciesListReq(
          [void Function(GgetCurrenciesListReqBuilder b) updates]) =
      _$GgetCurrenciesListReq;

  static void _initializeBuilder(GgetCurrenciesListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getCurrenciesList',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetCurrenciesListVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GgetCurrenciesListData? Function(
    _i2.GgetCurrenciesListData?,
    _i2.GgetCurrenciesListData?,
  )? get updateResult;
  @override
  _i2.GgetCurrenciesListData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GgetCurrenciesListData? parseData(Map<String, dynamic> json) =>
      _i2.GgetCurrenciesListData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetCurrenciesListData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetCurrenciesListData, _i3.GgetCurrenciesListVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetCurrenciesListReq> get serializer =>
      _$ggetCurrenciesListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetCurrenciesListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrenciesListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetCurrenciesListReq.serializer,
        json,
      );
}

abstract class GgetCurrencyReq
    implements
        Built<GgetCurrencyReq, GgetCurrencyReqBuilder>,
        _i1.OperationRequest<_i2.GgetCurrencyData, _i3.GgetCurrencyVars> {
  GgetCurrencyReq._();

  factory GgetCurrencyReq([void Function(GgetCurrencyReqBuilder b) updates]) =
      _$GgetCurrencyReq;

  static void _initializeBuilder(GgetCurrencyReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getCurrency',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetCurrencyVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GgetCurrencyData? Function(
    _i2.GgetCurrencyData?,
    _i2.GgetCurrencyData?,
  )? get updateResult;
  @override
  _i2.GgetCurrencyData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GgetCurrencyData? parseData(Map<String, dynamic> json) =>
      _i2.GgetCurrencyData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetCurrencyData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetCurrencyData, _i3.GgetCurrencyVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetCurrencyReq> get serializer =>
      _$ggetCurrencyReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetCurrencyReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetCurrencyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetCurrencyReq.serializer,
        json,
      );
}

abstract class GgetVersionReq
    implements
        Built<GgetVersionReq, GgetVersionReqBuilder>,
        _i1.OperationRequest<_i2.GgetVersionData, _i3.GgetVersionVars> {
  GgetVersionReq._();

  factory GgetVersionReq([void Function(GgetVersionReqBuilder b) updates]) =
      _$GgetVersionReq;

  static void _initializeBuilder(GgetVersionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getVersion',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetVersionVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GgetVersionData? Function(
    _i2.GgetVersionData?,
    _i2.GgetVersionData?,
  )? get updateResult;
  @override
  _i2.GgetVersionData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GgetVersionData? parseData(Map<String, dynamic> json) =>
      _i2.GgetVersionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetVersionData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetVersionData, _i3.GgetVersionVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetVersionReq> get serializer =>
      _$ggetVersionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetVersionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetVersionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetVersionReq.serializer,
        json,
      );
}
