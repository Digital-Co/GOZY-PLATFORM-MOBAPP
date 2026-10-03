// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/Reservations/__generated__/getAllReservations.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/Reservations/__generated__/getAllReservations.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/Reservations/__generated__/getAllReservations.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getAllReservations.req.gql.g.dart';

abstract class GgetAllReservationReq
    implements
        Built<GgetAllReservationReq, GgetAllReservationReqBuilder>,
        _i1.OperationRequest<_i2.GgetAllReservationData,
            _i3.GgetAllReservationVars> {
  GgetAllReservationReq._();

  factory GgetAllReservationReq(
          [void Function(GgetAllReservationReqBuilder b) updates]) =
      _$GgetAllReservationReq;

  static void _initializeBuilder(GgetAllReservationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getAllReservation',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetAllReservationVars get vars;
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
  _i2.GgetAllReservationData? Function(
    _i2.GgetAllReservationData?,
    _i2.GgetAllReservationData?,
  )? get updateResult;
  @override
  _i2.GgetAllReservationData? get optimisticResponse;
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
  _i2.GgetAllReservationData? parseData(Map<String, dynamic> json) =>
      _i2.GgetAllReservationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetAllReservationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetAllReservationData, _i3.GgetAllReservationVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetAllReservationReq> get serializer =>
      _$ggetAllReservationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetAllReservationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReservationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetAllReservationReq.serializer,
        json,
      );
}

abstract class GcontactSupportReq
    implements
        Built<GcontactSupportReq, GcontactSupportReqBuilder>,
        _i1.OperationRequest<_i2.GcontactSupportData, _i3.GcontactSupportVars> {
  GcontactSupportReq._();

  factory GcontactSupportReq(
          [void Function(GcontactSupportReqBuilder b) updates]) =
      _$GcontactSupportReq;

  static void _initializeBuilder(GcontactSupportReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'contactSupport',
    )
    ..executeOnListen = true;

  @override
  _i3.GcontactSupportVars get vars;
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
  _i2.GcontactSupportData? Function(
    _i2.GcontactSupportData?,
    _i2.GcontactSupportData?,
  )? get updateResult;
  @override
  _i2.GcontactSupportData? get optimisticResponse;
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
  _i2.GcontactSupportData? parseData(Map<String, dynamic> json) =>
      _i2.GcontactSupportData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcontactSupportData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GcontactSupportData, _i3.GcontactSupportVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcontactSupportReq> get serializer =>
      _$gcontactSupportReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcontactSupportReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontactSupportReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcontactSupportReq.serializer,
        json,
      );
}

abstract class GReservationStatusReq
    implements
        Built<GReservationStatusReq, GReservationStatusReqBuilder>,
        _i1.OperationRequest<_i2.GReservationStatusData,
            _i3.GReservationStatusVars> {
  GReservationStatusReq._();

  factory GReservationStatusReq(
          [void Function(GReservationStatusReqBuilder b) updates]) =
      _$GReservationStatusReq;

  static void _initializeBuilder(GReservationStatusReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ReservationStatus',
    )
    ..executeOnListen = true;

  @override
  _i3.GReservationStatusVars get vars;
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
  _i2.GReservationStatusData? Function(
    _i2.GReservationStatusData?,
    _i2.GReservationStatusData?,
  )? get updateResult;
  @override
  _i2.GReservationStatusData? get optimisticResponse;
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
  _i2.GReservationStatusData? parseData(Map<String, dynamic> json) =>
      _i2.GReservationStatusData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GReservationStatusData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GReservationStatusData, _i3.GReservationStatusVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GReservationStatusReq> get serializer =>
      _$gReservationStatusReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReservationStatusReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReservationStatusReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReservationStatusReq.serializer,
        json,
      );
}
