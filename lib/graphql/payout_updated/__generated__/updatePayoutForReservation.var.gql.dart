// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'updatePayoutForReservation.var.gql.g.dart';

abstract class GupdatePayoutForReservationVars
    implements
        Built<GupdatePayoutForReservationVars,
            GupdatePayoutForReservationVarsBuilder> {
  GupdatePayoutForReservationVars._();

  factory GupdatePayoutForReservationVars(
          [void Function(GupdatePayoutForReservationVarsBuilder b) updates]) =
      _$GupdatePayoutForReservationVars;

  int get payoutId;
  int get reservationId;
  static Serializer<GupdatePayoutForReservationVars> get serializer =>
      _$gupdatePayoutForReservationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdatePayoutForReservationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdatePayoutForReservationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdatePayoutForReservationVars.serializer,
        json,
      );
}
