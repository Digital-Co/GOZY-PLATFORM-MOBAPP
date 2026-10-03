// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'propertycreation.data.gql.g.dart';

abstract class GcreateListingData
    implements Built<GcreateListingData, GcreateListingDataBuilder> {
  GcreateListingData._();

  factory GcreateListingData(
          [void Function(GcreateListingDataBuilder b) updates]) =
      _$GcreateListingData;

  static void _initializeBuilder(GcreateListingDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateListingData_createListing? get createListing;
  static Serializer<GcreateListingData> get serializer =>
      _$gcreateListingDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateListingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateListingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateListingData.serializer,
        json,
      );
}

abstract class GcreateListingData_createListing
    implements
        Built<GcreateListingData_createListing,
            GcreateListingData_createListingBuilder> {
  GcreateListingData_createListing._();

  factory GcreateListingData_createListing(
          [void Function(GcreateListingData_createListingBuilder b) updates]) =
      _$GcreateListingData_createListing;

  static void _initializeBuilder(GcreateListingData_createListingBuilder b) =>
      b..G__typename = 'ListingResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  GcreateListingData_createListing_results? get results;
  int? get status;
  String? get errorMessage;
  String? get actionType;
  static Serializer<GcreateListingData_createListing> get serializer =>
      _$gcreateListingDataCreateListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateListingData_createListing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateListingData_createListing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateListingData_createListing.serializer,
        json,
      );
}

abstract class GcreateListingData_createListing_results
    implements
        Built<GcreateListingData_createListing_results,
            GcreateListingData_createListing_resultsBuilder> {
  GcreateListingData_createListing_results._();

  factory GcreateListingData_createListing_results(
      [void Function(GcreateListingData_createListing_resultsBuilder b)
          updates]) = _$GcreateListingData_createListing_results;

  static void _initializeBuilder(
          GcreateListingData_createListing_resultsBuilder b) =>
      b..G__typename = 'CreateListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
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
  static Serializer<GcreateListingData_createListing_results> get serializer =>
      _$gcreateListingDataCreateListingResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateListingData_createListing_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateListingData_createListing_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateListingData_createListing_results.serializer,
        json,
      );
}

abstract class GUpdateListingStep2Data
    implements Built<GUpdateListingStep2Data, GUpdateListingStep2DataBuilder> {
  GUpdateListingStep2Data._();

  factory GUpdateListingStep2Data(
          [void Function(GUpdateListingStep2DataBuilder b) updates]) =
      _$GUpdateListingStep2Data;

  static void _initializeBuilder(GUpdateListingStep2DataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateListingStep2Data_updateListingStep2? get updateListingStep2;
  static Serializer<GUpdateListingStep2Data> get serializer =>
      _$gUpdateListingStep2DataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListingStep2Data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListingStep2Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListingStep2Data.serializer,
        json,
      );
}

abstract class GUpdateListingStep2Data_updateListingStep2
    implements
        Built<GUpdateListingStep2Data_updateListingStep2,
            GUpdateListingStep2Data_updateListingStep2Builder> {
  GUpdateListingStep2Data_updateListingStep2._();

  factory GUpdateListingStep2Data_updateListingStep2(
      [void Function(GUpdateListingStep2Data_updateListingStep2Builder b)
          updates]) = _$GUpdateListingStep2Data_updateListingStep2;

  static void _initializeBuilder(
          GUpdateListingStep2Data_updateListingStep2Builder b) =>
      b..G__typename = 'EditListingResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  GUpdateListingStep2Data_updateListingStep2_results? get results;
  String? get errorMessage;
  static Serializer<GUpdateListingStep2Data_updateListingStep2>
      get serializer => _$gUpdateListingStep2DataUpdateListingStep2Serializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListingStep2Data_updateListingStep2.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListingStep2Data_updateListingStep2? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListingStep2Data_updateListingStep2.serializer,
        json,
      );
}

