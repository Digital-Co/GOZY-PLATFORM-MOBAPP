// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/dispute_result_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/dispute_result_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/dispute_result_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'dispute_result_fragment.req.gql.g.dart';

abstract class GdisputeResultFragmentReq
    implements
        Built<GdisputeResultFragmentReq, GdisputeResultFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GdisputeResultFragmentData,
            _i3.GdisputeResultFragmentVars> {
  GdisputeResultFragmentReq._();

  factory GdisputeResultFragmentReq(
          [void Function(GdisputeResultFragmentReqBuilder b) updates]) =
      _$GdisputeResultFragmentReq;

  static void _initializeBuilder(GdisputeResultFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'disputeResultFragment';

  @override
  _i3.GdisputeResultFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GdisputeResultFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GdisputeResultFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdisputeResultFragmentData data) =>
      data.toJson();

  static Serializer<GdisputeResultFragmentReq> get serializer =>
      _$gdisputeResultFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdisputeResultFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisputeResultFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdisputeResultFragmentReq.serializer,
        json,
      );
}
