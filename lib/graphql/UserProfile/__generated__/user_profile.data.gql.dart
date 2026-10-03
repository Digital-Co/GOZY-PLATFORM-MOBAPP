// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/reviews_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i3;

part 'user_profile.data.gql.g.dart';

abstract class GuserUpdateData
    implements Built<GuserUpdateData, GuserUpdateDataBuilder> {
  GuserUpdateData._();

  factory GuserUpdateData([void Function(GuserUpdateDataBuilder b) updates]) =
      _$GuserUpdateData;

  static void _initializeBuilder(GuserUpdateDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserUpdateData_userUpdate? get userUpdate;
  static Serializer<GuserUpdateData> get serializer =>
      _$guserUpdateDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserUpdateData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserUpdateData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserUpdateData.serializer,
        json,
      );
}

abstract class GuserUpdateData_userUpdate
    implements
        Built<GuserUpdateData_userUpdate, GuserUpdateData_userUpdateBuilder> {
  GuserUpdateData_userUpdate._();

  factory GuserUpdateData_userUpdate(
          [void Function(GuserUpdateData_userUpdateBuilder b) updates]) =
      _$GuserUpdateData_userUpdate;

  static void _initializeBuilder(GuserUpdateData_userUpdateBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get userToken;
  String? get errorMessage;
  static Serializer<GuserUpdateData_userUpdate> get serializer =>
      _$guserUpdateDataUserUpdateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserUpdateData_userUpdate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserUpdateData_userUpdate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserUpdateData_userUpdate.serializer,
        json,
      );
}

abstract class GSendConfirmEmailData
    implements Built<GSendConfirmEmailData, GSendConfirmEmailDataBuilder> {
  GSendConfirmEmailData._();

  factory GSendConfirmEmailData(
          [void Function(GSendConfirmEmailDataBuilder b) updates]) =
      _$GSendConfirmEmailData;

  static void _initializeBuilder(GSendConfirmEmailDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSendConfirmEmailData_ResendConfirmEmail? get ResendConfirmEmail;
  static Serializer<GSendConfirmEmailData> get serializer =>
      _$gSendConfirmEmailDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendConfirmEmailData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendConfirmEmailData.serializer,
        json,
      );
}

abstract class GSendConfirmEmailData_ResendConfirmEmail
    implements
        Built<GSendConfirmEmailData_ResendConfirmEmail,
            GSendConfirmEmailData_ResendConfirmEmailBuilder> {
  GSendConfirmEmailData_ResendConfirmEmail._();

  factory GSendConfirmEmailData_ResendConfirmEmail(
      [void Function(GSendConfirmEmailData_ResendConfirmEmailBuilder b)
          updates]) = _$GSendConfirmEmailData_ResendConfirmEmail;

  static void _initializeBuilder(
          GSendConfirmEmailData_ResendConfirmEmailBuilder b) =>
      b..G__typename = 'AllEmailToken';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSendConfirmEmailData_ResendConfirmEmail_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GSendConfirmEmailData_ResendConfirmEmail> get serializer =>
      _$gSendConfirmEmailDataResendConfirmEmailSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendConfirmEmailData_ResendConfirmEmail.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailData_ResendConfirmEmail? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendConfirmEmailData_ResendConfirmEmail.serializer,
        json,
      );
}

abstract class GSendConfirmEmailData_ResendConfirmEmail_results
    implements
        Built<GSendConfirmEmailData_ResendConfirmEmail_results,
            GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder> {
  GSendConfirmEmailData_ResendConfirmEmail_results._();

  factory GSendConfirmEmailData_ResendConfirmEmail_results(
      [void Function(GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder b)
          updates]) = _$GSendConfirmEmailData_ResendConfirmEmail_results;

  static void _initializeBuilder(
          GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder b) =>
      b..G__typename = 'emailToken';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get userId;
  GSendConfirmEmailData_ResendConfirmEmail_results_profile? get profile;
  String? get token;
  String? get email;
  String? get status;
  static Serializer<GSendConfirmEmailData_ResendConfirmEmail_results>
      get serializer =>
          _$gSendConfirmEmailDataResendConfirmEmailResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendConfirmEmailData_ResendConfirmEmail_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailData_ResendConfirmEmail_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendConfirmEmailData_ResendConfirmEmail_results.serializer,
        json,
      );
}

