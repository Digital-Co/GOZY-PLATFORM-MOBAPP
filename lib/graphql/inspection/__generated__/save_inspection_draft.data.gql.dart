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

part 'save_inspection_draft.data.gql.g.dart';

abstract class GsaveInspectionDraftData
    implements
        Built<GsaveInspectionDraftData, GsaveInspectionDraftDataBuilder> {
  GsaveInspectionDraftData._();

  factory GsaveInspectionDraftData(
          [void Function(GsaveInspectionDraftDataBuilder b) updates]) =
      _$GsaveInspectionDraftData;

  static void _initializeBuilder(GsaveInspectionDraftDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsaveInspectionDraftData_saveInspectionDraft? get saveInspectionDraft;
  static Serializer<GsaveInspectionDraftData> get serializer =>
      _$gsaveInspectionDraftDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveInspectionDraftData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveInspectionDraftData.serializer,
        json,
      );
}

abstract class GsaveInspectionDraftData_saveInspectionDraft
    implements
        Built<GsaveInspectionDraftData_saveInspectionDraft,
            GsaveInspectionDraftData_saveInspectionDraftBuilder>,
        _i2.GinspectionResultFragment {
  GsaveInspectionDraftData_saveInspectionDraft._();

  factory GsaveInspectionDraftData_saveInspectionDraft(
      [void Function(GsaveInspectionDraftData_saveInspectionDraftBuilder b)
          updates]) = _$GsaveInspectionDraftData_saveInspectionDraft;

  static void _initializeBuilder(
          GsaveInspectionDraftData_saveInspectionDraftBuilder b) =>
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
  GsaveInspectionDraftData_saveInspectionDraft_viewerReview? get viewerReview;
  @override
  GsaveInspectionDraftData_saveInspectionDraft_inspection? get inspection;
  static Serializer<GsaveInspectionDraftData_saveInspectionDraft>
      get serializer => _$gsaveInspectionDraftDataSaveInspectionDraftSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveInspectionDraftData_saveInspectionDraft.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftData_saveInspectionDraft? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveInspectionDraftData_saveInspectionDraft.serializer,
        json,
      );
}

abstract class GsaveInspectionDraftData_saveInspectionDraft_viewerReview
    implements
        Built<GsaveInspectionDraftData_saveInspectionDraft_viewerReview,
            GsaveInspectionDraftData_saveInspectionDraft_viewerReviewBuilder>,
        _i2.GinspectionResultFragment_viewerReview {
  GsaveInspectionDraftData_saveInspectionDraft_viewerReview._();

  factory GsaveInspectionDraftData_saveInspectionDraft_viewerReview(
      [void Function(
              GsaveInspectionDraftData_saveInspectionDraft_viewerReviewBuilder
                  b)
          updates]) = _$GsaveInspectionDraftData_saveInspectionDraft_viewerReview;

  static void _initializeBuilder(
          GsaveInspectionDraftData_saveInspectionDraft_viewerReviewBuilder b) =>
      b..G__typename = 'ViewerReview';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  double? get rating;
  @override
  String? get reviewContent;
  static Serializer<GsaveInspectionDraftData_saveInspectionDraft_viewerReview>
      get serializer =>
          _$gsaveInspectionDraftDataSaveInspectionDraftViewerReviewSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveInspectionDraftData_saveInspectionDraft_viewerReview.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftData_saveInspectionDraft_viewerReview? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveInspectionDraftData_saveInspectionDraft_viewerReview.serializer,
        json,
      );
}

abstract class GsaveInspectionDraftData_saveInspectionDraft_inspection
    implements
        Built<GsaveInspectionDraftData_saveInspectionDraft_inspection,
            GsaveInspectionDraftData_saveInspectionDraft_inspectionBuilder>,
        _i2.GinspectionResultFragment_inspection,
        _i3.GinspectionFragment {
  GsaveInspectionDraftData_saveInspectionDraft_inspection._();

  factory GsaveInspectionDraftData_saveInspectionDraft_inspection(
      [void Function(
              GsaveInspectionDraftData_saveInspectionDraft_inspectionBuilder b)
          updates]) = _$GsaveInspectionDraftData_saveInspectionDraft_inspection;

  static void _initializeBuilder(
          GsaveInspectionDraftData_saveInspectionDraft_inspectionBuilder b) =>
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
  BuiltList<GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist?>?
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
  BuiltList<GsaveInspectionDraftData_saveInspectionDraft_inspection_photos?>?
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
  static Serializer<GsaveInspectionDraftData_saveInspectionDraft_inspection>
      get serializer =>
          _$gsaveInspectionDraftDataSaveInspectionDraftInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveInspectionDraftData_saveInspectionDraft_inspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftData_saveInspectionDraft_inspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveInspectionDraftData_saveInspectionDraft_inspection.serializer,
        json,
      );
}

abstract class GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist
    implements
        Built<GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist,
            GsaveInspectionDraftData_saveInspectionDraft_inspection_checklistBuilder>,
        _i2.GinspectionResultFragment_inspection_checklist,
        _i3.GinspectionFragment_checklist {
  GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist._();

  factory GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist(
          [void Function(
                  GsaveInspectionDraftData_saveInspectionDraft_inspection_checklistBuilder
                      b)
              updates]) =
      _$GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist;

  static void _initializeBuilder(
          GsaveInspectionDraftData_saveInspectionDraft_inspection_checklistBuilder
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
          GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist>
      get serializer =>
          _$gsaveInspectionDraftDataSaveInspectionDraftInspectionChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GsaveInspectionDraftData_saveInspectionDraft_inspection_checklist
                .serializer,
            json,
          );
}

abstract class GsaveInspectionDraftData_saveInspectionDraft_inspection_photos
    implements
        Built<GsaveInspectionDraftData_saveInspectionDraft_inspection_photos,
            GsaveInspectionDraftData_saveInspectionDraft_inspection_photosBuilder>,
        _i2.GinspectionResultFragment_inspection_photos,
        _i3.GinspectionFragment_photos,
        _i4.GinspectionPhotoFragment {
  GsaveInspectionDraftData_saveInspectionDraft_inspection_photos._();

  factory GsaveInspectionDraftData_saveInspectionDraft_inspection_photos(
          [void Function(
                  GsaveInspectionDraftData_saveInspectionDraft_inspection_photosBuilder
                      b)
              updates]) =
      _$GsaveInspectionDraftData_saveInspectionDraft_inspection_photos;

  static void _initializeBuilder(
          GsaveInspectionDraftData_saveInspectionDraft_inspection_photosBuilder
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
          GsaveInspectionDraftData_saveInspectionDraft_inspection_photos>
      get serializer =>
          _$gsaveInspectionDraftDataSaveInspectionDraftInspectionPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveInspectionDraftData_saveInspectionDraft_inspection_photos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveInspectionDraftData_saveInspectionDraft_inspection_photos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GsaveInspectionDraftData_saveInspectionDraft_inspection_photos
                .serializer,
            json,
          );
}
