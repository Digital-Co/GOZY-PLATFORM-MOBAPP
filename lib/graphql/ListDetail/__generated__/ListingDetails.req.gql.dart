// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ListDetail/__generated__/ListingDetails.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ListingDetails.req.gql.g.dart';

abstract class GgetSimilarListingReq
    implements
        Built<GgetSimilarListingReq, GgetSimilarListingReqBuilder>,
        _i1.OperationRequest<_i2.GgetSimilarListingData,
            _i3.GgetSimilarListingVars> {
  GgetSimilarListingReq._();

  factory GgetSimilarListingReq(
          [void Function(GgetSimilarListingReqBuilder b) updates]) =
      _$GgetSimilarListingReq;

  static void _initializeBuilder(GgetSimilarListingReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getSimilarListing',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetSimilarListingVars get vars;
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
  _i2.GgetSimilarListingData? Function(
    _i2.GgetSimilarListingData?,
    _i2.GgetSimilarListingData?,
  )? get updateResult;
  @override
  _i2.GgetSimilarListingData? get optimisticResponse;
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
  _i2.GgetSimilarListingData? parseData(Map<String, dynamic> json) =>
      _i2.GgetSimilarListingData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetSimilarListingData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetSimilarListingData, _i3.GgetSimilarListingVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetSimilarListingReq> get serializer =>
      _$ggetSimilarListingReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetSimilarListingReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetSimilarListingReq.serializer,
        json,
      );
}

abstract class GviewListingDetailsReq
    implements
        Built<GviewListingDetailsReq, GviewListingDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GviewListingDetailsData,
            _i3.GviewListingDetailsVars> {
  GviewListingDetailsReq._();

  factory GviewListingDetailsReq(
          [void Function(GviewListingDetailsReqBuilder b) updates]) =
      _$GviewListingDetailsReq;

  static void _initializeBuilder(GviewListingDetailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'viewListingDetails',
    )
    ..executeOnListen = true;

  @override
  _i3.GviewListingDetailsVars get vars;
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
  _i2.GviewListingDetailsData? Function(
    _i2.GviewListingDetailsData?,
    _i2.GviewListingDetailsData?,
  )? get updateResult;
  @override
  _i2.GviewListingDetailsData? get optimisticResponse;
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
  _i2.GviewListingDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GviewListingDetailsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GviewListingDetailsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GviewListingDetailsData, _i3.GviewListingDetailsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GviewListingDetailsReq> get serializer =>
      _$gviewListingDetailsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GviewListingDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GviewListingDetailsReq.serializer,
        json,
      );
}

abstract class GgetReviewsListReq
    implements
        Built<GgetReviewsListReq, GgetReviewsListReqBuilder>,
        _i1.OperationRequest<_i2.GgetReviewsListData, _i3.GgetReviewsListVars> {
  GgetReviewsListReq._();

  factory GgetReviewsListReq(
          [void Function(GgetReviewsListReqBuilder b) updates]) =
      _$GgetReviewsListReq;

  static void _initializeBuilder(GgetReviewsListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getReviewsList',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetReviewsListVars get vars;
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
  _i2.GgetReviewsListData? Function(
    _i2.GgetReviewsListData?,
    _i2.GgetReviewsListData?,
  )? get updateResult;
  @override
  _i2.GgetReviewsListData? get optimisticResponse;
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
  _i2.GgetReviewsListData? parseData(Map<String, dynamic> json) =>
      _i2.GgetReviewsListData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetReviewsListData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetReviewsListData, _i3.GgetReviewsListVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetReviewsListReq> get serializer =>
      _$ggetReviewsListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetReviewsListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetReviewsListReq.serializer,
        json,
      );
}