abstract class GSendConfirmEmailData_ResendConfirmEmail_results_profile
    implements
        Built<GSendConfirmEmailData_ResendConfirmEmail_results_profile,
            GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder> {
  GSendConfirmEmailData_ResendConfirmEmail_results_profile._();

  factory GSendConfirmEmailData_ResendConfirmEmail_results_profile(
      [void Function(
              GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder b)
          updates]) = _$GSendConfirmEmailData_ResendConfirmEmail_results_profile;

  static void _initializeBuilder(
          GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder b) =>
      b..G__typename = 'userProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData?
      get userData;
  static Serializer<GSendConfirmEmailData_ResendConfirmEmail_results_profile>
      get serializer =>
          _$gSendConfirmEmailDataResendConfirmEmailResultsProfileSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendConfirmEmailData_ResendConfirmEmail_results_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailData_ResendConfirmEmail_results_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSendConfirmEmailData_ResendConfirmEmail_results_profile.serializer,
        json,
      );
}

abstract class GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
    implements
        Built<GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData,
            GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder> {
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData._();

  factory GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData(
          [void Function(
                  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder
                      b)
              updates]) =
      _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData;

  static void _initializeBuilder(
          GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder
              b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get email;
  static Serializer<
          GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData>
      get serializer =>
          _$gSendConfirmEmailDataResendConfirmEmailResultsProfileUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
                .serializer,
            json,
          );
}

abstract class GCodeVerificationData
    implements Built<GCodeVerificationData, GCodeVerificationDataBuilder> {
  GCodeVerificationData._();

  factory GCodeVerificationData(
          [void Function(GCodeVerificationDataBuilder b) updates]) =
      _$GCodeVerificationData;

  static void _initializeBuilder(GCodeVerificationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCodeVerificationData_EmailVerification? get EmailVerification;
  static Serializer<GCodeVerificationData> get serializer =>
      _$gCodeVerificationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCodeVerificationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCodeVerificationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCodeVerificationData.serializer,
        json,
      );
}

abstract class GCodeVerificationData_EmailVerification
    implements
        Built<GCodeVerificationData_EmailVerification,
            GCodeVerificationData_EmailVerificationBuilder> {
  GCodeVerificationData_EmailVerification._();

  factory GCodeVerificationData_EmailVerification(
      [void Function(GCodeVerificationData_EmailVerificationBuilder b)
          updates]) = _$GCodeVerificationData_EmailVerification;

  static void _initializeBuilder(
          GCodeVerificationData_EmailVerificationBuilder b) =>
      b..G__typename = 'AllEmailToken';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GCodeVerificationData_EmailVerification> get serializer =>
      _$gCodeVerificationDataEmailVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCodeVerificationData_EmailVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCodeVerificationData_EmailVerification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCodeVerificationData_EmailVerification.serializer,
        json,
      );
}

abstract class GSocialLoginVerifyData
    implements Built<GSocialLoginVerifyData, GSocialLoginVerifyDataBuilder> {
  GSocialLoginVerifyData._();

  factory GSocialLoginVerifyData(
          [void Function(GSocialLoginVerifyDataBuilder b) updates]) =
      _$GSocialLoginVerifyData;

  static void _initializeBuilder(GSocialLoginVerifyDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialLoginVerifyData_SocialVerification? get SocialVerification;
  static Serializer<GSocialLoginVerifyData> get serializer =>
      _$gSocialLoginVerifyDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginVerifyData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginVerifyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginVerifyData.serializer,
        json,
      );
}

abstract class GSocialLoginVerifyData_SocialVerification
    implements
        Built<GSocialLoginVerifyData_SocialVerification,
            GSocialLoginVerifyData_SocialVerificationBuilder> {
  GSocialLoginVerifyData_SocialVerification._();

  factory GSocialLoginVerifyData_SocialVerification(
      [void Function(GSocialLoginVerifyData_SocialVerificationBuilder b)
          updates]) = _$GSocialLoginVerifyData_SocialVerification;

  static void _initializeBuilder(
          GSocialLoginVerifyData_SocialVerificationBuilder b) =>
      b..G__typename = 'SocialVerification';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GSocialLoginVerifyData_SocialVerification> get serializer =>
      _$gSocialLoginVerifyDataSocialVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginVerifyData_SocialVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginVerifyData_SocialVerification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginVerifyData_SocialVerification.serializer,
        json,
      );
}

abstract class GshowUserProfileData
    implements Built<GshowUserProfileData, GshowUserProfileDataBuilder> {
  GshowUserProfileData._();

  factory GshowUserProfileData(
          [void Function(GshowUserProfileDataBuilder b) updates]) =
      _$GshowUserProfileData;

  static void _initializeBuilder(GshowUserProfileDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GshowUserProfileData_showUserProfile? get showUserProfile;
  static Serializer<GshowUserProfileData> get serializer =>
      _$gshowUserProfileDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GshowUserProfileData.serializer,
        json,
      );
}

