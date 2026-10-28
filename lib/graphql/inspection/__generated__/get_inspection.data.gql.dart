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

part 'get_inspection.data.gql.g.dart';

abstract class GgetInspectionData
    implements Built<GgetInspectionData, GgetInspectionDataBuilder> {
  GgetInspectionData._();

  factory GgetInspectionData(
          [void Function(GgetInspectionDataBuilder b) updates]) =
      _$GgetInspectionData;

  static void _initializeBuilder(GgetInspectionDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetInspectionData_getInspection? get getInspection;
  static Serializer<GgetInspectionData> get serializer =>
      _$ggetInspectionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionData.serializer,
        json,
      );
}

abstract class GgetInspectionData_getInspection
    implements
        Built<GgetInspectionData_getInspection,
            GgetInspectionData_getInspectionBuilder>,
        _i2.GinspectionResultFragment {
  GgetInspectionData_getInspection._();

  factory GgetInspectionData_getInspection(
          [void Function(GgetInspectionData_getInspectionBuilder b) updates]) =
      _$GgetInspectionData_getInspection;

  static void _initializeBuilder(GgetInspectionData_getInspectionBuilder b) =>
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
  GgetInspectionData_getInspection_inspection? get inspection;
  static Serializer<GgetInspectionData_getInspection> get serializer =>
      _$ggetInspectionDataGetInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionData_getInspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionData_getInspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionData_getInspection.serializer,
        json,
      );
}

abstract class GgetInspectionData_getInspection_inspection
    implements
        Built<GgetInspectionData_getInspection_inspection,
            GgetInspectionData_getInspection_inspectionBuilder>,
        _i2.GinspectionResultFragment_inspection,
        _i3.GinspectionFragment {
  GgetInspectionData_getInspection_inspection._();

  factory GgetInspectionData_getInspection_inspection(
      [void Function(GgetInspectionData_getInspection_inspectionBuilder b)
          updates]) = _$GgetInspectionData_getInspection_inspection;

  static void _initializeBuilder(
          GgetInspectionData_getInspection_inspectionBuilder b) =>
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
  BuiltList<GgetInspectionData_getInspection_inspection_checklist?>?
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
  BuiltList<GgetInspectionData_getInspection_inspection_photos?>? get photos;
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
  static Serializer<GgetInspectionData_getInspection_inspection>
      get serializer => _$ggetInspectionDataGetInspectionInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionData_getInspection_inspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionData_getInspection_inspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionData_getInspection_inspection.serializer,
        json,
      );
}

abstract class GgetInspectionData_getInspection_inspection_checklist
    implements
        Built<GgetInspectionData_getInspection_inspection_checklist,
            GgetInspectionData_getInspection_inspection_checklistBuilder>,
        _i2.GinspectionResultFragment_inspection_checklist,
        _i3.GinspectionFragment_checklist {
  GgetInspectionData_getInspection_inspection_checklist._();

  factory GgetInspectionData_getInspection_inspection_checklist(
      [void Function(
              GgetInspectionData_getInspection_inspection_checklistBuilder b)
          updates]) = _$GgetInspectionData_getInspection_inspection_checklist;

  static void _initializeBuilder(
          GgetInspectionData_getInspection_inspection_checklistBuilder b) =>
      b..G__typename = 'InspectionChecklistAnswer';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get key;
  @override
  bool? get present;
  static Serializer<GgetInspectionData_getInspection_inspection_checklist>
      get serializer =>
          _$ggetInspectionDataGetInspectionInspectionChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionData_getInspection_inspection_checklist.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionData_getInspection_inspection_checklist? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionData_getInspection_inspection_checklist.serializer,
        json,
      );
}

abstract class GgetInspectionData_getInspection_inspection_photos
    implements
        Built<GgetInspectionData_getInspection_inspection_photos,
            GgetInspectionData_getInspection_inspection_photosBuilder>,
        _i2.GinspectionResultFragment_inspection_photos,
        _i3.GinspectionFragment_photos,
        _i4.GinspectionPhotoFragment {
  GgetInspectionData_getInspection_inspection_photos._();

  factory GgetInspectionData_getInspection_inspection_photos(
      [void Function(
              GgetInspectionData_getInspection_inspection_photosBuilder b)
          updates]) = _$GgetInspectionData_getInspection_inspection_photos;

  static void _initializeBuilder(
          GgetInspectionData_getInspection_inspection_photosBuilder b) =>
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
  static Serializer<GgetInspectionData_getInspection_inspection_photos>
      get serializer =>
          _$ggetInspectionDataGetInspectionInspectionPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetInspectionData_getInspection_inspection_photos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetInspectionData_getInspection_inspection_photos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetInspectionData_getInspection_inspection_photos.serializer,
        json,
      );
}
