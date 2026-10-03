// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/servicePlan/__generated__/servicePlan.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/servicePlan/__generated__/servicePlan.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/servicePlan/__generated__/servicePlan.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'servicePlan.req.gql.g.dart';

abstract class GgetAllUserServicePlanReq
    implements
        Built<GgetAllUserServicePlanReq, GgetAllUserServicePlanReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllUserServicePlanData,
            _i3.GgetAllUserServicePlanVars> {
  GgetAllUserServicePlanReq._();

  factory GgetAllUserServicePlanReq(
          [void Function(GgetAllUserServicePlanReqBuilder b) updates]) =
      _$GgetAllUserServicePlanReq;

  static void _initializeBuilder(GgetAllUserServicePlanReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllUserServicePlan',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllUserServicePlanVars get vars;
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
  _i2.GgetAllUserServicePlanData? Function(
    _i2.GgetAllUserServicePlanData?,
    _i2.GgetAllUserServicePlanData?,
  )? get updateResult;
  @override
  _i2.GgetAllUserServicePlanData? get optimisticResponse;
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
  _i2.GgetAllUserServicePlanData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllUserServicePlanData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllUserServicePlanData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllUserServicePlanData,
      _i3.GgetAllUserServicePlanVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllUserServicePlanReq> get serializer =>
      _$ggetAllUserServicePlanReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllUserServicePlanReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllUserServicePlanReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllUserServicePlanReq.serializer,
        json,
      );
}
