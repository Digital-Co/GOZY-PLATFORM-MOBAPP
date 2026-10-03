// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/listing_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/listing_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_fragment.var.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gql/ast.dart' as _i5;

part 'listing_fragment.req.gql.g.dart';

abstract class GviewListingDetailsFragmentReq
    implements
        Built<GviewListingDetailsFragmentReq,
            GviewListingDetailsFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GviewListingDetailsFragmentData,
            _i3.GviewListingDetailsFragmentVars> {
  GviewListingDetailsFragmentReq._();

  factory GviewListingDetailsFragmentReq(
          [void Function(GviewListingDetailsFragmentReqBuilder b) updates]) =
      _$GviewListingDetailsFragmentReq;

  static void _initializeBuilder(GviewListingDetailsFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'viewListingDetailsFragment';

  @override
  _i3.GviewListingDetailsFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GviewListingDetailsFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GviewListingDetailsFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GviewListingDetailsFragmentData data) =>
      data.toJson();

  static Serializer<GviewListingDetailsFragmentReq> get serializer =>
      _$gviewListingDetailsFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GviewListingDetailsFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GviewListingDetailsFragmentReq.serializer,
        json,
      );
}
