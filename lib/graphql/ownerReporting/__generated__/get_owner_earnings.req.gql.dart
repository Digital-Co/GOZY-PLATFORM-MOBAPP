// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_earnings.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_earnings.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/get_owner_earnings.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_owner_earnings.req.gql.g.dart';

abstract class GgetOwnerEarningsReq
    implements
        Built<GgetOwnerEarningsReq, GgetOwnerEarningsReqBuilder>,
        _i1.OperationRequest<_i2.GgetOwnerEarningsData,
            _i3.GgetOwnerEarningsVars> {
  GgetOwnerEarningsReq._();

  factory GgetOwnerEarningsReq(
          [void Function(GgetOwnerEarningsReqBuilder b) updates]) =
      _$GgetOwnerEarningsReq;

  static void _initializeBuilder(GgetOwnerEarningsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getOwnerEarnings',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetOwnerEarningsVars get vars;
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
  _i2.GgetOwnerEarningsData? Function(
    _i2.GgetOwnerEarningsData?,
    _i2.GgetOwnerEarningsData?,
  )? get updateResult;
  @override
  _i2.GgetOwnerEarningsData? get optimisticResponse;
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
  _i2.GgetOwnerEarningsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetOwnerEarningsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetOwnerEarningsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetOwnerEarningsData, _i3.GgetOwnerEarningsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetOwnerEarningsReq> get serializer =>
      _$ggetOwnerEarningsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetOwnerEarningsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetOwnerEarningsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetOwnerEarningsReq.serializer,
        json,
      );
}
