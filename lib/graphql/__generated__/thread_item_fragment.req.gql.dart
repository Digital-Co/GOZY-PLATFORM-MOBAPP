// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/__generated__/thread_item_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/thread_item_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/thread_item_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'thread_item_fragment.req.gql.g.dart';

abstract class GthreadItemsFragmentReq
    implements
        Built<GthreadItemsFragmentReq, GthreadItemsFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GthreadItemsFragmentData,
            _i3.GthreadItemsFragmentVars> {
  GthreadItemsFragmentReq._();

  factory GthreadItemsFragmentReq(
          [void Function(GthreadItemsFragmentReqBuilder b) updates]) =
      _$GthreadItemsFragmentReq;

  static void _initializeBuilder(GthreadItemsFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'threadItemsFragment';

  @override
  _i3.GthreadItemsFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GthreadItemsFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GthreadItemsFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GthreadItemsFragmentData data) =>
      data.toJson();

  static Serializer<GthreadItemsFragmentReq> get serializer =>
      _$gthreadItemsFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GthreadItemsFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GthreadItemsFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GthreadItemsFragmentReq.serializer,
        json,
      );
}
