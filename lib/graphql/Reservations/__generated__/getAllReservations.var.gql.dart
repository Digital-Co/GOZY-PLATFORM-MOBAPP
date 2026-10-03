// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'getAllReservations.var.gql.g.dart';

abstract class GgetAllReservationVars
    implements Built<GgetAllReservationVars, GgetAllReservationVarsBuilder> {
  GgetAllReservationVars._();

  factory GgetAllReservationVars(
          [void Function(GgetAllReservationVarsBuilder b) updates]) =
      _$GgetAllReservationVars;

  String? get userType;
  int? get currentPage;
  String? get dateFilter;
  static Serializer<GgetAllReservationVars> get serializer =>
      _$ggetAllReservationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllReservationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReservationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllReservationVars.serializer,
        json,
      );
}

abstract class GcontactSupportVars
    implements Built<GcontactSupportVars, GcontactSupportVarsBuilder> {
  GcontactSupportVars._();

  factory GcontactSupportVars(
          [void Function(GcontactSupportVarsBuilder b) updates]) =
      _$GcontactSupportVars;

  String? get message;
  int? get listId;
  int? get reservationId;
  String? get userType;
  static Serializer<GcontactSupportVars> get serializer =>
      _$gcontactSupportVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontactSupportVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontactSupportVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcontactSupportVars.serializer,
        json,
      );
}

abstract class GReservationStatusVars
    implements Built<GReservationStatusVars, GReservationStatusVarsBuilder> {
  GReservationStatusVars._();

  factory GReservationStatusVars(
          [void Function(GReservationStatusVarsBuilder b) updates]) =
      _$GReservationStatusVars;

  int get threadId;
  String? get content;
  String? get type;
  String? get startDate;
  String? get endDate;
  int? get personCapacity;
  int? get reservationId;
  String? get actionType;
  double? get startTime;
  double? get endTime;
  static Serializer<GReservationStatusVars> get serializer =>
      _$gReservationStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReservationStatusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReservationStatusVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReservationStatusVars.serializer,
        json,
      );
}
