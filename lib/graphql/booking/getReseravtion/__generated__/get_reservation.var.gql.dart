// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_reservation.var.gql.g.dart';

abstract class GgetReservationVars
    implements Built<GgetReservationVars, GgetReservationVarsBuilder> {
  GgetReservationVars._();

  factory GgetReservationVars(
          [void Function(GgetReservationVarsBuilder b) updates]) =
      _$GgetReservationVars;

  int get reservationId;
  String? get convertCurrency;
  static Serializer<GgetReservationVars> get serializer =>
      _$ggetReservationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationVars.serializer,
        json,
      );
}
