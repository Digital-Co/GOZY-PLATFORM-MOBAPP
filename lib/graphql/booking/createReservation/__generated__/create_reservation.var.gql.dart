// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'create_reservation.var.gql.g.dart';

abstract class GcreateReservationVars
    implements Built<GcreateReservationVars, GcreateReservationVarsBuilder> {
  GcreateReservationVars._();

  factory GcreateReservationVars(
          [void Function(GcreateReservationVarsBuilder b) updates]) =
      _$GcreateReservationVars;

  int get listId;
  String get checkIn;
  String get checkOut;
  int get guests;
  String get message;
  double get basePrice;
  double get delivery;
  String get currency;
  double? get discount;
  String? get discountType;
  double? get guestServiceFee;
  double? get hostServiceFee;
  double get total;
  String? get bookingType;
  String? get cardToken;
  int? get paymentType;
  double? get averagePrice;
  int? get days;
  double? get startTime;
  double? get endTime;
  String get licenseNumber;
  String get firstName;
  String? get middleName;
  String get lastName;
  String get dateOfBirth;
  String? get countryCode;
  bool? get isDeliveryIncluded;
  String? get paymentCurrency;
  String? get promoCode;
  static Serializer<GcreateReservationVars> get serializer =>
      _$gcreateReservationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateReservationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateReservationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateReservationVars.serializer,
        json,
      );
}
