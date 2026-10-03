// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i5;
import 'package:gozy/graphql/__generated__/listing_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i4;

part 'manageListings.data.gql.g.dart';

abstract class GManageListingsData
    implements Built<GManageListingsData, GManageListingsDataBuilder> {
  GManageListingsData._();

  factory GManageListingsData(
          [void Function(GManageListingsDataBuilder b) updates]) =
      _$GManageListingsData;

  static void _initializeBuilder(GManageListingsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GManageListingsData_ManageListings? get ManageListings;
  static Serializer<GManageListingsData> get serializer =>
      _$gManageListingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings
    implements
        Built<GManageListingsData_ManageListings,
            GManageListingsData_ManageListingsBuilder> {
  GManageListingsData_ManageListings._();

  factory GManageListingsData_ManageListings(
      [void Function(GManageListingsData_ManageListingsBuilder b)
          updates]) = _$GManageListingsData_ManageListings;

  static void _initializeBuilder(GManageListingsData_ManageListingsBuilder b) =>
      b..G__typename = 'WholeManageListingsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GManageListingsData_ManageListings_results?>? get results;
  int? get count;
  int? get status;
  String? get errorMessage;
  static Serializer<GManageListingsData_ManageListings> get serializer =>
      _$gManageListingsDataManageListingsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results
    implements
        Built<GManageListingsData_ManageListings_results,
            GManageListingsData_ManageListings_resultsBuilder>,
        _i2.GviewListingDetailsFragment {
  GManageListingsData_ManageListings_results._();

  factory GManageListingsData_ManageListings_results(
      [void Function(GManageListingsData_ManageListings_resultsBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_resultsBuilder b) =>
      b..G__typename = 'ShowListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
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
  GManageListingsData_ManageListings_results_user? get user;
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
  GManageListingsData_ManageListings_results_listingData? get listingData;
  @override
  BuiltList<GManageListingsData_ManageListings_results_blockedDates?>?
      get blockedDates;
  @override
  String? get carType;
  @override
  bool? get isPublished;
  @override
  bool? get isReady;
  @override
  String? get lastUpdatedAt;
  @override
  String? get createdAt;
  @override
  GManageListingsData_ManageListings_results_listingSteps? get listingSteps;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get transmission;
  @override
  bool? get wishListStatus;
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
  BuiltList<GManageListingsData_ManageListings_results_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GManageListingsData_ManageListings_results_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GManageListingsData_ManageListings_results_dynamicListTitle?
      get dynamicListTitle;
  @override
  GManageListingsData_ManageListings_results_dynamicListDescription?
      get dynamicListDescription;
  @override
  GManageListingsData_ManageListings_results_dynamicCarType? get dynamicCarType;
  @override
  GManageListingsData_ManageListings_results_dynamicmake? get dynamicmake;
  @override
  GManageListingsData_ManageListings_results_dynamicModel? get dynamicModel;
  @override
  GManageListingsData_ManageListings_results_dynamicYear? get dynamicYear;
  @override
  GManageListingsData_ManageListings_results_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GManageListingsData_ManageListings_results_carRules?>? get carRules;
  @override
  BuiltList<GManageListingsData_ManageListings_results_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GManageListingsData_ManageListings_results_listPhotos?>?
      get listPhotos;
  static Serializer<GManageListingsData_ManageListings_results>
      get serializer => _$gManageListingsDataManageListingsResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_user
    implements
        Built<GManageListingsData_ManageListings_results_user,
            GManageListingsData_ManageListings_results_userBuilder>,
        _i2.GviewListingDetailsFragment_user,
        _i3.GlistingUserFragment {
  GManageListingsData_ManageListings_results_user._();

  factory GManageListingsData_ManageListings_results_user(
      [void Function(GManageListingsData_ManageListings_results_userBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_user;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_userBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GManageListingsData_ManageListings_results_user_profile? get profile;
  @override
  GManageListingsData_ManageListings_results_user_verification?
      get verification;
  @override
  int? get userBanStatus;
  static Serializer<GManageListingsData_ManageListings_results_user>
      get serializer =>
          _$gManageListingsDataManageListingsResultsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_user.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_user_profile
    implements
        Built<GManageListingsData_ManageListings_results_user_profile,
            GManageListingsData_ManageListings_results_user_profileBuilder>,
        _i2.GviewListingDetailsFragment_user_profile,
        _i3.GlistingUserFragment_profile {
  GManageListingsData_ManageListings_results_user_profile._();

  factory GManageListingsData_ManageListings_results_user_profile(
      [void Function(
              GManageListingsData_ManageListings_results_user_profileBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_user_profile;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_user_profileBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_user_profile>
      get serializer =>
          _$gManageListingsDataManageListingsResultsUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_user_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_user_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_user_profile.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_user_verification
    implements
        Built<GManageListingsData_ManageListings_results_user_verification,
            GManageListingsData_ManageListings_results_user_verificationBuilder>,
        _i2.GviewListingDetailsFragment_user_verification,
        _i3.GlistingUserFragment_verification,
        _i4.GuserVerifiedInfoFragment {
  GManageListingsData_ManageListings_results_user_verification._();

  factory GManageListingsData_ManageListings_results_user_verification(
          [void Function(
                  GManageListingsData_ManageListings_results_user_verificationBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_user_verification;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_user_verificationBuilder
              b) =>
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
  static Serializer<
          GManageListingsData_ManageListings_results_user_verification>
      get serializer =>
          _$gManageListingsDataManageListingsResultsUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_user_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_user_verification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_user_verification.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_listingData
    implements
        Built<GManageListingsData_ManageListings_results_listingData,
            GManageListingsData_ManageListings_results_listingDataBuilder>,
        _i2.GviewListingDetailsFragment_listingData,
        _i5.GlistingDataFragment {
  GManageListingsData_ManageListings_results_listingData._();

  factory GManageListingsData_ManageListings_results_listingData(
      [void Function(
              GManageListingsData_ManageListings_results_listingDataBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_listingData;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_listingDataBuilder b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
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
  double? get basePrice;
  @override
  double? get delivery;
  @override
  String? get currency;
  @override
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  @override
  int? get cancellationPolicy;
  @override
  double? get securityDeposit;
  @override
  GManageListingsData_ManageListings_results_listingData_cancellation?
      get cancellation;
  static Serializer<GManageListingsData_ManageListings_results_listingData>
      get serializer =>
          _$gManageListingsDataManageListingsResultsListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_listingData.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_listingData_cancellation
    implements
        Built<
            GManageListingsData_ManageListings_results_listingData_cancellation,
            GManageListingsData_ManageListings_results_listingData_cancellationBuilder>,
        _i2.GviewListingDetailsFragment_listingData_cancellation,
        _i5.GlistingDataFragment_cancellation,
        _i5.GcancellationDataFragment {
  GManageListingsData_ManageListings_results_listingData_cancellation._();

  factory GManageListingsData_ManageListings_results_listingData_cancellation(
          [void Function(
                  GManageListingsData_ManageListings_results_listingData_cancellationBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_listingData_cancellation;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_listingData_cancellationBuilder
              b) =>
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
  static Serializer<
          GManageListingsData_ManageListings_results_listingData_cancellation>
      get serializer =>
          _$gManageListingsDataManageListingsResultsListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_listingData_cancellation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_listingData_cancellation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GManageListingsData_ManageListings_results_listingData_cancellation
                .serializer,
            json,
          );
}

abstract class GManageListingsData_ManageListings_results_blockedDates
    implements
        Built<GManageListingsData_ManageListings_results_blockedDates,
            GManageListingsData_ManageListings_results_blockedDatesBuilder>,
        _i2.GviewListingDetailsFragment_blockedDates {
  GManageListingsData_ManageListings_results_blockedDates._();

  factory GManageListingsData_ManageListings_results_blockedDates(
      [void Function(
              GManageListingsData_ManageListings_results_blockedDatesBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_blockedDates;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_blockedDatesBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_blockedDates>
      get serializer =>
          _$gManageListingsDataManageListingsResultsBlockedDatesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_blockedDates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_blockedDates? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_blockedDates.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_listingSteps
    implements
        Built<GManageListingsData_ManageListings_results_listingSteps,
            GManageListingsData_ManageListings_results_listingStepsBuilder>,
        _i2.GviewListingDetailsFragment_listingSteps {
  GManageListingsData_ManageListings_results_listingSteps._();

  factory GManageListingsData_ManageListings_results_listingSteps(
      [void Function(
              GManageListingsData_ManageListings_results_listingStepsBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_listingSteps;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_listingStepsBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_listingSteps>
      get serializer =>
          _$gManageListingsDataManageListingsResultsListingStepsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_listingSteps.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_listingSteps? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_listingSteps.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_dynamicListingTitle
    implements
        Built<GManageListingsData_ManageListings_results_dynamicListingTitle,
            GManageListingsData_ManageListings_results_dynamicListingTitleBuilder>,
        _i2.GviewListingDetailsFragment_dynamicListingTitle {
  GManageListingsData_ManageListings_results_dynamicListingTitle._();

  factory GManageListingsData_ManageListings_results_dynamicListingTitle(
          [void Function(
                  GManageListingsData_ManageListings_results_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_dynamicListingTitle;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicListingTitleBuilder
              b) =>
      b..G__typename = 'DynamicListTitleType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  static Serializer<
          GManageListingsData_ManageListings_results_dynamicListingTitle>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GManageListingsData_ManageListings_results_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GManageListingsData_ManageListings_results_dynamicListingDescription
    implements
        Built<
            GManageListingsData_ManageListings_results_dynamicListingDescription,
            GManageListingsData_ManageListings_results_dynamicListingDescriptionBuilder>,
        _i2.GviewListingDetailsFragment_dynamicListingDescription {
  GManageListingsData_ManageListings_results_dynamicListingDescription._();

  factory GManageListingsData_ManageListings_results_dynamicListingDescription(
          [void Function(
                  GManageListingsData_ManageListings_results_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_dynamicListingDescription;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicListingDescriptionBuilder
              b) =>
      b..G__typename = 'DynamicListDescriptionType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  static Serializer<
          GManageListingsData_ManageListings_results_dynamicListingDescription>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GManageListingsData_ManageListings_results_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GManageListingsData_ManageListings_results_dynamicListTitle
    implements
        Built<GManageListingsData_ManageListings_results_dynamicListTitle,
            GManageListingsData_ManageListings_results_dynamicListTitleBuilder>,
        _i2.GviewListingDetailsFragment_dynamicListTitle {
  GManageListingsData_ManageListings_results_dynamicListTitle._();

  factory GManageListingsData_ManageListings_results_dynamicListTitle(
      [void Function(
              GManageListingsData_ManageListings_results_dynamicListTitleBuilder
                  b)
          updates]) = _$GManageListingsData_ManageListings_results_dynamicListTitle;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicListTitleBuilder
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
  static Serializer<GManageListingsData_ManageListings_results_dynamicListTitle>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_dynamicListTitle.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_dynamicListDescription
    implements
        Built<GManageListingsData_ManageListings_results_dynamicListDescription,
            GManageListingsData_ManageListings_results_dynamicListDescriptionBuilder>,
        _i2.GviewListingDetailsFragment_dynamicListDescription {
  GManageListingsData_ManageListings_results_dynamicListDescription._();

  factory GManageListingsData_ManageListings_results_dynamicListDescription(
          [void Function(
                  GManageListingsData_ManageListings_results_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_dynamicListDescription;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicListDescriptionBuilder
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
  static Serializer<
          GManageListingsData_ManageListings_results_dynamicListDescription>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GManageListingsData_ManageListings_results_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GManageListingsData_ManageListings_results_dynamicCarType
    implements
        Built<GManageListingsData_ManageListings_results_dynamicCarType,
            GManageListingsData_ManageListings_results_dynamicCarTypeBuilder>,
        _i2.GviewListingDetailsFragment_dynamicCarType {
  GManageListingsData_ManageListings_results_dynamicCarType._();

  factory GManageListingsData_ManageListings_results_dynamicCarType(
      [void Function(
              GManageListingsData_ManageListings_results_dynamicCarTypeBuilder
                  b)
          updates]) = _$GManageListingsData_ManageListings_results_dynamicCarType;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicCarTypeBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_dynamicCarType>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_dynamicCarType.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_dynamicmake
    implements
        Built<GManageListingsData_ManageListings_results_dynamicmake,
            GManageListingsData_ManageListings_results_dynamicmakeBuilder>,
        _i2.GviewListingDetailsFragment_dynamicmake {
  GManageListingsData_ManageListings_results_dynamicmake._();

  factory GManageListingsData_ManageListings_results_dynamicmake(
      [void Function(
              GManageListingsData_ManageListings_results_dynamicmakeBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_dynamicmake;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicmakeBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_dynamicmake>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_dynamicmake.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_dynamicModel
    implements
        Built<GManageListingsData_ManageListings_results_dynamicModel,
            GManageListingsData_ManageListings_results_dynamicModelBuilder>,
        _i2.GviewListingDetailsFragment_dynamicModel {
  GManageListingsData_ManageListings_results_dynamicModel._();

  factory GManageListingsData_ManageListings_results_dynamicModel(
      [void Function(
              GManageListingsData_ManageListings_results_dynamicModelBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_dynamicModel;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicModelBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_dynamicModel>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_dynamicModel.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_dynamicYear
    implements
        Built<GManageListingsData_ManageListings_results_dynamicYear,
            GManageListingsData_ManageListings_results_dynamicYearBuilder>,
        _i2.GviewListingDetailsFragment_dynamicYear {
  GManageListingsData_ManageListings_results_dynamicYear._();

  factory GManageListingsData_ManageListings_results_dynamicYear(
      [void Function(
              GManageListingsData_ManageListings_results_dynamicYearBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_dynamicYear;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicYearBuilder b) =>
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
  static Serializer<GManageListingsData_ManageListings_results_dynamicYear>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_dynamicYear.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_dynamicOdometer
    implements
        Built<GManageListingsData_ManageListings_results_dynamicOdometer,
            GManageListingsData_ManageListings_results_dynamicOdometerBuilder>,
        _i2.GviewListingDetailsFragment_dynamicOdometer {
  GManageListingsData_ManageListings_results_dynamicOdometer._();

  factory GManageListingsData_ManageListings_results_dynamicOdometer(
      [void Function(
              GManageListingsData_ManageListings_results_dynamicOdometerBuilder
                  b)
          updates]) = _$GManageListingsData_ManageListings_results_dynamicOdometer;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_dynamicOdometerBuilder
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
  static Serializer<GManageListingsData_ManageListings_results_dynamicOdometer>
      get serializer =>
          _$gManageListingsDataManageListingsResultsDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_dynamicOdometer.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_carRules
    implements
        Built<GManageListingsData_ManageListings_results_carRules,
            GManageListingsData_ManageListings_results_carRulesBuilder>,
        _i2.GviewListingDetailsFragment_carRules {
  GManageListingsData_ManageListings_results_carRules._();

  factory GManageListingsData_ManageListings_results_carRules(
      [void Function(
              GManageListingsData_ManageListings_results_carRulesBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_carRules;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GManageListingsData_ManageListings_results_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GManageListingsData_ManageListings_results_carRules>
      get serializer =>
          _$gManageListingsDataManageListingsResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_carRules.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_carRules_dynamicItemName
    implements
        Built<
            GManageListingsData_ManageListings_results_carRules_dynamicItemName,
            GManageListingsData_ManageListings_results_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingDetailsFragment_carRules_dynamicItemName {
  GManageListingsData_ManageListings_results_carRules_dynamicItemName._();

  factory GManageListingsData_ManageListings_results_carRules_dynamicItemName(
          [void Function(
                  GManageListingsData_ManageListings_results_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_carRules_dynamicItemName;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_carRules_dynamicItemNameBuilder
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
  static Serializer<
          GManageListingsData_ManageListings_results_carRules_dynamicItemName>
      get serializer =>
          _$gManageListingsDataManageListingsResultsCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GManageListingsData_ManageListings_results_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GManageListingsData_ManageListings_results_carFeatures
    implements
        Built<GManageListingsData_ManageListings_results_carFeatures,
            GManageListingsData_ManageListings_results_carFeaturesBuilder>,
        _i2.GviewListingDetailsFragment_carFeatures {
  GManageListingsData_ManageListings_results_carFeatures._();

  factory GManageListingsData_ManageListings_results_carFeatures(
      [void Function(
              GManageListingsData_ManageListings_results_carFeaturesBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_carFeatures;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GManageListingsData_ManageListings_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GManageListingsData_ManageListings_results_carFeatures>
      get serializer =>
          _$gManageListingsDataManageListingsResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_carFeatures.serializer,
        json,
      );
}

abstract class GManageListingsData_ManageListings_results_carFeatures_dynamicItemName
    implements
        Built<
            GManageListingsData_ManageListings_results_carFeatures_dynamicItemName,
            GManageListingsData_ManageListings_results_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingDetailsFragment_carFeatures_dynamicItemName {
  GManageListingsData_ManageListings_results_carFeatures_dynamicItemName._();

  factory GManageListingsData_ManageListings_results_carFeatures_dynamicItemName(
          [void Function(
                  GManageListingsData_ManageListings_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GManageListingsData_ManageListings_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_carFeatures_dynamicItemNameBuilder
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
  static Serializer<
          GManageListingsData_ManageListings_results_carFeatures_dynamicItemName>
      get serializer =>
          _$gManageListingsDataManageListingsResultsCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GManageListingsData_ManageListings_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GManageListingsData_ManageListings_results_listPhotos
    implements
        Built<GManageListingsData_ManageListings_results_listPhotos,
            GManageListingsData_ManageListings_results_listPhotosBuilder>,
        _i2.GviewListingDetailsFragment_listPhotos {
  GManageListingsData_ManageListings_results_listPhotos._();

  factory GManageListingsData_ManageListings_results_listPhotos(
      [void Function(
              GManageListingsData_ManageListings_results_listPhotosBuilder b)
          updates]) = _$GManageListingsData_ManageListings_results_listPhotos;

  static void _initializeBuilder(
          GManageListingsData_ManageListings_results_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GManageListingsData_ManageListings_results_listPhotos>
      get serializer =>
          _$gManageListingsDataManageListingsResultsListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GManageListingsData_ManageListings_results_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GManageListingsData_ManageListings_results_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GManageListingsData_ManageListings_results_listPhotos.serializer,
        json,
      );
}

abstract class GlistBlockedDatesData
    implements Built<GlistBlockedDatesData, GlistBlockedDatesDataBuilder> {
  GlistBlockedDatesData._();

  factory GlistBlockedDatesData(
          [void Function(GlistBlockedDatesDataBuilder b) updates]) =
      _$GlistBlockedDatesData;

  static void _initializeBuilder(GlistBlockedDatesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GlistBlockedDatesData_getListBlockedDates? get getListBlockedDates;
  static Serializer<GlistBlockedDatesData> get serializer =>
      _$glistBlockedDatesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistBlockedDatesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistBlockedDatesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistBlockedDatesData.serializer,
        json,
      );
}

abstract class GlistBlockedDatesData_getListBlockedDates
    implements
        Built<GlistBlockedDatesData_getListBlockedDates,
            GlistBlockedDatesData_getListBlockedDatesBuilder> {
  GlistBlockedDatesData_getListBlockedDates._();

  factory GlistBlockedDatesData_getListBlockedDates(
      [void Function(GlistBlockedDatesData_getListBlockedDatesBuilder b)
          updates]) = _$GlistBlockedDatesData_getListBlockedDates;

  static void _initializeBuilder(
          GlistBlockedDatesData_getListBlockedDatesBuilder b) =>
      b..G__typename = 'AllListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GlistBlockedDatesData_getListBlockedDates_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GlistBlockedDatesData_getListBlockedDates> get serializer =>
      _$glistBlockedDatesDataGetListBlockedDatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistBlockedDatesData_getListBlockedDates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistBlockedDatesData_getListBlockedDates? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistBlockedDatesData_getListBlockedDates.serializer,
        json,
      );
}

abstract class GlistBlockedDatesData_getListBlockedDates_results
    implements
        Built<GlistBlockedDatesData_getListBlockedDates_results,
            GlistBlockedDatesData_getListBlockedDates_resultsBuilder> {
  GlistBlockedDatesData_getListBlockedDates_results._();

  factory GlistBlockedDatesData_getListBlockedDates_results(
      [void Function(GlistBlockedDatesData_getListBlockedDates_resultsBuilder b)
          updates]) = _$GlistBlockedDatesData_getListBlockedDates_results;

  static void _initializeBuilder(
          GlistBlockedDatesData_getListBlockedDates_resultsBuilder b) =>
      b..G__typename = 'ShowListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GlistBlockedDatesData_getListBlockedDates_results_blockedDates?>?
      get blockedDates;
  static Serializer<GlistBlockedDatesData_getListBlockedDates_results>
      get serializer =>
          _$glistBlockedDatesDataGetListBlockedDatesResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistBlockedDatesData_getListBlockedDates_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistBlockedDatesData_getListBlockedDates_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistBlockedDatesData_getListBlockedDates_results.serializer,
        json,
      );
}

abstract class GlistBlockedDatesData_getListBlockedDates_results_blockedDates
    implements
        Built<GlistBlockedDatesData_getListBlockedDates_results_blockedDates,
            GlistBlockedDatesData_getListBlockedDates_results_blockedDatesBuilder> {
  GlistBlockedDatesData_getListBlockedDates_results_blockedDates._();

  factory GlistBlockedDatesData_getListBlockedDates_results_blockedDates(
          [void Function(
                  GlistBlockedDatesData_getListBlockedDates_results_blockedDatesBuilder
                      b)
              updates]) =
      _$GlistBlockedDatesData_getListBlockedDates_results_blockedDates;

  static void _initializeBuilder(
          GlistBlockedDatesData_getListBlockedDates_results_blockedDatesBuilder
              b) =>
      b..G__typename = 'listBlockedDates';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get blockedDates;
  int? get reservationId;
  int? get listId;
  static Serializer<
          GlistBlockedDatesData_getListBlockedDates_results_blockedDates>
      get serializer =>
          _$glistBlockedDatesDataGetListBlockedDatesResultsBlockedDatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistBlockedDatesData_getListBlockedDates_results_blockedDates
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistBlockedDatesData_getListBlockedDates_results_blockedDates?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GlistBlockedDatesData_getListBlockedDates_results_blockedDates
                .serializer,
            json,
          );
}

abstract class GUpdateListBlockedDatesData
    implements
        Built<GUpdateListBlockedDatesData, GUpdateListBlockedDatesDataBuilder> {
  GUpdateListBlockedDatesData._();

  factory GUpdateListBlockedDatesData(
          [void Function(GUpdateListBlockedDatesDataBuilder b) updates]) =
      _$GUpdateListBlockedDatesData;

  static void _initializeBuilder(GUpdateListBlockedDatesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateListBlockedDatesData_updateListBlockedDates?
      get updateListBlockedDates;
  static Serializer<GUpdateListBlockedDatesData> get serializer =>
      _$gUpdateListBlockedDatesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListBlockedDatesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListBlockedDatesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListBlockedDatesData.serializer,
        json,
      );
}

abstract class GUpdateListBlockedDatesData_updateListBlockedDates
    implements
        Built<GUpdateListBlockedDatesData_updateListBlockedDates,
            GUpdateListBlockedDatesData_updateListBlockedDatesBuilder> {
  GUpdateListBlockedDatesData_updateListBlockedDates._();

  factory GUpdateListBlockedDatesData_updateListBlockedDates(
      [void Function(
              GUpdateListBlockedDatesData_updateListBlockedDatesBuilder b)
          updates]) = _$GUpdateListBlockedDatesData_updateListBlockedDates;

  static void _initializeBuilder(
          GUpdateListBlockedDatesData_updateListBlockedDatesBuilder b) =>
      b..G__typename = 'ListBlockedDatesResponseType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  static Serializer<GUpdateListBlockedDatesData_updateListBlockedDates>
      get serializer =>
          _$gUpdateListBlockedDatesDataUpdateListBlockedDatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateListBlockedDatesData_updateListBlockedDates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateListBlockedDatesData_updateListBlockedDates? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateListBlockedDatesData_updateListBlockedDates.serializer,
        json,
      );
}

abstract class GRemoveListingData
    implements Built<GRemoveListingData, GRemoveListingDataBuilder> {
  GRemoveListingData._();

  factory GRemoveListingData(
          [void Function(GRemoveListingDataBuilder b) updates]) =
      _$GRemoveListingData;

  static void _initializeBuilder(GRemoveListingDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemoveListingData_RemoveListing? get RemoveListing;
  static Serializer<GRemoveListingData> get serializer =>
      _$gRemoveListingDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListingData.serializer,
        json,
      );
}

abstract class GRemoveListingData_RemoveListing
    implements
        Built<GRemoveListingData_RemoveListing,
            GRemoveListingData_RemoveListingBuilder> {
  GRemoveListingData_RemoveListing._();

  factory GRemoveListingData_RemoveListing(
          [void Function(GRemoveListingData_RemoveListingBuilder b) updates]) =
      _$GRemoveListingData_RemoveListing;

  static void _initializeBuilder(GRemoveListingData_RemoveListingBuilder b) =>
      b..G__typename = 'ListPhotosCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GRemoveListingData_RemoveListing_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GRemoveListingData_RemoveListing> get serializer =>
      _$gRemoveListingDataRemoveListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListingData_RemoveListing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListingData_RemoveListing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListingData_RemoveListing.serializer,
        json,
      );
}

abstract class GRemoveListingData_RemoveListing_results
    implements
        Built<GRemoveListingData_RemoveListing_results,
            GRemoveListingData_RemoveListing_resultsBuilder> {
  GRemoveListingData_RemoveListing_results._();

  factory GRemoveListingData_RemoveListing_results(
      [void Function(GRemoveListingData_RemoveListing_resultsBuilder b)
          updates]) = _$GRemoveListingData_RemoveListing_results;

  static void _initializeBuilder(
          GRemoveListingData_RemoveListing_resultsBuilder b) =>
      b..G__typename = 'ListPhotos';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get name;
  static Serializer<GRemoveListingData_RemoveListing_results> get serializer =>
      _$gRemoveListingDataRemoveListingResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveListingData_RemoveListing_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveListingData_RemoveListing_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveListingData_RemoveListing_results.serializer,
        json,
      );
}

abstract class GRemoveMultiPhotosData
    implements Built<GRemoveMultiPhotosData, GRemoveMultiPhotosDataBuilder> {
  GRemoveMultiPhotosData._();

  factory GRemoveMultiPhotosData(
          [void Function(GRemoveMultiPhotosDataBuilder b) updates]) =
      _$GRemoveMultiPhotosData;

  static void _initializeBuilder(GRemoveMultiPhotosDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemoveMultiPhotosData_removeMultiPhotos? get removeMultiPhotos;
  static Serializer<GRemoveMultiPhotosData> get serializer =>
      _$gRemoveMultiPhotosDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveMultiPhotosData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveMultiPhotosData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveMultiPhotosData.serializer,
        json,
      );
}

abstract class GRemoveMultiPhotosData_removeMultiPhotos
    implements
        Built<GRemoveMultiPhotosData_removeMultiPhotos,
            GRemoveMultiPhotosData_removeMultiPhotosBuilder> {
  GRemoveMultiPhotosData_removeMultiPhotos._();

  factory GRemoveMultiPhotosData_removeMultiPhotos(
      [void Function(GRemoveMultiPhotosData_removeMultiPhotosBuilder b)
          updates]) = _$GRemoveMultiPhotosData_removeMultiPhotos;

  static void _initializeBuilder(
          GRemoveMultiPhotosData_removeMultiPhotosBuilder b) =>
      b..G__typename = 'ListPhotosCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GRemoveMultiPhotosData_removeMultiPhotos> get serializer =>
      _$gRemoveMultiPhotosDataRemoveMultiPhotosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveMultiPhotosData_removeMultiPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveMultiPhotosData_removeMultiPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveMultiPhotosData_removeMultiPhotos.serializer,
        json,
      );
}

abstract class GgetListingSpecialPriceData
    implements
        Built<GgetListingSpecialPriceData, GgetListingSpecialPriceDataBuilder> {
  GgetListingSpecialPriceData._();

  factory GgetListingSpecialPriceData(
          [void Function(GgetListingSpecialPriceDataBuilder b) updates]) =
      _$GgetListingSpecialPriceData;

  static void _initializeBuilder(GgetListingSpecialPriceDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetListingSpecialPriceData_getListingSpecialPrice?
      get getListingSpecialPrice;
  static Serializer<GgetListingSpecialPriceData> get serializer =>
      _$ggetListingSpecialPriceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSpecialPriceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSpecialPriceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSpecialPriceData.serializer,
        json,
      );
}

abstract class GgetListingSpecialPriceData_getListingSpecialPrice
    implements
        Built<GgetListingSpecialPriceData_getListingSpecialPrice,
            GgetListingSpecialPriceData_getListingSpecialPriceBuilder> {
  GgetListingSpecialPriceData_getListingSpecialPrice._();

  factory GgetListingSpecialPriceData_getListingSpecialPrice(
      [void Function(
              GgetListingSpecialPriceData_getListingSpecialPriceBuilder b)
          updates]) = _$GgetListingSpecialPriceData_getListingSpecialPrice;

  static void _initializeBuilder(
          GgetListingSpecialPriceData_getListingSpecialPriceBuilder b) =>
      b..G__typename = 'ListBlockedDatesResponseType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetListingSpecialPriceData_getListingSpecialPrice_results?>?
      get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetListingSpecialPriceData_getListingSpecialPrice>
      get serializer =>
          _$ggetListingSpecialPriceDataGetListingSpecialPriceSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSpecialPriceData_getListingSpecialPrice.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSpecialPriceData_getListingSpecialPrice? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSpecialPriceData_getListingSpecialPrice.serializer,
        json,
      );
}

abstract class GgetListingSpecialPriceData_getListingSpecialPrice_results
    implements
        Built<GgetListingSpecialPriceData_getListingSpecialPrice_results,
            GgetListingSpecialPriceData_getListingSpecialPrice_resultsBuilder> {
  GgetListingSpecialPriceData_getListingSpecialPrice_results._();

  factory GgetListingSpecialPriceData_getListingSpecialPrice_results(
      [void Function(
              GgetListingSpecialPriceData_getListingSpecialPrice_resultsBuilder
                  b)
          updates]) = _$GgetListingSpecialPriceData_getListingSpecialPrice_results;

  static void _initializeBuilder(
          GgetListingSpecialPriceData_getListingSpecialPrice_resultsBuilder
              b) =>
      b..G__typename = 'ListBlockedDates';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get listId;
  int? get reservationId;
  String? get blockedDates;
  String? get calendarStatus;
  double? get isSpecialPrice;
  String? get listCurrency;
  static Serializer<GgetListingSpecialPriceData_getListingSpecialPrice_results>
      get serializer =>
          _$ggetListingSpecialPriceDataGetListingSpecialPriceResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingSpecialPriceData_getListingSpecialPrice_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingSpecialPriceData_getListingSpecialPrice_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingSpecialPriceData_getListingSpecialPrice_results.serializer,
        json,
      );
}

abstract class GUpdateSpecialPriceData
    implements Built<GUpdateSpecialPriceData, GUpdateSpecialPriceDataBuilder> {
  GUpdateSpecialPriceData._();

  factory GUpdateSpecialPriceData(
          [void Function(GUpdateSpecialPriceDataBuilder b) updates]) =
      _$GUpdateSpecialPriceData;

  static void _initializeBuilder(GUpdateSpecialPriceDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateSpecialPriceData_updateSpecialPrice? get updateSpecialPrice;
  static Serializer<GUpdateSpecialPriceData> get serializer =>
      _$gUpdateSpecialPriceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateSpecialPriceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateSpecialPriceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateSpecialPriceData.serializer,
        json,
      );
}

abstract class GUpdateSpecialPriceData_updateSpecialPrice
    implements
        Built<GUpdateSpecialPriceData_updateSpecialPrice,
            GUpdateSpecialPriceData_updateSpecialPriceBuilder> {
  GUpdateSpecialPriceData_updateSpecialPrice._();

  factory GUpdateSpecialPriceData_updateSpecialPrice(
      [void Function(GUpdateSpecialPriceData_updateSpecialPriceBuilder b)
          updates]) = _$GUpdateSpecialPriceData_updateSpecialPrice;

  static void _initializeBuilder(
          GUpdateSpecialPriceData_updateSpecialPriceBuilder b) =>
      b..G__typename = 'ListBlockedDatesResponseType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GUpdateSpecialPriceData_updateSpecialPrice>
      get serializer => _$gUpdateSpecialPriceDataUpdateSpecialPriceSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateSpecialPriceData_updateSpecialPrice.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateSpecialPriceData_updateSpecialPrice? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateSpecialPriceData_updateSpecialPrice.serializer,
        json,
      );
}
