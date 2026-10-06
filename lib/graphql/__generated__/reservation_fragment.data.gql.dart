// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i1;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i7;
import 'package:gozy/graphql/__generated__/thread_item_fragment.data.gql.dart'
    as _i6;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i5;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i4;

part 'reservation_fragment.data.gql.g.dart';

abstract class GreservationFragment {
  String get G__typename;
  int? get id;
  int? get listId;
  int? get days;
  String? get listTitle;
  GreservationFragment_cancellation? get cancellation;
  GreservationFragment_listData? get listData;
  GreservationFragment_hostTransaction? get hostTransaction;
  GreservationFragment_hostData? get hostData;
  GreservationFragment_guestData? get guestData;
  String? get checkIn;
  String? get checkOut;
  int? get guests;
  String? get message;
  double? get basePrice;
  double? get delivery;
  String? get currency;
  double? get discount;
  String? get discountType;
  double? get guestServiceFee;
  double? get hostServiceFee;
  double? get total;
  String? get promoCode;
  String? get promoCodeDescription;
  bool? get promoCodeType;
  int? get promoId;
  double? get promoDiscount;
  double? get totalWithGuestServiceFee;
  double? get totalWithoutSecurityFee;
  bool? get isSpecialPriceAssigned;
  int? get confirmationCode;
  String? get reservationState;
  String? get paymentState;
  int? get payoutId;
  bool? get isCancelEnabled;
  String? get createdAt;
  String? get updatedAt;
  int? get count;
  String? get cardToken;
  GreservationFragment_threadData? get threadData;
  int? get cancellationPolicy;
  double? get isSpecialPriceAverage;
  double? get dayDifference;
  double? get startTime;
  double? get endTime;
  String? get licenseNumber;
  String? get firstName;
  String? get middleName;
  String? get lastName;
  String? get dateOfBirth;
  String? get countryLabel;
  double? get securityDeposit;
  bool? get cancellationStatus;
  String? get claimStatus;
  double? get claimAmount;
  double? get claimPayout;
  double? get claimRefund;
  String? get claimReason;
  BuiltList<String?>? get claimImages;
  GreservationFragment_cancellationDetails? get cancellationDetails;
  String? get claimRefundedAt;
  double? get actualEarnings;
  bool? get isClaimCancelStatus;
  String? get hostServiceFeeType;
  double? get hostServiceFeeValue;
  String? get bookingType;
  GreservationFragment_completedTotal? get completedTotal;
  GreservationFragment_futureTransactionTotal? get futureTransactionTotal;
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_cancellation
    implements _i1.GcancellationDataFragment {
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

abstract class GreservationFragment_listData
    implements _i2.GviewListingShortFragment {
  @override
  String get G__typename;
  @override
  int? get id;
  String? get country;
  String? get street;
  String? get city;
  String? get state;
  String? get zipcode;
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
  BuiltList<GreservationFragment_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GreservationFragment_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GreservationFragment_listData_dynamicListTitle? get dynamicListTitle;
  @override
  GreservationFragment_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GreservationFragment_listData_dynamicCarType? get dynamicCarType;
  @override
  GreservationFragment_listData_dynamicmake? get dynamicmake;
  @override
  GreservationFragment_listData_dynamicModel? get dynamicModel;
  @override
  GreservationFragment_listData_dynamicYear? get dynamicYear;
  @override
  GreservationFragment_listData_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GreservationFragment_listData_carRules?>? get carRules;
  @override
  BuiltList<GreservationFragment_listData_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GreservationFragment_listData_listPhotos?>? get listPhotos;
  GreservationFragment_listData_listingData? get listingData;
  GreservationFragment_listData_user? get user;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_dynamicListingTitle
    implements _i2.GviewListingShortFragment_dynamicListingTitle {
  @override
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_dynamicListingDescription
    implements _i2.GviewListingShortFragment_dynamicListingDescription {
  @override
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_dynamicListTitle
    implements _i2.GviewListingShortFragment_dynamicListTitle {
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

abstract class GreservationFragment_listData_dynamicListDescription
    implements _i2.GviewListingShortFragment_dynamicListDescription {
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

abstract class GreservationFragment_listData_dynamicCarType
    implements _i2.GviewListingShortFragment_dynamicCarType {
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

abstract class GreservationFragment_listData_dynamicmake
    implements _i2.GviewListingShortFragment_dynamicmake {
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

abstract class GreservationFragment_listData_dynamicModel
    implements _i2.GviewListingShortFragment_dynamicModel {
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

abstract class GreservationFragment_listData_dynamicYear
    implements _i2.GviewListingShortFragment_dynamicYear {
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

abstract class GreservationFragment_listData_dynamicOdometer
    implements _i2.GviewListingShortFragment_dynamicOdometer {
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

abstract class GreservationFragment_listData_carRules
    implements _i2.GviewListingShortFragment_carRules {
  @override
  String get G__typename;
  @override
  GreservationFragment_listData_carRules_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_carRules_dynamicItemName
    implements _i2.GviewListingShortFragment_carRules_dynamicItemName {
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

abstract class GreservationFragment_listData_carFeatures
    implements _i2.GviewListingShortFragment_carFeatures {
  @override
  String get G__typename;
  @override
  GreservationFragment_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_carFeatures_dynamicItemName
    implements _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
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

abstract class GreservationFragment_listData_listPhotos
    implements _i2.GviewListingShortFragment_listPhotos {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_listingData
    implements
        _i2.GviewListingShortFragment_listingData,
        _i1.GlistingDataFragment {
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
  GreservationFragment_listData_listingData_cancellation? get cancellation;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_listingData_cancellation
    implements
        _i1.GlistingDataFragment_cancellation,
        _i1.GcancellationDataFragment {
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

abstract class GreservationFragment_listData_user
    implements _i3.GlistingUserFragment {
  @override
  String get G__typename;
  @override
  String? get email;
  @override
  GreservationFragment_listData_user_profile? get profile;
  @override
  GreservationFragment_listData_user_verification? get verification;
  @override
  int? get userBanStatus;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_listData_user_profile
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

abstract class GreservationFragment_listData_user_verification
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

abstract class GreservationFragment_hostTransaction {
  String get G__typename;
  String? get createdAt;
  int? get id;
  int? get payoutId;
  String? get payoutEmail;
  double? get amount;
  String? get currency;
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_hostData
    implements _i5.GuserProfileFragment {
  @override
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationFragment_hostData_userData? get userData;
  @override
  GreservationFragment_hostData_userVerification? get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_hostData_userData
    implements _i5.GuserProfileFragment_userData {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_hostData_userVerification
    implements
        _i5.GuserProfileFragment_userVerification,
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

abstract class GreservationFragment_guestData
    implements _i5.GuserProfileFragment {
  @override
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationFragment_guestData_userData? get userData;
  @override
  GreservationFragment_guestData_userVerification? get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_guestData_userData
    implements _i5.GuserProfileFragment_userData {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_guestData_userVerification
    implements
        _i5.GuserProfileFragment_userVerification,
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

abstract class GreservationFragment_threadData
    implements _i6.GthreadItemsFragment {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadId;
  @override
  int? get reservationId;
  @override
  String? get sentBy;
  @override
  String? get content;
  @override
  String? get type;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  int? get personCapacity;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  int? get status;
  @override
  int? get userBanStatus;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_cancellationDetails {
  String get G__typename;
  double? get payoutToHost;
  String? get createdAt;
  String? get currency;
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_completedTotal {
  String get G__typename;
  double? get totalAmount;
  String? get currency;
  Map<String, dynamic> toJson();
}

abstract class GreservationFragment_futureTransactionTotal {
  String get G__typename;
  double? get totalAmount;
  String? get currency;
  Map<String, dynamic> toJson();
}

abstract class GreservationFragmentData
    implements
        Built<GreservationFragmentData, GreservationFragmentDataBuilder>,
        GreservationFragment {
  GreservationFragmentData._();

  factory GreservationFragmentData(
          [void Function(GreservationFragmentDataBuilder b) updates]) =
      _$GreservationFragmentData;

  static void _initializeBuilder(GreservationFragmentDataBuilder b) =>
      b..G__typename = 'Reservation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get listId;
  @override
  int? get days;
  @override
  String? get listTitle;
  @override
  GreservationFragmentData_cancellation? get cancellation;
  @override
  GreservationFragmentData_listData? get listData;
  @override
  GreservationFragmentData_hostTransaction? get hostTransaction;
  @override
  GreservationFragmentData_hostData? get hostData;
  @override
  GreservationFragmentData_guestData? get guestData;
  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  int? get guests;
  @override
  String? get message;
  @override
  double? get basePrice;
  @override
  double? get delivery;
  @override
  String? get currency;
  @override
  double? get discount;
  @override
  String? get discountType;
  @override
  double? get guestServiceFee;
  @override
  double? get hostServiceFee;
  @override
  double? get total;
  @override
  String? get promoCode;
  @override
  String? get promoCodeDescription;
  @override
  bool? get promoCodeType;
  @override
  int? get promoId;
  @override
  double? get promoDiscount;
  @override
  double? get totalWithGuestServiceFee;
  @override
  double? get totalWithoutSecurityFee;
  @override
  bool? get isSpecialPriceAssigned;
  @override
  int? get confirmationCode;
  @override
  String? get reservationState;
  @override
  String? get paymentState;
  @override
  int? get payoutId;
  @override
  bool? get isCancelEnabled;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get count;
  @override
  String? get cardToken;
  @override
  GreservationFragmentData_threadData? get threadData;
  @override
  int? get cancellationPolicy;
  @override
  double? get isSpecialPriceAverage;
  @override
  double? get dayDifference;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  String? get licenseNumber;
  @override
  String? get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  String? get dateOfBirth;
  @override
  String? get countryLabel;
  @override
  double? get securityDeposit;
  @override
  bool? get cancellationStatus;
  @override
  String? get claimStatus;
  @override
  double? get claimAmount;
  @override
  double? get claimPayout;
  @override
  double? get claimRefund;
  @override
  String? get claimReason;
  @override
  BuiltList<String?>? get claimImages;
  @override
  GreservationFragmentData_cancellationDetails? get cancellationDetails;
  @override
  String? get claimRefundedAt;
  @override
  double? get actualEarnings;
  @override
  bool? get isClaimCancelStatus;
  @override
  String? get hostServiceFeeType;
  @override
  double? get hostServiceFeeValue;
  @override
  String? get bookingType;
  @override
  GreservationFragmentData_completedTotal? get completedTotal;
  @override
  GreservationFragmentData_futureTransactionTotal? get futureTransactionTotal;
  static Serializer<GreservationFragmentData> get serializer =>
      _$greservationFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData? fromJson(Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_cancellation
    implements
        Built<GreservationFragmentData_cancellation,
            GreservationFragmentData_cancellationBuilder>,
        GreservationFragment_cancellation,
        _i1.GcancellationDataFragment {
  GreservationFragmentData_cancellation._();

  factory GreservationFragmentData_cancellation(
      [void Function(GreservationFragmentData_cancellationBuilder b)
          updates]) = _$GreservationFragmentData_cancellation;

  static void _initializeBuilder(
          GreservationFragmentData_cancellationBuilder b) =>
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
  static Serializer<GreservationFragmentData_cancellation> get serializer =>
      _$greservationFragmentDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_cancellation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_cancellation? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_cancellation.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData
    implements
        Built<GreservationFragmentData_listData,
            GreservationFragmentData_listDataBuilder>,
        GreservationFragment_listData,
        _i2.GviewListingShortFragment {
  GreservationFragmentData_listData._();

  factory GreservationFragmentData_listData(
          [void Function(GreservationFragmentData_listDataBuilder b) updates]) =
      _$GreservationFragmentData_listData;

  static void _initializeBuilder(GreservationFragmentData_listDataBuilder b) =>
      b..G__typename = 'ShowListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
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
  BuiltList<GreservationFragmentData_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GreservationFragmentData_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GreservationFragmentData_listData_dynamicListTitle? get dynamicListTitle;
  @override
  GreservationFragmentData_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GreservationFragmentData_listData_dynamicCarType? get dynamicCarType;
  @override
  GreservationFragmentData_listData_dynamicmake? get dynamicmake;
  @override
  GreservationFragmentData_listData_dynamicModel? get dynamicModel;
  @override
  GreservationFragmentData_listData_dynamicYear? get dynamicYear;
  @override
  GreservationFragmentData_listData_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GreservationFragmentData_listData_carRules?>? get carRules;
  @override
  BuiltList<GreservationFragmentData_listData_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GreservationFragmentData_listData_listPhotos?>? get listPhotos;
  @override
  GreservationFragmentData_listData_listingData? get listingData;
  @override
  GreservationFragmentData_listData_user? get user;
  static Serializer<GreservationFragmentData_listData> get serializer =>
      _$greservationFragmentDataListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicListingTitle
    implements
        Built<GreservationFragmentData_listData_dynamicListingTitle,
            GreservationFragmentData_listData_dynamicListingTitleBuilder>,
        GreservationFragment_listData_dynamicListingTitle,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GreservationFragmentData_listData_dynamicListingTitle._();

  factory GreservationFragmentData_listData_dynamicListingTitle(
      [void Function(
              GreservationFragmentData_listData_dynamicListingTitleBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicListingTitleBuilder b) =>
      b..G__typename = 'DynamicListTitleType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  static Serializer<GreservationFragmentData_listData_dynamicListingTitle>
      get serializer =>
          _$greservationFragmentDataListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicListingTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicListingTitle? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicListingTitle.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicListingDescription
    implements
        Built<GreservationFragmentData_listData_dynamicListingDescription,
            GreservationFragmentData_listData_dynamicListingDescriptionBuilder>,
        GreservationFragment_listData_dynamicListingDescription,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GreservationFragmentData_listData_dynamicListingDescription._();

  factory GreservationFragmentData_listData_dynamicListingDescription(
      [void Function(
              GreservationFragmentData_listData_dynamicListingDescriptionBuilder
                  b)
          updates]) = _$GreservationFragmentData_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicListingDescriptionBuilder
              b) =>
      b..G__typename = 'DynamicListDescriptionType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  static Serializer<GreservationFragmentData_listData_dynamicListingDescription>
      get serializer =>
          _$greservationFragmentDataListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicListingDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicListingDescription? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicListingDescription.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicListTitle
    implements
        Built<GreservationFragmentData_listData_dynamicListTitle,
            GreservationFragmentData_listData_dynamicListTitleBuilder>,
        GreservationFragment_listData_dynamicListTitle,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GreservationFragmentData_listData_dynamicListTitle._();

  factory GreservationFragmentData_listData_dynamicListTitle(
      [void Function(
              GreservationFragmentData_listData_dynamicListTitleBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicListTitle;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicListTitleBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicListTitle>
      get serializer =>
          _$greservationFragmentDataListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicListTitle.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicListDescription
    implements
        Built<GreservationFragmentData_listData_dynamicListDescription,
            GreservationFragmentData_listData_dynamicListDescriptionBuilder>,
        GreservationFragment_listData_dynamicListDescription,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GreservationFragmentData_listData_dynamicListDescription._();

  factory GreservationFragmentData_listData_dynamicListDescription(
      [void Function(
              GreservationFragmentData_listData_dynamicListDescriptionBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicListDescription;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicListDescriptionBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicListDescription>
      get serializer =>
          _$greservationFragmentDataListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicListDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicListDescription? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicListDescription.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicCarType
    implements
        Built<GreservationFragmentData_listData_dynamicCarType,
            GreservationFragmentData_listData_dynamicCarTypeBuilder>,
        GreservationFragment_listData_dynamicCarType,
        _i2.GviewListingShortFragment_dynamicCarType {
  GreservationFragmentData_listData_dynamicCarType._();

  factory GreservationFragmentData_listData_dynamicCarType(
      [void Function(GreservationFragmentData_listData_dynamicCarTypeBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicCarType;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicCarTypeBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicCarType>
      get serializer =>
          _$greservationFragmentDataListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicCarType.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicmake
    implements
        Built<GreservationFragmentData_listData_dynamicmake,
            GreservationFragmentData_listData_dynamicmakeBuilder>,
        GreservationFragment_listData_dynamicmake,
        _i2.GviewListingShortFragment_dynamicmake {
  GreservationFragmentData_listData_dynamicmake._();

  factory GreservationFragmentData_listData_dynamicmake(
      [void Function(GreservationFragmentData_listData_dynamicmakeBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicmake;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicmakeBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicmake>
      get serializer => _$greservationFragmentDataListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicmake.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicModel
    implements
        Built<GreservationFragmentData_listData_dynamicModel,
            GreservationFragmentData_listData_dynamicModelBuilder>,
        GreservationFragment_listData_dynamicModel,
        _i2.GviewListingShortFragment_dynamicModel {
  GreservationFragmentData_listData_dynamicModel._();

  factory GreservationFragmentData_listData_dynamicModel(
      [void Function(GreservationFragmentData_listData_dynamicModelBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicModel;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicModelBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicModel>
      get serializer =>
          _$greservationFragmentDataListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicModel.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicYear
    implements
        Built<GreservationFragmentData_listData_dynamicYear,
            GreservationFragmentData_listData_dynamicYearBuilder>,
        GreservationFragment_listData_dynamicYear,
        _i2.GviewListingShortFragment_dynamicYear {
  GreservationFragmentData_listData_dynamicYear._();

  factory GreservationFragmentData_listData_dynamicYear(
      [void Function(GreservationFragmentData_listData_dynamicYearBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicYear;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicYearBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicYear>
      get serializer => _$greservationFragmentDataListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicYear.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_dynamicOdometer
    implements
        Built<GreservationFragmentData_listData_dynamicOdometer,
            GreservationFragmentData_listData_dynamicOdometerBuilder>,
        GreservationFragment_listData_dynamicOdometer,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GreservationFragmentData_listData_dynamicOdometer._();

  factory GreservationFragmentData_listData_dynamicOdometer(
      [void Function(GreservationFragmentData_listData_dynamicOdometerBuilder b)
          updates]) = _$GreservationFragmentData_listData_dynamicOdometer;

  static void _initializeBuilder(
          GreservationFragmentData_listData_dynamicOdometerBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_dynamicOdometer>
      get serializer =>
          _$greservationFragmentDataListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_dynamicOdometer.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_carRules
    implements
        Built<GreservationFragmentData_listData_carRules,
            GreservationFragmentData_listData_carRulesBuilder>,
        GreservationFragment_listData_carRules,
        _i2.GviewListingShortFragment_carRules {
  GreservationFragmentData_listData_carRules._();

  factory GreservationFragmentData_listData_carRules(
      [void Function(GreservationFragmentData_listData_carRulesBuilder b)
          updates]) = _$GreservationFragmentData_listData_carRules;

  static void _initializeBuilder(
          GreservationFragmentData_listData_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GreservationFragmentData_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GreservationFragmentData_listData_carRules>
      get serializer => _$greservationFragmentDataListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_carRules.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_carRules_dynamicItemName
    implements
        Built<GreservationFragmentData_listData_carRules_dynamicItemName,
            GreservationFragmentData_listData_carRules_dynamicItemNameBuilder>,
        GreservationFragment_listData_carRules_dynamicItemName,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GreservationFragmentData_listData_carRules_dynamicItemName._();

  factory GreservationFragmentData_listData_carRules_dynamicItemName(
      [void Function(
              GreservationFragmentData_listData_carRules_dynamicItemNameBuilder
                  b)
          updates]) = _$GreservationFragmentData_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GreservationFragmentData_listData_carRules_dynamicItemNameBuilder
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
  static Serializer<GreservationFragmentData_listData_carRules_dynamicItemName>
      get serializer =>
          _$greservationFragmentDataListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_carRules_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_carRules_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_carRules_dynamicItemName.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_carFeatures
    implements
        Built<GreservationFragmentData_listData_carFeatures,
            GreservationFragmentData_listData_carFeaturesBuilder>,
        GreservationFragment_listData_carFeatures,
        _i2.GviewListingShortFragment_carFeatures {
  GreservationFragmentData_listData_carFeatures._();

  factory GreservationFragmentData_listData_carFeatures(
      [void Function(GreservationFragmentData_listData_carFeaturesBuilder b)
          updates]) = _$GreservationFragmentData_listData_carFeatures;

  static void _initializeBuilder(
          GreservationFragmentData_listData_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GreservationFragmentData_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GreservationFragmentData_listData_carFeatures>
      get serializer => _$greservationFragmentDataListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_carFeatures.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_carFeatures_dynamicItemName
    implements
        Built<GreservationFragmentData_listData_carFeatures_dynamicItemName,
            GreservationFragmentData_listData_carFeatures_dynamicItemNameBuilder>,
        GreservationFragment_listData_carFeatures_dynamicItemName,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GreservationFragmentData_listData_carFeatures_dynamicItemName._();

  factory GreservationFragmentData_listData_carFeatures_dynamicItemName(
          [void Function(
                  GreservationFragmentData_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GreservationFragmentData_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GreservationFragmentData_listData_carFeatures_dynamicItemNameBuilder
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
          GreservationFragmentData_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$greservationFragmentDataListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i7.serializers.deserializeWith(
            GreservationFragmentData_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GreservationFragmentData_listData_listPhotos
    implements
        Built<GreservationFragmentData_listData_listPhotos,
            GreservationFragmentData_listData_listPhotosBuilder>,
        GreservationFragment_listData_listPhotos,
        _i2.GviewListingShortFragment_listPhotos {
  GreservationFragmentData_listData_listPhotos._();

  factory GreservationFragmentData_listData_listPhotos(
      [void Function(GreservationFragmentData_listData_listPhotosBuilder b)
          updates]) = _$GreservationFragmentData_listData_listPhotos;

  static void _initializeBuilder(
          GreservationFragmentData_listData_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GreservationFragmentData_listData_listPhotos>
      get serializer => _$greservationFragmentDataListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_listPhotos.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_listingData
    implements
        Built<GreservationFragmentData_listData_listingData,
            GreservationFragmentData_listData_listingDataBuilder>,
        GreservationFragment_listData_listingData,
        _i2.GviewListingShortFragment_listingData,
        _i1.GlistingDataFragment {
  GreservationFragmentData_listData_listingData._();

  factory GreservationFragmentData_listData_listingData(
      [void Function(GreservationFragmentData_listData_listingDataBuilder b)
          updates]) = _$GreservationFragmentData_listData_listingData;

  static void _initializeBuilder(
          GreservationFragmentData_listData_listingDataBuilder b) =>
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
  GreservationFragmentData_listData_listingData_cancellation? get cancellation;
  static Serializer<GreservationFragmentData_listData_listingData>
      get serializer => _$greservationFragmentDataListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_listingData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_listingData_cancellation
    implements
        Built<GreservationFragmentData_listData_listingData_cancellation,
            GreservationFragmentData_listData_listingData_cancellationBuilder>,
        GreservationFragment_listData_listingData_cancellation,
        _i1.GlistingDataFragment_cancellation,
        _i1.GcancellationDataFragment {
  GreservationFragmentData_listData_listingData_cancellation._();

  factory GreservationFragmentData_listData_listingData_cancellation(
      [void Function(
              GreservationFragmentData_listData_listingData_cancellationBuilder
                  b)
          updates]) = _$GreservationFragmentData_listData_listingData_cancellation;

  static void _initializeBuilder(
          GreservationFragmentData_listData_listingData_cancellationBuilder
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
  static Serializer<GreservationFragmentData_listData_listingData_cancellation>
      get serializer =>
          _$greservationFragmentDataListDataListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_listingData_cancellation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_listingData_cancellation? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_listingData_cancellation.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_user
    implements
        Built<GreservationFragmentData_listData_user,
            GreservationFragmentData_listData_userBuilder>,
        GreservationFragment_listData_user,
        _i3.GlistingUserFragment {
  GreservationFragmentData_listData_user._();

  factory GreservationFragmentData_listData_user(
      [void Function(GreservationFragmentData_listData_userBuilder b)
          updates]) = _$GreservationFragmentData_listData_user;

  static void _initializeBuilder(
          GreservationFragmentData_listData_userBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GreservationFragmentData_listData_user_profile? get profile;
  @override
  GreservationFragmentData_listData_user_verification? get verification;
  @override
  int? get userBanStatus;
  static Serializer<GreservationFragmentData_listData_user> get serializer =>
      _$greservationFragmentDataListDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_user? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_user.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_user_profile
    implements
        Built<GreservationFragmentData_listData_user_profile,
            GreservationFragmentData_listData_user_profileBuilder>,
        GreservationFragment_listData_user_profile,
        _i3.GlistingUserFragment_profile {
  GreservationFragmentData_listData_user_profile._();

  factory GreservationFragmentData_listData_user_profile(
      [void Function(GreservationFragmentData_listData_user_profileBuilder b)
          updates]) = _$GreservationFragmentData_listData_user_profile;

  static void _initializeBuilder(
          GreservationFragmentData_listData_user_profileBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_user_profile>
      get serializer => _$greservationFragmentDataListDataUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_user_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_user_profile? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_user_profile.serializer,
        json,
      );
}

abstract class GreservationFragmentData_listData_user_verification
    implements
        Built<GreservationFragmentData_listData_user_verification,
            GreservationFragmentData_listData_user_verificationBuilder>,
        GreservationFragment_listData_user_verification,
        _i3.GlistingUserFragment_verification,
        _i4.GuserVerifiedInfoFragment {
  GreservationFragmentData_listData_user_verification._();

  factory GreservationFragmentData_listData_user_verification(
      [void Function(
              GreservationFragmentData_listData_user_verificationBuilder b)
          updates]) = _$GreservationFragmentData_listData_user_verification;

  static void _initializeBuilder(
          GreservationFragmentData_listData_user_verificationBuilder b) =>
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
  static Serializer<GreservationFragmentData_listData_user_verification>
      get serializer =>
          _$greservationFragmentDataListDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_listData_user_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_listData_user_verification? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_listData_user_verification.serializer,
        json,
      );
}

abstract class GreservationFragmentData_hostTransaction
    implements
        Built<GreservationFragmentData_hostTransaction,
            GreservationFragmentData_hostTransactionBuilder>,
        GreservationFragment_hostTransaction {
  GreservationFragmentData_hostTransaction._();

  factory GreservationFragmentData_hostTransaction(
      [void Function(GreservationFragmentData_hostTransactionBuilder b)
          updates]) = _$GreservationFragmentData_hostTransaction;

  static void _initializeBuilder(
          GreservationFragmentData_hostTransactionBuilder b) =>
      b..G__typename = 'TransactionHistory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get createdAt;
  @override
  int? get id;
  @override
  int? get payoutId;
  @override
  String? get payoutEmail;
  @override
  double? get amount;
  @override
  String? get currency;
  static Serializer<GreservationFragmentData_hostTransaction> get serializer =>
      _$greservationFragmentDataHostTransactionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_hostTransaction.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_hostTransaction? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_hostTransaction.serializer,
        json,
      );
}

abstract class GreservationFragmentData_hostData
    implements
        Built<GreservationFragmentData_hostData,
            GreservationFragmentData_hostDataBuilder>,
        GreservationFragment_hostData,
        _i5.GuserProfileFragment {
  GreservationFragmentData_hostData._();

  factory GreservationFragmentData_hostData(
          [void Function(GreservationFragmentData_hostDataBuilder b) updates]) =
      _$GreservationFragmentData_hostData;

  static void _initializeBuilder(GreservationFragmentData_hostDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationFragmentData_hostData_userData? get userData;
  @override
  GreservationFragmentData_hostData_userVerification? get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GreservationFragmentData_hostData> get serializer =>
      _$greservationFragmentDataHostDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_hostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_hostData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_hostData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_hostData_userData
    implements
        Built<GreservationFragmentData_hostData_userData,
            GreservationFragmentData_hostData_userDataBuilder>,
        GreservationFragment_hostData_userData,
        _i5.GuserProfileFragment_userData {
  GreservationFragmentData_hostData_userData._();

  factory GreservationFragmentData_hostData_userData(
      [void Function(GreservationFragmentData_hostData_userDataBuilder b)
          updates]) = _$GreservationFragmentData_hostData_userData;

  static void _initializeBuilder(
          GreservationFragmentData_hostData_userDataBuilder b) =>
      b..G__typename = 'UserType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  static Serializer<GreservationFragmentData_hostData_userData>
      get serializer => _$greservationFragmentDataHostDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_hostData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_hostData_userData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_hostData_userData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_hostData_userVerification
    implements
        Built<GreservationFragmentData_hostData_userVerification,
            GreservationFragmentData_hostData_userVerificationBuilder>,
        GreservationFragment_hostData_userVerification,
        _i5.GuserProfileFragment_userVerification,
        _i4.GuserVerifiedInfoFragment {
  GreservationFragmentData_hostData_userVerification._();

  factory GreservationFragmentData_hostData_userVerification(
      [void Function(
              GreservationFragmentData_hostData_userVerificationBuilder b)
          updates]) = _$GreservationFragmentData_hostData_userVerification;

  static void _initializeBuilder(
          GreservationFragmentData_hostData_userVerificationBuilder b) =>
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
  static Serializer<GreservationFragmentData_hostData_userVerification>
      get serializer =>
          _$greservationFragmentDataHostDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_hostData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_hostData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_hostData_userVerification.serializer,
        json,
      );
}

abstract class GreservationFragmentData_guestData
    implements
        Built<GreservationFragmentData_guestData,
            GreservationFragmentData_guestDataBuilder>,
        GreservationFragment_guestData,
        _i5.GuserProfileFragment {
  GreservationFragmentData_guestData._();

  factory GreservationFragmentData_guestData(
      [void Function(GreservationFragmentData_guestDataBuilder b)
          updates]) = _$GreservationFragmentData_guestData;

  static void _initializeBuilder(GreservationFragmentData_guestDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationFragmentData_guestData_userData? get userData;
  @override
  GreservationFragmentData_guestData_userVerification? get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GreservationFragmentData_guestData> get serializer =>
      _$greservationFragmentDataGuestDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_guestData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_guestData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_guestData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_guestData_userData
    implements
        Built<GreservationFragmentData_guestData_userData,
            GreservationFragmentData_guestData_userDataBuilder>,
        GreservationFragment_guestData_userData,
        _i5.GuserProfileFragment_userData {
  GreservationFragmentData_guestData_userData._();

  factory GreservationFragmentData_guestData_userData(
      [void Function(GreservationFragmentData_guestData_userDataBuilder b)
          updates]) = _$GreservationFragmentData_guestData_userData;

  static void _initializeBuilder(
          GreservationFragmentData_guestData_userDataBuilder b) =>
      b..G__typename = 'UserType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  static Serializer<GreservationFragmentData_guestData_userData>
      get serializer => _$greservationFragmentDataGuestDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_guestData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_guestData_userData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_guestData_userData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_guestData_userVerification
    implements
        Built<GreservationFragmentData_guestData_userVerification,
            GreservationFragmentData_guestData_userVerificationBuilder>,
        GreservationFragment_guestData_userVerification,
        _i5.GuserProfileFragment_userVerification,
        _i4.GuserVerifiedInfoFragment {
  GreservationFragmentData_guestData_userVerification._();

  factory GreservationFragmentData_guestData_userVerification(
      [void Function(
              GreservationFragmentData_guestData_userVerificationBuilder b)
          updates]) = _$GreservationFragmentData_guestData_userVerification;

  static void _initializeBuilder(
          GreservationFragmentData_guestData_userVerificationBuilder b) =>
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
  static Serializer<GreservationFragmentData_guestData_userVerification>
      get serializer =>
          _$greservationFragmentDataGuestDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_guestData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_guestData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_guestData_userVerification.serializer,
        json,
      );
}

abstract class GreservationFragmentData_threadData
    implements
        Built<GreservationFragmentData_threadData,
            GreservationFragmentData_threadDataBuilder>,
        GreservationFragment_threadData,
        _i6.GthreadItemsFragment {
  GreservationFragmentData_threadData._();

  factory GreservationFragmentData_threadData(
      [void Function(GreservationFragmentData_threadDataBuilder b)
          updates]) = _$GreservationFragmentData_threadData;

  static void _initializeBuilder(
          GreservationFragmentData_threadDataBuilder b) =>
      b..G__typename = 'ThreadItems';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadId;
  @override
  int? get reservationId;
  @override
  String? get sentBy;
  @override
  String? get content;
  @override
  String? get type;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  int? get personCapacity;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  int? get status;
  @override
  int? get userBanStatus;
  static Serializer<GreservationFragmentData_threadData> get serializer =>
      _$greservationFragmentDataThreadDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_threadData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_threadData? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_threadData.serializer,
        json,
      );
}

abstract class GreservationFragmentData_cancellationDetails
    implements
        Built<GreservationFragmentData_cancellationDetails,
            GreservationFragmentData_cancellationDetailsBuilder>,
        GreservationFragment_cancellationDetails {
  GreservationFragmentData_cancellationDetails._();

  factory GreservationFragmentData_cancellationDetails(
      [void Function(GreservationFragmentData_cancellationDetailsBuilder b)
          updates]) = _$GreservationFragmentData_cancellationDetails;

  static void _initializeBuilder(
          GreservationFragmentData_cancellationDetailsBuilder b) =>
      b..G__typename = 'CancellationDetails';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get payoutToHost;
  @override
  String? get createdAt;
  @override
  String? get currency;
  static Serializer<GreservationFragmentData_cancellationDetails>
      get serializer => _$greservationFragmentDataCancellationDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_cancellationDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_cancellationDetails? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_cancellationDetails.serializer,
        json,
      );
}

abstract class GreservationFragmentData_completedTotal
    implements
        Built<GreservationFragmentData_completedTotal,
            GreservationFragmentData_completedTotalBuilder>,
        GreservationFragment_completedTotal {
  GreservationFragmentData_completedTotal._();

  factory GreservationFragmentData_completedTotal(
      [void Function(GreservationFragmentData_completedTotalBuilder b)
          updates]) = _$GreservationFragmentData_completedTotal;

  static void _initializeBuilder(
          GreservationFragmentData_completedTotalBuilder b) =>
      b..G__typename = 'CompletedTotal';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  static Serializer<GreservationFragmentData_completedTotal> get serializer =>
      _$greservationFragmentDataCompletedTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_completedTotal.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_completedTotal? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_completedTotal.serializer,
        json,
      );
}

abstract class GreservationFragmentData_futureTransactionTotal
    implements
        Built<GreservationFragmentData_futureTransactionTotal,
            GreservationFragmentData_futureTransactionTotalBuilder>,
        GreservationFragment_futureTransactionTotal {
  GreservationFragmentData_futureTransactionTotal._();

  factory GreservationFragmentData_futureTransactionTotal(
      [void Function(GreservationFragmentData_futureTransactionTotalBuilder b)
          updates]) = _$GreservationFragmentData_futureTransactionTotal;

  static void _initializeBuilder(
          GreservationFragmentData_futureTransactionTotalBuilder b) =>
      b..G__typename = 'FutureTransactionTotal';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  static Serializer<GreservationFragmentData_futureTransactionTotal>
      get serializer =>
          _$greservationFragmentDataFutureTransactionTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i7.serializers.serializeWith(
        GreservationFragmentData_futureTransactionTotal.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationFragmentData_futureTransactionTotal? fromJson(
          Map<String, dynamic> json) =>
      _i7.serializers.deserializeWith(
        GreservationFragmentData_futureTransactionTotal.serializer,
        json,
      );
}
