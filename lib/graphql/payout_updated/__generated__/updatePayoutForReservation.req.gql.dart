// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/payout_updated/__generated__/updatePayoutForReservation.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/payout_updated/__generated__/updatePayoutForReservation.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/payout_updated/__generated__/updatePayoutForReservation.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'updatePayoutForReservation.req.gql.g.dart';

abstract class GupdatePayoutForReservationReq
    implements
        Built<GupdatePayoutForReservationReq,
            GupdatePayoutForReservationReqBuilder>,
        _i1.OperationRequest<_i2.GupdatePayoutForReservationData,
            _i3.GupdatePayoutForReservationVars> {
  GupdatePayoutForReservationReq._();

  factory GupdatePayoutForReservationReq(
          [void Function(GupdatePayoutForReservationReqBuilder b) updates]) =
      _$GupdatePayoutForReservationReq;

  static void _initializeBuilder(GupdatePayoutForReservationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'updatePayoutForReservation',
    )
    ..executeOnListen = true;

  @override
  _i3.GupdatePayoutForReservationVars get vars;
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
  _i2.GupdatePayoutForReservationData? Function(
    _i2.GupdatePayoutForReservationData?,
    _i2.GupdatePayoutForReservationData?,
  )? get updateResult;
  @override
  _i2.GupdatePayoutForReservationData? get optimisticResponse;
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
  _i2.GupdatePayoutForReservationData? parseData(Map<String, dynamic> json) =>
      _i2.GupdatePayoutForReservationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GupdatePayoutForReservationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GupdatePayoutForReservationData,
      _i3.GupdatePayoutForReservationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GupdatePayoutForReservationReq> get serializer =>
      _$gupdatePayoutForReservationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupdatePayoutForReservationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdatePayoutForReservationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupdatePayoutForReservationReq.serializer,
        json,
      );
}
