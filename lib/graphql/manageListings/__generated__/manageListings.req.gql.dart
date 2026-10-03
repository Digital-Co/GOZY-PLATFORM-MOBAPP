// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/manageListings/__generated__/manageListings.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/manageListings/__generated__/manageListings.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/manageListings/__generated__/manageListings.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'manageListings.req.gql.g.dart';

abstract class GManageListingsReq
    implements
        Built<GManageListingsReq, GManageListingsReqBuilder>,
        _i1.OperationRequest<_i2.GManageListingsData, _i3.GManageListingsVars> {
  GManageListingsReq._();

  factory GManageListingsReq(
          [void Function(GManageListingsReqBuilder b) updates]) =
      _$GManageListingsReq;

  static void _initializeBuilder(GManageListingsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ManageListings',
    )
    ..executeOnListen = true;

  @override
  _i3.GManageListingsVars get vars;
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
  _i2.GManageListingsData? Function(
    _i2.GManageListingsData?,
    _i2.GManageListingsData?,
  )? get updateResult;
  @override
  _i2.GManageListingsData? get optimisticResponse;
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
  _i2.GManageListingsData? parseData(Map<String, dynamic> json) =>
      _i2.GManageListingsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GManageListingsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GManageListingsData, _i3.GManageListingsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GManageListingsReq> get serializer =>
      _$gManageListingsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GManageListingsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GManageListingsReq.serializer,
        json,
      );
}

abstract class GlistBlockedDatesReq
    implements
        Built<GlistBlockedDatesReq, GlistBlockedDatesReqBuilder>,
        _i1.OperationRequest<_i2.GlistBlockedDatesData,
            _i3.GlistBlockedDatesVars> {
  GlistBlockedDatesReq._();

  factory GlistBlockedDatesReq(
          [void Function(GlistBlockedDatesReqBuilder b) updates]) =
      _$GlistBlockedDatesReq;

  static void _initializeBuilder(GlistBlockedDatesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'listBlockedDates',
    )
    ..executeOnListen = true;

  @override
  _i3.GlistBlockedDatesVars get vars;
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
  _i2.GlistBlockedDatesData? Function(
    _i2.GlistBlockedDatesData?,
    _i2.GlistBlockedDatesData?,
  )? get updateResult;
  @override
  _i2.GlistBlockedDatesData? get optimisticResponse;
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
  _i2.GlistBlockedDatesData? parseData(Map<String, dynamic> json) =>
      _i2.GlistBlockedDatesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistBlockedDatesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GlistBlockedDatesData, _i3.GlistBlockedDatesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GlistBlockedDatesReq> get serializer =>
      _$glistBlockedDatesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistBlockedDatesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistBlockedDatesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistBlockedDatesReq.serializer,
        json,
      );
}

abstract class GUpdateListBlockedDatesReq
    implements
        Built<GUpdateListBlockedDatesReq, GUpdateListBlockedDatesReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateListBlockedDatesData,
            _i3.GUpdateListBlockedDatesVars> {
  GUpdateListBlockedDatesReq._();

  factory GUpdateListBlockedDatesReq(
          [void Function(GUpdateListBlockedDatesReqBuilder b) updates]) =
      _$GUpdateListBlockedDatesReq;

  static void _initializeBuilder(GUpdateListBlockedDatesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateListBlockedDates',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateListBlockedDatesVars get vars;
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
  _i2.GUpdateListBlockedDatesData? Function(
    _i2.GUpdateListBlockedDatesData?,
    _i2.GUpdateListBlockedDatesData?,
  )? get updateResult;
  @override
  _i2.GUpdateListBlockedDatesData? get optimisticResponse;
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
  _i2.GUpdateListBlockedDatesData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateListBlockedDatesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateListBlockedDatesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateListBlockedDatesData,
      _i3.GUpdateListBlockedDatesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateListBlockedDatesReq> get serializer =>
      _$gUpdateListBlockedDatesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateListBlockedDatesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListBlockedDatesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateListBlockedDatesReq.serializer,
        json,
      );
}

abstract class GRemoveListingReq
    implements
        Built<GRemoveListingReq, GRemoveListingReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveListingData, _i3.GRemoveListingVars> {
  GRemoveListingReq._();

  factory GRemoveListingReq(
          [void Function(GRemoveListingReqBuilder b) updates]) =
      _$GRemoveListingReq;

  static void _initializeBuilder(GRemoveListingReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemoveListing',
    )
    ..executeOnListen = true;

  @override
  _i3.GRemoveListingVars get vars;
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
  _i2.GRemoveListingData? Function(
    _i2.GRemoveListingData?,
    _i2.GRemoveListingData?,
  )? get updateResult;
  @override
  _i2.GRemoveListingData? get optimisticResponse;
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
  _i2.GRemoveListingData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveListingData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRemoveListingData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GRemoveListingData, _i3.GRemoveListingVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRemoveListingReq> get serializer =>
      _$gRemoveListingReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemoveListingReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListingReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemoveListingReq.serializer,
        json,
      );
}

