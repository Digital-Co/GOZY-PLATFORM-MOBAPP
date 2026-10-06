// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i1;
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i5;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i4;

part 'listing_fragment.data.gql.g.dart';

abstract class GviewListingDetailsFragment
    implements _i1.GviewListingShortFragment {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get transmission;
  @override
  bool? get wishListStatus;
  @override
  String? get carType;
  @override
  int? get reviewsStarRating;
  @override
  int? get reviewsCount;
  @override
  String? get bookingType;
  @override
  bool? get isListOwner;
  @override
  int? get coverPhoto;
  @override
  double? get lat;
  @override
  BuiltList<GviewListingDetailsFragment_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GviewListingDetailsFragment_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GviewListingDetailsFragment_dynamicListTitle? get dynamicListTitle;
  @override
  GviewListingDetailsFragment_dynamicListDescription?
      get dynamicListDescription;
  @override
  GviewListingDetailsFragment_dynamicCarType? get dynamicCarType;
  @override
  GviewListingDetailsFragment_dynamicmake? get dynamicmake;
  @override
  GviewListingDetailsFragment_dynamicModel? get dynamicModel;
  @override
  GviewListingDetailsFragment_dynamicYear? get dynamicYear;
  @override
  GviewListingDetailsFragment_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GviewListingDetailsFragment_carRules?>? get carRules;
  @override
  BuiltList<GviewListingDetailsFragment_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GviewListingDetailsFragment_listPhotos?>? get listPhotos;
  GviewListingDetailsFragment_listingData? get listingData;
  String? get description;
  String? get country;
  String? get street;
  String? get city;
  String? get state;
  String? get zipcode;
  GviewListingDetailsFragment_user? get user;
  String? get make;
  String? get makeId;
  String? get model;
  String? get buildingName;
  String? get year;
  String? get odometer;
  BuiltList<GviewListingDetailsFragment_blockedDates?>? get blockedDates;
  bool? get isPublished;
  bool? get isReady;
  String? get lastUpdatedAt;
  String? get createdAt;
  GviewListingDetailsFragment_listingSteps? get listingSteps;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicListingTitle
    implements _i1.GviewListingShortFragment_dynamicListingTitle {
  @override
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicListingDescription
    implements _i1.GviewListingShortFragment_dynamicListingDescription {
  @override
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicListTitle
    implements _i1.GviewListingShortFragment_dynamicListTitle {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicListDescription
    implements _i1.GviewListingShortFragment_dynamicListDescription {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicCarType
    implements _i1.GviewListingShortFragment_dynamicCarType {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicmake
    implements _i1.GviewListingShortFragment_dynamicmake {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicModel
    implements _i1.GviewListingShortFragment_dynamicModel {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicYear
    implements _i1.GviewListingShortFragment_dynamicYear {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_dynamicOdometer
    implements _i1.GviewListingShortFragment_dynamicOdometer {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_carRules
    implements _i1.GviewListingShortFragment_carRules {
  @override
  String get G__typename;
  @override
  GviewListingDetailsFragment_carRules_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_carRules_dynamicItemName
    implements _i1.GviewListingShortFragment_carRules_dynamicItemName {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_carFeatures
    implements _i1.GviewListingShortFragment_carFeatures {
  @override
  String get G__typename;
  @override
  GviewListingDetailsFragment_carFeatures_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_carFeatures_dynamicItemName
    implements _i1.GviewListingShortFragment_carFeatures_dynamicItemName {
  @override
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_listPhotos
    implements _i1.GviewListingShortFragment_listPhotos {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_listingData
    implements
        _i1.GviewListingShortFragment_listingData,
        _i2.GlistingDataFragment {
  @override
  String get G__typename;
  @override
  double? get basePrice;
  @override
  String? get currency;
  @override
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  @override
  String? get bookingNoticeTime;
  @override
  String? get checkInStart;
  @override
  String? get checkInEnd;
  @override
  String? get maxDaysNotice;
  @override
  int? get minDay;
  @override
  int? get maxDay;
  @override
  String? get maxDayItemLabel;
  @override
  String? get maxDayOtherItemLabel;
  @override
  String? get minDayItemLabel;
  @override
  String? get minDayOtherItemLabel;
  @override
  double? get delivery;
  @override
  int? get cancellationPolicy;
  @override
  double? get securityDeposit;
  @override
  GviewListingDetailsFragment_listingData_cancellation? get cancellation;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_listingData_cancellation
    implements
        _i2.GlistingDataFragment_cancellation,
        _i2.GcancellationDataFragment {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  String? get policyName;
  @override
  String? get policyContent;
  @override
  int? get priorDays;
  @override
  String? get subTitle;
  @override
  String? get subContent;
  @override
  String? get content1;
  @override
  String? get content2;
  @override
  String? get content3;
  @override
  double? get accommodationPriorCheckIn;
  @override
  double? get accommodationBeforeCheckIn;
  @override
  double? get accommodationDuringCheckIn;
  @override
  double? get guestFeePriorCheckIn;
  @override
  double? get guestFeeBeforeCheckIn;
  @override
  double? get guestFeeDuringCheckIn;
  @override
  double? get hostFeePriorCheckIn;
  @override
  double? get hostFeeBeforeCheckIn;
  @override
  double? get hostFeeDuringCheckIn;
  @override
  bool? get isEnable;
  @override
  String? get status;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_user
    implements _i3.GlistingUserFragment {
  @override
  String get G__typename;
  @override
  String? get email;
  @override
  GviewListingDetailsFragment_user_profile? get profile;
  @override
  GviewListingDetailsFragment_user_verification? get verification;
  @override
  int? get userBanStatus;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_user_profile
    implements _i3.GlistingUserFragment_profile {
  @override
  String get G__typename;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get info;
  @override
  String? get createdAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_user_verification
    implements
        _i3.GlistingUserFragment_verification,
        _i4.GuserVerifiedInfoFragment {
  @override
  String get G__typename;
  @override
  String get userId;
  @override
  bool? get isEmailConfirmed;
  @override
  bool? get isFacebookConnected;
  @override
  bool? get isGoogleConnected;
  @override
  bool? get isIdVerification;
  @override
  bool? get isPhoneVerified;
  @override
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_blockedDates {
  String get G__typename;
  int? get id;
  String? get blockedDates;
  int? get reservationId;
  int? get listId;
  String? get calendarStatus;
  double? get isSpecialPrice;
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragment_listingSteps {
  String get G__typename;
  String? get step1;
  String? get step2;
  String? get step3;
  Map<String, dynamic> toJson();
}

abstract class GviewListingDetailsFragmentData
    implements
        Built<GviewListingDetailsFragmentData,
            GviewListingDetailsFragmentDataBuilder>,
        GviewListingDetailsFragment,
        _i1.GviewListingShortFragment {
  GviewListingDetailsFragmentData._();

  factory GviewListingDetailsFragmentData(
          [void Function(GviewListingDetailsFragmentDataBuilder b) updates]) =
      _$GviewListingDetailsFragmentData;

  static void _initializeBuilder(GviewListingDetailsFragmentDataBuilder b) =>
      b..G__typename = 'ShowListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get transmission;
  @override
  bool? get wishListStatus;
  @override
  String? get carType;
  @override
  int? get reviewsStarRating;
  @override
  int? get reviewsCount;
  @override
  String? get bookingType;
  @override
  bool? get isListOwner;
  @override
  int? get coverPhoto;
  @override
  double? get lat;
  @override
  BuiltList<GviewListingDetailsFragmentData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GviewListingDetailsFragmentData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GviewListingDetailsFragmentData_dynamicListTitle? get dynamicListTitle;
  @override
  GviewListingDetailsFragmentData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GviewListingDetailsFragmentData_dynamicCarType? get dynamicCarType;
  @override
  GviewListingDetailsFragmentData_dynamicmake? get dynamicmake;
  @override
  GviewListingDetailsFragmentData_dynamicModel? get dynamicModel;
  @override
  GviewListingDetailsFragmentData_dynamicYear? get dynamicYear;
  @override
  GviewListingDetailsFragmentData_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GviewListingDetailsFragmentData_carRules?>? get carRules;
  @override
  BuiltList<GviewListingDetailsFragmentData_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GviewListingDetailsFragmentData_listPhotos?>? get listPhotos;
  @override
  GviewListingDetailsFragmentData_listingData? get listingData;
  @override
  String? get description;
  @override
  String? get country;
  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipcode;
  @override
  GviewListingDetailsFragmentData_user? get user;
  @override
  String? get make;
  @override
  String? get makeId;
  @override
  String? get model;
  @override
  String? get buildingName;
  @override
  String? get year;
  @override
  String? get odometer;
  @override
  BuiltList<GviewListingDetailsFragmentData_blockedDates?>? get blockedDates;
  @override
  bool? get isPublished;
  @override
  bool? get isReady;
  @override
  String? get lastUpdatedAt;
  @override
  String? get createdAt;
  @override
  GviewListingDetailsFragmentData_listingSteps? get listingSteps;
  static Serializer<GviewListingDetailsFragmentData> get serializer =>
      _$gviewListingDetailsFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicListingTitle
    implements
        Built<GviewListingDetailsFragmentData_dynamicListingTitle,
            GviewListingDetailsFragmentData_dynamicListingTitleBuilder>,
        GviewListingDetailsFragment_dynamicListingTitle,
        _i1.GviewListingShortFragment_dynamicListingTitle {
  GviewListingDetailsFragmentData_dynamicListingTitle._();

  factory GviewListingDetailsFragmentData_dynamicListingTitle(
      [void Function(
              GviewListingDetailsFragmentData_dynamicListingTitleBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicListingTitle;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicListingTitleBuilder b) =>
      b..G__typename = 'DynamicListTitleType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  static Serializer<GviewListingDetailsFragmentData_dynamicListingTitle>
      get serializer =>
          _$gviewListingDetailsFragmentDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicListingTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicListingTitle? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicListingTitle.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicListingDescription
    implements
        Built<GviewListingDetailsFragmentData_dynamicListingDescription,
            GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder>,
        GviewListingDetailsFragment_dynamicListingDescription,
        _i1.GviewListingShortFragment_dynamicListingDescription {
  GviewListingDetailsFragmentData_dynamicListingDescription._();

  factory GviewListingDetailsFragmentData_dynamicListingDescription(
      [void Function(
              GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder
                  b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicListingDescription;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicListingDescriptionBuilder b) =>
      b..G__typename = 'DynamicListDescriptionType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  static Serializer<GviewListingDetailsFragmentData_dynamicListingDescription>
      get serializer =>
          _$gviewListingDetailsFragmentDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicListingDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicListingDescription? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicListingDescription.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicListTitle
    implements
        Built<GviewListingDetailsFragmentData_dynamicListTitle,
            GviewListingDetailsFragmentData_dynamicListTitleBuilder>,
        GviewListingDetailsFragment_dynamicListTitle,
        _i1.GviewListingShortFragment_dynamicListTitle {
  GviewListingDetailsFragmentData_dynamicListTitle._();

  factory GviewListingDetailsFragmentData_dynamicListTitle(
      [void Function(GviewListingDetailsFragmentData_dynamicListTitleBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicListTitle;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicListTitleBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicListTitle>
      get serializer =>
          _$gviewListingDetailsFragmentDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicListTitle.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicListDescription
    implements
        Built<GviewListingDetailsFragmentData_dynamicListDescription,
            GviewListingDetailsFragmentData_dynamicListDescriptionBuilder>,
        GviewListingDetailsFragment_dynamicListDescription,
        _i1.GviewListingShortFragment_dynamicListDescription {
  GviewListingDetailsFragmentData_dynamicListDescription._();

  factory GviewListingDetailsFragmentData_dynamicListDescription(
      [void Function(
              GviewListingDetailsFragmentData_dynamicListDescriptionBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicListDescription;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicListDescriptionBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicListDescription>
      get serializer =>
          _$gviewListingDetailsFragmentDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicListDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicListDescription? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicListDescription.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicCarType
    implements
        Built<GviewListingDetailsFragmentData_dynamicCarType,
            GviewListingDetailsFragmentData_dynamicCarTypeBuilder>,
        GviewListingDetailsFragment_dynamicCarType,
        _i1.GviewListingShortFragment_dynamicCarType {
  GviewListingDetailsFragmentData_dynamicCarType._();

  factory GviewListingDetailsFragmentData_dynamicCarType(
      [void Function(GviewListingDetailsFragmentData_dynamicCarTypeBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicCarType;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicCarTypeBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicCarType>
      get serializer =>
          _$gviewListingDetailsFragmentDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicCarType.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicmake
    implements
        Built<GviewListingDetailsFragmentData_dynamicmake,
            GviewListingDetailsFragmentData_dynamicmakeBuilder>,
        GviewListingDetailsFragment_dynamicmake,
        _i1.GviewListingShortFragment_dynamicmake {
  GviewListingDetailsFragmentData_dynamicmake._();

  factory GviewListingDetailsFragmentData_dynamicmake(
      [void Function(GviewListingDetailsFragmentData_dynamicmakeBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicmake;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicmakeBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicmake>
      get serializer => _$gviewListingDetailsFragmentDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicmake.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicModel
    implements
        Built<GviewListingDetailsFragmentData_dynamicModel,
            GviewListingDetailsFragmentData_dynamicModelBuilder>,
        GviewListingDetailsFragment_dynamicModel,
        _i1.GviewListingShortFragment_dynamicModel {
  GviewListingDetailsFragmentData_dynamicModel._();

  factory GviewListingDetailsFragmentData_dynamicModel(
      [void Function(GviewListingDetailsFragmentData_dynamicModelBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicModel;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicModelBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicModel>
      get serializer => _$gviewListingDetailsFragmentDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicModel.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicYear
    implements
        Built<GviewListingDetailsFragmentData_dynamicYear,
            GviewListingDetailsFragmentData_dynamicYearBuilder>,
        GviewListingDetailsFragment_dynamicYear,
        _i1.GviewListingShortFragment_dynamicYear {
  GviewListingDetailsFragmentData_dynamicYear._();

  factory GviewListingDetailsFragmentData_dynamicYear(
      [void Function(GviewListingDetailsFragmentData_dynamicYearBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicYear;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicYearBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicYear>
      get serializer => _$gviewListingDetailsFragmentDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicYear.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_dynamicOdometer
    implements
        Built<GviewListingDetailsFragmentData_dynamicOdometer,
            GviewListingDetailsFragmentData_dynamicOdometerBuilder>,
        GviewListingDetailsFragment_dynamicOdometer,
        _i1.GviewListingShortFragment_dynamicOdometer {
  GviewListingDetailsFragmentData_dynamicOdometer._();

  factory GviewListingDetailsFragmentData_dynamicOdometer(
      [void Function(GviewListingDetailsFragmentData_dynamicOdometerBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_dynamicOdometer;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_dynamicOdometerBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_dynamicOdometer>
      get serializer =>
          _$gviewListingDetailsFragmentDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_dynamicOdometer.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_carRules
    implements
        Built<GviewListingDetailsFragmentData_carRules,
            GviewListingDetailsFragmentData_carRulesBuilder>,
        GviewListingDetailsFragment_carRules,
        _i1.GviewListingShortFragment_carRules {
  GviewListingDetailsFragmentData_carRules._();

  factory GviewListingDetailsFragmentData_carRules(
      [void Function(GviewListingDetailsFragmentData_carRulesBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_carRules;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GviewListingDetailsFragmentData_carRules_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GviewListingDetailsFragmentData_carRules> get serializer =>
      _$gviewListingDetailsFragmentDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_carRules.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_carRules_dynamicItemName
    implements
        Built<GviewListingDetailsFragmentData_carRules_dynamicItemName,
            GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder>,
        GviewListingDetailsFragment_carRules_dynamicItemName,
        _i1.GviewListingShortFragment_carRules_dynamicItemName {
  GviewListingDetailsFragmentData_carRules_dynamicItemName._();

  factory GviewListingDetailsFragmentData_carRules_dynamicItemName(
      [void Function(
              GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_carRules_dynamicItemNameBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_carRules_dynamicItemName>
      get serializer =>
          _$gviewListingDetailsFragmentDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_carRules_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_carRules_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_carRules_dynamicItemName.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_carFeatures
    implements
        Built<GviewListingDetailsFragmentData_carFeatures,
            GviewListingDetailsFragmentData_carFeaturesBuilder>,
        GviewListingDetailsFragment_carFeatures,
        _i1.GviewListingShortFragment_carFeatures {
  GviewListingDetailsFragmentData_carFeatures._();

  factory GviewListingDetailsFragmentData_carFeatures(
      [void Function(GviewListingDetailsFragmentData_carFeaturesBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_carFeatures;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GviewListingDetailsFragmentData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GviewListingDetailsFragmentData_carFeatures>
      get serializer => _$gviewListingDetailsFragmentDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_carFeatures.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_carFeatures_dynamicItemName
    implements
        Built<GviewListingDetailsFragmentData_carFeatures_dynamicItemName,
            GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder>,
        GviewListingDetailsFragment_carFeatures_dynamicItemName,
        _i1.GviewListingShortFragment_carFeatures_dynamicItemName {
  GviewListingDetailsFragmentData_carFeatures_dynamicItemName._();

  factory GviewListingDetailsFragmentData_carFeatures_dynamicItemName(
      [void Function(
              GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder
                  b)
          updates]) = _$GviewListingDetailsFragmentData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_carFeatures_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GviewListingDetailsFragmentData_carFeatures_dynamicItemName>
      get serializer =>
          _$gviewListingDetailsFragmentDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_carFeatures_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_carFeatures_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_carFeatures_dynamicItemName.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_listPhotos
    implements
        Built<GviewListingDetailsFragmentData_listPhotos,
            GviewListingDetailsFragmentData_listPhotosBuilder>,
        GviewListingDetailsFragment_listPhotos,
        _i1.GviewListingShortFragment_listPhotos {
  GviewListingDetailsFragmentData_listPhotos._();

  factory GviewListingDetailsFragmentData_listPhotos(
      [void Function(GviewListingDetailsFragmentData_listPhotosBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_listPhotos;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GviewListingDetailsFragmentData_listPhotos>
      get serializer => _$gviewListingDetailsFragmentDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_listPhotos.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_listingData
    implements
        Built<GviewListingDetailsFragmentData_listingData,
            GviewListingDetailsFragmentData_listingDataBuilder>,
        GviewListingDetailsFragment_listingData,
        _i1.GviewListingShortFragment_listingData,
        _i2.GlistingDataFragment {
  GviewListingDetailsFragmentData_listingData._();

  factory GviewListingDetailsFragmentData_listingData(
      [void Function(GviewListingDetailsFragmentData_listingDataBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_listingData;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_listingDataBuilder b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get basePrice;
  @override
  String? get currency;
  @override
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  @override
  String? get bookingNoticeTime;
  @override
  String? get checkInStart;
  @override
  String? get checkInEnd;
  @override
  String? get maxDaysNotice;
  @override
  int? get minDay;
  @override
  int? get maxDay;
  @override
  String? get maxDayItemLabel;
  @override
  String? get maxDayOtherItemLabel;
  @override
  String? get minDayItemLabel;
  @override
  String? get minDayOtherItemLabel;
  @override
  double? get delivery;
  @override
  int? get cancellationPolicy;
  @override
  double? get securityDeposit;
  @override
  GviewListingDetailsFragmentData_listingData_cancellation? get cancellation;
  static Serializer<GviewListingDetailsFragmentData_listingData>
      get serializer => _$gviewListingDetailsFragmentDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_listingData.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_listingData_cancellation
    implements
        Built<GviewListingDetailsFragmentData_listingData_cancellation,
            GviewListingDetailsFragmentData_listingData_cancellationBuilder>,
        GviewListingDetailsFragment_listingData_cancellation,
        _i2.GlistingDataFragment_cancellation,
        _i2.GcancellationDataFragment {
  GviewListingDetailsFragmentData_listingData_cancellation._();

  factory GviewListingDetailsFragmentData_listingData_cancellation(
      [void Function(
              GviewListingDetailsFragmentData_listingData_cancellationBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_listingData_cancellation;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_listingData_cancellationBuilder b) =>
      b..G__typename = 'Cancellation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get policyName;
  @override
  String? get policyContent;
  @override
  int? get priorDays;
  @override
  String? get subTitle;
  @override
  String? get subContent;
  @override
  String? get content1;
  @override
  String? get content2;
  @override
  String? get content3;
  @override
  double? get accommodationPriorCheckIn;
  @override
  double? get accommodationBeforeCheckIn;
  @override
  double? get accommodationDuringCheckIn;
  @override
  double? get guestFeePriorCheckIn;
  @override
  double? get guestFeeBeforeCheckIn;
  @override
  double? get guestFeeDuringCheckIn;
  @override
  double? get hostFeePriorCheckIn;
  @override
  double? get hostFeeBeforeCheckIn;
  @override
  double? get hostFeeDuringCheckIn;
  @override
  bool? get isEnable;
  @override
  String? get status;
  static Serializer<GviewListingDetailsFragmentData_listingData_cancellation>
      get serializer =>
          _$gviewListingDetailsFragmentDataListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_listingData_cancellation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_listingData_cancellation? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_listingData_cancellation.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_user
    implements
        Built<GviewListingDetailsFragmentData_user,
            GviewListingDetailsFragmentData_userBuilder>,
        GviewListingDetailsFragment_user,
        _i3.GlistingUserFragment {
  GviewListingDetailsFragmentData_user._();

  factory GviewListingDetailsFragmentData_user(
      [void Function(GviewListingDetailsFragmentData_userBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_user;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_userBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GviewListingDetailsFragmentData_user_profile? get profile;
  @override
  GviewListingDetailsFragmentData_user_verification? get verification;
  @override
  int? get userBanStatus;
  static Serializer<GviewListingDetailsFragmentData_user> get serializer =>
      _$gviewListingDetailsFragmentDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_user? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_user.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_user_profile
    implements
        Built<GviewListingDetailsFragmentData_user_profile,
            GviewListingDetailsFragmentData_user_profileBuilder>,
        GviewListingDetailsFragment_user_profile,
        _i3.GlistingUserFragment_profile {
  GviewListingDetailsFragmentData_user_profile._();

  factory GviewListingDetailsFragmentData_user_profile(
      [void Function(GviewListingDetailsFragmentData_user_profileBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_user_profile;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_user_profileBuilder b) =>
      b..G__typename = 'profile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GviewListingDetailsFragmentData_user_profile>
      get serializer => _$gviewListingDetailsFragmentDataUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_user_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_user_profile? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_user_profile.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_user_verification
    implements
        Built<GviewListingDetailsFragmentData_user_verification,
            GviewListingDetailsFragmentData_user_verificationBuilder>,
        GviewListingDetailsFragment_user_verification,
        _i3.GlistingUserFragment_verification,
        _i4.GuserVerifiedInfoFragment {
  GviewListingDetailsFragmentData_user_verification._();

  factory GviewListingDetailsFragmentData_user_verification(
      [void Function(GviewListingDetailsFragmentData_user_verificationBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_user_verification;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_user_verificationBuilder b) =>
      b..G__typename = 'UserVerifiedInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  bool? get isEmailConfirmed;
  @override
  bool? get isFacebookConnected;
  @override
  bool? get isGoogleConnected;
  @override
  bool? get isIdVerification;
  @override
  bool? get isPhoneVerified;
  static Serializer<GviewListingDetailsFragmentData_user_verification>
      get serializer =>
          _$gviewListingDetailsFragmentDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_user_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_user_verification? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_user_verification.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_blockedDates
    implements
        Built<GviewListingDetailsFragmentData_blockedDates,
            GviewListingDetailsFragmentData_blockedDatesBuilder>,
        GviewListingDetailsFragment_blockedDates {
  GviewListingDetailsFragmentData_blockedDates._();

  factory GviewListingDetailsFragmentData_blockedDates(
      [void Function(GviewListingDetailsFragmentData_blockedDatesBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_blockedDates;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_blockedDatesBuilder b) =>
      b..G__typename = 'listBlockedDates';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get blockedDates;
  @override
  int? get reservationId;
  @override
  int? get listId;
  @override
  String? get calendarStatus;
  @override
  double? get isSpecialPrice;
  static Serializer<GviewListingDetailsFragmentData_blockedDates>
      get serializer => _$gviewListingDetailsFragmentDataBlockedDatesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_blockedDates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_blockedDates? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_blockedDates.serializer,
        json,
      );
}

abstract class GviewListingDetailsFragmentData_listingSteps
    implements
        Built<GviewListingDetailsFragmentData_listingSteps,
            GviewListingDetailsFragmentData_listingStepsBuilder>,
        GviewListingDetailsFragment_listingSteps {
  GviewListingDetailsFragmentData_listingSteps._();

  factory GviewListingDetailsFragmentData_listingSteps(
      [void Function(GviewListingDetailsFragmentData_listingStepsBuilder b)
          updates]) = _$GviewListingDetailsFragmentData_listingSteps;

  static void _initializeBuilder(
          GviewListingDetailsFragmentData_listingStepsBuilder b) =>
      b..G__typename = 'userListingSteps';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get step1;
  @override
  String? get step2;
  @override
  String? get step3;
  static Serializer<GviewListingDetailsFragmentData_listingSteps>
      get serializer => _$gviewListingDetailsFragmentDataListingStepsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GviewListingDetailsFragmentData_listingSteps.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsFragmentData_listingSteps? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GviewListingDetailsFragmentData_listingSteps.serializer,
        json,
      );
}
