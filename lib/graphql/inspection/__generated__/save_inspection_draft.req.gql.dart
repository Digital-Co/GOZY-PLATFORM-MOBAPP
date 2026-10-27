// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/save_inspection_draft.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/inspection/__generated__/save_inspection_draft.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/save_inspection_draft.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'save_inspection_draft.req.gql.g.dart';

abstract class GsaveInspectionDraftReq
    implements
        Built<GsaveInspectionDraftReq, GsaveInspectionDraftReqBuilder>,
        _i1.OperationRequest<_i2.GsaveInspectionDraftData,
            _i3.GsaveInspectionDraftVars> {
  GsaveInspectionDraftReq._();

  factory GsaveInspectionDraftReq(
          [void Function(GsaveInspectionDraftReqBuilder b) updates]) =
      _$GsaveInspectionDraftReq;

  static void _initializeBuilder(GsaveInspectionDraftReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'saveInspectionDraft',
    )
    ..executeOnListen = true;

  @override
  _i3.GsaveInspectionDraftVars get vars;
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
  _i2.GsaveInspectionDraftData? Function(
    _i2.GsaveInspectionDraftData?,
    _i2.GsaveInspectionDraftData?,
  )? get updateResult;
  @override
  _i2.GsaveInspectionDraftData? get optimisticResponse;
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
  _i2.GsaveInspectionDraftData? parseData(Map<String, dynamic> json) =>
      _i2.GsaveInspectionDraftData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsaveInspectionDraftData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GsaveInspectionDraftData,
      _i3.GsaveInspectionDraftVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsaveInspectionDraftReq> get serializer =>
      _$gsaveInspectionDraftReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsaveInspectionDraftReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsaveInspectionDraftReq.serializer,
        json,
      );
}
