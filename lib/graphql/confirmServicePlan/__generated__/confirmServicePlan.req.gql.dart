// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/confirmServicePlan/__generated__/confirmServicePlan.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/confirmServicePlan/__generated__/confirmServicePlan.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/confirmServicePlan/__generated__/confirmServicePlan.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'confirmServicePlan.req.gql.g.dart';

abstract class GconfirmPurchaseServicePlanReq
    implements
        Built<GconfirmPurchaseServicePlanReq,
            GconfirmPurchaseServicePlanReqBuilder>,
        _i1.OperationRequest<_i2.GconfirmPurchaseServicePlanData,
            _i3.GconfirmPurchaseServicePlanVars> {
  GconfirmPurchaseServicePlanReq._();

  factory GconfirmPurchaseServicePlanReq(
          [void Function(GconfirmPurchaseServicePlanReqBuilder b) updates]) =
      _$GconfirmPurchaseServicePlanReq;

  static void _initializeBuilder(GconfirmPurchaseServicePlanReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'confirmPurchaseServicePlan',
    )
    ..executeOnListen = true;

  @override
  _i3.GconfirmPurchaseServicePlanVars get vars;
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
  _i2.GconfirmPurchaseServicePlanData? Function(
    _i2.GconfirmPurchaseServicePlanData?,
    _i2.GconfirmPurchaseServicePlanData?,
  )? get updateResult;
  @override
  _i2.GconfirmPurchaseServicePlanData? get optimisticResponse;
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
  _i2.GconfirmPurchaseServicePlanData? parseData(Map<String, dynamic> json) =>
      _i2.GconfirmPurchaseServicePlanData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GconfirmPurchaseServicePlanData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GconfirmPurchaseServicePlanData,
      _i3.GconfirmPurchaseServicePlanVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GconfirmPurchaseServicePlanReq> get serializer =>
      _$gconfirmPurchaseServicePlanReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GconfirmPurchaseServicePlanReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmPurchaseServicePlanReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GconfirmPurchaseServicePlanReq.serializer,
        json,
      );
}
