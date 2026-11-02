// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_earnings_components_fragment.var.gql.g.dart';

abstract class GownerEarningsComponentsFragmentVars
    implements
        Built<GownerEarningsComponentsFragmentVars,
            GownerEarningsComponentsFragmentVarsBuilder> {
  GownerEarningsComponentsFragmentVars._();

  factory GownerEarningsComponentsFragmentVars(
      [void Function(GownerEarningsComponentsFragmentVarsBuilder b)
          updates]) = _$GownerEarningsComponentsFragmentVars;

  static Serializer<GownerEarningsComponentsFragmentVars> get serializer =>
      _$gownerEarningsComponentsFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerEarningsComponentsFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerEarningsComponentsFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerEarningsComponentsFragmentVars.serializer,
        json,
      );
}
