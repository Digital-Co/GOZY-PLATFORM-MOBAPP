// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_billing_calculation.req.gql.g.dart';

abstract class GgetBillingCalculationReq
    implements
        Built<GgetBillingCalculationReq, GgetBillingCalculationReqBuilder>,
        _i1.OperationRequest<_i2.GgetBillingCalculationData,
            _i3.GgetBillingCalculationVars> {
  GgetBillingCalculationReq._();

  factory GgetBillingCalculationReq(
          [void Function(GgetBillingCalculationReqBuilder b) updates]) =
      _$GgetBillingCalculationReq;

  static void _initializeBuilder(GgetBillingCalculationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getBillingCalculation',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetBillingCalculationVars get vars;
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
  _i2.GgetBillingCalculationData? Function(
    _i2.GgetBillingCalculationData?,
    _i2.GgetBillingCalculationData?,
  )? get updateResult;
  @override
  _i2.GgetBillingCalculationData? get optimisticResponse;
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
  _i2.GgetBillingCalculationData? parseData(Map<String, dynamic> json) =>
      _i2.GgetBillingCalculationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetBillingCalculationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetBillingCalculationData,
      _i3.GgetBillingCalculationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetBillingCalculationReq> get serializer =>
      _$ggetBillingCalculationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetBillingCalculationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetBillingCalculationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetBillingCalculationReq.serializer,
        json,
      );
}
