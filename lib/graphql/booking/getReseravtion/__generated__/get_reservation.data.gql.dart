// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i5;
import 'package:gozy/graphql/__generated__/reservation_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/thread_item_fragment.data.gql.dart'
    as _i8;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i7;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i6;

part 'get_reservation.data.gql.g.dart';

abstract class GgetReservationData
    implements Built<GgetReservationData, GgetReservationDataBuilder> {
  GgetReservationData._();

  factory GgetReservationData(
          [void Function(GgetReservationDataBuilder b) updates]) =
      _$GgetReservationData;

  static void _initializeBuilder(GgetReservationDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetReservationData_getReservation? get getReservation;
  static Serializer<GgetReservationData> get serializer =>
      _$ggetReservationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation
    implements
        Built<GgetReservationData_getReservation,
            GgetReservationData_getReservationBuilder> {
  GgetReservationData_getReservation._();

  factory GgetReservationData_getReservation(
      [void Function(GgetReservationData_getReservationBuilder b)
          updates]) = _$GgetReservationData_getReservation;

  static void _initializeBuilder(GgetReservationData_getReservationBuilder b) =>
      b..G__typename = 'Reservationlist';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetReservationData_getReservation_results? get results;
  double? get convertedSecurityDeposit;
  double? get convertedClaimRefund;
  double? get convertedClaimAmount;
  double? get convertedClaimPayout;
  double? get actualEarnings;
  double? get convertTotalWithoutSecurityDeposit;
  double? get convertedBasePrice;
  double? get convertedHostServiceFee;
  double? get convertedGuestServicefee;
  double? get convertedIsSpecialAverage;
  double? get convertedTotalDaysAmount;
  double? get convertTotalWithGuestServiceFee;
  double? get convertedDeliveryPrice;
  double? get convertedTotalWithHostServiceFee;
  double? get convertedDiscount;
  static Serializer<GgetReservationData_getReservation> get serializer =>
      _$ggetReservationDataGetReservationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results
    implements
        Built<GgetReservationData_getReservation_results,
            GgetReservationData_getReservation_resultsBuilder>,
        _i2.GreservationFragment {
  GgetReservationData_getReservation_results._();

  factory GgetReservationData_getReservation_results(
      [void Function(GgetReservationData_getReservation_resultsBuilder b)
          updates]) = _$GgetReservationData_getReservation_results;

  static void _initializeBuilder(
          GgetReservationData_getReservation_resultsBuilder b) =>
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
  GgetReservationData_getReservation_results_cancellation? get cancellation;
  @override
  GgetReservationData_getReservation_results_listData? get listData;
  @override
  GgetReservationData_getReservation_results_hostTransaction?
      get hostTransaction;
  @override
  GgetReservationData_getReservation_results_hostData? get hostData;
  @override
  GgetReservationData_getReservation_results_guestData? get guestData;
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
  GgetReservationData_getReservation_results_threadData? get threadData;
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
  GgetReservationData_getReservation_results_cancellationDetails?
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
  GgetReservationData_getReservation_results_completedTotal? get completedTotal;
  @override
  GgetReservationData_getReservation_results_futureTransactionTotal?
      get futureTransactionTotal;
  static Serializer<GgetReservationData_getReservation_results>
      get serializer => _$ggetReservationDataGetReservationResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_cancellation
    implements
        Built<GgetReservationData_getReservation_results_cancellation,
            GgetReservationData_getReservation_results_cancellationBuilder>,
        _i2.GreservationFragment_cancellation,
        _i3.GcancellationDataFragment {
  GgetReservationData_getReservation_results_cancellation._();

  factory GgetReservationData_getReservation_results_cancellation(
      [void Function(
              GgetReservationData_getReservation_results_cancellationBuilder b)
          updates]) = _$GgetReservationData_getReservation_results_cancellation;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_cancellationBuilder b) =>
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
  static Serializer<GgetReservationData_getReservation_results_cancellation>
      get serializer =>
          _$ggetReservationDataGetReservationResultsCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_cancellation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_cancellation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_cancellation.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_listData
    implements
        Built<GgetReservationData_getReservation_results_listData,
            GgetReservationData_getReservation_results_listDataBuilder>,
        _i2.GreservationFragment_listData,
        _i4.GviewListingShortFragment {
  GgetReservationData_getReservation_results_listData._();

  factory GgetReservationData_getReservation_results_listData(
      [void Function(
              GgetReservationData_getReservation_results_listDataBuilder b)
          updates]) = _$GgetReservationData_getReservation_results_listData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listDataBuilder b) =>
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
          GgetReservationData_getReservation_results_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetReservationData_getReservation_results_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetReservationData_getReservation_results_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetReservationData_getReservation_results_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetReservationData_getReservation_results_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GgetReservationData_getReservation_results_listData_dynamicmake?
      get dynamicmake;
  @override
  GgetReservationData_getReservation_results_listData_dynamicModel?
      get dynamicModel;
  @override
  GgetReservationData_getReservation_results_listData_dynamicYear?
      get dynamicYear;
  @override
  GgetReservationData_getReservation_results_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GgetReservationData_getReservation_results_listData_carRules?>?
      get carRules;
  @override
  BuiltList<GgetReservationData_getReservation_results_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GgetReservationData_getReservation_results_listData_listPhotos?>?
      get listPhotos;
  @override
  GgetReservationData_getReservation_results_listData_listingData?
      get listingData;
  @override
  GgetReservationData_getReservation_results_listData_user? get user;
  static Serializer<GgetReservationData_getReservation_results_listData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_listData.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicListingTitle
    implements
        Built<
            GgetReservationData_getReservation_results_listData_dynamicListingTitle,
            GgetReservationData_getReservation_results_listData_dynamicListingTitleBuilder>,
        _i2.GreservationFragment_listData_dynamicListingTitle,
        _i4.GviewListingShortFragment_dynamicListingTitle {
  GgetReservationData_getReservation_results_listData_dynamicListingTitle._();

  factory GgetReservationData_getReservation_results_listData_dynamicListingTitle(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicListingTitleBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicListingTitle>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicListingDescription
    implements
        Built<
            GgetReservationData_getReservation_results_listData_dynamicListingDescription,
            GgetReservationData_getReservation_results_listData_dynamicListingDescriptionBuilder>,
        _i2.GreservationFragment_listData_dynamicListingDescription,
        _i4.GviewListingShortFragment_dynamicListingDescription {
  GgetReservationData_getReservation_results_listData_dynamicListingDescription._();

  factory GgetReservationData_getReservation_results_listData_dynamicListingDescription(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicListingDescriptionBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicListingDescription>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicListTitle
    implements
        Built<
            GgetReservationData_getReservation_results_listData_dynamicListTitle,
            GgetReservationData_getReservation_results_listData_dynamicListTitleBuilder>,
        _i2.GreservationFragment_listData_dynamicListTitle,
        _i4.GviewListingShortFragment_dynamicListTitle {
  GgetReservationData_getReservation_results_listData_dynamicListTitle._();

  factory GgetReservationData_getReservation_results_listData_dynamicListTitle(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicListTitle;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicListTitleBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicListTitle>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicListDescription
    implements
        Built<
            GgetReservationData_getReservation_results_listData_dynamicListDescription,
            GgetReservationData_getReservation_results_listData_dynamicListDescriptionBuilder>,
        _i2.GreservationFragment_listData_dynamicListDescription,
        _i4.GviewListingShortFragment_dynamicListDescription {
  GgetReservationData_getReservation_results_listData_dynamicListDescription._();

  factory GgetReservationData_getReservation_results_listData_dynamicListDescription(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicListDescription;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicListDescriptionBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicListDescription>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicCarType
    implements
        Built<
            GgetReservationData_getReservation_results_listData_dynamicCarType,
            GgetReservationData_getReservation_results_listData_dynamicCarTypeBuilder>,
        _i2.GreservationFragment_listData_dynamicCarType,
        _i4.GviewListingShortFragment_dynamicCarType {
  GgetReservationData_getReservation_results_listData_dynamicCarType._();

  factory GgetReservationData_getReservation_results_listData_dynamicCarType(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicCarType;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicCarTypeBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicCarType>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicmake
    implements
        Built<GgetReservationData_getReservation_results_listData_dynamicmake,
            GgetReservationData_getReservation_results_listData_dynamicmakeBuilder>,
        _i2.GreservationFragment_listData_dynamicmake,
        _i4.GviewListingShortFragment_dynamicmake {
  GgetReservationData_getReservation_results_listData_dynamicmake._();

  factory GgetReservationData_getReservation_results_listData_dynamicmake(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicmake;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicmakeBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicmake>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicmake
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicModel
    implements
        Built<GgetReservationData_getReservation_results_listData_dynamicModel,
            GgetReservationData_getReservation_results_listData_dynamicModelBuilder>,
        _i2.GreservationFragment_listData_dynamicModel,
        _i4.GviewListingShortFragment_dynamicModel {
  GgetReservationData_getReservation_results_listData_dynamicModel._();

  factory GgetReservationData_getReservation_results_listData_dynamicModel(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicModel;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicModelBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicModel>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicYear
    implements
        Built<GgetReservationData_getReservation_results_listData_dynamicYear,
            GgetReservationData_getReservation_results_listData_dynamicYearBuilder>,
        _i2.GreservationFragment_listData_dynamicYear,
        _i4.GviewListingShortFragment_dynamicYear {
  GgetReservationData_getReservation_results_listData_dynamicYear._();

  factory GgetReservationData_getReservation_results_listData_dynamicYear(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicYear;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicYearBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicYear>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicYear
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_dynamicOdometer
    implements
        Built<
            GgetReservationData_getReservation_results_listData_dynamicOdometer,
            GgetReservationData_getReservation_results_listData_dynamicOdometerBuilder>,
        _i2.GreservationFragment_listData_dynamicOdometer,
        _i4.GviewListingShortFragment_dynamicOdometer {
  GgetReservationData_getReservation_results_listData_dynamicOdometer._();

  factory GgetReservationData_getReservation_results_listData_dynamicOdometer(
          [void Function(
                  GgetReservationData_getReservation_results_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_dynamicOdometer;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_dynamicOdometerBuilder
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
          GgetReservationData_getReservation_results_listData_dynamicOdometer>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_carRules
    implements
        Built<GgetReservationData_getReservation_results_listData_carRules,
            GgetReservationData_getReservation_results_listData_carRulesBuilder>,
        _i2.GreservationFragment_listData_carRules,
        _i4.GviewListingShortFragment_carRules {
  GgetReservationData_getReservation_results_listData_carRules._();

  factory GgetReservationData_getReservation_results_listData_carRules(
          [void Function(
                  GgetReservationData_getReservation_results_listData_carRulesBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_carRules;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetReservationData_getReservation_results_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetReservationData_getReservation_results_listData_carRules>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_listData_carRules.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_listData_carRules_dynamicItemName
    implements
        Built<
            GgetReservationData_getReservation_results_listData_carRules_dynamicItemName,
            GgetReservationData_getReservation_results_listData_carRules_dynamicItemNameBuilder>,
        _i2.GreservationFragment_listData_carRules_dynamicItemName,
        _i4.GviewListingShortFragment_carRules_dynamicItemName {
  GgetReservationData_getReservation_results_listData_carRules_dynamicItemName._();

  factory GgetReservationData_getReservation_results_listData_carRules_dynamicItemName(
          [void Function(
                  GgetReservationData_getReservation_results_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_carRules_dynamicItemNameBuilder
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
          GgetReservationData_getReservation_results_listData_carRules_dynamicItemName>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_carFeatures
    implements
        Built<GgetReservationData_getReservation_results_listData_carFeatures,
            GgetReservationData_getReservation_results_listData_carFeaturesBuilder>,
        _i2.GreservationFragment_listData_carFeatures,
        _i4.GviewListingShortFragment_carFeatures {
  GgetReservationData_getReservation_results_listData_carFeatures._();

  factory GgetReservationData_getReservation_results_listData_carFeatures(
          [void Function(
                  GgetReservationData_getReservation_results_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_carFeatures;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetReservationData_getReservation_results_listData_carFeatures>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName
    implements
        Built<
            GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName,
            GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemNameBuilder>,
        _i2.GreservationFragment_listData_carFeatures_dynamicItemName,
        _i4.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName._();

  factory GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName(
          [void Function(
                  GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemNameBuilder
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
          GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_listPhotos
    implements
        Built<GgetReservationData_getReservation_results_listData_listPhotos,
            GgetReservationData_getReservation_results_listData_listPhotosBuilder>,
        _i2.GreservationFragment_listData_listPhotos,
        _i4.GviewListingShortFragment_listPhotos {
  GgetReservationData_getReservation_results_listData_listPhotos._();

  factory GgetReservationData_getReservation_results_listData_listPhotos(
          [void Function(
                  GgetReservationData_getReservation_results_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_listPhotos;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_listPhotosBuilder
              b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<
          GgetReservationData_getReservation_results_listData_listPhotos>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_listPhotos
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_listingData
    implements
        Built<GgetReservationData_getReservation_results_listData_listingData,
            GgetReservationData_getReservation_results_listData_listingDataBuilder>,
        _i2.GreservationFragment_listData_listingData,
        _i4.GviewListingShortFragment_listingData,
        _i3.GlistingDataFragment {
  GgetReservationData_getReservation_results_listData_listingData._();

  factory GgetReservationData_getReservation_results_listData_listingData(
          [void Function(
                  GgetReservationData_getReservation_results_listData_listingDataBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_listingData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_listingDataBuilder
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
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  @override
  int? get cancellationPolicy;
  @override
  double? get securityDeposit;
  @override
  GgetReservationData_getReservation_results_listData_listingData_cancellation?
      get cancellation;
  static Serializer<
          GgetReservationData_getReservation_results_listData_listingData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_listingData
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_listingData_cancellation
    implements
        Built<
            GgetReservationData_getReservation_results_listData_listingData_cancellation,
            GgetReservationData_getReservation_results_listData_listingData_cancellationBuilder>,
        _i2.GreservationFragment_listData_listingData_cancellation,
        _i3.GlistingDataFragment_cancellation,
        _i3.GcancellationDataFragment {
  GgetReservationData_getReservation_results_listData_listingData_cancellation._();

  factory GgetReservationData_getReservation_results_listData_listingData_cancellation(
          [void Function(
                  GgetReservationData_getReservation_results_listData_listingData_cancellationBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_listingData_cancellation;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_listingData_cancellationBuilder
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
          GgetReservationData_getReservation_results_listData_listingData_cancellation>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_listingData_cancellation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_listingData_cancellation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_listingData_cancellation
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_user
    implements
        Built<GgetReservationData_getReservation_results_listData_user,
            GgetReservationData_getReservation_results_listData_userBuilder>,
        _i2.GreservationFragment_listData_user,
        _i5.GlistingUserFragment {
  GgetReservationData_getReservation_results_listData_user._();

  factory GgetReservationData_getReservation_results_listData_user(
      [void Function(
              GgetReservationData_getReservation_results_listData_userBuilder b)
          updates]) = _$GgetReservationData_getReservation_results_listData_user;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_userBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GgetReservationData_getReservation_results_listData_user_profile? get profile;
  @override
  GgetReservationData_getReservation_results_listData_user_verification?
      get verification;
  @override
  int? get userBanStatus;
  static Serializer<GgetReservationData_getReservation_results_listData_user>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_listData_user.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_listData_user_profile
    implements
        Built<GgetReservationData_getReservation_results_listData_user_profile,
            GgetReservationData_getReservation_results_listData_user_profileBuilder>,
        _i2.GreservationFragment_listData_user_profile,
        _i5.GlistingUserFragment_profile {
  GgetReservationData_getReservation_results_listData_user_profile._();

  factory GgetReservationData_getReservation_results_listData_user_profile(
          [void Function(
                  GgetReservationData_getReservation_results_listData_user_profileBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_user_profile;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_user_profileBuilder
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
          GgetReservationData_getReservation_results_listData_user_profile>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_user_profile
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_user_profile?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_user_profile
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_listData_user_verification
    implements
        Built<
            GgetReservationData_getReservation_results_listData_user_verification,
            GgetReservationData_getReservation_results_listData_user_verificationBuilder>,
        _i2.GreservationFragment_listData_user_verification,
        _i5.GlistingUserFragment_verification,
        _i6.GuserVerifiedInfoFragment {
  GgetReservationData_getReservation_results_listData_user_verification._();

  factory GgetReservationData_getReservation_results_listData_user_verification(
          [void Function(
                  GgetReservationData_getReservation_results_listData_user_verificationBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_listData_user_verification;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_listData_user_verificationBuilder
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
          GgetReservationData_getReservation_results_listData_user_verification>
      get serializer =>
          _$ggetReservationDataGetReservationResultsListDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_listData_user_verification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_listData_user_verification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_listData_user_verification
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_hostTransaction
    implements
        Built<GgetReservationData_getReservation_results_hostTransaction,
            GgetReservationData_getReservation_results_hostTransactionBuilder>,
        _i2.GreservationFragment_hostTransaction {
  GgetReservationData_getReservation_results_hostTransaction._();

  factory GgetReservationData_getReservation_results_hostTransaction(
      [void Function(
              GgetReservationData_getReservation_results_hostTransactionBuilder
                  b)
          updates]) = _$GgetReservationData_getReservation_results_hostTransaction;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_hostTransactionBuilder
              b) =>
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
  static Serializer<GgetReservationData_getReservation_results_hostTransaction>
      get serializer =>
          _$ggetReservationDataGetReservationResultsHostTransactionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_hostTransaction.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_hostTransaction? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_hostTransaction.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_hostData
    implements
        Built<GgetReservationData_getReservation_results_hostData,
            GgetReservationData_getReservation_results_hostDataBuilder>,
        _i2.GreservationFragment_hostData,
        _i7.GuserProfileFragment {
  GgetReservationData_getReservation_results_hostData._();

  factory GgetReservationData_getReservation_results_hostData(
      [void Function(
              GgetReservationData_getReservation_results_hostDataBuilder b)
          updates]) = _$GgetReservationData_getReservation_results_hostData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_hostDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetReservationData_getReservation_results_hostData_userData? get userData;
  @override
  GgetReservationData_getReservation_results_hostData_userVerification?
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
  static Serializer<GgetReservationData_getReservation_results_hostData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsHostDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_hostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_hostData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_hostData.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_hostData_userData
    implements
        Built<GgetReservationData_getReservation_results_hostData_userData,
            GgetReservationData_getReservation_results_hostData_userDataBuilder>,
        _i2.GreservationFragment_hostData_userData,
        _i7.GuserProfileFragment_userData {
  GgetReservationData_getReservation_results_hostData_userData._();

  factory GgetReservationData_getReservation_results_hostData_userData(
          [void Function(
                  GgetReservationData_getReservation_results_hostData_userDataBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_hostData_userData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_hostData_userDataBuilder
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
  static Serializer<
          GgetReservationData_getReservation_results_hostData_userData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsHostDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_hostData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_hostData_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_hostData_userData.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_hostData_userVerification
    implements
        Built<
            GgetReservationData_getReservation_results_hostData_userVerification,
            GgetReservationData_getReservation_results_hostData_userVerificationBuilder>,
        _i2.GreservationFragment_hostData_userVerification,
        _i7.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetReservationData_getReservation_results_hostData_userVerification._();

  factory GgetReservationData_getReservation_results_hostData_userVerification(
          [void Function(
                  GgetReservationData_getReservation_results_hostData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_hostData_userVerification;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_hostData_userVerificationBuilder
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
          GgetReservationData_getReservation_results_hostData_userVerification>
      get serializer =>
          _$ggetReservationDataGetReservationResultsHostDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_hostData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_hostData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_hostData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_guestData
    implements
        Built<GgetReservationData_getReservation_results_guestData,
            GgetReservationData_getReservation_results_guestDataBuilder>,
        _i2.GreservationFragment_guestData,
        _i7.GuserProfileFragment {
  GgetReservationData_getReservation_results_guestData._();

  factory GgetReservationData_getReservation_results_guestData(
      [void Function(
              GgetReservationData_getReservation_results_guestDataBuilder b)
          updates]) = _$GgetReservationData_getReservation_results_guestData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_guestDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetReservationData_getReservation_results_guestData_userData? get userData;
  @override
  GgetReservationData_getReservation_results_guestData_userVerification?
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
  static Serializer<GgetReservationData_getReservation_results_guestData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsGuestDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_guestData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_guestData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_guestData.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_guestData_userData
    implements
        Built<GgetReservationData_getReservation_results_guestData_userData,
            GgetReservationData_getReservation_results_guestData_userDataBuilder>,
        _i2.GreservationFragment_guestData_userData,
        _i7.GuserProfileFragment_userData {
  GgetReservationData_getReservation_results_guestData_userData._();

  factory GgetReservationData_getReservation_results_guestData_userData(
          [void Function(
                  GgetReservationData_getReservation_results_guestData_userDataBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_guestData_userData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_guestData_userDataBuilder
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
  static Serializer<
          GgetReservationData_getReservation_results_guestData_userData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsGuestDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_guestData_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_guestData_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_guestData_userData
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_guestData_userVerification
    implements
        Built<
            GgetReservationData_getReservation_results_guestData_userVerification,
            GgetReservationData_getReservation_results_guestData_userVerificationBuilder>,
        _i2.GreservationFragment_guestData_userVerification,
        _i7.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetReservationData_getReservation_results_guestData_userVerification._();

  factory GgetReservationData_getReservation_results_guestData_userVerification(
          [void Function(
                  GgetReservationData_getReservation_results_guestData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_guestData_userVerification;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_guestData_userVerificationBuilder
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
          GgetReservationData_getReservation_results_guestData_userVerification>
      get serializer =>
          _$ggetReservationDataGetReservationResultsGuestDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_guestData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_guestData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_guestData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_threadData
    implements
        Built<GgetReservationData_getReservation_results_threadData,
            GgetReservationData_getReservation_results_threadDataBuilder>,
        _i2.GreservationFragment_threadData,
        _i8.GthreadItemsFragment {
  GgetReservationData_getReservation_results_threadData._();

  factory GgetReservationData_getReservation_results_threadData(
      [void Function(
              GgetReservationData_getReservation_results_threadDataBuilder b)
          updates]) = _$GgetReservationData_getReservation_results_threadData;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_threadDataBuilder b) =>
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
  static Serializer<GgetReservationData_getReservation_results_threadData>
      get serializer =>
          _$ggetReservationDataGetReservationResultsThreadDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_threadData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_threadData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_threadData.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_cancellationDetails
    implements
        Built<GgetReservationData_getReservation_results_cancellationDetails,
            GgetReservationData_getReservation_results_cancellationDetailsBuilder>,
        _i2.GreservationFragment_cancellationDetails {
  GgetReservationData_getReservation_results_cancellationDetails._();

  factory GgetReservationData_getReservation_results_cancellationDetails(
          [void Function(
                  GgetReservationData_getReservation_results_cancellationDetailsBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_cancellationDetails;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_cancellationDetailsBuilder
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
  static Serializer<
          GgetReservationData_getReservation_results_cancellationDetails>
      get serializer =>
          _$ggetReservationDataGetReservationResultsCancellationDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_cancellationDetails
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_cancellationDetails?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_cancellationDetails
                .serializer,
            json,
          );
}

abstract class GgetReservationData_getReservation_results_completedTotal
    implements
        Built<GgetReservationData_getReservation_results_completedTotal,
            GgetReservationData_getReservation_results_completedTotalBuilder>,
        _i2.GreservationFragment_completedTotal {
  GgetReservationData_getReservation_results_completedTotal._();

  factory GgetReservationData_getReservation_results_completedTotal(
      [void Function(
              GgetReservationData_getReservation_results_completedTotalBuilder
                  b)
          updates]) = _$GgetReservationData_getReservation_results_completedTotal;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_completedTotalBuilder b) =>
      b..G__typename = 'CompletedTotal';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  static Serializer<GgetReservationData_getReservation_results_completedTotal>
      get serializer =>
          _$ggetReservationDataGetReservationResultsCompletedTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_completedTotal.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_completedTotal? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReservationData_getReservation_results_completedTotal.serializer,
        json,
      );
}

abstract class GgetReservationData_getReservation_results_futureTransactionTotal
    implements
        Built<GgetReservationData_getReservation_results_futureTransactionTotal,
            GgetReservationData_getReservation_results_futureTransactionTotalBuilder>,
        _i2.GreservationFragment_futureTransactionTotal {
  GgetReservationData_getReservation_results_futureTransactionTotal._();

  factory GgetReservationData_getReservation_results_futureTransactionTotal(
          [void Function(
                  GgetReservationData_getReservation_results_futureTransactionTotalBuilder
                      b)
              updates]) =
      _$GgetReservationData_getReservation_results_futureTransactionTotal;

  static void _initializeBuilder(
          GgetReservationData_getReservation_results_futureTransactionTotalBuilder
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
          GgetReservationData_getReservation_results_futureTransactionTotal>
      get serializer =>
          _$ggetReservationDataGetReservationResultsFutureTransactionTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReservationData_getReservation_results_futureTransactionTotal
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReservationData_getReservation_results_futureTransactionTotal?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetReservationData_getReservation_results_futureTransactionTotal
                .serializer,
            json,
          );
}
