// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/reservation_fragment.data.gql.dart'
    as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i8;
import 'package:gozy/graphql/__generated__/thread_item_fragment.data.gql.dart'
    as _i7;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i6;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i5;

part 'reservation_payment_fragment.data.gql.g.dart';

abstract class GreservationPaymentFragment {
  String get G__typename;
  GreservationPaymentFragment_results? get results;
  int? get purchasePlanId;
  String? get redirectUrl;
  int? get status;
  String? get errorMessage;
  bool? get requireAdditionalAction;
  String? get paymentIntentSecret;
  int? get reservationId;
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results
    implements _i1.GreservationFragment {
  @override
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
  GreservationPaymentFragment_results_cancellation? get cancellation;
  @override
  GreservationPaymentFragment_results_listData? get listData;
  @override
  GreservationPaymentFragment_results_hostTransaction? get hostTransaction;
  @override
  GreservationPaymentFragment_results_hostData? get hostData;
  @override
  GreservationPaymentFragment_results_guestData? get guestData;
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
  GreservationPaymentFragment_results_threadData? get threadData;
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
  GreservationPaymentFragment_results_cancellationDetails?
      get cancellationDetails;
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
  GreservationPaymentFragment_results_completedTotal? get completedTotal;
  @override
  GreservationPaymentFragment_results_futureTransactionTotal?
      get futureTransactionTotal;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_cancellation
    implements
        _i1.GreservationFragment_cancellation,
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

abstract class GreservationPaymentFragment_results_listData
    implements
        _i1.GreservationFragment_listData,
        _i3.GviewListingShortFragment {
  @override
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
  BuiltList<GreservationPaymentFragment_results_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GreservationPaymentFragment_results_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GreservationPaymentFragment_results_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GreservationPaymentFragment_results_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GreservationPaymentFragment_results_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GreservationPaymentFragment_results_listData_dynamicmake? get dynamicmake;
  @override
  GreservationPaymentFragment_results_listData_dynamicModel? get dynamicModel;
  @override
  GreservationPaymentFragment_results_listData_dynamicYear? get dynamicYear;
  @override
  GreservationPaymentFragment_results_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GreservationPaymentFragment_results_listData_carRules?>?
      get carRules;
  @override
  BuiltList<GreservationPaymentFragment_results_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GreservationPaymentFragment_results_listData_listPhotos?>?
      get listPhotos;
  @override
  GreservationPaymentFragment_results_listData_listingData? get listingData;
  @override
  GreservationPaymentFragment_results_listData_user? get user;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_dynamicListingTitle
    implements
        _i1.GreservationFragment_listData_dynamicListingTitle,
        _i3.GviewListingShortFragment_dynamicListingTitle {
  @override
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_dynamicListingDescription
    implements
        _i1.GreservationFragment_listData_dynamicListingDescription,
        _i3.GviewListingShortFragment_dynamicListingDescription {
  @override
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_dynamicListTitle
    implements
        _i1.GreservationFragment_listData_dynamicListTitle,
        _i3.GviewListingShortFragment_dynamicListTitle {
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

abstract class GreservationPaymentFragment_results_listData_dynamicListDescription
    implements
        _i1.GreservationFragment_listData_dynamicListDescription,
        _i3.GviewListingShortFragment_dynamicListDescription {
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

abstract class GreservationPaymentFragment_results_listData_dynamicCarType
    implements
        _i1.GreservationFragment_listData_dynamicCarType,
        _i3.GviewListingShortFragment_dynamicCarType {
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

abstract class GreservationPaymentFragment_results_listData_dynamicmake
    implements
        _i1.GreservationFragment_listData_dynamicmake,
        _i3.GviewListingShortFragment_dynamicmake {
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

abstract class GreservationPaymentFragment_results_listData_dynamicModel
    implements
        _i1.GreservationFragment_listData_dynamicModel,
        _i3.GviewListingShortFragment_dynamicModel {
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

abstract class GreservationPaymentFragment_results_listData_dynamicYear
    implements
        _i1.GreservationFragment_listData_dynamicYear,
        _i3.GviewListingShortFragment_dynamicYear {
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

abstract class GreservationPaymentFragment_results_listData_dynamicOdometer
    implements
        _i1.GreservationFragment_listData_dynamicOdometer,
        _i3.GviewListingShortFragment_dynamicOdometer {
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

abstract class GreservationPaymentFragment_results_listData_carRules
    implements
        _i1.GreservationFragment_listData_carRules,
        _i3.GviewListingShortFragment_carRules {
  @override
  String get G__typename;
  @override
  GreservationPaymentFragment_results_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_carRules_dynamicItemName
    implements
        _i1.GreservationFragment_listData_carRules_dynamicItemName,
        _i3.GviewListingShortFragment_carRules_dynamicItemName {
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

abstract class GreservationPaymentFragment_results_listData_carFeatures
    implements
        _i1.GreservationFragment_listData_carFeatures,
        _i3.GviewListingShortFragment_carFeatures {
  @override
  String get G__typename;
  @override
  GreservationPaymentFragment_results_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_carFeatures_dynamicItemName
    implements
        _i1.GreservationFragment_listData_carFeatures_dynamicItemName,
        _i3.GviewListingShortFragment_carFeatures_dynamicItemName {
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

abstract class GreservationPaymentFragment_results_listData_listPhotos
    implements
        _i1.GreservationFragment_listData_listPhotos,
        _i3.GviewListingShortFragment_listPhotos {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_listingData
    implements
        _i1.GreservationFragment_listData_listingData,
        _i3.GviewListingShortFragment_listingData,
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
  GreservationPaymentFragment_results_listData_listingData_cancellation?
      get cancellation;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_listingData_cancellation
    implements
        _i1.GreservationFragment_listData_listingData_cancellation,
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

abstract class GreservationPaymentFragment_results_listData_user
    implements
        _i1.GreservationFragment_listData_user,
        _i4.GlistingUserFragment {
  @override
  String get G__typename;
  @override
  String? get email;
  @override
  GreservationPaymentFragment_results_listData_user_profile? get profile;
  @override
  GreservationPaymentFragment_results_listData_user_verification?
      get verification;
  @override
  int? get userBanStatus;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_listData_user_profile
    implements
        _i1.GreservationFragment_listData_user_profile,
        _i4.GlistingUserFragment_profile {
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

abstract class GreservationPaymentFragment_results_listData_user_verification
    implements
        _i1.GreservationFragment_listData_user_verification,
        _i4.GlistingUserFragment_verification,
        _i5.GuserVerifiedInfoFragment {
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

abstract class GreservationPaymentFragment_results_hostTransaction
    implements _i1.GreservationFragment_hostTransaction {
  @override
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
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_hostData
    implements _i1.GreservationFragment_hostData, _i6.GuserProfileFragment {
  @override
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationPaymentFragment_results_hostData_userData? get userData;
  @override
  GreservationPaymentFragment_results_hostData_userVerification?
      get userVerification;
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

abstract class GreservationPaymentFragment_results_hostData_userData
    implements
        _i1.GreservationFragment_hostData_userData,
        _i6.GuserProfileFragment_userData {
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

abstract class GreservationPaymentFragment_results_hostData_userVerification
    implements
        _i1.GreservationFragment_hostData_userVerification,
        _i6.GuserProfileFragment_userVerification,
        _i5.GuserVerifiedInfoFragment {
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

abstract class GreservationPaymentFragment_results_guestData
    implements _i1.GreservationFragment_guestData, _i6.GuserProfileFragment {
  @override
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationPaymentFragment_results_guestData_userData? get userData;
  @override
  GreservationPaymentFragment_results_guestData_userVerification?
      get userVerification;
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

abstract class GreservationPaymentFragment_results_guestData_userData
    implements
        _i1.GreservationFragment_guestData_userData,
        _i6.GuserProfileFragment_userData {
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

abstract class GreservationPaymentFragment_results_guestData_userVerification
    implements
        _i1.GreservationFragment_guestData_userVerification,
        _i6.GuserProfileFragment_userVerification,
        _i5.GuserVerifiedInfoFragment {
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

abstract class GreservationPaymentFragment_results_threadData
    implements _i1.GreservationFragment_threadData, _i7.GthreadItemsFragment {
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

abstract class GreservationPaymentFragment_results_cancellationDetails
    implements _i1.GreservationFragment_cancellationDetails {
  @override
  String get G__typename;
  @override
  double? get payoutToHost;
  @override
  String? get createdAt;
  @override
  String? get currency;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_completedTotal
    implements _i1.GreservationFragment_completedTotal {
  @override
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragment_results_futureTransactionTotal
    implements _i1.GreservationFragment_futureTransactionTotal {
  @override
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  @override
  Map<String, dynamic> toJson();
}

abstract class GreservationPaymentFragmentData
    implements
        Built<GreservationPaymentFragmentData,
            GreservationPaymentFragmentDataBuilder>,
        GreservationPaymentFragment {
  GreservationPaymentFragmentData._();

  factory GreservationPaymentFragmentData(
          [void Function(GreservationPaymentFragmentDataBuilder b) updates]) =
      _$GreservationPaymentFragmentData;

  static void _initializeBuilder(GreservationPaymentFragmentDataBuilder b) =>
      b..G__typename = 'ReservationPayment';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GreservationPaymentFragmentData_results? get results;
  @override
  int? get purchasePlanId;
  @override
  String? get redirectUrl;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  bool? get requireAdditionalAction;
  @override
  String? get paymentIntentSecret;
  @override
  int? get reservationId;
  static Serializer<GreservationPaymentFragmentData> get serializer =>
      _$greservationPaymentFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData? fromJson(Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results
    implements
        Built<GreservationPaymentFragmentData_results,
            GreservationPaymentFragmentData_resultsBuilder>,
        GreservationPaymentFragment_results,
        _i1.GreservationFragment {
  GreservationPaymentFragmentData_results._();

  factory GreservationPaymentFragmentData_results(
      [void Function(GreservationPaymentFragmentData_resultsBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_resultsBuilder b) =>
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
  GreservationPaymentFragmentData_results_cancellation? get cancellation;
  @override
  GreservationPaymentFragmentData_results_listData? get listData;
  @override
  GreservationPaymentFragmentData_results_hostTransaction? get hostTransaction;
  @override
  GreservationPaymentFragmentData_results_hostData? get hostData;
  @override
  GreservationPaymentFragmentData_results_guestData? get guestData;
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
  GreservationPaymentFragmentData_results_threadData? get threadData;
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
  GreservationPaymentFragmentData_results_cancellationDetails?
      get cancellationDetails;
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
  GreservationPaymentFragmentData_results_completedTotal? get completedTotal;
  @override
  GreservationPaymentFragmentData_results_futureTransactionTotal?
      get futureTransactionTotal;
  static Serializer<GreservationPaymentFragmentData_results> get serializer =>
      _$greservationPaymentFragmentDataResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_cancellation
    implements
        Built<GreservationPaymentFragmentData_results_cancellation,
            GreservationPaymentFragmentData_results_cancellationBuilder>,
        GreservationPaymentFragment_results_cancellation,
        _i1.GreservationFragment_cancellation,
        _i2.GcancellationDataFragment {
  GreservationPaymentFragmentData_results_cancellation._();

  factory GreservationPaymentFragmentData_results_cancellation(
      [void Function(
              GreservationPaymentFragmentData_results_cancellationBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_cancellation;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_cancellationBuilder b) =>
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
  static Serializer<GreservationPaymentFragmentData_results_cancellation>
      get serializer =>
          _$greservationPaymentFragmentDataResultsCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_cancellation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_cancellation? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_cancellation.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData
    implements
        Built<GreservationPaymentFragmentData_results_listData,
            GreservationPaymentFragmentData_results_listDataBuilder>,
        GreservationPaymentFragment_results_listData,
        _i1.GreservationFragment_listData,
        _i3.GviewListingShortFragment {
  GreservationPaymentFragmentData_results_listData._();

  factory GreservationPaymentFragmentData_results_listData(
      [void Function(GreservationPaymentFragmentData_results_listDataBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_listData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listDataBuilder b) =>
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
  BuiltList<
          GreservationPaymentFragmentData_results_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GreservationPaymentFragmentData_results_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicmake? get dynamicmake;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicModel?
      get dynamicModel;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicYear? get dynamicYear;
  @override
  GreservationPaymentFragmentData_results_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GreservationPaymentFragmentData_results_listData_carRules?>?
      get carRules;
  @override
  BuiltList<GreservationPaymentFragmentData_results_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GreservationPaymentFragmentData_results_listData_listPhotos?>?
      get listPhotos;
  @override
  GreservationPaymentFragmentData_results_listData_listingData? get listingData;
  @override
  GreservationPaymentFragmentData_results_listData_user? get user;
  static Serializer<GreservationPaymentFragmentData_results_listData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicListingTitle
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_dynamicListingTitle,
            GreservationPaymentFragmentData_results_listData_dynamicListingTitleBuilder>,
        GreservationPaymentFragment_results_listData_dynamicListingTitle,
        _i1.GreservationFragment_listData_dynamicListingTitle,
        _i3.GviewListingShortFragment_dynamicListingTitle {
  GreservationPaymentFragmentData_results_listData_dynamicListingTitle._();

  factory GreservationPaymentFragmentData_results_listData_dynamicListingTitle(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicListingTitleBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicListingTitle>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicListingDescription
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_dynamicListingDescription,
            GreservationPaymentFragmentData_results_listData_dynamicListingDescriptionBuilder>,
        GreservationPaymentFragment_results_listData_dynamicListingDescription,
        _i1.GreservationFragment_listData_dynamicListingDescription,
        _i3.GviewListingShortFragment_dynamicListingDescription {
  GreservationPaymentFragmentData_results_listData_dynamicListingDescription._();

  factory GreservationPaymentFragmentData_results_listData_dynamicListingDescription(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicListingDescriptionBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicListingDescription>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicListTitle
    implements
        Built<GreservationPaymentFragmentData_results_listData_dynamicListTitle,
            GreservationPaymentFragmentData_results_listData_dynamicListTitleBuilder>,
        GreservationPaymentFragment_results_listData_dynamicListTitle,
        _i1.GreservationFragment_listData_dynamicListTitle,
        _i3.GviewListingShortFragment_dynamicListTitle {
  GreservationPaymentFragmentData_results_listData_dynamicListTitle._();

  factory GreservationPaymentFragmentData_results_listData_dynamicListTitle(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicListTitle;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicListTitleBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicListTitle>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicListDescription
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_dynamicListDescription,
            GreservationPaymentFragmentData_results_listData_dynamicListDescriptionBuilder>,
        GreservationPaymentFragment_results_listData_dynamicListDescription,
        _i1.GreservationFragment_listData_dynamicListDescription,
        _i3.GviewListingShortFragment_dynamicListDescription {
  GreservationPaymentFragmentData_results_listData_dynamicListDescription._();

  factory GreservationPaymentFragmentData_results_listData_dynamicListDescription(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicListDescription;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicListDescriptionBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicListDescription>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicCarType
    implements
        Built<GreservationPaymentFragmentData_results_listData_dynamicCarType,
            GreservationPaymentFragmentData_results_listData_dynamicCarTypeBuilder>,
        GreservationPaymentFragment_results_listData_dynamicCarType,
        _i1.GreservationFragment_listData_dynamicCarType,
        _i3.GviewListingShortFragment_dynamicCarType {
  GreservationPaymentFragmentData_results_listData_dynamicCarType._();

  factory GreservationPaymentFragmentData_results_listData_dynamicCarType(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicCarType;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicCarTypeBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicCarType>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicmake
    implements
        Built<GreservationPaymentFragmentData_results_listData_dynamicmake,
            GreservationPaymentFragmentData_results_listData_dynamicmakeBuilder>,
        GreservationPaymentFragment_results_listData_dynamicmake,
        _i1.GreservationFragment_listData_dynamicmake,
        _i3.GviewListingShortFragment_dynamicmake {
  GreservationPaymentFragmentData_results_listData_dynamicmake._();

  factory GreservationPaymentFragmentData_results_listData_dynamicmake(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicmake;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicmakeBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicmake>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicmake.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicModel
    implements
        Built<GreservationPaymentFragmentData_results_listData_dynamicModel,
            GreservationPaymentFragmentData_results_listData_dynamicModelBuilder>,
        GreservationPaymentFragment_results_listData_dynamicModel,
        _i1.GreservationFragment_listData_dynamicModel,
        _i3.GviewListingShortFragment_dynamicModel {
  GreservationPaymentFragmentData_results_listData_dynamicModel._();

  factory GreservationPaymentFragmentData_results_listData_dynamicModel(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicModel;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicModelBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicModel>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicYear
    implements
        Built<GreservationPaymentFragmentData_results_listData_dynamicYear,
            GreservationPaymentFragmentData_results_listData_dynamicYearBuilder>,
        GreservationPaymentFragment_results_listData_dynamicYear,
        _i1.GreservationFragment_listData_dynamicYear,
        _i3.GviewListingShortFragment_dynamicYear {
  GreservationPaymentFragmentData_results_listData_dynamicYear._();

  factory GreservationPaymentFragmentData_results_listData_dynamicYear(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicYear;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicYearBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicYear>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicYear.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_dynamicOdometer
    implements
        Built<GreservationPaymentFragmentData_results_listData_dynamicOdometer,
            GreservationPaymentFragmentData_results_listData_dynamicOdometerBuilder>,
        GreservationPaymentFragment_results_listData_dynamicOdometer,
        _i1.GreservationFragment_listData_dynamicOdometer,
        _i3.GviewListingShortFragment_dynamicOdometer {
  GreservationPaymentFragmentData_results_listData_dynamicOdometer._();

  factory GreservationPaymentFragmentData_results_listData_dynamicOdometer(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_dynamicOdometer;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_dynamicOdometerBuilder
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
          GreservationPaymentFragmentData_results_listData_dynamicOdometer>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_carRules
    implements
        Built<GreservationPaymentFragmentData_results_listData_carRules,
            GreservationPaymentFragmentData_results_listData_carRulesBuilder>,
        GreservationPaymentFragment_results_listData_carRules,
        _i1.GreservationFragment_listData_carRules,
        _i3.GviewListingShortFragment_carRules {
  GreservationPaymentFragmentData_results_listData_carRules._();

  factory GreservationPaymentFragmentData_results_listData_carRules(
      [void Function(
              GreservationPaymentFragmentData_results_listData_carRulesBuilder
                  b)
          updates]) = _$GreservationPaymentFragmentData_results_listData_carRules;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GreservationPaymentFragmentData_results_listData_carRules>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_carRules.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName,
            GreservationPaymentFragmentData_results_listData_carRules_dynamicItemNameBuilder>,
        GreservationPaymentFragment_results_listData_carRules_dynamicItemName,
        _i1.GreservationFragment_listData_carRules_dynamicItemName,
        _i3.GviewListingShortFragment_carRules_dynamicItemName {
  GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName._();

  factory GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_carRules_dynamicItemNameBuilder
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
          GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_carFeatures
    implements
        Built<GreservationPaymentFragmentData_results_listData_carFeatures,
            GreservationPaymentFragmentData_results_listData_carFeaturesBuilder>,
        GreservationPaymentFragment_results_listData_carFeatures,
        _i1.GreservationFragment_listData_carFeatures,
        _i3.GviewListingShortFragment_carFeatures {
  GreservationPaymentFragmentData_results_listData_carFeatures._();

  factory GreservationPaymentFragmentData_results_listData_carFeatures(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_carFeatures;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GreservationPaymentFragmentData_results_listData_carFeatures>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_carFeatures.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName,
            GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemNameBuilder>,
        GreservationPaymentFragment_results_listData_carFeatures_dynamicItemName,
        _i1.GreservationFragment_listData_carFeatures_dynamicItemName,
        _i3.GviewListingShortFragment_carFeatures_dynamicItemName {
  GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName._();

  factory GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemNameBuilder
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
          GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_listPhotos
    implements
        Built<GreservationPaymentFragmentData_results_listData_listPhotos,
            GreservationPaymentFragmentData_results_listData_listPhotosBuilder>,
        GreservationPaymentFragment_results_listData_listPhotos,
        _i1.GreservationFragment_listData_listPhotos,
        _i3.GviewListingShortFragment_listPhotos {
  GreservationPaymentFragmentData_results_listData_listPhotos._();

  factory GreservationPaymentFragmentData_results_listData_listPhotos(
      [void Function(
              GreservationPaymentFragmentData_results_listData_listPhotosBuilder
                  b)
          updates]) = _$GreservationPaymentFragmentData_results_listData_listPhotos;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_listPhotosBuilder
              b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GreservationPaymentFragmentData_results_listData_listPhotos>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_listPhotos.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_listingData
    implements
        Built<GreservationPaymentFragmentData_results_listData_listingData,
            GreservationPaymentFragmentData_results_listData_listingDataBuilder>,
        GreservationPaymentFragment_results_listData_listingData,
        _i1.GreservationFragment_listData_listingData,
        _i3.GviewListingShortFragment_listingData,
        _i2.GlistingDataFragment {
  GreservationPaymentFragmentData_results_listData_listingData._();

  factory GreservationPaymentFragmentData_results_listData_listingData(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_listingDataBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_listingData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_listingDataBuilder
              b) =>
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
  GreservationPaymentFragmentData_results_listData_listingData_cancellation?
      get cancellation;
  static Serializer<
          GreservationPaymentFragmentData_results_listData_listingData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_listingData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_listingData_cancellation
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_listingData_cancellation,
            GreservationPaymentFragmentData_results_listData_listingData_cancellationBuilder>,
        GreservationPaymentFragment_results_listData_listingData_cancellation,
        _i1.GreservationFragment_listData_listingData_cancellation,
        _i2.GlistingDataFragment_cancellation,
        _i2.GcancellationDataFragment {
  GreservationPaymentFragmentData_results_listData_listingData_cancellation._();

  factory GreservationPaymentFragmentData_results_listData_listingData_cancellation(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_listingData_cancellationBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_listingData_cancellation;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_listingData_cancellationBuilder
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
          GreservationPaymentFragmentData_results_listData_listingData_cancellation>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_listingData_cancellation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_listingData_cancellation?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_listingData_cancellation
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_user
    implements
        Built<GreservationPaymentFragmentData_results_listData_user,
            GreservationPaymentFragmentData_results_listData_userBuilder>,
        GreservationPaymentFragment_results_listData_user,
        _i1.GreservationFragment_listData_user,
        _i4.GlistingUserFragment {
  GreservationPaymentFragmentData_results_listData_user._();

  factory GreservationPaymentFragmentData_results_listData_user(
      [void Function(
              GreservationPaymentFragmentData_results_listData_userBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_listData_user;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_userBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GreservationPaymentFragmentData_results_listData_user_profile? get profile;
  @override
  GreservationPaymentFragmentData_results_listData_user_verification?
      get verification;
  @override
  int? get userBanStatus;
  static Serializer<GreservationPaymentFragmentData_results_listData_user>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_user? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_listData_user.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_listData_user_profile
    implements
        Built<GreservationPaymentFragmentData_results_listData_user_profile,
            GreservationPaymentFragmentData_results_listData_user_profileBuilder>,
        GreservationPaymentFragment_results_listData_user_profile,
        _i1.GreservationFragment_listData_user_profile,
        _i4.GlistingUserFragment_profile {
  GreservationPaymentFragmentData_results_listData_user_profile._();

  factory GreservationPaymentFragmentData_results_listData_user_profile(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_user_profileBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_user_profile;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_user_profileBuilder
              b) =>
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
  static Serializer<
          GreservationPaymentFragmentData_results_listData_user_profile>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_user_profile
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_user_profile?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_user_profile
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_listData_user_verification
    implements
        Built<
            GreservationPaymentFragmentData_results_listData_user_verification,
            GreservationPaymentFragmentData_results_listData_user_verificationBuilder>,
        GreservationPaymentFragment_results_listData_user_verification,
        _i1.GreservationFragment_listData_user_verification,
        _i4.GlistingUserFragment_verification,
        _i5.GuserVerifiedInfoFragment {
  GreservationPaymentFragmentData_results_listData_user_verification._();

  factory GreservationPaymentFragmentData_results_listData_user_verification(
          [void Function(
                  GreservationPaymentFragmentData_results_listData_user_verificationBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_listData_user_verification;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_listData_user_verificationBuilder
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
          GreservationPaymentFragmentData_results_listData_user_verification>
      get serializer =>
          _$greservationPaymentFragmentDataResultsListDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_listData_user_verification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_listData_user_verification?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_listData_user_verification
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_hostTransaction
    implements
        Built<GreservationPaymentFragmentData_results_hostTransaction,
            GreservationPaymentFragmentData_results_hostTransactionBuilder>,
        GreservationPaymentFragment_results_hostTransaction,
        _i1.GreservationFragment_hostTransaction {
  GreservationPaymentFragmentData_results_hostTransaction._();

  factory GreservationPaymentFragmentData_results_hostTransaction(
      [void Function(
              GreservationPaymentFragmentData_results_hostTransactionBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_hostTransaction;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_hostTransactionBuilder b) =>
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
  static Serializer<GreservationPaymentFragmentData_results_hostTransaction>
      get serializer =>
          _$greservationPaymentFragmentDataResultsHostTransactionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_hostTransaction.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_hostTransaction? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_hostTransaction.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_hostData
    implements
        Built<GreservationPaymentFragmentData_results_hostData,
            GreservationPaymentFragmentData_results_hostDataBuilder>,
        GreservationPaymentFragment_results_hostData,
        _i1.GreservationFragment_hostData,
        _i6.GuserProfileFragment {
  GreservationPaymentFragmentData_results_hostData._();

  factory GreservationPaymentFragmentData_results_hostData(
      [void Function(GreservationPaymentFragmentData_results_hostDataBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_hostData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_hostDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationPaymentFragmentData_results_hostData_userData? get userData;
  @override
  GreservationPaymentFragmentData_results_hostData_userVerification?
      get userVerification;
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
  static Serializer<GreservationPaymentFragmentData_results_hostData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsHostDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_hostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_hostData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_hostData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_hostData_userData
    implements
        Built<GreservationPaymentFragmentData_results_hostData_userData,
            GreservationPaymentFragmentData_results_hostData_userDataBuilder>,
        GreservationPaymentFragment_results_hostData_userData,
        _i1.GreservationFragment_hostData_userData,
        _i6.GuserProfileFragment_userData {
  GreservationPaymentFragmentData_results_hostData_userData._();

  factory GreservationPaymentFragmentData_results_hostData_userData(
      [void Function(
              GreservationPaymentFragmentData_results_hostData_userDataBuilder
                  b)
          updates]) = _$GreservationPaymentFragmentData_results_hostData_userData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_hostData_userDataBuilder b) =>
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
  static Serializer<GreservationPaymentFragmentData_results_hostData_userData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsHostDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_hostData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_hostData_userData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_hostData_userData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_hostData_userVerification
    implements
        Built<GreservationPaymentFragmentData_results_hostData_userVerification,
            GreservationPaymentFragmentData_results_hostData_userVerificationBuilder>,
        GreservationPaymentFragment_results_hostData_userVerification,
        _i1.GreservationFragment_hostData_userVerification,
        _i6.GuserProfileFragment_userVerification,
        _i5.GuserVerifiedInfoFragment {
  GreservationPaymentFragmentData_results_hostData_userVerification._();

  factory GreservationPaymentFragmentData_results_hostData_userVerification(
          [void Function(
                  GreservationPaymentFragmentData_results_hostData_userVerificationBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_hostData_userVerification;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_hostData_userVerificationBuilder
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
          GreservationPaymentFragmentData_results_hostData_userVerification>
      get serializer =>
          _$greservationPaymentFragmentDataResultsHostDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_hostData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_hostData_userVerification?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_hostData_userVerification
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_guestData
    implements
        Built<GreservationPaymentFragmentData_results_guestData,
            GreservationPaymentFragmentData_results_guestDataBuilder>,
        GreservationPaymentFragment_results_guestData,
        _i1.GreservationFragment_guestData,
        _i6.GuserProfileFragment {
  GreservationPaymentFragmentData_results_guestData._();

  factory GreservationPaymentFragmentData_results_guestData(
      [void Function(GreservationPaymentFragmentData_results_guestDataBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_guestData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_guestDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GreservationPaymentFragmentData_results_guestData_userData? get userData;
  @override
  GreservationPaymentFragmentData_results_guestData_userVerification?
      get userVerification;
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
  static Serializer<GreservationPaymentFragmentData_results_guestData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsGuestDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_guestData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_guestData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_guestData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_guestData_userData
    implements
        Built<GreservationPaymentFragmentData_results_guestData_userData,
            GreservationPaymentFragmentData_results_guestData_userDataBuilder>,
        GreservationPaymentFragment_results_guestData_userData,
        _i1.GreservationFragment_guestData_userData,
        _i6.GuserProfileFragment_userData {
  GreservationPaymentFragmentData_results_guestData_userData._();

  factory GreservationPaymentFragmentData_results_guestData_userData(
      [void Function(
              GreservationPaymentFragmentData_results_guestData_userDataBuilder
                  b)
          updates]) = _$GreservationPaymentFragmentData_results_guestData_userData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_guestData_userDataBuilder
              b) =>
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
  static Serializer<GreservationPaymentFragmentData_results_guestData_userData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsGuestDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_guestData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_guestData_userData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_guestData_userData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_guestData_userVerification
    implements
        Built<
            GreservationPaymentFragmentData_results_guestData_userVerification,
            GreservationPaymentFragmentData_results_guestData_userVerificationBuilder>,
        GreservationPaymentFragment_results_guestData_userVerification,
        _i1.GreservationFragment_guestData_userVerification,
        _i6.GuserProfileFragment_userVerification,
        _i5.GuserVerifiedInfoFragment {
  GreservationPaymentFragmentData_results_guestData_userVerification._();

  factory GreservationPaymentFragmentData_results_guestData_userVerification(
          [void Function(
                  GreservationPaymentFragmentData_results_guestData_userVerificationBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_guestData_userVerification;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_guestData_userVerificationBuilder
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
          GreservationPaymentFragmentData_results_guestData_userVerification>
      get serializer =>
          _$greservationPaymentFragmentDataResultsGuestDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_guestData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_guestData_userVerification?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_guestData_userVerification
                .serializer,
            json,
          );
}

abstract class GreservationPaymentFragmentData_results_threadData
    implements
        Built<GreservationPaymentFragmentData_results_threadData,
            GreservationPaymentFragmentData_results_threadDataBuilder>,
        GreservationPaymentFragment_results_threadData,
        _i1.GreservationFragment_threadData,
        _i7.GthreadItemsFragment {
  GreservationPaymentFragmentData_results_threadData._();

  factory GreservationPaymentFragmentData_results_threadData(
      [void Function(
              GreservationPaymentFragmentData_results_threadDataBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_threadData;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_threadDataBuilder b) =>
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
  static Serializer<GreservationPaymentFragmentData_results_threadData>
      get serializer =>
          _$greservationPaymentFragmentDataResultsThreadDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_threadData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_threadData? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_threadData.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_cancellationDetails
    implements
        Built<GreservationPaymentFragmentData_results_cancellationDetails,
            GreservationPaymentFragmentData_results_cancellationDetailsBuilder>,
        GreservationPaymentFragment_results_cancellationDetails,
        _i1.GreservationFragment_cancellationDetails {
  GreservationPaymentFragmentData_results_cancellationDetails._();

  factory GreservationPaymentFragmentData_results_cancellationDetails(
      [void Function(
              GreservationPaymentFragmentData_results_cancellationDetailsBuilder
                  b)
          updates]) = _$GreservationPaymentFragmentData_results_cancellationDetails;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_cancellationDetailsBuilder
              b) =>
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
  static Serializer<GreservationPaymentFragmentData_results_cancellationDetails>
      get serializer =>
          _$greservationPaymentFragmentDataResultsCancellationDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_cancellationDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_cancellationDetails? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_cancellationDetails.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_completedTotal
    implements
        Built<GreservationPaymentFragmentData_results_completedTotal,
            GreservationPaymentFragmentData_results_completedTotalBuilder>,
        GreservationPaymentFragment_results_completedTotal,
        _i1.GreservationFragment_completedTotal {
  GreservationPaymentFragmentData_results_completedTotal._();

  factory GreservationPaymentFragmentData_results_completedTotal(
      [void Function(
              GreservationPaymentFragmentData_results_completedTotalBuilder b)
          updates]) = _$GreservationPaymentFragmentData_results_completedTotal;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_completedTotalBuilder b) =>
      b..G__typename = 'CompletedTotal';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  static Serializer<GreservationPaymentFragmentData_results_completedTotal>
      get serializer =>
          _$greservationPaymentFragmentDataResultsCompletedTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_completedTotal.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_completedTotal? fromJson(
          Map<String, dynamic> json) =>
      _i8.serializers.deserializeWith(
        GreservationPaymentFragmentData_results_completedTotal.serializer,
        json,
      );
}

abstract class GreservationPaymentFragmentData_results_futureTransactionTotal
    implements
        Built<GreservationPaymentFragmentData_results_futureTransactionTotal,
            GreservationPaymentFragmentData_results_futureTransactionTotalBuilder>,
        GreservationPaymentFragment_results_futureTransactionTotal,
        _i1.GreservationFragment_futureTransactionTotal {
  GreservationPaymentFragmentData_results_futureTransactionTotal._();

  factory GreservationPaymentFragmentData_results_futureTransactionTotal(
          [void Function(
                  GreservationPaymentFragmentData_results_futureTransactionTotalBuilder
                      b)
              updates]) =
      _$GreservationPaymentFragmentData_results_futureTransactionTotal;

  static void _initializeBuilder(
          GreservationPaymentFragmentData_results_futureTransactionTotalBuilder
              b) =>
      b..G__typename = 'FutureTransactionTotal';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  static Serializer<
          GreservationPaymentFragmentData_results_futureTransactionTotal>
      get serializer =>
          _$greservationPaymentFragmentDataResultsFutureTransactionTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i8.serializers.serializeWith(
        GreservationPaymentFragmentData_results_futureTransactionTotal
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationPaymentFragmentData_results_futureTransactionTotal?
      fromJson(Map<String, dynamic> json) => _i8.serializers.deserializeWith(
            GreservationPaymentFragmentData_results_futureTransactionTotal
                .serializer,
            json,
          );
}
