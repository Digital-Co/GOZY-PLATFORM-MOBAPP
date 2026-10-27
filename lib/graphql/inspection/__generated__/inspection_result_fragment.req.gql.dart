// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/inspection_result_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/inspection_result_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/inspection_result_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'inspection_result_fragment.req.gql.g.dart';

abstract class GinspectionResultFragmentReq
    implements
        Built<GinspectionResultFragmentReq,
            GinspectionResultFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GinspectionResultFragmentData,
            _i3.GinspectionResultFragmentVars> {
  GinspectionResultFragmentReq._();

  factory GinspectionResultFragmentReq(
          [void Function(GinspectionResultFragmentReqBuilder b) updates]) =
      _$GinspectionResultFragmentReq;

  static void _initializeBuilder(GinspectionResultFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'inspectionResultFragment';

  @override
  _i3.GinspectionResultFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GinspectionResultFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GinspectionResultFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GinspectionResultFragmentData data) =>
      data.toJson();

  static Serializer<GinspectionResultFragmentReq> get serializer =>
      _$ginspectionResultFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GinspectionResultFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionResultFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GinspectionResultFragmentReq.serializer,
        json,
      );
}
