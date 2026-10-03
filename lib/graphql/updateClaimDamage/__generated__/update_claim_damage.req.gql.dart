// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/updateClaimDamage/__generated__/update_claim_damage.ast.gql.dart'
    as _i5;
import 'package:gozy/graphql/updateClaimDamage/__generated__/update_claim_damage.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/updateClaimDamage/__generated__/update_claim_damage.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'update_claim_damage.req.gql.g.dart';

abstract class GupdateClaimReq
    implements
        Built<GupdateClaimReq, GupdateClaimReqBuilder>,
        _i1.OperationRequest<_i2.GupdateClaimData, _i3.GupdateClaimVars> {
  GupdateClaimReq._();

  factory GupdateClaimReq([void Function(GupdateClaimReqBuilder b) updates]) =
      _$GupdateClaimReq;

  static void _initializeBuilder(GupdateClaimReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'updateClaim',
    )
    ..executeOnListen = true;

  @override
  _i3.GupdateClaimVars get vars;
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
  _i2.GupdateClaimData? Function(
    _i2.GupdateClaimData?,
    _i2.GupdateClaimData?,
  )? get updateResult;
  @override
  _i2.GupdateClaimData? get optimisticResponse;
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
  _i2.GupdateClaimData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateClaimData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GupdateClaimData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GupdateClaimData, _i3.GupdateClaimVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GupdateClaimReq> get serializer =>
      _$gupdateClaimReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupdateClaimReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateClaimReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupdateClaimReq.serializer,
        json,
      );
}
