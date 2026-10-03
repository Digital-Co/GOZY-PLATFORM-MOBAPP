// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/all_thread_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/all_thread_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/all_thread_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'all_thread_fragment.req.gql.g.dart';

abstract class GallThreadsFragmentReq
    implements
        Built<GallThreadsFragmentReq, GallThreadsFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GallThreadsFragmentData,
            _i3.GallThreadsFragmentVars> {
  GallThreadsFragmentReq._();

  factory GallThreadsFragmentReq(
          [void Function(GallThreadsFragmentReqBuilder b) updates]) =
      _$GallThreadsFragmentReq;

  static void _initializeBuilder(GallThreadsFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'allThreadsFragment';

  @override
  _i3.GallThreadsFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GallThreadsFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GallThreadsFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GallThreadsFragmentData data) =>
      data.toJson();

  static Serializer<GallThreadsFragmentReq> get serializer =>
      _$gallThreadsFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GallThreadsFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GallThreadsFragmentReq.serializer,
        json,
      );
}