abstract class GUpdateListingStep2Data_updateListingStep2_results
    implements
        Built<GUpdateListingStep2Data_updateListingStep2_results,
            GUpdateListingStep2Data_updateListingStep2_resultsBuilder> {
  GUpdateListingStep2Data_updateListingStep2_results._();

  factory GUpdateListingStep2Data_updateListingStep2_results(
      [void Function(
              GUpdateListingStep2Data_updateListingStep2_resultsBuilder b)
          updates]) = _$GUpdateListingStep2Data_updateListingStep2_results;

  static void _initializeBuilder(
          GUpdateListingStep2Data_updateListingStep2_resultsBuilder b) =>
      b..G__typename = 'EditListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get title;
  String? get description;
  int? get coverPhoto;
  static Serializer<GUpdateListingStep2Data_updateListingStep2_results>
      get serializer =>
          _$gUpdateListingStep2DataUpdateListingStep2ResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListingStep2Data_updateListingStep2_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListingStep2Data_updateListingStep2_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListingStep2Data_updateListingStep2_results.serializer,
        json,
      );
}

abstract class GmanagePublishStatusData
    implements
        Built<GmanagePublishStatusData, GmanagePublishStatusDataBuilder> {
  GmanagePublishStatusData._();

  factory GmanagePublishStatusData(
          [void Function(GmanagePublishStatusDataBuilder b) updates]) =
      _$GmanagePublishStatusData;

  static void _initializeBuilder(GmanagePublishStatusDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GmanagePublishStatusData_managePublishStatus? get managePublishStatus;
  static Serializer<GmanagePublishStatusData> get serializer =>
      _$gmanagePublishStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanagePublishStatusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanagePublishStatusData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanagePublishStatusData.serializer,
        json,
      );
}

abstract class GmanagePublishStatusData_managePublishStatus
    implements
        Built<GmanagePublishStatusData_managePublishStatus,
            GmanagePublishStatusData_managePublishStatusBuilder> {
  GmanagePublishStatusData_managePublishStatus._();

  factory GmanagePublishStatusData_managePublishStatus(
      [void Function(GmanagePublishStatusData_managePublishStatusBuilder b)
          updates]) = _$GmanagePublishStatusData_managePublishStatus;

  static void _initializeBuilder(
          GmanagePublishStatusData_managePublishStatusBuilder b) =>
      b..G__typename = 'AllList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GmanagePublishStatusData_managePublishStatus>
      get serializer => _$gmanagePublishStatusDataManagePublishStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanagePublishStatusData_managePublishStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanagePublishStatusData_managePublishStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanagePublishStatusData_managePublishStatus.serializer,
        json,
      );
}

abstract class GmanageListingStepsData
    implements Built<GmanageListingStepsData, GmanageListingStepsDataBuilder> {
  GmanageListingStepsData._();

  factory GmanageListingStepsData(
          [void Function(GmanageListingStepsDataBuilder b) updates]) =
      _$GmanageListingStepsData;

  static void _initializeBuilder(GmanageListingStepsDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GmanageListingStepsData_manageListingSteps? get manageListingSteps;
  static Serializer<GmanageListingStepsData> get serializer =>
      _$gmanageListingStepsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanageListingStepsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanageListingStepsData.serializer,
        json,
      );
}

abstract class GmanageListingStepsData_manageListingSteps
    implements
        Built<GmanageListingStepsData_manageListingSteps,
            GmanageListingStepsData_manageListingStepsBuilder> {
  GmanageListingStepsData_manageListingSteps._();

  factory GmanageListingStepsData_manageListingSteps(
      [void Function(GmanageListingStepsData_manageListingStepsBuilder b)
          updates]) = _$GmanageListingStepsData_manageListingSteps;

  static void _initializeBuilder(
          GmanageListingStepsData_manageListingStepsBuilder b) =>
      b..G__typename = 'ShowListingCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GmanageListingStepsData_manageListingSteps_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GmanageListingStepsData_manageListingSteps>
      get serializer => _$gmanageListingStepsDataManageListingStepsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanageListingStepsData_manageListingSteps.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsData_manageListingSteps? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanageListingStepsData_manageListingSteps.serializer,
        json,
      );
}

