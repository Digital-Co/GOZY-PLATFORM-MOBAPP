// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i5;
import 'package:gozy/graphql/__generated__/thread_item_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i4;

part 'all_thread_fragment.data.gql.g.dart';

abstract class GallThreadsFragment {
  String get G__typename;
  int? get id;
  int? get threadItemsCount;
  int? get hostUnreadCount;
  int? get listId;
  int? get userBanStatus;
  String? get host;
  String? get guest;
  String? get createdAt;
  String? get status;
  bool? get isRead;
  GallThreadsFragment_listData? get listData;
  GallThreadsFragment_threadItem? get threadItem;
  GallThreadsFragment_guestProfile? get guestProfile;
  GallThreadsFragment_hostProfile? get hostProfile;
  Map<String, dynamic> toJson();
}

abstract class GallThreadsFragment_listData
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
  BuiltList<GallThreadsFragment_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GallThreadsFragment_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GallThreadsFragment_listData_dynamicListTitle? get dynamicListTitle;
  @override
  GallThreadsFragment_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GallThreadsFragment_listData_dynamicCarType? get dynamicCarType;
  @override
  GallThreadsFragment_listData_dynamicmake? get dynamicmake;
  @override
  GallThreadsFragment_listData_dynamicModel? get dynamicModel;
  @override
  GallThreadsFragment_listData_dynamicYear? get dynamicYear;
  @override
  GallThreadsFragment_listData_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GallThreadsFragment_listData_carRules?>? get carRules;
  @override
  BuiltList<GallThreadsFragment_listData_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GallThreadsFragment_listData_listPhotos?>? get listPhotos;
  @override
  GallThreadsFragment_listData_listingData? get listingData;
  @override
  Map<String, dynamic> toJson();
}

abstract class GallThreadsFragment_listData_dynamicListingTitle
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

abstract class GallThreadsFragment_listData_dynamicListingDescription
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

abstract class GallThreadsFragment_listData_dynamicListTitle
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

abstract class GallThreadsFragment_listData_dynamicListDescription
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

abstract class GallThreadsFragment_listData_dynamicCarType
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

abstract class GallThreadsFragment_listData_dynamicmake
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

abstract class GallThreadsFragment_listData_dynamicModel
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

abstract class GallThreadsFragment_listData_dynamicYear
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

abstract class GallThreadsFragment_listData_dynamicOdometer
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

