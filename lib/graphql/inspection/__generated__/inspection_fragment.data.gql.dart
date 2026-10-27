// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:gozy/graphql/inspection/__generated__/inspection_photo_fragment.data.gql.dart'
    as _i1;

part 'inspection_fragment.data.gql.g.dart';

abstract class GinspectionFragment {
  String get G__typename;
  int? get id;
  int? get reservationId;
  String? get type;
  String? get status;
  int? get version;
  String? get authorId;
  String? get authorRole;
  String? get generalState;
  int? get mileage;
  String? get fuelLevel;
  bool? get keysConfirmed;
  bool? get hasDamage;
  String? get damageDescription;
  String? get comment;
  BuiltList<GinspectionFragment_checklist?>? get checklist;
  String? get hostValidatedAt;
  String? get guestValidatedAt;
  String? get contestedAt;
  String? get lockedAt;
  String? get createdAt;
  String? get updatedAt;
  BuiltList<GinspectionFragment_photos?>? get photos;
  String? get viewerRole;
  bool? get windowOpen;
  String? get windowReason;
  bool? get canEdit;
  bool? get canValidate;
  bool? get canContest;
  Map<String, dynamic> toJson();
}

abstract class GinspectionFragment_checklist {
  String get G__typename;
  String? get key;
  bool? get present;
  Map<String, dynamic> toJson();
}

abstract class GinspectionFragment_photos
    implements _i1.GinspectionPhotoFragment {
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

abstract class GinspectionFragmentData
    implements
        Built<GinspectionFragmentData, GinspectionFragmentDataBuilder>,
        GinspectionFragment {
  GinspectionFragmentData._();

  factory GinspectionFragmentData(
          [void Function(GinspectionFragmentDataBuilder b) updates]) =
      _$GinspectionFragmentData;

  static void _initializeBuilder(GinspectionFragmentDataBuilder b) =>
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
  BuiltList<GinspectionFragmentData_checklist?>? get checklist;
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
  BuiltList<GinspectionFragmentData_photos?>? get photos;
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
  static Serializer<GinspectionFragmentData> get serializer =>
      _$ginspectionFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GinspectionFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GinspectionFragmentData.serializer,
        json,
      );
}

abstract class GinspectionFragmentData_checklist
    implements
        Built<GinspectionFragmentData_checklist,
            GinspectionFragmentData_checklistBuilder>,
        GinspectionFragment_checklist {
  GinspectionFragmentData_checklist._();

  factory GinspectionFragmentData_checklist(
          [void Function(GinspectionFragmentData_checklistBuilder b) updates]) =
      _$GinspectionFragmentData_checklist;

  static void _initializeBuilder(GinspectionFragmentData_checklistBuilder b) =>
      b..G__typename = 'InspectionChecklistAnswer';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get key;
  @override
  bool? get present;
  static Serializer<GinspectionFragmentData_checklist> get serializer =>
      _$ginspectionFragmentDataChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GinspectionFragmentData_checklist.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionFragmentData_checklist? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GinspectionFragmentData_checklist.serializer,
        json,
      );
}

abstract class GinspectionFragmentData_photos
    implements
        Built<GinspectionFragmentData_photos,
            GinspectionFragmentData_photosBuilder>,
        GinspectionFragment_photos,
        _i1.GinspectionPhotoFragment {
  GinspectionFragmentData_photos._();

  factory GinspectionFragmentData_photos(
          [void Function(GinspectionFragmentData_photosBuilder b) updates]) =
      _$GinspectionFragmentData_photos;

  static void _initializeBuilder(GinspectionFragmentData_photosBuilder b) =>
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
  static Serializer<GinspectionFragmentData_photos> get serializer =>
      _$ginspectionFragmentDataPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GinspectionFragmentData_photos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinspectionFragmentData_photos? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GinspectionFragmentData_photos.serializer,
        json,
      );
}
