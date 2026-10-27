// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'inspection_photo_fragment.req.gql.g.dart';

abstract class GinspectionPhotoFragmentReq
    implements
        Built<GinspectionPhotoFragmentReq, GinspectionPhotoFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GinspectionPhotoFragmentData,
            _i3.GinspectionPhotoFragmentVars> {
  GinspectionPhotoFragmentReq._();

  factory GinspectionPhotoFragmentReq(
          [void Function(GinspectionPhotoFragmentReqBuilder b) updates]) =
      _$GinspectionPhotoFragmentReq;

  static void _initializeBuilder(GinspectionPhotoFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'inspectionPhotoFragment';

  @override
  _i3.GinspectionPhotoFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GinspectionPhotoFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GinspectionPhotoFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GinspectionPhotoFragmentData data) =>
      data.toJson();

  static Serializer<GinspectionPhotoFragmentReq> get serializer =>
      _$ginspectionPhotoFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GinspectionPhotoFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionPhotoFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GinspectionPhotoFragmentReq.serializer,
        json,
      );
}
