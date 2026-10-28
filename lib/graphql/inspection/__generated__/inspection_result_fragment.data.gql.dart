// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i3;
import 'package:gozy/graphql/inspection/__generated__/inspection_fragment.data.gql.dart'
    as _i1;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.data.gql.dart'
    as _i2;

part 'inspection_result_fragment.data.gql.g.dart';

abstract class GinspectionResultFragment {
  String get G__typename;
  int? get status;
  String? get errorMessage;
  bool? get windowOpen;
  String? get windowReason;
  String? get opensAt;
  String? get closesAt;
  String? get viewerRole;
  bool? get inspectionEnabled;
  int? get photoMin;
  int? get photoMax;
  GinspectionResultFragment_inspection? get inspection;
  Map<String, dynamic> toJson();
}

abstract class GinspectionResultFragment_inspection
    implements _i1.GinspectionFragment {
  @override
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
  BuiltList<GinspectionResultFragment_inspection_checklist?>? get checklist;
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
  BuiltList<GinspectionResultFragment_inspection_photos?>? get photos;
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
  @override
  Map<String, dynamic> toJson();
}

abstract class GinspectionResultFragment_inspection_checklist
    implements _i1.GinspectionFragment_checklist {
  @override
  String get G__typename;
  @override
  String? get key;
  @override
  bool? get present;
  @override
  Map<String, dynamic> toJson();
}

abstract class GinspectionResultFragment_inspection_photos
    implements _i1.GinspectionFragment_photos, _i2.GinspectionPhotoFragment {
  @override
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
  @override
  Map<String, dynamic> toJson();
}

abstract class GinspectionResultFragmentData
    implements
        Built<GinspectionResultFragmentData,
            GinspectionResultFragmentDataBuilder>,
        GinspectionResultFragment {
  GinspectionResultFragmentData._();

  factory GinspectionResultFragmentData(
          [void Function(GinspectionResultFragmentDataBuilder b) updates]) =
      _$GinspectionResultFragmentData;

  static void _initializeBuilder(GinspectionResultFragmentDataBuilder b) =>
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
  GinspectionResultFragmentData_inspection? get inspection;
  static Serializer<GinspectionResultFragmentData> get serializer =>
      _$ginspectionResultFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GinspectionResultFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionResultFragmentData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GinspectionResultFragmentData.serializer,
        json,
      );
}

abstract class GinspectionResultFragmentData_inspection
    implements
        Built<GinspectionResultFragmentData_inspection,
            GinspectionResultFragmentData_inspectionBuilder>,
        GinspectionResultFragment_inspection,
        _i1.GinspectionFragment {
  GinspectionResultFragmentData_inspection._();

  factory GinspectionResultFragmentData_inspection(
      [void Function(GinspectionResultFragmentData_inspectionBuilder b)
          updates]) = _$GinspectionResultFragmentData_inspection;

  static void _initializeBuilder(
          GinspectionResultFragmentData_inspectionBuilder b) =>
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
  BuiltList<GinspectionResultFragmentData_inspection_checklist?>? get checklist;
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
  BuiltList<GinspectionResultFragmentData_inspection_photos?>? get photos;
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
  static Serializer<GinspectionResultFragmentData_inspection> get serializer =>
      _$ginspectionResultFragmentDataInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GinspectionResultFragmentData_inspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionResultFragmentData_inspection? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GinspectionResultFragmentData_inspection.serializer,
        json,
      );
}

abstract class GinspectionResultFragmentData_inspection_checklist
    implements
        Built<GinspectionResultFragmentData_inspection_checklist,
            GinspectionResultFragmentData_inspection_checklistBuilder>,
        GinspectionResultFragment_inspection_checklist,
        _i1.GinspectionFragment_checklist {
  GinspectionResultFragmentData_inspection_checklist._();

  factory GinspectionResultFragmentData_inspection_checklist(
      [void Function(
              GinspectionResultFragmentData_inspection_checklistBuilder b)
          updates]) = _$GinspectionResultFragmentData_inspection_checklist;

  static void _initializeBuilder(
          GinspectionResultFragmentData_inspection_checklistBuilder b) =>
      b..G__typename = 'InspectionChecklistAnswer';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get key;
  @override
  bool? get present;
  static Serializer<GinspectionResultFragmentData_inspection_checklist>
      get serializer =>
          _$ginspectionResultFragmentDataInspectionChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GinspectionResultFragmentData_inspection_checklist.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionResultFragmentData_inspection_checklist? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GinspectionResultFragmentData_inspection_checklist.serializer,
        json,
      );
}

abstract class GinspectionResultFragmentData_inspection_photos
    implements
        Built<GinspectionResultFragmentData_inspection_photos,
            GinspectionResultFragmentData_inspection_photosBuilder>,
        GinspectionResultFragment_inspection_photos,
        _i1.GinspectionFragment_photos,
        _i2.GinspectionPhotoFragment {
  GinspectionResultFragmentData_inspection_photos._();

  factory GinspectionResultFragmentData_inspection_photos(
      [void Function(GinspectionResultFragmentData_inspection_photosBuilder b)
          updates]) = _$GinspectionResultFragmentData_inspection_photos;

  static void _initializeBuilder(
          GinspectionResultFragmentData_inspection_photosBuilder b) =>
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
  static Serializer<GinspectionResultFragmentData_inspection_photos>
      get serializer =>
          _$ginspectionResultFragmentDataInspectionPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GinspectionResultFragmentData_inspection_photos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionResultFragmentData_inspection_photos? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GinspectionResultFragmentData_inspection_photos.serializer,
        json,
      );
}
