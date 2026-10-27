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

abstract class GInspectionChecklistAnswerInput
    implements
        Built<GInspectionChecklistAnswerInput,
            GInspectionChecklistAnswerInputBuilder> {
  GInspectionChecklistAnswerInput._();

  factory GInspectionChecklistAnswerInput(
          [void Function(GInspectionChecklistAnswerInputBuilder b) updates]) =
      _$GInspectionChecklistAnswerInput;

  String get key;
  bool get present;
  static Serializer<GInspectionChecklistAnswerInput> get serializer =>
      _$gInspectionChecklistAnswerInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInspectionChecklistAnswerInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInspectionChecklistAnswerInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInspectionChecklistAnswerInput.serializer,
        json,
      );
}

abstract class GInspectionInput
    implements Built<GInspectionInput, GInspectionInputBuilder> {
  GInspectionInput._();

  factory GInspectionInput([void Function(GInspectionInputBuilder b) updates]) =
      _$GInspectionInput;

  String? get generalState;
  int? get mileage;
  String? get fuelLevel;
  bool? get keysConfirmed;
  String? get comment;
  BuiltList<GInspectionChecklistAnswerInput>? get checklist;
  bool? get hasDamage;
  String? get damageDescription;
  BuiltList<int>? get photoIds;
  static Serializer<GInspectionInput> get serializer =>
      _$gInspectionInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInspectionInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInspectionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInspectionInput.serializer,
        json,
      );
}

abstract class GCheckoutInput
    implements Built<GCheckoutInput, GCheckoutInputBuilder> {
  GCheckoutInput._();

  factory GCheckoutInput([void Function(GCheckoutInputBuilder b) updates]) =
      _$GCheckoutInput;

  String? get generalState;
  int? get mileage;
  String? get fuelLevel;
  bool? get keysConfirmed;
  String? get comment;
  BuiltList<GInspectionChecklistAnswerInput>? get checklist;
  bool? get hasDamage;
  String? get damageDescription;
  BuiltList<int>? get photoIds;
  int? get expectedVersion;
  static Serializer<GCheckoutInput> get serializer =>
      _$gCheckoutInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCheckoutInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCheckoutInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCheckoutInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
