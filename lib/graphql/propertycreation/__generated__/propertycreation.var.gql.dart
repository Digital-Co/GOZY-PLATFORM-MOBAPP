// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'propertycreation.var.gql.g.dart';

abstract class GcreateListingVars
    implements Built<GcreateListingVars, GcreateListingVarsBuilder> {
  GcreateListingVars._();

  factory GcreateListingVars(
          [void Function(GcreateListingVarsBuilder b) updates]) =
      _$GcreateListingVars;

  int? get listId;
  String? get carType;
  String? get make;
  String? get model;
  String? get year;
  String? get transmission;
  String? get odometer;
  int? get personCapacity;
  String? get country;
  String? get street;
  String? get buildingName;
  String? get city;
  String? get state;
  String? get zipcode;
  double? get lat;
  double? get lng;
  bool? get isMapTouched;
  BuiltList<int?>? get carFeatures;
  static Serializer<GcreateListingVars> get serializer =>
      _$gcreateListingVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateListingVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateListingVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateListingVars.serializer,
        json,
      );
}

abstract class GUpdateListingStep2Vars
    implements Built<GUpdateListingStep2Vars, GUpdateListingStep2VarsBuilder> {
  GUpdateListingStep2Vars._();

  factory GUpdateListingStep2Vars(
          [void Function(GUpdateListingStep2VarsBuilder b) updates]) =
      _$GUpdateListingStep2Vars;

  int? get id;
  String? get description;
  String? get title;
  int? get coverPhoto;
  String? get dynamicListTitleandDesc;
  static Serializer<GUpdateListingStep2Vars> get serializer =>
      _$gUpdateListingStep2VarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListingStep2Vars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListingStep2Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListingStep2Vars.serializer,
        json,
      );
}

abstract class GmanagePublishStatusVars
    implements
        Built<GmanagePublishStatusVars, GmanagePublishStatusVarsBuilder> {
  GmanagePublishStatusVars._();

  factory GmanagePublishStatusVars(
          [void Function(GmanagePublishStatusVarsBuilder b) updates]) =
      _$GmanagePublishStatusVars;

  int get listId;
  String get action;
  static Serializer<GmanagePublishStatusVars> get serializer =>
      _$gmanagePublishStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanagePublishStatusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanagePublishStatusVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanagePublishStatusVars.serializer,
        json,
      );
}

abstract class GmanageListingStepsVars
    implements Built<GmanageListingStepsVars, GmanageListingStepsVarsBuilder> {
  GmanageListingStepsVars._();

  factory GmanageListingStepsVars(
          [void Function(GmanageListingStepsVarsBuilder b) updates]) =
      _$GmanageListingStepsVars;

  String get listId;
  int get currentStep;
  static Serializer<GmanageListingStepsVars> get serializer =>
      _$gmanageListingStepsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanageListingStepsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanageListingStepsVars.serializer,
        json,
      );
}

abstract class GupdateListingStep3Vars
    implements Built<GupdateListingStep3Vars, GupdateListingStep3VarsBuilder> {
  GupdateListingStep3Vars._();

  factory GupdateListingStep3Vars(
          [void Function(GupdateListingStep3VarsBuilder b) updates]) =
      _$GupdateListingStep3Vars;

  int? get id;
  BuiltList<int?>? get carRules;
  String? get bookingNoticeTime;
  String? get checkInStart;
  String? get checkInEnd;
  String? get maxDaysNotice;
  int? get minDay;
  int? get maxDay;
  double? get basePrice;
  double? get delivery;
  String? get currency;
  double? get weeklyDiscount;
  double? get monthlyDiscount;
  BuiltList<String?>? get blockedDates;
  String get bookingType;
  int? get cancellationPolicy;
  double? get securityDeposit;
  static Serializer<GupdateListingStep3Vars> get serializer =>
      _$gupdateListingStep3VarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateListingStep3Vars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateListingStep3Vars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateListingStep3Vars.serializer,
        json,
      );
}

abstract class GRemoveListPhotosVars
    implements Built<GRemoveListPhotosVars, GRemoveListPhotosVarsBuilder> {
  GRemoveListPhotosVars._();

  factory GRemoveListPhotosVars(
          [void Function(GRemoveListPhotosVarsBuilder b) updates]) =
      _$GRemoveListPhotosVars;

  int get listId;
  String? get name;
  static Serializer<GRemoveListPhotosVars> get serializer =>
      _$gRemoveListPhotosVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListPhotosVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListPhotosVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListPhotosVars.serializer,
        json,
      );
}
