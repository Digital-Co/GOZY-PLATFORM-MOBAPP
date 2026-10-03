// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/wishlist/__generated__/wishlist.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/wishlist/__generated__/wishlist.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/wishlist/__generated__/wishlist.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'wishlist.req.gql.g.dart';

abstract class GCreateWishListGroupReq
    implements
        Built<GCreateWishListGroupReq, GCreateWishListGroupReqBuilder>,
        _i1.OperationRequest<_i2.GCreateWishListGroupData,
            _i3.GCreateWishListGroupVars> {
  GCreateWishListGroupReq._();

  factory GCreateWishListGroupReq(
          [void Function(GCreateWishListGroupReqBuilder b) updates]) =
      _$GCreateWishListGroupReq;

  static void _initializeBuilder(GCreateWishListGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateWishListGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateWishListGroupVars get vars;
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
  _i2.GCreateWishListGroupData? Function(
    _i2.GCreateWishListGroupData?,
    _i2.GCreateWishListGroupData?,
  )? get updateResult;
  @override
  _i2.GCreateWishListGroupData? get optimisticResponse;
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
  _i2.GCreateWishListGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateWishListGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateWishListGroupData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateWishListGroupData,
      _i3.GCreateWishListGroupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateWishListGroupReq> get serializer =>
      _$gCreateWishListGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateWishListGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateWishListGroupReq.serializer,
        json,
      );
}

abstract class GgetAllWishListGroupReq
    implements
        Built<GgetAllWishListGroupReq, GgetAllWishListGroupReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllWishListGroupData,
            _i3.GgetAllWishListGroupVars> {
  GgetAllWishListGroupReq._();

  factory GgetAllWishListGroupReq(
          [void Function(GgetAllWishListGroupReqBuilder b) updates]) =
      _$GgetAllWishListGroupReq;

  static void _initializeBuilder(GgetAllWishListGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllWishListGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllWishListGroupVars get vars;
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
  _i2.GgetAllWishListGroupData? Function(
    _i2.GgetAllWishListGroupData?,
    _i2.GgetAllWishListGroupData?,
  )? get updateResult;
  @override
  _i2.GgetAllWishListGroupData? get optimisticResponse;
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
  _i2.GgetAllWishListGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllWishListGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllWishListGroupData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllWishListGroupData,
      _i3.GgetAllWishListGroupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllWishListGroupReq> get serializer =>
      _$ggetAllWishListGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllWishListGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllWishListGroupReq.serializer,
        json,
      );
}

abstract class GCreateWishListReq
    implements
        Built<GCreateWishListReq, GCreateWishListReqBuilder>,
        _i1.OperationRequest<_i2.GCreateWishListData, _i3.GCreateWishListVars> {
  GCreateWishListReq._();

  factory GCreateWishListReq(
          [void Function(GCreateWishListReqBuilder b) updates]) =
      _$GCreateWishListReq;

  static void _initializeBuilder(GCreateWishListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateWishList',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateWishListVars get vars;
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
  _i2.GCreateWishListData? Function(
    _i2.GCreateWishListData?,
    _i2.GCreateWishListData?,
  )? get updateResult;
  @override
  _i2.GCreateWishListData? get optimisticResponse;
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
  _i2.GCreateWishListData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateWishListData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateWishListData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateWishListData, _i3.GCreateWishListVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateWishListReq> get serializer =>
      _$gCreateWishListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateWishListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateWishListReq.serializer,
        json,
      );
}

abstract class GgetWishListGroupReq
    implements
        Built<GgetWishListGroupReq, GgetWishListGroupReqBuilder>,
        _i1.OperationRequest<_i2.GgetWishListGroupData,
            _i3.GgetWishListGroupVars> {
  GgetWishListGroupReq._();

  factory GgetWishListGroupReq(
          [void Function(GgetWishListGroupReqBuilder b) updates]) =
      _$GgetWishListGroupReq;

  static void _initializeBuilder(GgetWishListGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getWishListGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetWishListGroupVars get vars;
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
  _i2.GgetWishListGroupData? Function(
    _i2.GgetWishListGroupData?,
    _i2.GgetWishListGroupData?,
  )? get updateResult;
  @override
  _i2.GgetWishListGroupData? get optimisticResponse;
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
  _i2.GgetWishListGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GgetWishListGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetWishListGroupData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetWishListGroupData, _i3.GgetWishListGroupVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetWishListGroupReq> get serializer =>
      _$ggetWishListGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetWishListGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetWishListGroupReq.serializer,
        json,
      );
}

abstract class GDeleteWishListGroupReq
    implements
        Built<GDeleteWishListGroupReq, GDeleteWishListGroupReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteWishListGroupData,
            _i3.GDeleteWishListGroupVars> {
  GDeleteWishListGroupReq._();

  factory GDeleteWishListGroupReq(
          [void Function(GDeleteWishListGroupReqBuilder b) updates]) =
      _$GDeleteWishListGroupReq;

  static void _initializeBuilder(GDeleteWishListGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteWishListGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteWishListGroupVars get vars;
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
  _i2.GDeleteWishListGroupData? Function(
    _i2.GDeleteWishListGroupData?,
    _i2.GDeleteWishListGroupData?,
  )? get updateResult;
  @override
  _i2.GDeleteWishListGroupData? get optimisticResponse;
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
  _i2.GDeleteWishListGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteWishListGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteWishListGroupData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteWishListGroupData,
      _i3.GDeleteWishListGroupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteWishListGroupReq> get serializer =>
      _$gDeleteWishListGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteWishListGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteWishListGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteWishListGroupReq.serializer,
        json,
      );
}

abstract class GUpdateWishListGroupReq
    implements
        Built<GUpdateWishListGroupReq, GUpdateWishListGroupReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateWishListGroupData,
            _i3.GUpdateWishListGroupVars> {
  GUpdateWishListGroupReq._();

  factory GUpdateWishListGroupReq(
          [void Function(GUpdateWishListGroupReqBuilder b) updates]) =
      _$GUpdateWishListGroupReq;

  static void _initializeBuilder(GUpdateWishListGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateWishListGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateWishListGroupVars get vars;
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
  _i2.GUpdateWishListGroupData? Function(
    _i2.GUpdateWishListGroupData?,
    _i2.GUpdateWishListGroupData?,
  )? get updateResult;
  @override
  _i2.GUpdateWishListGroupData? get optimisticResponse;
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
  _i2.GUpdateWishListGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateWishListGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateWishListGroupData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateWishListGroupData,
      _i3.GUpdateWishListGroupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateWishListGroupReq> get serializer =>
      _$gUpdateWishListGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateWishListGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateWishListGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateWishListGroupReq.serializer,
        json,
      );
}
