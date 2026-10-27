// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'booking_option_line_fragment.var.gql.g.dart';

abstract class GbookingOptionLineFragmentVars
    implements
        Built<GbookingOptionLineFragmentVars,
            GbookingOptionLineFragmentVarsBuilder> {
  GbookingOptionLineFragmentVars._();

  factory GbookingOptionLineFragmentVars(
          [void Function(GbookingOptionLineFragmentVarsBuilder b) updates]) =
      _$GbookingOptionLineFragmentVars;

  static Serializer<GbookingOptionLineFragmentVars> get serializer =>
      _$gbookingOptionLineFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GbookingOptionLineFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GbookingOptionLineFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GbookingOptionLineFragmentVars.serializer,
        json,
      );
}
