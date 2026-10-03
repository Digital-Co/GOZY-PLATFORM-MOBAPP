// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'updatePayoutForReservation.data.gql.g.dart';

abstract class GupdatePayoutForReservationData
    implements
        Built<GupdatePayoutForReservationData,
            GupdatePayoutForReservationDataBuilder> {
  GupdatePayoutForReservationData._();

  factory GupdatePayoutForReservationData(
          [void Function(GupdatePayoutForReservationDataBuilder b) updates]) =
      _$GupdatePayoutForReservationData;

  static void _initializeBuilder(GupdatePayoutForReservationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdatePayoutForReservationData_updatePayoutForReservation?
      get updatePayoutForReservation;
  static Serializer<GupdatePayoutForReservationData> get serializer =>
      _$gupdatePayoutForReservationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdatePayoutForReservationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdatePayoutForReservationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdatePayoutForReservationData.serializer,
        json,
      );
}

abstract class GupdatePayoutForReservationData_updatePayoutForReservation
    implements
        Built<GupdatePayoutForReservationData_updatePayoutForReservation,
            GupdatePayoutForReservationData_updatePayoutForReservationBuilder> {
  GupdatePayoutForReservationData_updatePayoutForReservation._();

  factory GupdatePayoutForReservationData_updatePayoutForReservation(
      [void Function(
              GupdatePayoutForReservationData_updatePayoutForReservationBuilder
                  b)
          updates]) = _$GupdatePayoutForReservationData_updatePayoutForReservation;

  static void _initializeBuilder(
          GupdatePayoutForReservationData_updatePayoutForReservationBuilder
              b) =>
      b..G__typename = 'AllReservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GupdatePayoutForReservationData_updatePayoutForReservation>
      get serializer =>
          _$gupdatePayoutForReservationDataUpdatePayoutForReservationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdatePayoutForReservationData_updatePayoutForReservation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdatePayoutForReservationData_updatePayoutForReservation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdatePayoutForReservationData_updatePayoutForReservation.serializer,
        json,
      );
}