abstract class GRemoveMultiPhotosReq
    implements
        Built<GRemoveMultiPhotosReq, GRemoveMultiPhotosReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveMultiPhotosData,
            _i3.GRemoveMultiPhotosVars> {
  GRemoveMultiPhotosReq._();

  factory GRemoveMultiPhotosReq(
          [void Function(GRemoveMultiPhotosReqBuilder b) updates]) =
      _$GRemoveMultiPhotosReq;

  static void _initializeBuilder(GRemoveMultiPhotosReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemoveMultiPhotos',
    )
    ..executeOnListen = true;

  @override
  _i3.GRemoveMultiPhotosVars get vars;
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
  _i2.GRemoveMultiPhotosData? Function(
    _i2.GRemoveMultiPhotosData?,
    _i2.GRemoveMultiPhotosData?,
  )? get updateResult;
  @override
  _i2.GRemoveMultiPhotosData? get optimisticResponse;
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
  _i2.GRemoveMultiPhotosData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveMultiPhotosData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRemoveMultiPhotosData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GRemoveMultiPhotosData, _i3.GRemoveMultiPhotosVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRemoveMultiPhotosReq> get serializer =>
      _$gRemoveMultiPhotosReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemoveMultiPhotosReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveMultiPhotosReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemoveMultiPhotosReq.serializer,
        json,
      );
}

abstract class GgetListingSpecialPriceReq
    implements
        Built<GgetListingSpecialPriceReq, GgetListingSpecialPriceReqBuilder>,
        _i1.OperationRequest<_i2.GgetListingSpecialPriceData,
            _i3.GgetListingSpecialPriceVars> {
  GgetListingSpecialPriceReq._();

  factory GgetListingSpecialPriceReq(
          [void Function(GgetListingSpecialPriceReqBuilder b) updates]) =
      _$GgetListingSpecialPriceReq;

  static void _initializeBuilder(GgetListingSpecialPriceReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getListingSpecialPrice',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetListingSpecialPriceVars get vars;
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
  _i2.GgetListingSpecialPriceData? Function(
    _i2.GgetListingSpecialPriceData?,
    _i2.GgetListingSpecialPriceData?,
  )? get updateResult;
  @override
  _i2.GgetListingSpecialPriceData? get optimisticResponse;
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
  _i2.GgetListingSpecialPriceData? parseData(Map<String, dynamic> json) =>
      _i2.GgetListingSpecialPriceData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetListingSpecialPriceData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetListingSpecialPriceData,
      _i3.GgetListingSpecialPriceVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetListingSpecialPriceReq> get serializer =>
      _$ggetListingSpecialPriceReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetListingSpecialPriceReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSpecialPriceReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetListingSpecialPriceReq.serializer,
        json,
      );
}

abstract class GUpdateSpecialPriceReq
    implements
        Built<GUpdateSpecialPriceReq, GUpdateSpecialPriceReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateSpecialPriceData,
            _i3.GUpdateSpecialPriceVars> {
  GUpdateSpecialPriceReq._();

  factory GUpdateSpecialPriceReq(
          [void Function(GUpdateSpecialPriceReqBuilder b) updates]) =
      _$GUpdateSpecialPriceReq;

  static void _initializeBuilder(GUpdateSpecialPriceReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateSpecialPrice',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateSpecialPriceVars get vars;
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
  _i2.GUpdateSpecialPriceData? Function(
    _i2.GUpdateSpecialPriceData?,
    _i2.GUpdateSpecialPriceData?,
  )? get updateResult;
  @override
  _i2.GUpdateSpecialPriceData? get optimisticResponse;
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
  _i2.GUpdateSpecialPriceData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateSpecialPriceData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateSpecialPriceData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateSpecialPriceData, _i3.GUpdateSpecialPriceVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateSpecialPriceReq> get serializer =>
      _$gUpdateSpecialPriceReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateSpecialPriceReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateSpecialPriceReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateSpecialPriceReq.serializer,
        json,
      );
}
