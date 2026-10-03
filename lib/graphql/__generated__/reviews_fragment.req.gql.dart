// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/reviews_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/reviews_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/reviews_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'reviews_fragment.req.gql.g.dart';

abstract class GreviewsFragmentReq
    implements
        Built<GreviewsFragmentReq, GreviewsFragmentReqBuilder>,
        _i1
        .FragmentRequest<_i2.GreviewsFragmentData, _i3.GreviewsFragmentVars> {
  GreviewsFragmentReq._();

  factory GreviewsFragmentReq(
          [void Function(GreviewsFragmentReqBuilder b) updates]) =
      _$GreviewsFragmentReq;

  static void _initializeBuilder(GreviewsFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'reviewsFragment';

  @override
  _i3.GreviewsFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GreviewsFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GreviewsFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GreviewsFragmentData data) =>
      data.toJson();

  static Serializer<GreviewsFragmentReq> get serializer =>
      _$greviewsFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GreviewsFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GreviewsFragmentReq.serializer,
        json,
      );
}
