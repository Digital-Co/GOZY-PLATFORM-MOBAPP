// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'base_listing_info_fragment.var.gql.g.dart';

abstract class GviewListingShortFragmentVars
    implements
        Built<GviewListingShortFragmentVars,
            GviewListingShortFragmentVarsBuilder> {
  GviewListingShortFragmentVars._();

  factory GviewListingShortFragmentVars(
          [void Function(GviewListingShortFragmentVarsBuilder b) updates]) =
      _$GviewListingShortFragmentVars;

  static Serializer<GviewListingShortFragmentVars> get serializer =>
      _$gviewListingShortFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentVars.serializer,
        json,
      );
}
