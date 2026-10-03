// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reservation_payment_fragment.var.gql.g.dart';

abstract class GreservationPaymentFragmentVars
    implements
        Built<GreservationPaymentFragmentVars,
            GreservationPaymentFragmentVarsBuilder> {
  GreservationPaymentFragmentVars._();

  factory GreservationPaymentFragmentVars(
          [void Function(GreservationPaymentFragmentVarsBuilder b) updates]) =
      _$GreservationPaymentFragmentVars;

  static Serializer<GreservationPaymentFragmentVars> get serializer =>
      _$greservationPaymentFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationPaymentFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationPaymentFragmentVars.serializer,
        json,
      );
}
