// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/Reviews/__generated__/Reviews.ast.gql.dart' as _i5;
import 'package:gozy/graphql/Reviews/__generated__/Reviews.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/Reviews/__generated__/Reviews.var.gql.dart' as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'Reviews.req.gql.g.dart';

abstract class GgetUserReviewsReq
    implements
        Built<GgetUserReviewsReq, GgetUserReviewsReqBuilder>,
        _i1.OperationRequest<_i2.GgetUserReviewsData, _i3.GgetUserReviewsVars> {
  GgetUserReviewsReq._();

  factory GgetUserReviewsReq(
          [void Function(GgetUserReviewsReqBuilder b) updates]) =
      _$GgetUserReviewsReq;

  static void _initializeBuilder(GgetUserReviewsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getUserReviews',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetUserReviewsVars get vars;
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
  _i2.GgetUserReviewsData? Function(
    _i2.GgetUserReviewsData?,
    _i2.GgetUserReviewsData?,
  )? get updateResult;
  @override
  _i2.GgetUserReviewsData? get optimisticResponse;
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
  _i2.GgetUserReviewsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetUserReviewsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetUserReviewsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetUserReviewsData, _i3.GgetUserReviewsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetUserReviewsReq> get serializer =>
      _$ggetUserReviewsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetUserReviewsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetUserReviewsReq.serializer,
        json,
      );
}

abstract class GuserReviewsReq
    implements
        Built<GuserReviewsReq, GuserReviewsReqBuilder>,
        _i1.OperationRequest<_i2.GuserReviewsData, _i3.GuserReviewsVars> {
  GuserReviewsReq._();

  factory GuserReviewsReq([void Function(GuserReviewsReqBuilder b) updates]) =
      _$GuserReviewsReq;

  static void _initializeBuilder(GuserReviewsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'userReviews',
    )
    ..executeOnListen = true;

  @override
  _i3.GuserReviewsVars get vars;
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
  _i2.GuserReviewsData? Function(
    _i2.GuserReviewsData?,
    _i2.GuserReviewsData?,
  )? get updateResult;
  @override
  _i2.GuserReviewsData? get optimisticResponse;
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
  _i2.GuserReviewsData? parseData(Map<String, dynamic> json) =>
      _i2.GuserReviewsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GuserReviewsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GuserReviewsData, _i3.GuserReviewsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GuserReviewsReq> get serializer =>
      _$guserReviewsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserReviewsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserReviewsReq.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsReq
    implements
        Built<GgetPropertyReviewsReq, GgetPropertyReviewsReqBuilder>,
        _i1.OperationRequest<_i2.GgetPropertyReviewsData,
            _i3.GgetPropertyReviewsVars> {
  GgetPropertyReviewsReq._();

  factory GgetPropertyReviewsReq(
          [void Function(GgetPropertyReviewsReqBuilder b) updates]) =
      _$GgetPropertyReviewsReq;

  static void _initializeBuilder(GgetPropertyReviewsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPropertyReviews',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPropertyReviewsVars get vars;
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
  _i2.GgetPropertyReviewsData? Function(
    _i2.GgetPropertyReviewsData?,
    _i2.GgetPropertyReviewsData?,
  )? get updateResult;
  @override
  _i2.GgetPropertyReviewsData? get optimisticResponse;
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
  _i2.GgetPropertyReviewsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPropertyReviewsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPropertyReviewsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPropertyReviewsData, _i3.GgetPropertyReviewsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPropertyReviewsReq> get serializer =>
      _$ggetPropertyReviewsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPropertyReviewsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPropertyReviewsReq.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewsReq
    implements
        Built<GgetPendingUserReviewsReq, GgetPendingUserReviewsReqBuilder>,
        _i1.OperationRequest<_i2.GgetPendingUserReviewsData,
            _i3.GgetPendingUserReviewsVars> {
  GgetPendingUserReviewsReq._();

  factory GgetPendingUserReviewsReq(
          [void Function(GgetPendingUserReviewsReqBuilder b) updates]) =
      _$GgetPendingUserReviewsReq;

  static void _initializeBuilder(GgetPendingUserReviewsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPendingUserReviews',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPendingUserReviewsVars get vars;
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
  _i2.GgetPendingUserReviewsData? Function(
    _i2.GgetPendingUserReviewsData?,
    _i2.GgetPendingUserReviewsData?,
  )? get updateResult;
  @override
  _i2.GgetPendingUserReviewsData? get optimisticResponse;
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
  _i2.GgetPendingUserReviewsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPendingUserReviewsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPendingUserReviewsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPendingUserReviewsData,
      _i3.GgetPendingUserReviewsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPendingUserReviewsReq> get serializer =>
      _$ggetPendingUserReviewsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPendingUserReviewsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPendingUserReviewsReq.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewReq
    implements
        Built<GgetPendingUserReviewReq, GgetPendingUserReviewReqBuilder>,
        _i1.OperationRequest<_i2.GgetPendingUserReviewData,
            _i3.GgetPendingUserReviewVars> {
  GgetPendingUserReviewReq._();

  factory GgetPendingUserReviewReq(
          [void Function(GgetPendingUserReviewReqBuilder b) updates]) =
      _$GgetPendingUserReviewReq;

  static void _initializeBuilder(GgetPendingUserReviewReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getPendingUserReview',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetPendingUserReviewVars get vars;
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
  _i2.GgetPendingUserReviewData? Function(
    _i2.GgetPendingUserReviewData?,
    _i2.GgetPendingUserReviewData?,
  )? get updateResult;
  @override
  _i2.GgetPendingUserReviewData? get optimisticResponse;
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
  _i2.GgetPendingUserReviewData? parseData(Map<String, dynamic> json) =>
      _i2.GgetPendingUserReviewData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetPendingUserReviewData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetPendingUserReviewData,
      _i3.GgetPendingUserReviewVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetPendingUserReviewReq> get serializer =>
      _$ggetPendingUserReviewReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetPendingUserReviewReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetPendingUserReviewReq.serializer,
        json,
      );
}

abstract class GwriteUserReviewReq
    implements
        Built<GwriteUserReviewReq, GwriteUserReviewReqBuilder>,
        _i1
        .OperationRequest<_i2.GwriteUserReviewData, _i3.GwriteUserReviewVars> {
  GwriteUserReviewReq._();

  factory GwriteUserReviewReq(
          [void Function(GwriteUserReviewReqBuilder b) updates]) =
      _$GwriteUserReviewReq;

  static void _initializeBuilder(GwriteUserReviewReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'writeUserReview',
    )
    ..executeOnListen = true;

  @override
  _i3.GwriteUserReviewVars get vars;
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
  _i2.GwriteUserReviewData? Function(
    _i2.GwriteUserReviewData?,
    _i2.GwriteUserReviewData?,
  )? get updateResult;
  @override
  _i2.GwriteUserReviewData? get optimisticResponse;
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
  _i2.GwriteUserReviewData? parseData(Map<String, dynamic> json) =>
      _i2.GwriteUserReviewData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GwriteUserReviewData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GwriteUserReviewData, _i3.GwriteUserReviewVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GwriteUserReviewReq> get serializer =>
      _$gwriteUserReviewReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GwriteUserReviewReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GwriteUserReviewReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GwriteUserReviewReq.serializer,
        json,
      );
}
