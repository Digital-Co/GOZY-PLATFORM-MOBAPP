// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/get_checklist.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/inspection/__generated__/get_checklist.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/get_checklist.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_checklist.req.gql.g.dart';

abstract class GgetChecklistReq
    implements
        Built<GgetChecklistReq, GgetChecklistReqBuilder>,
        _i1.OperationRequest<_i2.GgetChecklistData, _i3.GgetChecklistVars> {
  GgetChecklistReq._();

  factory GgetChecklistReq([void Function(GgetChecklistReqBuilder b) updates]) =
      _$GgetChecklistReq;

  static void _initializeBuilder(GgetChecklistReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getChecklist',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetChecklistVars get vars;
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
  _i2.GgetChecklistData? Function(
    _i2.GgetChecklistData?,
    _i2.GgetChecklistData?,
  )? get updateResult;
  @override
  _i2.GgetChecklistData? get optimisticResponse;
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
  _i2.GgetChecklistData? parseData(Map<String, dynamic> json) =>
      _i2.GgetChecklistData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetChecklistData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetChecklistData, _i3.GgetChecklistVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetChecklistReq> get serializer =>
      _$ggetChecklistReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetChecklistReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetChecklistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetChecklistReq.serializer,
        json,
      );
}
