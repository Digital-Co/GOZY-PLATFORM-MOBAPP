// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

class GPawaPayOperation extends EnumClass {
  const GPawaPayOperation._(String name) : super(name);

  static const GPawaPayOperation DEPOSIT = _$gPawaPayOperationDEPOSIT;

  static const GPawaPayOperation PAYOUT = _$gPawaPayOperationPAYOUT;

  static Serializer<GPawaPayOperation> get serializer =>
      _$gPawaPayOperationSerializer;

  static BuiltSet<GPawaPayOperation> get values => _$gPawaPayOperationValues;

  static GPawaPayOperation valueOf(String name) =>
      _$gPawaPayOperationValueOf(name);
}

abstract class GReservationOptionInput
    implements Built<GReservationOptionInput, GReservationOptionInputBuilder> {
  GReservationOptionInput._();

  factory GReservationOptionInput(
          [void Function(GReservationOptionInputBuilder b) updates]) =
      _$GReservationOptionInput;

  int get optionId;
  String? get userInput;
  static Serializer<GReservationOptionInput> get serializer =>
      _$gReservationOptionInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReservationOptionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReservationOptionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReservationOptionInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
