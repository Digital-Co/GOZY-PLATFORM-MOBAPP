// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/propertycreation/__generated__/propertycreation.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/propertycreation/__generated__/propertycreation.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/propertycreation/__generated__/propertycreation.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'propertycreation.req.gql.g.dart';

abstract class GcreateListingReq
    implements
        Built<GcreateListingReq, GcreateListingReqBuilder>,
        _i1.OperationRequest<_i2.GcreateListingData, _i3.GcreateListingVars> {
  GcreateListingReq._();

  factory GcreateListingReq(
          [void Function(GcreateListingReqBuilder b) updates]) =
      _$GcreateListingReq;

  static void _initializeBuilder(GcreateListingReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'createListing',
    )
    ..executeOnListen = true;

  @override
  _i3.GcreateListingVars get vars;
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
  _i2.GcreateListingData? Function(
    _i2.GcreateListingData?,
    _i2.GcreateListingData?,
  )? get updateResult;
  @override
  _i2.GcreateListingData? get optimisticResponse;
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
  _i2.GcreateListingData? parseData(Map<String, dynamic> json) =>
      _i2.GcreateListingData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcreateListingData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcreateListingData, _i3.GcreateListingVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcreateListingReq> get serializer =>
      _$gcreateListingReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcreateListingReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateListingReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcreateListingReq.serializer,
        json,
      );
}

abstract class GUpdateListingStep2Req
    implements
        Built<GUpdateListingStep2Req, GUpdateListingStep2ReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateListingStep2Data,
            _i3.GUpdateListingStep2Vars> {
  GUpdateListingStep2Req._();

  factory GUpdateListingStep2Req(
          [void Function(GUpdateListingStep2ReqBuilder b) updates]) =
      _$GUpdateListingStep2Req;

  static void _initializeBuilder(GUpdateListingStep2ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateListingStep2',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateListingStep2Vars get vars;
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
  _i2.GUpdateListingStep2Data? Function(
    _i2.GUpdateListingStep2Data?,
    _i2.GUpdateListingStep2Data?,
  )? get updateResult;
  @override
  _i2.GUpdateListingStep2Data? get optimisticResponse;
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
  _i2.GUpdateListingStep2Data? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateListingStep2Data.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateListingStep2Data data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateListingStep2Data, _i3.GUpdateListingStep2Vars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateListingStep2Req> get serializer =>
      _$gUpdateListingStep2ReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateListingStep2Req.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListingStep2Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateListingStep2Req.serializer,
        json,
      );
}

abstract class GmanagePublishStatusReq
    implements
        Built<GmanagePublishStatusReq, GmanagePublishStatusReqBuilder>,
        _i1.OperationRequest<_i2.GmanagePublishStatusData,
            _i3.GmanagePublishStatusVars> {
  GmanagePublishStatusReq._();

  factory GmanagePublishStatusReq(
          [void Function(GmanagePublishStatusReqBuilder b) updates]) =
      _$GmanagePublishStatusReq;

  static void _initializeBuilder(GmanagePublishStatusReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'managePublishStatus',
    )
    ..executeOnListen = true;

  @override
  _i3.GmanagePublishStatusVars get vars;
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
  _i2.GmanagePublishStatusData? Function(
    _i2.GmanagePublishStatusData?,
    _i2.GmanagePublishStatusData?,
  )? get updateResult;
  @override
  _i2.GmanagePublishStatusData? get optimisticResponse;
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
  _i2.GmanagePublishStatusData? parseData(Map<String, dynamic> json) =>
      _i2.GmanagePublishStatusData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmanagePublishStatusData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GmanagePublishStatusData,
      _i3.GmanagePublishStatusVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GmanagePublishStatusReq> get serializer =>
      _$gmanagePublishStatusReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmanagePublishStatusReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanagePublishStatusReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmanagePublishStatusReq.serializer,
        json,
      );
}

abstract class GmanageListingStepsReq
    implements
        Built<GmanageListingStepsReq, GmanageListingStepsReqBuilder>,
        _i1.OperationRequest<_i2.GmanageListingStepsData,
            _i3.GmanageListingStepsVars> {
  GmanageListingStepsReq._();

  factory GmanageListingStepsReq(
          [void Function(GmanageListingStepsReqBuilder b) updates]) =
      _$GmanageListingStepsReq;

  static void _initializeBuilder(GmanageListingStepsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'manageListingSteps',
    )
    ..executeOnListen = true;

  @override
  _i3.GmanageListingStepsVars get vars;
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
  _i2.GmanageListingStepsData? Function(
    _i2.GmanageListingStepsData?,
    _i2.GmanageListingStepsData?,
  )? get updateResult;
  @override
  _i2.GmanageListingStepsData? get optimisticResponse;
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
  _i2.GmanageListingStepsData? parseData(Map<String, dynamic> json) =>
      _i2.GmanageListingStepsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmanageListingStepsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GmanageListingStepsData, _i3.GmanageListingStepsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GmanageListingStepsReq> get serializer =>
      _$gmanageListingStepsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmanageListingStepsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmanageListingStepsReq.serializer,
        json,
      );
}

abstract class GupdateListingStep3Req
    implements
        Built<GupdateListingStep3Req, GupdateListingStep3ReqBuilder>,
        _i1.OperationRequest<_i2.GupdateListingStep3Data,
            _i3.GupdateListingStep3Vars> {
  GupdateListingStep3Req._();

  factory GupdateListingStep3Req(
          [void Function(GupdateListingStep3ReqBuilder b) updates]) =
      _$GupdateListingStep3Req;

  static void _initializeBuilder(GupdateListingStep3ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'updateListingStep3',
    )
    ..executeOnListen = true;

  @override
  _i3.GupdateListingStep3Vars get vars;
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
  _i2.GupdateListingStep3Data? Function(
    _i2.GupdateListingStep3Data?,
    _i2.GupdateListingStep3Data?,
  )? get updateResult;
  @override
  _i2.GupdateListingStep3Data? get optimisticResponse;
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
  _i2.GupdateListingStep3Data? parseData(Map<String, dynamic> json) =>
      _i2.GupdateListingStep3Data.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GupdateListingStep3Data data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GupdateListingStep3Data, _i3.GupdateListingStep3Vars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GupdateListingStep3Req> get serializer =>
      _$gupdateListingStep3ReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupdateListingStep3Req.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateListingStep3Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupdateListingStep3Req.serializer,
        json,
      );
}

abstract class GRemoveListPhotosReq
    implements
        Built<GRemoveListPhotosReq, GRemoveListPhotosReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveListPhotosData,
            _i3.GRemoveListPhotosVars> {
  GRemoveListPhotosReq._();

  factory GRemoveListPhotosReq(
          [void Function(GRemoveListPhotosReqBuilder b) updates]) =
      _$GRemoveListPhotosReq;

  static void _initializeBuilder(GRemoveListPhotosReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemoveListPhotos',
    )
    ..executeOnListen = true;

  @override
  _i3.GRemoveListPhotosVars get vars;
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
  _i2.GRemoveListPhotosData? Function(
    _i2.GRemoveListPhotosData?,
    _i2.GRemoveListPhotosData?,
  )? get updateResult;
  @override
  _i2.GRemoveListPhotosData? get optimisticResponse;
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
  _i2.GRemoveListPhotosData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveListPhotosData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRemoveListPhotosData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GRemoveListPhotosData, _i3.GRemoveListPhotosVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRemoveListPhotosReq> get serializer =>
      _$gRemoveListPhotosReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemoveListPhotosReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListPhotosReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemoveListPhotosReq.serializer,
        json,
      );
}
