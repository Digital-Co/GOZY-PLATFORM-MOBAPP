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

part 'transaction_history.data.gql.g.dart';

abstract class GgetTransactionHistoryData
    implements
        Built<GgetTransactionHistoryData, GgetTransactionHistoryDataBuilder> {
  GgetTransactionHistoryData._();

  factory GgetTransactionHistoryData(
          [void Function(GgetTransactionHistoryDataBuilder b) updates]) =
      _$GgetTransactionHistoryData;

  static void _initializeBuilder(GgetTransactionHistoryDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetTransactionHistoryData_getTransactionHistory? get getTransactionHistory;
  static Serializer<GgetTransactionHistoryData> get serializer =>
      _$ggetTransactionHistoryDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionHistoryData.serializer,
        json,
      );
}

abstract class GgetTransactionHistoryData_getTransactionHistory
    implements
        Built<GgetTransactionHistoryData_getTransactionHistory,
            GgetTransactionHistoryData_getTransactionHistoryBuilder> {
  GgetTransactionHistoryData_getTransactionHistory._();

  factory GgetTransactionHistoryData_getTransactionHistory(
      [void Function(GgetTransactionHistoryData_getTransactionHistoryBuilder b)
          updates]) = _$GgetTransactionHistoryData_getTransactionHistory;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistoryBuilder b) =>
      b..G__typename = 'AllReservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  int? get totalCount;
  double? get paidOut;
  double? get pendingPayouts;
  BuiltList<GgetTransactionHistoryData_getTransactionHistory_reservationData?>?
      get reservationData;
  BuiltList<GgetTransactionHistoryData_getTransactionHistory_totalData?>?
      get totalData;
  static Serializer<GgetTransactionHistoryData_getTransactionHistory>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionHistoryData_getTransactionHistory.serializer,
        json,
      );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData
    implements
        Built<GgetTransactionHistoryData_getTransactionHistory_reservationData,
            GgetTransactionHistoryData_getTransactionHistory_reservationDataBuilder>,
        _i2.GreservationFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationDataBuilder
              b) =>
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
  GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation?
      get cancellation;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData?
      get listData;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction?
      get hostTransaction;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData?
      get hostData;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData?
      get guestData;
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
  GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData?
      get threadData;
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
  GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails?
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
  GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal?
      get completedTotal;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal?
      get futureTransactionTotal;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationBuilder>,
        _i2.GreservationFragment_cancellation,
        _i3.GcancellationDataFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellation
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listDataBuilder>,
        _i2.GreservationFragment_listData,
        _i4.GviewListingShortFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listDataBuilder
              b) =>
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake?
      get dynamicmake;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel?
      get dynamicModel;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear?
      get dynamicYear;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules?>?
      get carRules;
  @override
  BuiltList<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos?>?
      get listPhotos;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData?
      get listingData;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user?
      get user;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitleBuilder>,
        _i2.GreservationFragment_listData_dynamicListingTitle,
        _i4.GviewListingShortFragment_dynamicListingTitle {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitleBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescriptionBuilder>,
        _i2.GreservationFragment_listData_dynamicListingDescription,
        _i4.GviewListingShortFragment_dynamicListingDescription {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescriptionBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitleBuilder>,
        _i2.GreservationFragment_listData_dynamicListTitle,
        _i4.GviewListingShortFragment_dynamicListTitle {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitleBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescriptionBuilder>,
        _i2.GreservationFragment_listData_dynamicListDescription,
        _i4.GviewListingShortFragment_dynamicListDescription {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescriptionBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarTypeBuilder>,
        _i2.GreservationFragment_listData_dynamicCarType,
        _i4.GviewListingShortFragment_dynamicCarType {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarTypeBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmakeBuilder>,
        _i2.GreservationFragment_listData_dynamicmake,
        _i4.GviewListingShortFragment_dynamicmake {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmakeBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicmake
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModelBuilder>,
        _i2.GreservationFragment_listData_dynamicModel,
        _i4.GviewListingShortFragment_dynamicModel {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModelBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYearBuilder>,
        _i2.GreservationFragment_listData_dynamicYear,
        _i4.GviewListingShortFragment_dynamicYear {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYearBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicYear
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometerBuilder>,
        _i2.GreservationFragment_listData_dynamicOdometer,
        _i4.GviewListingShortFragment_dynamicOdometer {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometerBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRulesBuilder>,
        _i2.GreservationFragment_listData_carRules,
        _i4.GviewListingShortFragment_carRules {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRulesBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemNameBuilder>,
        _i2.GreservationFragment_listData_carRules_dynamicItemName,
        _i4.GviewListingShortFragment_carRules_dynamicItemName {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemNameBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeaturesBuilder>,
        _i2.GreservationFragment_listData_carFeatures,
        _i4.GviewListingShortFragment_carFeatures {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemNameBuilder>,
        _i2.GreservationFragment_listData_carFeatures_dynamicItemName,
        _i4.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemNameBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotosBuilder>,
        _i2.GreservationFragment_listData_listPhotos,
        _i4.GviewListingShortFragment_listPhotos {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotosBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listPhotos
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingDataBuilder>,
        _i2.GreservationFragment_listData_listingData,
        _i4.GviewListingShortFragment_listingData,
        _i3.GlistingDataFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingDataBuilder
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
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation?
      get cancellation;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellationBuilder>,
        _i2.GreservationFragment_listData_listingData_cancellation,
        _i3.GlistingDataFragment_cancellation,
        _i3.GcancellationDataFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellationBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellationBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_listingData_cancellation
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_userBuilder>,
        _i2.GreservationFragment_listData_user,
        _i5.GlistingUserFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_userBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_userBuilder
              b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile?
      get profile;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification?
      get verification;
  @override
  int? get userBanStatus;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profileBuilder>,
        _i2.GreservationFragment_listData_user_profile,
        _i5.GlistingUserFragment_profile {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profileBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profileBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_profile
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verificationBuilder>,
        _i2.GreservationFragment_listData_user_verification,
        _i5.GlistingUserFragment_verification,
        _i6.GuserVerifiedInfoFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verificationBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verificationBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataListDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_listData_user_verification
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransactionBuilder>,
        _i2.GreservationFragment_hostTransaction {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransactionBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransactionBuilder
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
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataHostTransactionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostTransaction
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostDataBuilder>,
        _i2.GreservationFragment_hostData,
        _i7.GuserProfileFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData?
      get userData;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification?
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
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataHostDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userDataBuilder>,
        _i2.GreservationFragment_hostData_userData,
        _i7.GuserProfileFragment_userData {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userDataBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataHostDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerificationBuilder>,
        _i2.GreservationFragment_hostData_userVerification,
        _i7.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerificationBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataHostDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_hostData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestDataBuilder>,
        _i2.GreservationFragment_guestData,
        _i7.GuserProfileFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_guestDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData?
      get userData;
  @override
  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification?
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
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataGuestDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userDataBuilder>,
        _i2.GreservationFragment_guestData_userData,
        _i7.GuserProfileFragment_userData {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userDataBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataGuestDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerificationBuilder>,
        _i2.GreservationFragment_guestData_userVerification,
        _i7.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerificationBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataGuestDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_guestData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_threadDataBuilder>,
        _i2.GreservationFragment_threadData,
        _i8.GthreadItemsFragment {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_threadDataBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_threadDataBuilder
              b) =>
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
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataThreadDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_threadData
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetailsBuilder>,
        _i2.GreservationFragment_cancellationDetails {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetailsBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetailsBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataCancellationDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_cancellationDetails
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotalBuilder>,
        _i2.GreservationFragment_completedTotal {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotalBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotalBuilder
              b) =>
      b..G__typename = 'CompletedTotal';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get totalAmount;
  @override
  String? get currency;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataCompletedTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_completedTotal
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal,
            GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotalBuilder>,
        _i2.GreservationFragment_futureTransactionTotal {
  GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal._();

  factory GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotalBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotalBuilder
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
          GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryReservationDataFutureTransactionTotalSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_reservationData_futureTransactionTotal
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_totalData
    implements
        Built<GgetTransactionHistoryData_getTransactionHistory_totalData,
            GgetTransactionHistoryData_getTransactionHistory_totalDataBuilder> {
  GgetTransactionHistoryData_getTransactionHistory_totalData._();

  factory GgetTransactionHistoryData_getTransactionHistory_totalData(
      [void Function(
              GgetTransactionHistoryData_getTransactionHistory_totalDataBuilder
                  b)
          updates]) = _$GgetTransactionHistoryData_getTransactionHistory_totalData;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_totalDataBuilder
              b) =>
      b..G__typename = 'Reservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get hostServiceFeeType;
  double? get total;
  double? get hostServiceFee;
  String? get currency;
  GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle?
      get dynamicListTitle;
  GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails?
      get cancellationDetails;
  GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction?
      get hostTransaction;
  static Serializer<GgetTransactionHistoryData_getTransactionHistory_totalData>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryTotalDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_totalData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_totalData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionHistoryData_getTransactionHistory_totalData.serializer,
        json,
      );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle,
            GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitleBuilder> {
  GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle._();

  factory GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitleBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get pt;
  String? get it;
  String? get fr;
  String? get es;
  String? get en;
  String? get ar;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryTotalDataDynamicListTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_totalData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails,
            GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetailsBuilder> {
  GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails._();

  factory GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetailsBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetailsBuilder
              b) =>
      b..G__typename = 'CancellationDetails';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get reservationId;
  double? get payoutToHost;
  double? get refundToGuest;
  double? get guestServiceFee;
  double? get hostServiceFee;
  double? get total;
  String? get currency;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryTotalDataCancellationDetailsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_totalData_cancellationDetails
                .serializer,
            json,
          );
}

abstract class GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction
    implements
        Built<
            GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction,
            GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransactionBuilder> {
  GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction._();

  factory GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction(
          [void Function(
                  GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransactionBuilder
                      b)
              updates]) =
      _$GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction;

  static void _initializeBuilder(
          GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransactionBuilder
              b) =>
      b..G__typename = 'TransactionHistory';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  double? get amount;
  String? get currency;
  String? get createdAt;
  static Serializer<
          GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction>
      get serializer =>
          _$ggetTransactionHistoryDataGetTransactionHistoryTotalDataHostTransactionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetTransactionHistoryData_getTransactionHistory_totalData_hostTransaction
                .serializer,
            json,
          );
}
