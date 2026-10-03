// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/createServicePlan/__generated__/createServicePlan.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/createServicePlan/__generated__/createServicePlan.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/createServicePlan/__generated__/createServicePlan.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'createServicePlan.req.gql.g.dart';

abstract class GCreatePurchaseServicePlanReq
    implements
        Built<GCreatePurchaseServicePlanReq,
            GCreatePurchaseServicePlanReqBuilder>,
        _i1.OperationRequest<_i2.GCreatePurchaseServicePlanData,
            _i3.GCreatePurchaseServicePlanVars> {
  GCreatePurchaseServicePlanReq._();

  factory GCreatePurchaseServicePlanReq(
          [void Function(GCreatePurchaseServicePlanReqBuilder b) updates]) =
      _$GCreatePurchaseServicePlanReq;

  static void _initializeBuilder(GCreatePurchaseServicePlanReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreatePurchaseServicePlan',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreatePurchaseServicePlanVars get vars;
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
  _i2.GCreatePurchaseServicePlanData? Function(
    _i2.GCreatePurchaseServicePlanData?,
    _i2.GCreatePurchaseServicePlanData?,
  )? get updateResult;
  @override
  _i2.GCreatePurchaseServicePlanData? get optimisticResponse;
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
  _i2.GCreatePurchaseServicePlanData? parseData(Map<String, dynamic> json) =>
      _i2.GCreatePurchaseServicePlanData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreatePurchaseServicePlanData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreatePurchaseServicePlanData,
      _i3.GCreatePurchaseServicePlanVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreatePurchaseServicePlanReq> get serializer =>
      _$gCreatePurchaseServicePlanReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreatePurchaseServicePlanReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePurchaseServicePlanReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreatePurchaseServicePlanReq.serializer,
        json,
      );
}
