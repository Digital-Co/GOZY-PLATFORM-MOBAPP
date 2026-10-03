// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/FilterData/__generated__/filter_data.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/FilterData/__generated__/filter_data.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/FilterData/__generated__/filter_data.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'filter_data.req.gql.g.dart';

abstract class GgetListingSettingsCommonReq
    implements
        Built<GgetListingSettingsCommonReq,
            GgetListingSettingsCommonReqBuilder>,
        _i1.OperationRequest<_i2.GgetListingSettingsCommonData,
            _i3.GgetListingSettingsCommonVars> {
  GgetListingSettingsCommonReq._();

  factory GgetListingSettingsCommonReq(
          [void Function(GgetListingSettingsCommonReqBuilder b) updates]) =
      _$GgetListingSettingsCommonReq;

  static void _initializeBuilder(GgetListingSettingsCommonReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getListingSettingsCommon',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetListingSettingsCommonVars get vars;
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
  _i2.GgetListingSettingsCommonData? Function(
    _i2.GgetListingSettingsCommonData?,
    _i2.GgetListingSettingsCommonData?,
  )? get updateResult;
  @override
  _i2.GgetListingSettingsCommonData? get optimisticResponse;
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
  _i2.GgetListingSettingsCommonData? parseData(Map<String, dynamic> json) =>
      _i2.GgetListingSettingsCommonData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetListingSettingsCommonData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetListingSettingsCommonData,
      _i3.GgetListingSettingsCommonVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetListingSettingsCommonReq> get serializer =>
      _$ggetListingSettingsCommonReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetListingSettingsCommonReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSettingsCommonReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetListingSettingsCommonReq.serializer,
        json,
      );
}

abstract class GgetListSettingsItemNameReq
    implements
        Built<GgetListSettingsItemNameReq, GgetListSettingsItemNameReqBuilder>,
        _i1.OperationRequest<_i2.GgetListSettingsItemNameData,
            _i3.GgetListSettingsItemNameVars> {
  GgetListSettingsItemNameReq._();

  factory GgetListSettingsItemNameReq(
          [void Function(GgetListSettingsItemNameReqBuilder b) updates]) =
      _$GgetListSettingsItemNameReq;

  static void _initializeBuilder(GgetListSettingsItemNameReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getListSettingsItemName',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetListSettingsItemNameVars get vars;
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
  _i2.GgetListSettingsItemNameData? Function(
    _i2.GgetListSettingsItemNameData?,
    _i2.GgetListSettingsItemNameData?,
  )? get updateResult;
  @override
  _i2.GgetListSettingsItemNameData? get optimisticResponse;
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
  _i2.GgetListSettingsItemNameData? parseData(Map<String, dynamic> json) =>
      _i2.GgetListSettingsItemNameData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetListSettingsItemNameData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetListSettingsItemNameData,
      _i3.GgetListSettingsItemNameVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetListSettingsItemNameReq> get serializer =>
      _$ggetListSettingsItemNameReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetListSettingsItemNameReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListSettingsItemNameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetListSettingsItemNameReq.serializer,
        json,
      );
}
