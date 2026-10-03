// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'base_listing_info_fragment.req.gql.g.dart';

abstract class GviewListingShortFragmentReq
    implements
        Built<GviewListingShortFragmentReq,
            GviewListingShortFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GviewListingShortFragmentData,
            _i3.GviewListingShortFragmentVars> {
  GviewListingShortFragmentReq._();

  factory GviewListingShortFragmentReq(
          [void Function(GviewListingShortFragmentReqBuilder b) updates]) =
      _$GviewListingShortFragmentReq;

  static void _initializeBuilder(GviewListingShortFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'viewListingShortFragment';

  @override
  _i3.GviewListingShortFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GviewListingShortFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GviewListingShortFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GviewListingShortFragmentData data) =>
      data.toJson();

  static Serializer<GviewListingShortFragmentReq> get serializer =>
      _$gviewListingShortFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GviewListingShortFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GviewListingShortFragmentReq.serializer,
        json,
      );
}
