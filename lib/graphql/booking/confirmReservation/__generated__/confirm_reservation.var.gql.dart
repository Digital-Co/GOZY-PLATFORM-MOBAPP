// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'confirm_reservation.var.gql.g.dart';

abstract class GconfirmReservationVars
    implements Built<GconfirmReservationVars, GconfirmReservationVarsBuilder> {
  GconfirmReservationVars._();

  factory GconfirmReservationVars(
          [void Function(GconfirmReservationVarsBuilder b) updates]) =
      _$GconfirmReservationVars;

  int get reservationId;
  String get paymentIntentId;
  int get paymentType;
  static Serializer<GconfirmReservationVars> get serializer =>
      _$gconfirmReservationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconfirmReservationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconfirmReservationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconfirmReservationVars.serializer,
        json,
      );
}