abstract class GshowUserProfileData_showUserProfile
    implements
        Built<GshowUserProfileData_showUserProfile,
            GshowUserProfileData_showUserProfileBuilder> {
  GshowUserProfileData_showUserProfile._();

  factory GshowUserProfileData_showUserProfile(
      [void Function(GshowUserProfileData_showUserProfileBuilder b)
          updates]) = _$GshowUserProfileData_showUserProfile;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfileBuilder b) =>
      b..G__typename = 'ShowUserProfileCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GshowUserProfileData_showUserProfile_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GshowUserProfileData_showUserProfile> get serializer =>
      _$gshowUserProfileDataShowUserProfileSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GshowUserProfileData_showUserProfile.serializer,
        json,
      );
}

abstract class GshowUserProfileData_showUserProfile_results
    implements
        Built<GshowUserProfileData_showUserProfile_results,
            GshowUserProfileData_showUserProfile_resultsBuilder> {
  GshowUserProfileData_showUserProfile_results._();

  factory GshowUserProfileData_showUserProfile_results(
      [void Function(GshowUserProfileData_showUserProfile_resultsBuilder b)
          updates]) = _$GshowUserProfileData_showUserProfile_results;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_resultsBuilder b) =>
      b..G__typename = 'ShowUserProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GshowUserProfileData_showUserProfile_results_userData? get userData;
  BuiltList<GshowUserProfileData_showUserProfile_results_reviews?>? get reviews;
  static Serializer<GshowUserProfileData_showUserProfile_results>
      get serializer => _$gshowUserProfileDataShowUserProfileResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GshowUserProfileData_showUserProfile_results.serializer,
        json,
      );
}

abstract class GshowUserProfileData_showUserProfile_results_userData
    implements
        Built<GshowUserProfileData_showUserProfile_results_userData,
            GshowUserProfileData_showUserProfile_results_userDataBuilder>,
        _i2.GuserProfileFragment {
  GshowUserProfileData_showUserProfile_results_userData._();

  factory GshowUserProfileData_showUserProfile_results_userData(
      [void Function(
              GshowUserProfileData_showUserProfile_results_userDataBuilder b)
          updates]) = _$GshowUserProfileData_showUserProfile_results_userData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_userDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GshowUserProfileData_showUserProfile_results_userData_userData? get userData;
  @override
  GshowUserProfileData_showUserProfile_results_userData_userVerification?
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
  static Serializer<GshowUserProfileData_showUserProfile_results_userData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GshowUserProfileData_showUserProfile_results_userData.serializer,
        json,
      );
}

