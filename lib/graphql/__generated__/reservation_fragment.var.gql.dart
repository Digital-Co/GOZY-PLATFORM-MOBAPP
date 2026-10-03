// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reservation_fragment.var.gql.g.dart';

abstract class GreservationFragmentVars
    implements
        Built<GreservationFragmentVars, GreservationFragmentVarsBuilder> {
  GreservationFragmentVars._();

  factory GreservationFragmentVars(
          [void Function(GreservationFragmentVarsBuilder b) updates]) =
      _$GreservationFragmentVars;

  static Serializer<GreservationFragmentVars> get serializer =>
      _$greservationFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationFragmentVars.serializer,
        json,
      );
}
