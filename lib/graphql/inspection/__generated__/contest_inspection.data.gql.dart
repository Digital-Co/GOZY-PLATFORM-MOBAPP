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

part 'contest_inspection.data.gql.g.dart';

abstract class GcontestInspectionData
    implements Built<GcontestInspectionData, GcontestInspectionDataBuilder> {
  GcontestInspectionData._();

  factory GcontestInspectionData(
          [void Function(GcontestInspectionDataBuilder b) updates]) =
      _$GcontestInspectionData;

  static void _initializeBuilder(GcontestInspectionDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcontestInspectionData_contestInspection? get contestInspection;
  static Serializer<GcontestInspectionData> get serializer =>
      _$gcontestInspectionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontestInspectionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcontestInspectionData.serializer,
        json,
      );
}

abstract class GcontestInspectionData_contestInspection
    implements
        Built<GcontestInspectionData_contestInspection,
            GcontestInspectionData_contestInspectionBuilder>,
        _i2.GinspectionResultFragment {
  GcontestInspectionData_contestInspection._();

  factory GcontestInspectionData_contestInspection(
      [void Function(GcontestInspectionData_contestInspectionBuilder b)
          updates]) = _$GcontestInspectionData_contestInspection;

  static void _initializeBuilder(
          GcontestInspectionData_contestInspectionBuilder b) =>
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
  GcontestInspectionData_contestInspection_inspection? get inspection;
  static Serializer<GcontestInspectionData_contestInspection> get serializer =>
      _$gcontestInspectionDataContestInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontestInspectionData_contestInspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionData_contestInspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcontestInspectionData_contestInspection.serializer,
        json,
      );
}

abstract class GcontestInspectionData_contestInspection_inspection
    implements
        Built<GcontestInspectionData_contestInspection_inspection,
            GcontestInspectionData_contestInspection_inspectionBuilder>,
        _i2.GinspectionResultFragment_inspection,
        _i3.GinspectionFragment {
  GcontestInspectionData_contestInspection_inspection._();

  factory GcontestInspectionData_contestInspection_inspection(
      [void Function(
              GcontestInspectionData_contestInspection_inspectionBuilder b)
          updates]) = _$GcontestInspectionData_contestInspection_inspection;

  static void _initializeBuilder(
          GcontestInspectionData_contestInspection_inspectionBuilder b) =>
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
  BuiltList<GcontestInspectionData_contestInspection_inspection_checklist?>?
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
  BuiltList<GcontestInspectionData_contestInspection_inspection_photos?>?
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
  static Serializer<GcontestInspectionData_contestInspection_inspection>
      get serializer =>
          _$gcontestInspectionDataContestInspectionInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontestInspectionData_contestInspection_inspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionData_contestInspection_inspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcontestInspectionData_contestInspection_inspection.serializer,
        json,
      );
}

abstract class GcontestInspectionData_contestInspection_inspection_checklist
    implements
        Built<GcontestInspectionData_contestInspection_inspection_checklist,
            GcontestInspectionData_contestInspection_inspection_checklistBuilder>,
        _i2.GinspectionResultFragment_inspection_checklist,
        _i3.GinspectionFragment_checklist {
  GcontestInspectionData_contestInspection_inspection_checklist._();

  factory GcontestInspectionData_contestInspection_inspection_checklist(
          [void Function(
                  GcontestInspectionData_contestInspection_inspection_checklistBuilder
                      b)
              updates]) =
      _$GcontestInspectionData_contestInspection_inspection_checklist;

  static void _initializeBuilder(
          GcontestInspectionData_contestInspection_inspection_checklistBuilder
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
          GcontestInspectionData_contestInspection_inspection_checklist>
      get serializer =>
          _$gcontestInspectionDataContestInspectionInspectionChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontestInspectionData_contestInspection_inspection_checklist
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionData_contestInspection_inspection_checklist?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcontestInspectionData_contestInspection_inspection_checklist
                .serializer,
            json,
          );
}

abstract class GcontestInspectionData_contestInspection_inspection_photos
    implements
        Built<GcontestInspectionData_contestInspection_inspection_photos,
            GcontestInspectionData_contestInspection_inspection_photosBuilder>,
        _i2.GinspectionResultFragment_inspection_photos,
        _i3.GinspectionFragment_photos,
        _i4.GinspectionPhotoFragment {
  GcontestInspectionData_contestInspection_inspection_photos._();

  factory GcontestInspectionData_contestInspection_inspection_photos(
      [void Function(
              GcontestInspectionData_contestInspection_inspection_photosBuilder
                  b)
          updates]) = _$GcontestInspectionData_contestInspection_inspection_photos;

  static void _initializeBuilder(
          GcontestInspectionData_contestInspection_inspection_photosBuilder
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
  static Serializer<GcontestInspectionData_contestInspection_inspection_photos>
      get serializer =>
          _$gcontestInspectionDataContestInspectionInspectionPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcontestInspectionData_contestInspection_inspection_photos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcontestInspectionData_contestInspection_inspection_photos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcontestInspectionData_contestInspection_inspection_photos.serializer,
        json,
      );
}