abstract class GmanageListingStepsData_manageListingSteps_results
    implements
        Built<GmanageListingStepsData_manageListingSteps_results,
            GmanageListingStepsData_manageListingSteps_resultsBuilder> {
  GmanageListingStepsData_manageListingSteps_results._();

  factory GmanageListingStepsData_manageListingSteps_results(
      [void Function(
              GmanageListingStepsData_manageListingSteps_resultsBuilder b)
          updates]) = _$GmanageListingStepsData_manageListingSteps_results;

  static void _initializeBuilder(
          GmanageListingStepsData_manageListingSteps_resultsBuilder b) =>
      b..G__typename = 'ShowListingSteps';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get listId;
  String? get step1;
  String? get step2;
  String? get step3;
  GmanageListingStepsData_manageListingSteps_results_listing? get listing;
  static Serializer<GmanageListingStepsData_manageListingSteps_results>
      get serializer =>
          _$gmanageListingStepsDataManageListingStepsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanageListingStepsData_manageListingSteps_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsData_manageListingSteps_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanageListingStepsData_manageListingSteps_results.serializer,
        json,
      );
}

abstract class GmanageListingStepsData_manageListingSteps_results_listing
    implements
        Built<GmanageListingStepsData_manageListingSteps_results_listing,
            GmanageListingStepsData_manageListingSteps_results_listingBuilder> {
  GmanageListingStepsData_manageListingSteps_results_listing._();

  factory GmanageListingStepsData_manageListingSteps_results_listing(
      [void Function(
              GmanageListingStepsData_manageListingSteps_results_listingBuilder
                  b)
          updates]) = _$GmanageListingStepsData_manageListingSteps_results_listing;

  static void _initializeBuilder(
          GmanageListingStepsData_manageListingSteps_results_listingBuilder
              b) =>
      b..G__typename = 'ShowListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  bool? get isReady;
  bool? get isPublished;
  GmanageListingStepsData_manageListingSteps_results_listing_user? get user;
  static Serializer<GmanageListingStepsData_manageListingSteps_results_listing>
      get serializer =>
          _$gmanageListingStepsDataManageListingStepsResultsListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanageListingStepsData_manageListingSteps_results_listing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsData_manageListingSteps_results_listing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmanageListingStepsData_manageListingSteps_results_listing.serializer,
        json,
      );
}

abstract class GmanageListingStepsData_manageListingSteps_results_listing_user
    implements
        Built<GmanageListingStepsData_manageListingSteps_results_listing_user,
            GmanageListingStepsData_manageListingSteps_results_listing_userBuilder> {
  GmanageListingStepsData_manageListingSteps_results_listing_user._();

  factory GmanageListingStepsData_manageListingSteps_results_listing_user(
          [void Function(
                  GmanageListingStepsData_manageListingSteps_results_listing_userBuilder
                      b)
              updates]) =
      _$GmanageListingStepsData_manageListingSteps_results_listing_user;

  static void _initializeBuilder(
          GmanageListingStepsData_manageListingSteps_results_listing_userBuilder
              b) =>
      b..G__typename = 'user';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get userBanStatus;
  static Serializer<
          GmanageListingStepsData_manageListingSteps_results_listing_user>
      get serializer =>
          _$gmanageListingStepsDataManageListingStepsResultsListingUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmanageListingStepsData_manageListingSteps_results_listing_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GmanageListingStepsData_manageListingSteps_results_listing_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GmanageListingStepsData_manageListingSteps_results_listing_user
                .serializer,
            json,
          );
}

abstract class GupdateListingStep3Data
    implements Built<GupdateListingStep3Data, GupdateListingStep3DataBuilder> {
  GupdateListingStep3Data._();

  factory GupdateListingStep3Data(
          [void Function(GupdateListingStep3DataBuilder b) updates]) =
      _$GupdateListingStep3Data;

  static void _initializeBuilder(GupdateListingStep3DataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateListingStep3Data_updateListingStep3? get updateListingStep3;
  static Serializer<GupdateListingStep3Data> get serializer =>
      _$gupdateListingStep3DataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateListingStep3Data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateListingStep3Data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateListingStep3Data.serializer,
        json,
      );
}

