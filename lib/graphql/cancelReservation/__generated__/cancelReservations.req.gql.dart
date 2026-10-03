// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/cancelReservation/__generated__/cancelReservations.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/cancelReservation/__generated__/cancelReservations.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/cancelReservation/__generated__/cancelReservations.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'cancelReservations.req.gql.g.dart';

abstract class GCancellationDataReq
    implements
        Built<GCancellationDataReq, GCancellationDataReqBuilder>,
        _i1.OperationRequest<_i2.GCancellationDataData,
            _i3.GCancellationDataVars> {
  GCancellationDataReq._();

  factory GCancellationDataReq(
          [void Function(GCancellationDataReqBuilder b) updates]) =
      _$GCancellationDataReq;

  static void _initializeBuilder(GCancellationDataReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CancellationData',
    )
    ..executeOnListen = true;

  @override
  _i3.GCancellationDataVars get vars;
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
  _i2.GCancellationDataData? Function(
    _i2.GCancellationDataData?,
    _i2.GCancellationDataData?,
  )? get updateResult;
  @override
  _i2.GCancellationDataData? get optimisticResponse;
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
  _i2.GCancellationDataData? parseData(Map<String, dynamic> json) =>
      _i2.GCancellationDataData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCancellationDataData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCancellationDataData, _i3.GCancellationDataVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCancellationDataReq> get serializer =>
      _$gCancellationDataReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCancellationDataReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCancellationDataReq.serializer,
        json,
      );
}

abstract class GCancelReservationReq
    implements
        Built<GCancelReservationReq, GCancelReservationReqBuilder>,
        _i1.OperationRequest<_i2.GCancelReservationData,
            _i3.GCancelReservationVars> {
  GCancelReservationReq._();

  factory GCancelReservationReq(
          [void Function(GCancelReservationReqBuilder b) updates]) =
      _$GCancelReservationReq;

  static void _initializeBuilder(GCancelReservationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CancelReservation',
    )
    ..executeOnListen = true;

  @override
  _i3.GCancelReservationVars get vars;
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
  _i2.GCancelReservationData? Function(
    _i2.GCancelReservationData?,
    _i2.GCancelReservationData?,
  )? get updateResult;
  @override
  _i2.GCancelReservationData? get optimisticResponse;
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
  _i2.GCancelReservationData? parseData(Map<String, dynamic> json) =>
      _i2.GCancelReservationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCancelReservationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCancelReservationData, _i3.GCancelReservationVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCancelReservationReq> get serializer =>
      _$gCancelReservationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCancelReservationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancelReservationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCancelReservationReq.serializer,
        json,
      );
}