abstract class GshowUserProfileData_showUserProfile_results_userData_userData
    implements
        Built<GshowUserProfileData_showUserProfile_results_userData_userData,
            GshowUserProfileData_showUserProfile_results_userData_userDataBuilder>,
        _i2.GuserProfileFragment_userData {
  GshowUserProfileData_showUserProfile_results_userData_userData._();

  factory GshowUserProfileData_showUserProfile_results_userData_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_userData_userData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_userData_userDataBuilder
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
          GshowUserProfileData_showUserProfile_results_userData_userData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsUserDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_userData_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_userData_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_userData_userData
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_userData_userVerification
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_userData_userVerification,
            GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder>,
        _i2.GuserProfileFragment_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GshowUserProfileData_showUserProfile_results_userData_userVerification._();

  factory GshowUserProfileData_showUserProfile_results_userData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_userData_userVerification;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder
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
          GshowUserProfileData_showUserProfile_results_userData_userVerification>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews
    implements
        Built<GshowUserProfileData_showUserProfile_results_reviews,
            GshowUserProfileData_showUserProfile_results_reviewsBuilder>,
        _i4.GreviewsFragment {
  GshowUserProfileData_showUserProfile_results_reviews._();

  factory GshowUserProfileData_showUserProfile_results_reviews(
      [void Function(
              GshowUserProfileData_showUserProfile_results_reviewsBuilder b)
          updates]) = _$GshowUserProfileData_showUserProfile_results_reviews;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviewsBuilder b) =>
      b..G__typename = 'Reviews';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get reservationId;
  @override
  int? get listId;
  @override
  String? get reviewContent;
  @override
  double? get rating;
  @override
  String? get privateFeedback;
  @override
  int? get yourReviewsCount;
  @override
  int? get reviewsCount;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get status;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData? get userData;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_listData? get listData;
  @override
  bool? get isAdmin;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_response? get response;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData?
      get authorData;
  static Serializer<GshowUserProfileData_showUserProfile_results_reviews>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GshowUserProfileData_showUserProfile_results_reviews.serializer,
        json,
      );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_userData
    implements
        Built<GshowUserProfileData_showUserProfile_results_reviews_userData,
            GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder>,
        _i4.GreviewsFragment_userData {
  GshowUserProfileData_showUserProfile_results_reviews_userData._();

  factory GshowUserProfileData_showUserProfile_results_reviews_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_userData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userId;
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
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get createdAt;
  @override
  int? get reviewsCount;
  @override
  String? get dateOfBirth;
  @override
  String? get info;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification?
      get userVerification;
  static Serializer<
          GshowUserProfileData_showUserProfile_results_reviews_userData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_userData
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder>,
        _i4.GreviewsFragment_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification._();

  factory GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder
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
          GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_listData
    implements
        Built<GshowUserProfileData_showUserProfile_results_reviews_listData,
            GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder>,
        _i4.GreviewsFragment_listData {
  GshowUserProfileData_showUserProfile_results_reviews_listData._();

  factory GshowUserProfileData_showUserProfile_results_reviews_listData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_listData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder
              b) =>
      b..G__typename = 'AdminListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  static Serializer<
          GshowUserProfileData_showUserProfile_results_reviews_listData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_listData
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_response
    implements
        Built<GshowUserProfileData_showUserProfile_results_reviews_response,
            GshowUserProfileData_showUserProfile_results_reviews_responseBuilder>,
        _i4.GreviewsFragment_response {
  GshowUserProfileData_showUserProfile_results_reviews_response._();

  factory GshowUserProfileData_showUserProfile_results_reviews_response(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_response;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_responseBuilder
              b) =>
      b..G__typename = 'ReviewResponse';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get authorId;
  @override
  bool? get automated;
  @override
  int? get id;
  @override
  bool? get isAdmin;
  @override
  double? get rating;
  @override
  String? get createdAt;
  @override
  int? get listId;
  @override
  int? get parentId;
  @override
  String? get privateFeedback;
  @override
  String? get reviewContent;
  @override
  int? get reservationId;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData?
      get userData;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData?
      get authorData;
  static Serializer<
          GshowUserProfileData_showUserProfile_results_reviews_response>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_response
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_response?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_response
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_response_userData
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_reviews_response_userData,
            GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder>,
        _i4.GreviewsFragment_response_userData {
  GshowUserProfileData_showUserProfile_results_reviews_response_userData._();

  factory GshowUserProfileData_showUserProfile_results_reviews_response_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_response_userData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userId;
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
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get createdAt;
  @override
  int? get reviewsCount;
  @override
  String? get dateOfBirth;
  @override
  String? get info;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification?
      get userVerification;
  static Serializer<
          GshowUserProfileData_showUserProfile_results_reviews_response_userData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsResponseUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_response_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_response_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_response_userData
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder>,
        _i4.GreviewsFragment_response_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification._();

  factory GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder
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
          GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsResponseUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_response_authorData
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData,
            GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder>,
        _i4.GreviewsFragment_response_authorData {
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData._();

  factory GshowUserProfileData_showUserProfile_results_reviews_response_authorData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userId;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get createdAt;
  @override
  int? get reviewsCount;
  @override
  String? get info;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification?
      get userVerification;
  static Serializer<
          GshowUserProfileData_showUserProfile_results_reviews_response_authorData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsResponseAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_response_authorData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_response_authorData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder>,
        _i4.GreviewsFragment_response_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification._();

  factory GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder
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
          GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsResponseAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_authorData
    implements
        Built<GshowUserProfileData_showUserProfile_results_reviews_authorData,
            GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder>,
        _i4.GreviewsFragment_authorData {
  GshowUserProfileData_showUserProfile_results_reviews_authorData._();

  factory GshowUserProfileData_showUserProfile_results_reviews_authorData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_authorData;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userId;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get createdAt;
  @override
  int? get reviewsCount;
  @override
  String? get info;
  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification?
      get userVerification;
  static Serializer<
          GshowUserProfileData_showUserProfile_results_reviews_authorData>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_authorData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_authorData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_authorData
                .serializer,
            json,
          );
}

abstract class GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
    implements
        Built<
            GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder>,
        _i4.GreviewsFragment_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification._();

  factory GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification;

  static void _initializeBuilder(
          GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder
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
          GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification>
      get serializer =>
          _$gshowUserProfileDataShowUserProfileResultsReviewsAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GuserAccountData
    implements Built<GuserAccountData, GuserAccountDataBuilder> {
  GuserAccountData._();

  factory GuserAccountData([void Function(GuserAccountDataBuilder b) updates]) =
      _$GuserAccountData;

  static void _initializeBuilder(GuserAccountDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserAccountData_userAccount? get userAccount;
  static Serializer<GuserAccountData> get serializer =>
      _$guserAccountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserAccountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserAccountData.serializer,
        json,
      );
}

abstract class GuserAccountData_userAccount
    implements
        Built<GuserAccountData_userAccount,
            GuserAccountData_userAccountBuilder> {
  GuserAccountData_userAccount._();

  factory GuserAccountData_userAccount(
          [void Function(GuserAccountData_userAccountBuilder b) updates]) =
      _$GuserAccountData_userAccount;

  static void _initializeBuilder(GuserAccountData_userAccountBuilder b) =>
      b..G__typename = 'WholeAccount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserAccountData_userAccount_result? get result;
  int? get status;
  String? get errorMessage;
  static Serializer<GuserAccountData_userAccount> get serializer =>
      _$guserAccountDataUserAccountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserAccountData_userAccount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountData_userAccount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserAccountData_userAccount.serializer,
        json,
      );
}

abstract class GuserAccountData_userAccount_result
    implements
        Built<GuserAccountData_userAccount_result,
            GuserAccountData_userAccount_resultBuilder> {
  GuserAccountData_userAccount_result._();

  factory GuserAccountData_userAccount_result(
      [void Function(GuserAccountData_userAccount_resultBuilder b)
          updates]) = _$GuserAccountData_userAccount_result;

  static void _initializeBuilder(
          GuserAccountData_userAccount_resultBuilder b) =>
      b..G__typename = 'UserAccount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get displayName;
  String? get gender;
  String? get dateOfBirth;
  String? get iosDOB;
  String? get email;
  int? get userBanStatus;
  String? get phoneNumber;
  String? get preferredLanguage;
  String? get preferredLanguageName;
  String? get preferredCurrency;
  String? get location;
  String? get info;
  String? get createdAt;
  String? get userDeletedAt;
  int? get status;
  String? get picture;
  GuserAccountData_userAccount_result_verification? get verification;
  GuserAccountData_userAccount_result_userData? get userData;
  int? get country;
  int? get verificationCode;
  String? get countryCode;
  String? get errorMessage;
  String? get loginUserType;
  bool? get isAddedList;
  String? get phoneNumberStatus;
  bool? get renterServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus;
  static Serializer<GuserAccountData_userAccount_result> get serializer =>
      _$guserAccountDataUserAccountResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserAccountData_userAccount_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountData_userAccount_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserAccountData_userAccount_result.serializer,
        json,
      );
}

abstract class GuserAccountData_userAccount_result_verification
    implements
        Built<GuserAccountData_userAccount_result_verification,
            GuserAccountData_userAccount_result_verificationBuilder> {
  GuserAccountData_userAccount_result_verification._();

  factory GuserAccountData_userAccount_result_verification(
      [void Function(GuserAccountData_userAccount_result_verificationBuilder b)
          updates]) = _$GuserAccountData_userAccount_result_verification;

  static void _initializeBuilder(
          GuserAccountData_userAccount_result_verificationBuilder b) =>
      b..G__typename = 'UserVerifiedInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String get userId;
  bool? get isEmailConfirmed;
  bool? get isFacebookConnected;
  bool? get isGoogleConnected;
  bool? get isIdVerification;
  bool? get isPhoneVerified;
  String? get status;
  static Serializer<GuserAccountData_userAccount_result_verification>
      get serializer =>
          _$guserAccountDataUserAccountResultVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserAccountData_userAccount_result_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountData_userAccount_result_verification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserAccountData_userAccount_result_verification.serializer,
        json,
      );
}

abstract class GuserAccountData_userAccount_result_userData
    implements
        Built<GuserAccountData_userAccount_result_userData,
            GuserAccountData_userAccount_result_userDataBuilder> {
  GuserAccountData_userAccount_result_userData._();

  factory GuserAccountData_userAccount_result_userData(
      [void Function(GuserAccountData_userAccount_result_userDataBuilder b)
          updates]) = _$GuserAccountData_userAccount_result_userData;

  static void _initializeBuilder(
          GuserAccountData_userAccount_result_userDataBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userToken;
  String? get forgotLink;
  String? get type;
  int? get createListingCount;
  int? get overallRating;
  static Serializer<GuserAccountData_userAccount_result_userData>
      get serializer => _$guserAccountDataUserAccountResultUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserAccountData_userAccount_result_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserAccountData_userAccount_result_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserAccountData_userAccount_result_userData.serializer,
        json,
      );
}