abstract class GupdateListingStep3Data_updateListingStep3
    implements
        Built<GupdateListingStep3Data_updateListingStep3,
            GupdateListingStep3Data_updateListingStep3Builder> {
  GupdateListingStep3Data_updateListingStep3._();

  factory GupdateListingStep3Data_updateListingStep3(
      [void Function(GupdateListingStep3Data_updateListingStep3Builder b)
          updates]) = _$GupdateListingStep3Data_updateListingStep3;

  static void _initializeBuilder(
          GupdateListingStep3Data_updateListingStep3Builder b) =>
      b..G__typename = 'EditListingResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateListingStep3Data_updateListingStep3_results? get results;
  int? get status;
  String? get errorMessage;
  String? get actionType;
  static Serializer<GupdateListingStep3Data_updateListingStep3>
      get serializer => _$gupdateListingStep3DataUpdateListingStep3Serializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateListingStep3Data_updateListingStep3.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateListingStep3Data_updateListingStep3? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateListingStep3Data_updateListingStep3.serializer,
        json,
      );
}

abstract class GupdateListingStep3Data_updateListingStep3_results
    implements
        Built<GupdateListingStep3Data_updateListingStep3_results,
            GupdateListingStep3Data_updateListingStep3_resultsBuilder> {
  GupdateListingStep3Data_updateListingStep3_results._();

  factory GupdateListingStep3Data_updateListingStep3_results(
      [void Function(
              GupdateListingStep3Data_updateListingStep3_resultsBuilder b)
          updates]) = _$GupdateListingStep3Data_updateListingStep3_results;

  static void _initializeBuilder(
          GupdateListingStep3Data_updateListingStep3_resultsBuilder b) =>
      b..G__typename = 'EditListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
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
  String? get bookingType;
  String? get cancellationPolicy;
  double? get securityDeposit;
  static Serializer<GupdateListingStep3Data_updateListingStep3_results>
      get serializer =>
          _$gupdateListingStep3DataUpdateListingStep3ResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateListingStep3Data_updateListingStep3_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateListingStep3Data_updateListingStep3_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateListingStep3Data_updateListingStep3_results.serializer,
        json,
      );
}

abstract class GRemoveListPhotosData
    implements Built<GRemoveListPhotosData, GRemoveListPhotosDataBuilder> {
  GRemoveListPhotosData._();

  factory GRemoveListPhotosData(
          [void Function(GRemoveListPhotosDataBuilder b) updates]) =
      _$GRemoveListPhotosData;

  static void _initializeBuilder(GRemoveListPhotosDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemoveListPhotosData_removeListPhotos? get removeListPhotos;
  static Serializer<GRemoveListPhotosData> get serializer =>
      _$gRemoveListPhotosDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListPhotosData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListPhotosData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListPhotosData.serializer,
        json,
      );
}

abstract class GRemoveListPhotosData_removeListPhotos
    implements
        Built<GRemoveListPhotosData_removeListPhotos,
            GRemoveListPhotosData_removeListPhotosBuilder> {
  GRemoveListPhotosData_removeListPhotos._();

  factory GRemoveListPhotosData_removeListPhotos(
      [void Function(GRemoveListPhotosData_removeListPhotosBuilder b)
          updates]) = _$GRemoveListPhotosData_removeListPhotos;

  static void _initializeBuilder(
          GRemoveListPhotosData_removeListPhotosBuilder b) =>
      b..G__typename = 'ListPhotosCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GRemoveListPhotosData_removeListPhotos> get serializer =>
      _$gRemoveListPhotosDataRemoveListPhotosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListPhotosData_removeListPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListPhotosData_removeListPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListPhotosData_removeListPhotos.serializer,
        json,
      );
}
