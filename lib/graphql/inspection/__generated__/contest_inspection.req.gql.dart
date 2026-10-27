// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/contest_inspection.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/inspection/__generated__/contest_inspection.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/contest_inspection.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'contest_inspection.req.gql.g.dart';

abstract class GcontestInspectionReq
    implements
        Built<GcontestInspectionReq, GcontestInspectionReqBuilder>,
        _i1.OperationRequest<_i2.GcontestInspectionData,
            _i3.GcontestInspectionVars> {
  GcontestInspectionReq._();

  factory GcontestInspectionReq(
          [void Function(GcontestInspectionReqBuilder b) updates]) =
      _$GcontestInspectionReq;

  static void _initializeBuilder(GcontestInspectionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'contestInspection',
    )
    ..executeOnListen = true;

  @override
  _i3.GcontestInspectionVars get vars;
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
  _i2.GcontestInspectionData? Function(
    _i2.GcontestInspectionData?,
    _i2.GcontestInspectionData?,
  )? get updateResult;
  @override
  _i2.GcontestInspectionData? get optimisticResponse;
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
  _i2.GcontestInspectionData? parseData(Map<String, dynamic> json) =>
      _i2.GcontestInspectionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcontestInspectionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GcontestInspectionData, _i3.GcontestInspectionVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcontestInspectionReq> get serializer =>
      _$gcontestInspectionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcontestInspectionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcontestInspectionReq.serializer,
        json,
      );
}
