// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'cancelReservations.var.gql.g.dart';

abstract class GCancellationDataVars
    implements Built<GCancellationDataVars, GCancellationDataVarsBuilder> {
  GCancellationDataVars._();

  factory GCancellationDataVars(
          [void Function(GCancellationDataVarsBuilder b) updates]) =
      _$GCancellationDataVars;

  int get reservationId;
  String get userType;
  String? get currency;
  static Serializer<GCancellationDataVars> get serializer =>
      _$gCancellationDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancellationDataVars.serializer,
        json,
      );
}

abstract class GCancelReservationVars
    implements Built<GCancelReservationVars, GCancelReservationVarsBuilder> {
  GCancelReservationVars._();

  factory GCancelReservationVars(
          [void Function(GCancelReservationVarsBuilder b) updates]) =
      _$GCancelReservationVars;

  int get reservationId;
  String get cancellationPolicy;
  double get refundToGuest;
  double get payoutToHost;
  double get guestServiceFee;
  double get hostServiceFee;
  double get total;
  String get currency;
  int get threadId;
  String get cancelledBy;
  String get message;
  String get checkIn;
  String get checkOut;
  int get guests;
  double get startTime;
  double get endTime;
  static Serializer<GCancelReservationVars> get serializer =>
      _$gCancelReservationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancelReservationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancelReservationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancelReservationVars.serializer,
        json,
      );
}
