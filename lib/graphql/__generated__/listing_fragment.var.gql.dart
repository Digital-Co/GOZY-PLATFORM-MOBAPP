// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_fragment.var.gql.g.dart';

abstract class GviewListingDetailsFragmentVars
    implements
        Built<GviewListingDetailsFragmentVars,
            GviewListingDetailsFragmentVarsBuilder> {
  GviewListingDetailsFragmentVars._();

  factory GviewListingDetailsFragmentVars(
          [void Function(GviewListingDetailsFragmentVarsBuilder b) updates]) =
      _$GviewListingDetailsFragmentVars;

  static Serializer<GviewListingDetailsFragmentVars> get serializer =>
      _$gviewListingDetailsFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsFragmentVars.serializer,
        json,
      );
}
