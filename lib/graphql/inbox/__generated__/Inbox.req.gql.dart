// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inbox/__generated__/Inbox.ast.gql.dart' as _i5;
import 'package:gozy/graphql/inbox/__generated__/Inbox.data.gql.dart' as _i2;
import 'package:gozy/graphql/inbox/__generated__/Inbox.var.gql.dart' as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'Inbox.req.gql.g.dart';

abstract class GgetAllThreadsReq
    implements
        Built<GgetAllThreadsReq, GgetAllThreadsReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllThreadsData, _i3.GgetAllThreadsVars> {
  GgetAllThreadsReq._();

  factory GgetAllThreadsReq(
          [void Function(GgetAllThreadsReqBuilder b) updates]) =
      _$GgetAllThreadsReq;

  static void _initializeBuilder(GgetAllThreadsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllThreads',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllThreadsVars get vars;
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
  _i2.GgetAllThreadsData? Function(
    _i2.GgetAllThreadsData?,
    _i2.GgetAllThreadsData?,
  )? get updateResult;
  @override
  _i2.GgetAllThreadsData? get optimisticResponse;
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
  _i2.GgetAllThreadsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllThreadsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllThreadsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllThreadsData, _i3.GgetAllThreadsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllThreadsReq> get serializer =>
      _$ggetAllThreadsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllThreadsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllThreadsReq.serializer,
        json,
      );
}

abstract class GgetUnReadCountReq
    implements
        Built<GgetUnReadCountReq, GgetUnReadCountReqBuilder>,
        _i1.OperationRequest<_i2.GgetUnReadCountData, _i3.GgetUnReadCountVars> {
  GgetUnReadCountReq._();

  factory GgetUnReadCountReq(
          [void Function(GgetUnReadCountReqBuilder b) updates]) =
      _$GgetUnReadCountReq;

  static void _initializeBuilder(GgetUnReadCountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getUnReadCount',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetUnReadCountVars get vars;
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
  _i2.GgetUnReadCountData? Function(
    _i2.GgetUnReadCountData?,
    _i2.GgetUnReadCountData?,
  )? get updateResult;
  @override
  _i2.GgetUnReadCountData? get optimisticResponse;
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
  _i2.GgetUnReadCountData? parseData(Map<String, dynamic> json) =>
      _i2.GgetUnReadCountData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetUnReadCountData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetUnReadCountData, _i3.GgetUnReadCountVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetUnReadCountReq> get serializer =>
      _$ggetUnReadCountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetUnReadCountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadCountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetUnReadCountReq.serializer,
        json,
      );
}

abstract class GgetThreadsReq
    implements
        Built<GgetThreadsReq, GgetThreadsReqBuilder>,
        _i1.OperationRequest<_i2.GgetThreadsData, _i3.GgetThreadsVars> {
  GgetThreadsReq._();

  factory GgetThreadsReq([void Function(GgetThreadsReqBuilder b) updates]) =
      _$GgetThreadsReq;

  static void _initializeBuilder(GgetThreadsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getThreads',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetThreadsVars get vars;
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
  _i2.GgetThreadsData? Function(
    _i2.GgetThreadsData?,
    _i2.GgetThreadsData?,
  )? get updateResult;
  @override
  _i2.GgetThreadsData? get optimisticResponse;
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
  _i2.GgetThreadsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetThreadsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetThreadsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetThreadsData, _i3.GgetThreadsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetThreadsReq> get serializer =>
      _$ggetThreadsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetThreadsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetThreadsReq.serializer,
        json,
      );
}

abstract class GsendMessageReq
    implements
        Built<GsendMessageReq, GsendMessageReqBuilder>,
        _i1.OperationRequest<_i2.GsendMessageData, _i3.GsendMessageVars> {
  GsendMessageReq._();

  factory GsendMessageReq([void Function(GsendMessageReqBuilder b) updates]) =
      _$GsendMessageReq;

  static void _initializeBuilder(GsendMessageReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'sendMessage',
    )
    ..executeOnListen = true;

  @override
  _i3.GsendMessageVars get vars;
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
  _i2.GsendMessageData? Function(
    _i2.GsendMessageData?,
    _i2.GsendMessageData?,
  )? get updateResult;
  @override
  _i2.GsendMessageData? get optimisticResponse;
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
  _i2.GsendMessageData? parseData(Map<String, dynamic> json) =>
      _i2.GsendMessageData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsendMessageData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsendMessageData, _i3.GsendMessageVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsendMessageReq> get serializer =>
      _$gsendMessageReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsendMessageReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendMessageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsendMessageReq.serializer,
        json,
      );
}

abstract class GreadMessageReq
    implements
        Built<GreadMessageReq, GreadMessageReqBuilder>,
        _i1.OperationRequest<_i2.GreadMessageData, _i3.GreadMessageVars> {
  GreadMessageReq._();

  factory GreadMessageReq([void Function(GreadMessageReqBuilder b) updates]) =
      _$GreadMessageReq;

  static void _initializeBuilder(GreadMessageReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'readMessage',
    )
    ..executeOnListen = true;

  @override
  _i3.GreadMessageVars get vars;
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
  _i2.GreadMessageData? Function(
    _i2.GreadMessageData?,
    _i2.GreadMessageData?,
  )? get updateResult;
  @override
  _i2.GreadMessageData? get optimisticResponse;
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
  _i2.GreadMessageData? parseData(Map<String, dynamic> json) =>
      _i2.GreadMessageData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GreadMessageData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GreadMessageData, _i3.GreadMessageVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GreadMessageReq> get serializer =>
      _$greadMessageReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreadMessageReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreadMessageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreadMessageReq.serializer,
        json,
      );
}

abstract class GgetUnReadThreadCountReq
    implements
        Built<GgetUnReadThreadCountReq, GgetUnReadThreadCountReqBuilder>,
        _i1.OperationRequest<_i2.GgetUnReadThreadCountData,
            _i3.GgetUnReadThreadCountVars> {
  GgetUnReadThreadCountReq._();

  factory GgetUnReadThreadCountReq(
          [void Function(GgetUnReadThreadCountReqBuilder b) updates]) =
      _$GgetUnReadThreadCountReq;

  static void _initializeBuilder(GgetUnReadThreadCountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getUnReadThreadCount',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetUnReadThreadCountVars get vars;
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
  _i2.GgetUnReadThreadCountData? Function(
    _i2.GgetUnReadThreadCountData?,
    _i2.GgetUnReadThreadCountData?,
  )? get updateResult;
  @override
  _i2.GgetUnReadThreadCountData? get optimisticResponse;
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
  _i2.GgetUnReadThreadCountData? parseData(Map<String, dynamic> json) =>
      _i2.GgetUnReadThreadCountData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetUnReadThreadCountData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetUnReadThreadCountData,
      _i3.GgetUnReadThreadCountVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetUnReadThreadCountReq> get serializer =>
      _$ggetUnReadThreadCountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetUnReadThreadCountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadThreadCountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetUnReadThreadCountReq.serializer,
        json,
      );
}
