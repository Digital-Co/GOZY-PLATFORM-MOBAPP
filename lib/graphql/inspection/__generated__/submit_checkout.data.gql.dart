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

part 'submit_checkout.data.gql.g.dart';

abstract class GsubmitCheckoutData
    implements Built<GsubmitCheckoutData, GsubmitCheckoutDataBuilder> {
  GsubmitCheckoutData._();

  factory GsubmitCheckoutData(
          [void Function(GsubmitCheckoutDataBuilder b) updates]) =
      _$GsubmitCheckoutData;

  static void _initializeBuilder(GsubmitCheckoutDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsubmitCheckoutData_submitCheckout? get submitCheckout;
  static Serializer<GsubmitCheckoutData> get serializer =>
      _$gsubmitCheckoutDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubmitCheckoutData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubmitCheckoutData.serializer,
        json,
      );
}

abstract class GsubmitCheckoutData_submitCheckout
    implements
        Built<GsubmitCheckoutData_submitCheckout,
            GsubmitCheckoutData_submitCheckoutBuilder>,
        _i2.GinspectionResultFragment {
  GsubmitCheckoutData_submitCheckout._();

  factory GsubmitCheckoutData_submitCheckout(
      [void Function(GsubmitCheckoutData_submitCheckoutBuilder b)
          updates]) = _$GsubmitCheckoutData_submitCheckout;

  static void _initializeBuilder(GsubmitCheckoutData_submitCheckoutBuilder b) =>
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
  GsubmitCheckoutData_submitCheckout_viewerReview? get viewerReview;
  @override
  GsubmitCheckoutData_submitCheckout_inspection? get inspection;
  static Serializer<GsubmitCheckoutData_submitCheckout> get serializer =>
      _$gsubmitCheckoutDataSubmitCheckoutSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubmitCheckoutData_submitCheckout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutData_submitCheckout? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubmitCheckoutData_submitCheckout.serializer,
        json,
      );
}

abstract class GsubmitCheckoutData_submitCheckout_viewerReview
    implements
        Built<GsubmitCheckoutData_submitCheckout_viewerReview,
            GsubmitCheckoutData_submitCheckout_viewerReviewBuilder>,
        _i2.GinspectionResultFragment_viewerReview {
  GsubmitCheckoutData_submitCheckout_viewerReview._();

  factory GsubmitCheckoutData_submitCheckout_viewerReview(
      [void Function(GsubmitCheckoutData_submitCheckout_viewerReviewBuilder b)
          updates]) = _$GsubmitCheckoutData_submitCheckout_viewerReview;

  static void _initializeBuilder(
          GsubmitCheckoutData_submitCheckout_viewerReviewBuilder b) =>
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
  static Serializer<GsubmitCheckoutData_submitCheckout_viewerReview>
      get serializer =>
          _$gsubmitCheckoutDataSubmitCheckoutViewerReviewSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubmitCheckoutData_submitCheckout_viewerReview.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutData_submitCheckout_viewerReview? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubmitCheckoutData_submitCheckout_viewerReview.serializer,
        json,
      );
}

abstract class GsubmitCheckoutData_submitCheckout_inspection
    implements
        Built<GsubmitCheckoutData_submitCheckout_inspection,
            GsubmitCheckoutData_submitCheckout_inspectionBuilder>,
        _i2.GinspectionResultFragment_inspection,
        _i3.GinspectionFragment {
  GsubmitCheckoutData_submitCheckout_inspection._();

  factory GsubmitCheckoutData_submitCheckout_inspection(
      [void Function(GsubmitCheckoutData_submitCheckout_inspectionBuilder b)
          updates]) = _$GsubmitCheckoutData_submitCheckout_inspection;

  static void _initializeBuilder(
          GsubmitCheckoutData_submitCheckout_inspectionBuilder b) =>
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
  BuiltList<GsubmitCheckoutData_submitCheckout_inspection_checklist?>?
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
  BuiltList<GsubmitCheckoutData_submitCheckout_inspection_photos?>? get photos;
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
  static Serializer<GsubmitCheckoutData_submitCheckout_inspection>
      get serializer => _$gsubmitCheckoutDataSubmitCheckoutInspectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubmitCheckoutData_submitCheckout_inspection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutData_submitCheckout_inspection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubmitCheckoutData_submitCheckout_inspection.serializer,
        json,
      );
}

abstract class GsubmitCheckoutData_submitCheckout_inspection_checklist
    implements
        Built<GsubmitCheckoutData_submitCheckout_inspection_checklist,
            GsubmitCheckoutData_submitCheckout_inspection_checklistBuilder>,
        _i2.GinspectionResultFragment_inspection_checklist,
        _i3.GinspectionFragment_checklist {
  GsubmitCheckoutData_submitCheckout_inspection_checklist._();

  factory GsubmitCheckoutData_submitCheckout_inspection_checklist(
      [void Function(
              GsubmitCheckoutData_submitCheckout_inspection_checklistBuilder b)
          updates]) = _$GsubmitCheckoutData_submitCheckout_inspection_checklist;

  static void _initializeBuilder(
          GsubmitCheckoutData_submitCheckout_inspection_checklistBuilder b) =>
      b..G__typename = 'InspectionChecklistAnswer';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get key;
  @override
  bool? get present;
  static Serializer<GsubmitCheckoutData_submitCheckout_inspection_checklist>
      get serializer =>
          _$gsubmitCheckoutDataSubmitCheckoutInspectionChecklistSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubmitCheckoutData_submitCheckout_inspection_checklist.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutData_submitCheckout_inspection_checklist? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubmitCheckoutData_submitCheckout_inspection_checklist.serializer,
        json,
      );
}

abstract class GsubmitCheckoutData_submitCheckout_inspection_photos
    implements
        Built<GsubmitCheckoutData_submitCheckout_inspection_photos,
            GsubmitCheckoutData_submitCheckout_inspection_photosBuilder>,
        _i2.GinspectionResultFragment_inspection_photos,
        _i3.GinspectionFragment_photos,
        _i4.GinspectionPhotoFragment {
  GsubmitCheckoutData_submitCheckout_inspection_photos._();

  factory GsubmitCheckoutData_submitCheckout_inspection_photos(
      [void Function(
              GsubmitCheckoutData_submitCheckout_inspection_photosBuilder b)
          updates]) = _$GsubmitCheckoutData_submitCheckout_inspection_photos;

  static void _initializeBuilder(
          GsubmitCheckoutData_submitCheckout_inspection_photosBuilder b) =>
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
  static Serializer<GsubmitCheckoutData_submitCheckout_inspection_photos>
      get serializer =>
          _$gsubmitCheckoutDataSubmitCheckoutInspectionPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubmitCheckoutData_submitCheckout_inspection_photos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubmitCheckoutData_submitCheckout_inspection_photos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubmitCheckoutData_submitCheckout_inspection_photos.serializer,
        json,
      );
}
