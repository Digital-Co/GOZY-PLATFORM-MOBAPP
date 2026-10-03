// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/listing_user_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_user_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'listing_user_fragment.req.gql.g.dart';

abstract class GlistingUserFragmentReq
    implements
        Built<GlistingUserFragmentReq, GlistingUserFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingUserFragmentData,
            _i3.GlistingUserFragmentVars> {
  GlistingUserFragmentReq._();

  factory GlistingUserFragmentReq(
          [void Function(GlistingUserFragmentReqBuilder b) updates]) =
      _$GlistingUserFragmentReq;

  static void _initializeBuilder(GlistingUserFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingUserFragment';

  @override
  _i3.GlistingUserFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingUserFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingUserFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingUserFragmentData data) =>
      data.toJson();

  static Serializer<GlistingUserFragmentReq> get serializer =>
      _$glistingUserFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingUserFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingUserFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingUserFragmentReq.serializer,
        json,
      );
}
