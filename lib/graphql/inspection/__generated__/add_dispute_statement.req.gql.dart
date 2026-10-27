// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/add_dispute_statement.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/inspection/__generated__/add_dispute_statement.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/add_dispute_statement.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'add_dispute_statement.req.gql.g.dart';

abstract class GaddDisputeStatementReq
    implements
        Built<GaddDisputeStatementReq, GaddDisputeStatementReqBuilder>,
        _i1.OperationRequest<_i2.GaddDisputeStatementData,
            _i3.GaddDisputeStatementVars> {
  GaddDisputeStatementReq._();

  factory GaddDisputeStatementReq(
          [void Function(GaddDisputeStatementReqBuilder b) updates]) =
      _$GaddDisputeStatementReq;

  static void _initializeBuilder(GaddDisputeStatementReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'addDisputeStatement',
    )
    ..executeOnListen = true;

  @override
  _i3.GaddDisputeStatementVars get vars;
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
  _i2.GaddDisputeStatementData? Function(
    _i2.GaddDisputeStatementData?,
    _i2.GaddDisputeStatementData?,
  )? get updateResult;
  @override
  _i2.GaddDisputeStatementData? get optimisticResponse;
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
  _i2.GaddDisputeStatementData? parseData(Map<String, dynamic> json) =>
      _i2.GaddDisputeStatementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GaddDisputeStatementData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GaddDisputeStatementData,
      _i3.GaddDisputeStatementVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GaddDisputeStatementReq> get serializer =>
      _$gaddDisputeStatementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GaddDisputeStatementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GaddDisputeStatementReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GaddDisputeStatementReq.serializer,
        json,
      );
}
