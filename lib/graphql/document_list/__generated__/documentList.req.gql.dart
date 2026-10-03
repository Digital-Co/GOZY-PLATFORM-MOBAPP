// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/document_list/__generated__/documentList.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/document_list/__generated__/documentList.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/document_list/__generated__/documentList.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'documentList.req.gql.g.dart';

abstract class GShowDocumentListReq
    implements
        Built<GShowDocumentListReq, GShowDocumentListReqBuilder>,
        _i1.OperationRequest<_i2.GShowDocumentListData,
            _i3.GShowDocumentListVars> {
  GShowDocumentListReq._();

  factory GShowDocumentListReq(
          [void Function(GShowDocumentListReqBuilder b) updates]) =
      _$GShowDocumentListReq;

  static void _initializeBuilder(GShowDocumentListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ShowDocumentList',
    )
    ..executeOnListen = true;

  @override
  _i3.GShowDocumentListVars get vars;
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
  _i2.GShowDocumentListData? Function(
    _i2.GShowDocumentListData?,
    _i2.GShowDocumentListData?,
  )? get updateResult;
  @override
  _i2.GShowDocumentListData? get optimisticResponse;
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
  _i2.GShowDocumentListData? parseData(Map<String, dynamic> json) =>
      _i2.GShowDocumentListData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GShowDocumentListData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GShowDocumentListData, _i3.GShowDocumentListVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GShowDocumentListReq> get serializer =>
      _$gShowDocumentListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GShowDocumentListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GShowDocumentListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GShowDocumentListReq.serializer,
        json,
      );
}

abstract class GRemoveDocumentsReq
    implements
        Built<GRemoveDocumentsReq, GRemoveDocumentsReqBuilder>,
        _i1
        .OperationRequest<_i2.GRemoveDocumentsData, _i3.GRemoveDocumentsVars> {
  GRemoveDocumentsReq._();

  factory GRemoveDocumentsReq(
          [void Function(GRemoveDocumentsReqBuilder b) updates]) =
      _$GRemoveDocumentsReq;

  static void _initializeBuilder(GRemoveDocumentsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemoveDocuments',
    )
    ..executeOnListen = true;

  @override
  _i3.GRemoveDocumentsVars get vars;
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
  _i2.GRemoveDocumentsData? Function(
    _i2.GRemoveDocumentsData?,
    _i2.GRemoveDocumentsData?,
  )? get updateResult;
  @override
  _i2.GRemoveDocumentsData? get optimisticResponse;
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
  _i2.GRemoveDocumentsData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveDocumentsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRemoveDocumentsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GRemoveDocumentsData, _i3.GRemoveDocumentsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRemoveDocumentsReq> get serializer =>
      _$gRemoveDocumentsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemoveDocumentsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveDocumentsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemoveDocumentsReq.serializer,
        json,
      );
}
