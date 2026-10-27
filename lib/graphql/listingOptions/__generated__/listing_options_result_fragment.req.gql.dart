// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/listingOptions/__generated__/listing_options_result_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/listingOptions/__generated__/listing_options_result_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/listing_options_result_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'listing_options_result_fragment.req.gql.g.dart';

abstract class GlistingOptionsResultFragmentReq
    implements
        Built<GlistingOptionsResultFragmentReq,
            GlistingOptionsResultFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingOptionsResultFragmentData,
            _i3.GlistingOptionsResultFragmentVars> {
  GlistingOptionsResultFragmentReq._();

  factory GlistingOptionsResultFragmentReq(
          [void Function(GlistingOptionsResultFragmentReqBuilder b) updates]) =
      _$GlistingOptionsResultFragmentReq;

  static void _initializeBuilder(GlistingOptionsResultFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingOptionsResultFragment';

  @override
  _i3.GlistingOptionsResultFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingOptionsResultFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingOptionsResultFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingOptionsResultFragmentData data) =>
      data.toJson();

  static Serializer<GlistingOptionsResultFragmentReq> get serializer =>
      _$glistingOptionsResultFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingOptionsResultFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingOptionsResultFragmentReq.serializer,
        json,
      );
}
