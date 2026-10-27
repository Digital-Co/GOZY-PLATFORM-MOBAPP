// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/inspection_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/inspection_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/inspection_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'inspection_fragment.req.gql.g.dart';

abstract class GinspectionFragmentReq
    implements
        Built<GinspectionFragmentReq, GinspectionFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GinspectionFragmentData,
            _i3.GinspectionFragmentVars> {
  GinspectionFragmentReq._();

  factory GinspectionFragmentReq(
          [void Function(GinspectionFragmentReqBuilder b) updates]) =
      _$GinspectionFragmentReq;

  static void _initializeBuilder(GinspectionFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'inspectionFragment';

  @override
  _i3.GinspectionFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GinspectionFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GinspectionFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GinspectionFragmentData data) =>
      data.toJson();

  static Serializer<GinspectionFragmentReq> get serializer =>
      _$ginspectionFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GinspectionFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GinspectionFragmentReq.serializer,
        json,
      );
}
