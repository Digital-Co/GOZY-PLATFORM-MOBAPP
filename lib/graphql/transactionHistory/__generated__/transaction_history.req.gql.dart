// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/transactionHistory/__generated__/transaction_history.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/transactionHistory/__generated__/transaction_history.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/transactionHistory/__generated__/transaction_history.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'transaction_history.req.gql.g.dart';

abstract class GgetTransactionHistoryReq
    implements
        Built<GgetTransactionHistoryReq, GgetTransactionHistoryReqBuilder>,
        _i1.OperationRequest<_i2.GgetTransactionHistoryData,
            _i3.GgetTransactionHistoryVars> {
  GgetTransactionHistoryReq._();

  factory GgetTransactionHistoryReq(
          [void Function(GgetTransactionHistoryReqBuilder b) updates]) =
      _$GgetTransactionHistoryReq;

  static void _initializeBuilder(GgetTransactionHistoryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getTransactionHistory',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetTransactionHistoryVars get vars;
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
  _i2.GgetTransactionHistoryData? Function(
    _i2.GgetTransactionHistoryData?,
    _i2.GgetTransactionHistoryData?,
  )? get updateResult;
  @override
  _i2.GgetTransactionHistoryData? get optimisticResponse;
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
  _i2.GgetTransactionHistoryData? parseData(Map<String, dynamic> json) =>
      _i2.GgetTransactionHistoryData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetTransactionHistoryData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetTransactionHistoryData,
      _i3.GgetTransactionHistoryVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetTransactionHistoryReq> get serializer =>
      _$ggetTransactionHistoryReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetTransactionHistoryReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetTransactionHistoryReq.serializer,
        json,
      );
}
