// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/inspection/__generated__/inspection_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/inspection/__generated__/inspection_result_fragment.data.gql.dart'
    as _i2;

part 'validate_inspection.data.gql.g.dart';

abstract class GvalidateInspectionData
    implements Built<GvalidateInspectionData, GvalidateInspectionDataBuilder> {
  GvalidateInspectionData._();

  factory GvalidateInspectionData(
          [void Function(GvalidateInspectionDataBuilder b) updates]) =
      _$GvalidateInspectionData;

  static void _initializeBuilder(GvalidateInspectionDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GvalidateInspectionData_validateInspection? get validateInspection;
  static Serializer<GvalidateInspectionData> get serializer =>
      _$gvalidateInspectionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidateInspectionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidateInspectionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidateInspectionData.serializer,
        json,
      );
}

abstract class GvalidateInspectionData_validateInspection
    implements
        Built<GvalidateInspectionData_validateInspection,
            GvalidateInspectionData_validateInspectionBuilder>,
        _i2.GinspectionResultFragment {
  GvalidateInspectionData_validateInspection._();

  factory GvalidateInspectionData_validateInspection(
      [void Function(GvalidateInspectionData_validateInspectionBuilder b)
          updates]) = _$GvalidateInspectionData_validateInspection;

  static void _initializeBuilder(
          GvalidateInspectionData_validateInspectionBuilder b) =>
      b..G__typename = 'InspectionResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  bool? get windowOpen;
  @override
  String? get windowReason;
  @override
  String? get opensAt;
  @override
  String? get closesAt;
  @override
  String? get viewerRole;
  @override
  bool? get inspectionEnabled;
  @override
  int? get photoMin;
  @override
  int? get photoMax;
  @override
  GvalidateInspectionData_validateInspection_inspection? get inspection;
  static Serializer<GvalidateInspectionData_validateInspection>
      get serializer => _$gvalidateInspectionDataValidateInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidateInspectionData_validateInspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidateInspectionData_validateInspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidateInspectionData_validateInspection.serializer,
        json,
      );
}

abstract class GvalidateInspectionData_validateInspection_inspection
    implements
        Built<GvalidateInspectionData_validateInspection_inspection,
            GvalidateInspectionData_validateInspection_inspectionBuilder>,
        _i2.GinspectionResultFragment_inspection,
        _i3.GinspectionFragment {
  GvalidateInspectionData_validateInspection_inspection._();

  factory GvalidateInspectionData_validateInspection_inspection(
      [void Function(
              GvalidateInspectionData_validateInspection_inspectionBuilder b)
          updates]) = _$GvalidateInspectionData_validateInspection_inspection;

  static void _initializeBuilder(
          GvalidateInspectionData_validateInspection_inspectionBuilder b) =>
      b..G__typename = 'Inspection';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get reservationId;
  @override
  String? get type;
  @override
  String? get status;
  @override
  int? get version;
  @override
  String? get authorId;
  @override
  String? get authorRole;
  @override
  String? get generalState;
  @override
  int? get mileage;
  @override
  String? get fuelLevel;
  @override
  bool? get keysConfirmed;
  @override
  bool? get hasDamage;
  @override
  String? get damageDescription;
  @override
  String? get comment;
  @override
  BuiltList<GvalidateInspectionData_validateInspection_inspection_checklist?>?
      get checklist;
  @override
  String? get hostValidatedAt;
  @override
  String? get guestValidatedAt;
  @override
  String? get contestedAt;
  @override
  String? get lockedAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  BuiltList<GvalidateInspectionData_validateInspection_inspection_photos?>?
      get photos;
  @override
  String? get viewerRole;
  @override
  bool? get windowOpen;
  @override
  String? get windowReason;
  @override
  bool? get canEdit;
  @override
  bool? get canValidate;
  @override
  bool? get canContest;
  static Serializer<GvalidateInspectionData_validateInspection_inspection>
      get serializer =>
          _$gvalidateInspectionDataValidateInspectionInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidateInspectionData_validateInspection_inspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidateInspectionData_validateInspection_inspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidateInspectionData_validateInspection_inspection.serializer,
        json,
      );
}

abstract class GvalidateInspectionData_validateInspection_inspection_checklist
    implements
        Built<GvalidateInspectionData_validateInspection_inspection_checklist,
            GvalidateInspectionData_validateInspection_inspection_checklistBuilder>,
        _i2.GinspectionResultFragment_inspection_checklist,
        _i3.GinspectionFragment_checklist {
  GvalidateInspectionData_validateInspection_inspection_checklist._();

  factory GvalidateInspectionData_validateInspection_inspection_checklist(
          [void Function(
                  GvalidateInspectionData_validateInspection_inspection_checklistBuilder
                      b)
              updates]) =
      _$GvalidateInspectionData_validateInspection_inspection_checklist;

  static void _initializeBuilder(
          GvalidateInspectionData_validateInspection_inspection_checklistBuilder
              b) =>
      b..G__typename = 'InspectionChecklistAnswer';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get key;
  @override
  bool? get present;
  static Serializer<
          GvalidateInspectionData_validateInspection_inspection_checklist>
      get serializer =>
          _$gvalidateInspectionDataValidateInspectionInspectionChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidateInspectionData_validateInspection_inspection_checklist
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidateInspectionData_validateInspection_inspection_checklist?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GvalidateInspectionData_validateInspection_inspection_checklist
                .serializer,
            json,
          );
}

abstract class GvalidateInspectionData_validateInspection_inspection_photos
    implements
        Built<GvalidateInspectionData_validateInspection_inspection_photos,
            GvalidateInspectionData_validateInspection_inspection_photosBuilder>,
        _i2.GinspectionResultFragment_inspection_photos,
        _i3.GinspectionFragment_photos,
        _i4.GinspectionPhotoFragment {
  GvalidateInspectionData_validateInspection_inspection_photos._();

  factory GvalidateInspectionData_validateInspection_inspection_photos(
          [void Function(
                  GvalidateInspectionData_validateInspection_inspection_photosBuilder
                      b)
              updates]) =
      _$GvalidateInspectionData_validateInspection_inspection_photos;

  static void _initializeBuilder(
          GvalidateInspectionData_validateInspection_inspection_photosBuilder
              b) =>
      b..G__typename = 'InspectionPhoto';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get kind;
  @override
  int? get position;
  @override
  String? get uploadedBy;
  @override
  String? get createdAt;
  static Serializer<
          GvalidateInspectionData_validateInspection_inspection_photos>
      get serializer =>
          _$gvalidateInspectionDataValidateInspectionInspectionPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GvalidateInspectionData_validateInspection_inspection_photos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GvalidateInspectionData_validateInspection_inspection_photos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GvalidateInspectionData_validateInspection_inspection_photos.serializer,
        json,
      );
}
