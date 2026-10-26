// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'listing_option_fragment.req.gql.g.dart';

abstract class GlistingOptionFragmentReq
    implements
        Built<GlistingOptionFragmentReq, GlistingOptionFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GlistingOptionFragmentData,
            _i3.GlistingOptionFragmentVars> {
  GlistingOptionFragmentReq._();

  factory GlistingOptionFragmentReq(
          [void Function(GlistingOptionFragmentReqBuilder b) updates]) =
      _$GlistingOptionFragmentReq;

  static void _initializeBuilder(GlistingOptionFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'listingOptionFragment';

  @override
  _i3.GlistingOptionFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlistingOptionFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GlistingOptionFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlistingOptionFragmentData data) =>
      data.toJson();

  static Serializer<GlistingOptionFragmentReq> get serializer =>
      _$glistingOptionFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlistingOptionFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlistingOptionFragmentReq.serializer,
        json,
      );
}