abstract class GdateAvailabilityReq
    implements
        Built<GdateAvailabilityReq, GdateAvailabilityReqBuilder>,
        _i1.OperationRequest<_i2.GdateAvailabilityData,
            _i3.GdateAvailabilityVars> {
  GdateAvailabilityReq._();

  factory GdateAvailabilityReq(
          [void Function(GdateAvailabilityReqBuilder b) updates]) =
      _$GdateAvailabilityReq;

  static void _initializeBuilder(GdateAvailabilityReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'dateAvailability',
    )
    ..executeOnListen = true;

  @override
  _i3.GdateAvailabilityVars get vars;
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
  _i2.GdateAvailabilityData? Function(
    _i2.GdateAvailabilityData?,
    _i2.GdateAvailabilityData?,
  )? get updateResult;
  @override
  _i2.GdateAvailabilityData? get optimisticResponse;
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
  _i2.GdateAvailabilityData? parseData(Map<String, dynamic> json) =>
      _i2.GdateAvailabilityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdateAvailabilityData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GdateAvailabilityData, _i3.GdateAvailabilityVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GdateAvailabilityReq> get serializer =>
      _$gdateAvailabilityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdateAvailabilityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdateAvailabilityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdateAvailabilityReq.serializer,
        json,
      );
}

abstract class GContactHostReq
    implements
        Built<GContactHostReq, GContactHostReqBuilder>,
        _i1.OperationRequest<_i2.GContactHostData, _i3.GContactHostVars> {
  GContactHostReq._();

  factory GContactHostReq([void Function(GContactHostReqBuilder b) updates]) =
      _$GContactHostReq;

  static void _initializeBuilder(GContactHostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ContactHost',
    )
    ..executeOnListen = true;

  @override
  _i3.GContactHostVars get vars;
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
  _i2.GContactHostData? Function(
    _i2.GContactHostData?,
    _i2.GContactHostData?,
  )? get updateResult;
  @override
  _i2.GContactHostData? get optimisticResponse;
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
  _i2.GContactHostData? parseData(Map<String, dynamic> json) =>
      _i2.GContactHostData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GContactHostData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GContactHostData, _i3.GContactHostVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GContactHostReq> get serializer =>
      _$gContactHostReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GContactHostReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactHostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GContactHostReq.serializer,
        json,
      );
}

abstract class GCreateReportUserReq
    implements
        Built<GCreateReportUserReq, GCreateReportUserReqBuilder>,
        _i1.OperationRequest<_i2.GCreateReportUserData,
            _i3.GCreateReportUserVars> {
  GCreateReportUserReq._();

  factory GCreateReportUserReq(
          [void Function(GCreateReportUserReqBuilder b) updates]) =
      _$GCreateReportUserReq;

  static void _initializeBuilder(GCreateReportUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateReportUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateReportUserVars get vars;
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
  _i2.GCreateReportUserData? Function(
    _i2.GCreateReportUserData?,
    _i2.GCreateReportUserData?,
  )? get updateResult;
  @override
  _i2.GCreateReportUserData? get optimisticResponse;
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
  _i2.GCreateReportUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateReportUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateReportUserData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateReportUserData, _i3.GCreateReportUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateReportUserReq> get serializer =>
      _$gCreateReportUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateReportUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateReportUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateReportUserReq.serializer,
        json,
      );
}

abstract class GgetAllReportTypeReq
    implements
        Built<GgetAllReportTypeReq, GgetAllReportTypeReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllReportTypeData,
            _i3.GgetAllReportTypeVars> {
  GgetAllReportTypeReq._();

  factory GgetAllReportTypeReq(
          [void Function(GgetAllReportTypeReqBuilder b) updates]) =
      _$GgetAllReportTypeReq;

  static void _initializeBuilder(GgetAllReportTypeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllReportType',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllReportTypeVars get vars;
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
  _i2.GgetAllReportTypeData? Function(
    _i2.GgetAllReportTypeData?,
    _i2.GgetAllReportTypeData?,
  )? get updateResult;
  @override
  _i2.GgetAllReportTypeData? get optimisticResponse;
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
  _i2.GgetAllReportTypeData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllReportTypeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllReportTypeData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllReportTypeData, _i3.GgetAllReportTypeVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllReportTypeReq> get serializer =>
      _$ggetAllReportTypeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllReportTypeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReportTypeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllReportTypeReq.serializer,
        json,
      );
}