abstract class GallThreadsFragment_listData_carRules
    implements _i1.GviewListingShortFragment_carRules {
  @override
  String get G__typename;
  @override
  GallThreadsFragment_listData_carRules_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GallThreadsFragment_listData_carRules_dynamicItemName
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

abstract class GallThreadsFragment_listData_carFeatures
    implements _i1.GviewListingShortFragment_carFeatures {
  @override
  String get G__typename;
  @override
  GallThreadsFragment_listData_carFeatures_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GallThreadsFragment_listData_carFeatures_dynamicItemName
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

abstract class GallThreadsFragment_listData_listPhotos
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

abstract class GallThreadsFragment_listData_listingData
    implements _i1.GviewListingShortFragment_listingData {
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
  Map<String, dynamic> toJson();
}

abstract class GallThreadsFragment_threadItem
    implements _i2.GthreadItemsFragment {
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

abstract class GallThreadsFragment_guestProfile
    implements _i3.GuserProfileFragment {
  @override
  String get G__typename;
  @override
  String? get id;
  @override
  GallThreadsFragment_guestProfile_userData? get userData;
  @override
  GallThreadsFragment_guestProfile_userVerification? get userVerification;
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

abstract class GallThreadsFragment_guestProfile_userData
    implements _i3.GuserProfileFragment_userData {
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

abstract class GallThreadsFragment_guestProfile_userVerification
    implements
        _i3.GuserProfileFragment_userVerification,
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

abstract class GallThreadsFragment_hostProfile
    implements _i3.GuserProfileFragment {
  @override
  String get G__typename;
  @override
  String? get id;
  @override
  GallThreadsFragment_hostProfile_userData? get userData;
  @override
  GallThreadsFragment_hostProfile_userVerification? get userVerification;
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

abstract class GallThreadsFragment_hostProfile_userData
    implements _i3.GuserProfileFragment_userData {
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

abstract class GallThreadsFragment_hostProfile_userVerification
    implements
        _i3.GuserProfileFragment_userVerification,
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

abstract class GallThreadsFragmentData
    implements
        Built<GallThreadsFragmentData, GallThreadsFragmentDataBuilder>,
        GallThreadsFragment {
  GallThreadsFragmentData._();

  factory GallThreadsFragmentData(
          [void Function(GallThreadsFragmentDataBuilder b) updates]) =
      _$GallThreadsFragmentData;

  static void _initializeBuilder(GallThreadsFragmentDataBuilder b) =>
      b..G__typename = 'Threads';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadItemsCount;
  @override
  int? get hostUnreadCount;
  @override
  int? get listId;
  @override
  int? get userBanStatus;
  @override
  String? get host;
  @override
  String? get guest;
  @override
  String? get createdAt;
  @override
  String? get status;
  @override
  bool? get isRead;
  @override
  GallThreadsFragmentData_listData? get listData;
  @override
  GallThreadsFragmentData_threadItem? get threadItem;
  @override
  GallThreadsFragmentData_guestProfile? get guestProfile;
  @override
  GallThreadsFragmentData_hostProfile? get hostProfile;
  static Serializer<GallThreadsFragmentData> get serializer =>
      _$gallThreadsFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData
    implements
        Built<GallThreadsFragmentData_listData,
            GallThreadsFragmentData_listDataBuilder>,
        GallThreadsFragment_listData,
        _i1.GviewListingShortFragment {
  GallThreadsFragmentData_listData._();

  factory GallThreadsFragmentData_listData(
          [void Function(GallThreadsFragmentData_listDataBuilder b) updates]) =
      _$GallThreadsFragmentData_listData;

  static void _initializeBuilder(GallThreadsFragmentData_listDataBuilder b) =>
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
  BuiltList<GallThreadsFragmentData_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GallThreadsFragmentData_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GallThreadsFragmentData_listData_dynamicListTitle? get dynamicListTitle;
  @override
  GallThreadsFragmentData_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GallThreadsFragmentData_listData_dynamicCarType? get dynamicCarType;
  @override
  GallThreadsFragmentData_listData_dynamicmake? get dynamicmake;
  @override
  GallThreadsFragmentData_listData_dynamicModel? get dynamicModel;
  @override
  GallThreadsFragmentData_listData_dynamicYear? get dynamicYear;
  @override
  GallThreadsFragmentData_listData_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GallThreadsFragmentData_listData_carRules?>? get carRules;
  @override
  BuiltList<GallThreadsFragmentData_listData_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GallThreadsFragmentData_listData_listPhotos?>? get listPhotos;
  @override
  GallThreadsFragmentData_listData_listingData? get listingData;
  static Serializer<GallThreadsFragmentData_listData> get serializer =>
      _$gallThreadsFragmentDataListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicListingTitle
    implements
        Built<GallThreadsFragmentData_listData_dynamicListingTitle,
            GallThreadsFragmentData_listData_dynamicListingTitleBuilder>,
        GallThreadsFragment_listData_dynamicListingTitle,
        _i1.GviewListingShortFragment_dynamicListingTitle {
  GallThreadsFragmentData_listData_dynamicListingTitle._();

  factory GallThreadsFragmentData_listData_dynamicListingTitle(
      [void Function(
              GallThreadsFragmentData_listData_dynamicListingTitleBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicListingTitleBuilder b) =>
      b..G__typename = 'DynamicListTitleType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  static Serializer<GallThreadsFragmentData_listData_dynamicListingTitle>
      get serializer =>
          _$gallThreadsFragmentDataListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicListingTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicListingTitle? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicListingTitle.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicListingDescription
    implements
        Built<GallThreadsFragmentData_listData_dynamicListingDescription,
            GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder>,
        GallThreadsFragment_listData_dynamicListingDescription,
        _i1.GviewListingShortFragment_dynamicListingDescription {
  GallThreadsFragmentData_listData_dynamicListingDescription._();

  factory GallThreadsFragmentData_listData_dynamicListingDescription(
      [void Function(
              GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder
                  b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicListingDescriptionBuilder
              b) =>
      b..G__typename = 'DynamicListDescriptionType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  static Serializer<GallThreadsFragmentData_listData_dynamicListingDescription>
      get serializer =>
          _$gallThreadsFragmentDataListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicListingDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicListingDescription? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicListingDescription.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicListTitle
    implements
        Built<GallThreadsFragmentData_listData_dynamicListTitle,
            GallThreadsFragmentData_listData_dynamicListTitleBuilder>,
        GallThreadsFragment_listData_dynamicListTitle,
        _i1.GviewListingShortFragment_dynamicListTitle {
  GallThreadsFragmentData_listData_dynamicListTitle._();

  factory GallThreadsFragmentData_listData_dynamicListTitle(
      [void Function(GallThreadsFragmentData_listData_dynamicListTitleBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicListTitle;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicListTitleBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicListTitle>
      get serializer =>
          _$gallThreadsFragmentDataListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicListTitle.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicListDescription
    implements
        Built<GallThreadsFragmentData_listData_dynamicListDescription,
            GallThreadsFragmentData_listData_dynamicListDescriptionBuilder>,
        GallThreadsFragment_listData_dynamicListDescription,
        _i1.GviewListingShortFragment_dynamicListDescription {
  GallThreadsFragmentData_listData_dynamicListDescription._();

  factory GallThreadsFragmentData_listData_dynamicListDescription(
      [void Function(
              GallThreadsFragmentData_listData_dynamicListDescriptionBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicListDescription;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicListDescriptionBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicListDescription>
      get serializer =>
          _$gallThreadsFragmentDataListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicListDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicListDescription? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicListDescription.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicCarType
    implements
        Built<GallThreadsFragmentData_listData_dynamicCarType,
            GallThreadsFragmentData_listData_dynamicCarTypeBuilder>,
        GallThreadsFragment_listData_dynamicCarType,
        _i1.GviewListingShortFragment_dynamicCarType {
  GallThreadsFragmentData_listData_dynamicCarType._();

  factory GallThreadsFragmentData_listData_dynamicCarType(
      [void Function(GallThreadsFragmentData_listData_dynamicCarTypeBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicCarType;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicCarTypeBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicCarType>
      get serializer =>
          _$gallThreadsFragmentDataListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicCarType.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicmake
    implements
        Built<GallThreadsFragmentData_listData_dynamicmake,
            GallThreadsFragmentData_listData_dynamicmakeBuilder>,
        GallThreadsFragment_listData_dynamicmake,
        _i1.GviewListingShortFragment_dynamicmake {
  GallThreadsFragmentData_listData_dynamicmake._();

  factory GallThreadsFragmentData_listData_dynamicmake(
      [void Function(GallThreadsFragmentData_listData_dynamicmakeBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicmake;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicmakeBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicmake>
      get serializer => _$gallThreadsFragmentDataListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicmake.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicModel
    implements
        Built<GallThreadsFragmentData_listData_dynamicModel,
            GallThreadsFragmentData_listData_dynamicModelBuilder>,
        GallThreadsFragment_listData_dynamicModel,
        _i1.GviewListingShortFragment_dynamicModel {
  GallThreadsFragmentData_listData_dynamicModel._();

  factory GallThreadsFragmentData_listData_dynamicModel(
      [void Function(GallThreadsFragmentData_listData_dynamicModelBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicModel;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicModelBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicModel>
      get serializer => _$gallThreadsFragmentDataListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicModel.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicYear
    implements
        Built<GallThreadsFragmentData_listData_dynamicYear,
            GallThreadsFragmentData_listData_dynamicYearBuilder>,
        GallThreadsFragment_listData_dynamicYear,
        _i1.GviewListingShortFragment_dynamicYear {
  GallThreadsFragmentData_listData_dynamicYear._();

  factory GallThreadsFragmentData_listData_dynamicYear(
      [void Function(GallThreadsFragmentData_listData_dynamicYearBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicYear;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicYearBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicYear>
      get serializer => _$gallThreadsFragmentDataListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicYear.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_dynamicOdometer
    implements
        Built<GallThreadsFragmentData_listData_dynamicOdometer,
            GallThreadsFragmentData_listData_dynamicOdometerBuilder>,
        GallThreadsFragment_listData_dynamicOdometer,
        _i1.GviewListingShortFragment_dynamicOdometer {
  GallThreadsFragmentData_listData_dynamicOdometer._();

  factory GallThreadsFragmentData_listData_dynamicOdometer(
      [void Function(GallThreadsFragmentData_listData_dynamicOdometerBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_dynamicOdometer;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_dynamicOdometerBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_dynamicOdometer>
      get serializer =>
          _$gallThreadsFragmentDataListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_dynamicOdometer.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_carRules
    implements
        Built<GallThreadsFragmentData_listData_carRules,
            GallThreadsFragmentData_listData_carRulesBuilder>,
        GallThreadsFragment_listData_carRules,
        _i1.GviewListingShortFragment_carRules {
  GallThreadsFragmentData_listData_carRules._();

  factory GallThreadsFragmentData_listData_carRules(
      [void Function(GallThreadsFragmentData_listData_carRulesBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_carRules;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GallThreadsFragmentData_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GallThreadsFragmentData_listData_carRules> get serializer =>
      _$gallThreadsFragmentDataListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_carRules.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_carRules_dynamicItemName
    implements
        Built<GallThreadsFragmentData_listData_carRules_dynamicItemName,
            GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder>,
        GallThreadsFragment_listData_carRules_dynamicItemName,
        _i1.GviewListingShortFragment_carRules_dynamicItemName {
  GallThreadsFragmentData_listData_carRules_dynamicItemName._();

  factory GallThreadsFragmentData_listData_carRules_dynamicItemName(
      [void Function(
              GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder
                  b)
          updates]) = _$GallThreadsFragmentData_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_carRules_dynamicItemNameBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_carRules_dynamicItemName>
      get serializer =>
          _$gallThreadsFragmentDataListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_carRules_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_carRules_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_carRules_dynamicItemName.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_carFeatures
    implements
        Built<GallThreadsFragmentData_listData_carFeatures,
            GallThreadsFragmentData_listData_carFeaturesBuilder>,
        GallThreadsFragment_listData_carFeatures,
        _i1.GviewListingShortFragment_carFeatures {
  GallThreadsFragmentData_listData_carFeatures._();

  factory GallThreadsFragmentData_listData_carFeatures(
      [void Function(GallThreadsFragmentData_listData_carFeaturesBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_carFeatures;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GallThreadsFragmentData_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GallThreadsFragmentData_listData_carFeatures>
      get serializer => _$gallThreadsFragmentDataListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_carFeatures.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_carFeatures_dynamicItemName
    implements
        Built<GallThreadsFragmentData_listData_carFeatures_dynamicItemName,
            GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder>,
        GallThreadsFragment_listData_carFeatures_dynamicItemName,
        _i1.GviewListingShortFragment_carFeatures_dynamicItemName {
  GallThreadsFragmentData_listData_carFeatures_dynamicItemName._();

  factory GallThreadsFragmentData_listData_carFeatures_dynamicItemName(
          [void Function(
                  GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GallThreadsFragmentData_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_carFeatures_dynamicItemNameBuilder
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
          GallThreadsFragmentData_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$gallThreadsFragmentDataListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_carFeatures_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_carFeatures_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_carFeatures_dynamicItemName.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_listPhotos
    implements
        Built<GallThreadsFragmentData_listData_listPhotos,
            GallThreadsFragmentData_listData_listPhotosBuilder>,
        GallThreadsFragment_listData_listPhotos,
        _i1.GviewListingShortFragment_listPhotos {
  GallThreadsFragmentData_listData_listPhotos._();

  factory GallThreadsFragmentData_listData_listPhotos(
      [void Function(GallThreadsFragmentData_listData_listPhotosBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_listPhotos;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GallThreadsFragmentData_listData_listPhotos>
      get serializer => _$gallThreadsFragmentDataListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_listPhotos.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_listData_listingData
    implements
        Built<GallThreadsFragmentData_listData_listingData,
            GallThreadsFragmentData_listData_listingDataBuilder>,
        GallThreadsFragment_listData_listingData,
        _i1.GviewListingShortFragment_listingData {
  GallThreadsFragmentData_listData_listingData._();

  factory GallThreadsFragmentData_listData_listingData(
      [void Function(GallThreadsFragmentData_listData_listingDataBuilder b)
          updates]) = _$GallThreadsFragmentData_listData_listingData;

  static void _initializeBuilder(
          GallThreadsFragmentData_listData_listingDataBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_listData_listingData>
      get serializer => _$gallThreadsFragmentDataListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_listData_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_listData_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_listData_listingData.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_threadItem
    implements
        Built<GallThreadsFragmentData_threadItem,
            GallThreadsFragmentData_threadItemBuilder>,
        GallThreadsFragment_threadItem,
        _i2.GthreadItemsFragment {
  GallThreadsFragmentData_threadItem._();

  factory GallThreadsFragmentData_threadItem(
      [void Function(GallThreadsFragmentData_threadItemBuilder b)
          updates]) = _$GallThreadsFragmentData_threadItem;

  static void _initializeBuilder(GallThreadsFragmentData_threadItemBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_threadItem> get serializer =>
      _$gallThreadsFragmentDataThreadItemSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_threadItem.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_threadItem? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_threadItem.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_guestProfile
    implements
        Built<GallThreadsFragmentData_guestProfile,
            GallThreadsFragmentData_guestProfileBuilder>,
        GallThreadsFragment_guestProfile,
        _i3.GuserProfileFragment {
  GallThreadsFragmentData_guestProfile._();

  factory GallThreadsFragmentData_guestProfile(
      [void Function(GallThreadsFragmentData_guestProfileBuilder b)
          updates]) = _$GallThreadsFragmentData_guestProfile;

  static void _initializeBuilder(
          GallThreadsFragmentData_guestProfileBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GallThreadsFragmentData_guestProfile_userData? get userData;
  @override
  GallThreadsFragmentData_guestProfile_userVerification? get userVerification;
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
  static Serializer<GallThreadsFragmentData_guestProfile> get serializer =>
      _$gallThreadsFragmentDataGuestProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_guestProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_guestProfile? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_guestProfile.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_guestProfile_userData
    implements
        Built<GallThreadsFragmentData_guestProfile_userData,
            GallThreadsFragmentData_guestProfile_userDataBuilder>,
        GallThreadsFragment_guestProfile_userData,
        _i3.GuserProfileFragment_userData {
  GallThreadsFragmentData_guestProfile_userData._();

  factory GallThreadsFragmentData_guestProfile_userData(
      [void Function(GallThreadsFragmentData_guestProfile_userDataBuilder b)
          updates]) = _$GallThreadsFragmentData_guestProfile_userData;

  static void _initializeBuilder(
          GallThreadsFragmentData_guestProfile_userDataBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_guestProfile_userData>
      get serializer => _$gallThreadsFragmentDataGuestProfileUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_guestProfile_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_guestProfile_userData? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_guestProfile_userData.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_guestProfile_userVerification
    implements
        Built<GallThreadsFragmentData_guestProfile_userVerification,
            GallThreadsFragmentData_guestProfile_userVerificationBuilder>,
        GallThreadsFragment_guestProfile_userVerification,
        _i3.GuserProfileFragment_userVerification,
        _i4.GuserVerifiedInfoFragment {
  GallThreadsFragmentData_guestProfile_userVerification._();

  factory GallThreadsFragmentData_guestProfile_userVerification(
      [void Function(
              GallThreadsFragmentData_guestProfile_userVerificationBuilder b)
          updates]) = _$GallThreadsFragmentData_guestProfile_userVerification;

  static void _initializeBuilder(
          GallThreadsFragmentData_guestProfile_userVerificationBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_guestProfile_userVerification>
      get serializer =>
          _$gallThreadsFragmentDataGuestProfileUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_guestProfile_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_guestProfile_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_guestProfile_userVerification.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_hostProfile
    implements
        Built<GallThreadsFragmentData_hostProfile,
            GallThreadsFragmentData_hostProfileBuilder>,
        GallThreadsFragment_hostProfile,
        _i3.GuserProfileFragment {
  GallThreadsFragmentData_hostProfile._();

  factory GallThreadsFragmentData_hostProfile(
      [void Function(GallThreadsFragmentData_hostProfileBuilder b)
          updates]) = _$GallThreadsFragmentData_hostProfile;

  static void _initializeBuilder(
          GallThreadsFragmentData_hostProfileBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GallThreadsFragmentData_hostProfile_userData? get userData;
  @override
  GallThreadsFragmentData_hostProfile_userVerification? get userVerification;
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
  static Serializer<GallThreadsFragmentData_hostProfile> get serializer =>
      _$gallThreadsFragmentDataHostProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_hostProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_hostProfile? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_hostProfile.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_hostProfile_userData
    implements
        Built<GallThreadsFragmentData_hostProfile_userData,
            GallThreadsFragmentData_hostProfile_userDataBuilder>,
        GallThreadsFragment_hostProfile_userData,
        _i3.GuserProfileFragment_userData {
  GallThreadsFragmentData_hostProfile_userData._();

  factory GallThreadsFragmentData_hostProfile_userData(
      [void Function(GallThreadsFragmentData_hostProfile_userDataBuilder b)
          updates]) = _$GallThreadsFragmentData_hostProfile_userData;

  static void _initializeBuilder(
          GallThreadsFragmentData_hostProfile_userDataBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_hostProfile_userData>
      get serializer => _$gallThreadsFragmentDataHostProfileUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_hostProfile_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_hostProfile_userData? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_hostProfile_userData.serializer,
        json,
      );
}

abstract class GallThreadsFragmentData_hostProfile_userVerification
    implements
        Built<GallThreadsFragmentData_hostProfile_userVerification,
            GallThreadsFragmentData_hostProfile_userVerificationBuilder>,
        GallThreadsFragment_hostProfile_userVerification,
        _i3.GuserProfileFragment_userVerification,
        _i4.GuserVerifiedInfoFragment {
  GallThreadsFragmentData_hostProfile_userVerification._();

  factory GallThreadsFragmentData_hostProfile_userVerification(
      [void Function(
              GallThreadsFragmentData_hostProfile_userVerificationBuilder b)
          updates]) = _$GallThreadsFragmentData_hostProfile_userVerification;

  static void _initializeBuilder(
          GallThreadsFragmentData_hostProfile_userVerificationBuilder b) =>
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
  static Serializer<GallThreadsFragmentData_hostProfile_userVerification>
      get serializer =>
          _$gallThreadsFragmentDataHostProfileUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GallThreadsFragmentData_hostProfile_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallThreadsFragmentData_hostProfile_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GallThreadsFragmentData_hostProfile_userVerification.serializer,
        json,
      );
}
