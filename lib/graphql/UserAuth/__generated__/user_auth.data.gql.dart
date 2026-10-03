// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user_auth.data.gql.g.dart';

abstract class GLoginData implements Built<GLoginData, GLoginDataBuilder> {
  GLoginData._();

  factory GLoginData([void Function(GLoginDataBuilder b) updates]) =
      _$GLoginData;

  static void _initializeBuilder(GLoginDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginData_userLogin? get userLogin;
  static Serializer<GLoginData> get serializer => _$gLoginDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginData.serializer,
        json,
      );
}

abstract class GLoginData_userLogin
    implements Built<GLoginData_userLogin, GLoginData_userLoginBuilder> {
  GLoginData_userLogin._();

  factory GLoginData_userLogin(
          [void Function(GLoginData_userLoginBuilder b) updates]) =
      _$GLoginData_userLogin;

  static void _initializeBuilder(GLoginData_userLoginBuilder b) =>
      b..G__typename = 'UserCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLoginData_userLogin_result? get result;
  int? get status;
  String? get errorMessage;
  static Serializer<GLoginData_userLogin> get serializer =>
      _$gLoginDataUserLoginSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginData_userLogin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginData_userLogin? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginData_userLogin.serializer,
        json,
      );
}

abstract class GLoginData_userLogin_result
    implements
        Built<GLoginData_userLogin_result, GLoginData_userLogin_resultBuilder> {
  GLoginData_userLogin_result._();

  factory GLoginData_userLogin_result(
          [void Function(GLoginData_userLogin_resultBuilder b) updates]) =
      _$GLoginData_userLogin_result;

  static void _initializeBuilder(GLoginData_userLogin_resultBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userId;
  String? get userToken;
  GLoginData_userLogin_result_user? get user;
  int? get createListingCount;
  int? get overallRating;
  static Serializer<GLoginData_userLogin_result> get serializer =>
      _$gLoginDataUserLoginResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginData_userLogin_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginData_userLogin_result? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginData_userLogin_result.serializer,
        json,
      );
}

abstract class GLoginData_userLogin_result_user
    implements
        Built<GLoginData_userLogin_result_user,
            GLoginData_userLogin_result_userBuilder> {
  GLoginData_userLogin_result_user._();

  factory GLoginData_userLogin_result_user(
          [void Function(GLoginData_userLogin_result_userBuilder b) updates]) =
      _$GLoginData_userLogin_result_user;

  static void _initializeBuilder(GLoginData_userLogin_result_userBuilder b) =>
      b..G__typename = 'userEditProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get gender;
  String? get info;
  String? get location;
  String? get dateOfBirth;
  String? get countryCode;
  String? get phoneNumber;
  String? get preferredLanguage;
  String? get preferredCurrency;
  String? get createdAt;
  String? get picture;
  String? get appTheme;
  int? get profileId;
  GLoginData_userLogin_result_user_verification? get verification;
  GLoginData_userLogin_result_user_userData? get userData;
  bool? get renterServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus;
  static Serializer<GLoginData_userLogin_result_user> get serializer =>
      _$gLoginDataUserLoginResultUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginData_userLogin_result_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginData_userLogin_result_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginData_userLogin_result_user.serializer,
        json,
      );
}

abstract class GLoginData_userLogin_result_user_verification
    implements
        Built<GLoginData_userLogin_result_user_verification,
            GLoginData_userLogin_result_user_verificationBuilder> {
  GLoginData_userLogin_result_user_verification._();

  factory GLoginData_userLogin_result_user_verification(
      [void Function(GLoginData_userLogin_result_user_verificationBuilder b)
          updates]) = _$GLoginData_userLogin_result_user_verification;

  static void _initializeBuilder(
          GLoginData_userLogin_result_user_verificationBuilder b) =>
      b..G__typename = 'UserVerifiedInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  bool? get isPhoneVerified;
  bool? get isEmailConfirmed;
  bool? get isIdVerification;
  bool? get isGoogleConnected;
  bool? get isFacebookConnected;
  static Serializer<GLoginData_userLogin_result_user_verification>
      get serializer => _$gLoginDataUserLoginResultUserVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginData_userLogin_result_user_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginData_userLogin_result_user_verification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginData_userLogin_result_user_verification.serializer,
        json,
      );
}

abstract class GLoginData_userLogin_result_user_userData
    implements
        Built<GLoginData_userLogin_result_user_userData,
            GLoginData_userLogin_result_user_userDataBuilder> {
  GLoginData_userLogin_result_user_userData._();

  factory GLoginData_userLogin_result_user_userData(
      [void Function(GLoginData_userLogin_result_user_userDataBuilder b)
          updates]) = _$GLoginData_userLogin_result_user_userData;

  static void _initializeBuilder(
          GLoginData_userLogin_result_user_userDataBuilder b) =>
      b..G__typename = 'UserProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get type;
  static Serializer<GLoginData_userLogin_result_user_userData> get serializer =>
      _$gLoginDataUserLoginResultUserUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginData_userLogin_result_user_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginData_userLogin_result_user_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginData_userLogin_result_user_userData.serializer,
        json,
      );
}

abstract class GSignupData implements Built<GSignupData, GSignupDataBuilder> {
  GSignupData._();

  factory GSignupData([void Function(GSignupDataBuilder b) updates]) =
      _$GSignupData;

  static void _initializeBuilder(GSignupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignupData_createUser? get createUser;
  static Serializer<GSignupData> get serializer => _$gSignupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupData.serializer,
        json,
      );
}

abstract class GSignupData_createUser
    implements Built<GSignupData_createUser, GSignupData_createUserBuilder> {
  GSignupData_createUser._();

  factory GSignupData_createUser(
          [void Function(GSignupData_createUserBuilder b) updates]) =
      _$GSignupData_createUser;

  static void _initializeBuilder(GSignupData_createUserBuilder b) =>
      b..G__typename = 'UserCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignupData_createUser_result? get result;
  int? get status;
  String? get errorMessage;
  static Serializer<GSignupData_createUser> get serializer =>
      _$gSignupDataCreateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupData_createUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupData_createUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupData_createUser.serializer,
        json,
      );
}

abstract class GSignupData_createUser_result
    implements
        Built<GSignupData_createUser_result,
            GSignupData_createUser_resultBuilder> {
  GSignupData_createUser_result._();

  factory GSignupData_createUser_result(
          [void Function(GSignupData_createUser_resultBuilder b) updates]) =
      _$GSignupData_createUser_result;

  static void _initializeBuilder(GSignupData_createUser_resultBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userId;
  String? get userToken;
  GSignupData_createUser_result_user? get user;
  int? get createListingCount;
  int? get overallRating;
  static Serializer<GSignupData_createUser_result> get serializer =>
      _$gSignupDataCreateUserResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupData_createUser_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupData_createUser_result? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupData_createUser_result.serializer,
        json,
      );
}

abstract class GSignupData_createUser_result_user
    implements
        Built<GSignupData_createUser_result_user,
            GSignupData_createUser_result_userBuilder> {
  GSignupData_createUser_result_user._();

  factory GSignupData_createUser_result_user(
      [void Function(GSignupData_createUser_result_userBuilder b)
          updates]) = _$GSignupData_createUser_result_user;

  static void _initializeBuilder(GSignupData_createUser_result_userBuilder b) =>
      b..G__typename = 'userEditProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get gender;
  String? get info;
  String? get location;
  String? get dateOfBirth;
  String? get countryCode;
  String? get phoneNumber;
  String? get preferredLanguage;
  String? get preferredCurrency;
  String? get createdAt;
  String? get picture;
  String? get appTheme;
  int? get profileId;
  GSignupData_createUser_result_user_verification? get verification;
  GSignupData_createUser_result_user_userData? get userData;
  bool? get renterServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus;
  static Serializer<GSignupData_createUser_result_user> get serializer =>
      _$gSignupDataCreateUserResultUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupData_createUser_result_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupData_createUser_result_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupData_createUser_result_user.serializer,
        json,
      );
}

abstract class GSignupData_createUser_result_user_verification
    implements
        Built<GSignupData_createUser_result_user_verification,
            GSignupData_createUser_result_user_verificationBuilder> {
  GSignupData_createUser_result_user_verification._();

  factory GSignupData_createUser_result_user_verification(
      [void Function(GSignupData_createUser_result_user_verificationBuilder b)
          updates]) = _$GSignupData_createUser_result_user_verification;

  static void _initializeBuilder(
          GSignupData_createUser_result_user_verificationBuilder b) =>
      b..G__typename = 'UserVerifiedInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  bool? get isPhoneVerified;
  bool? get isEmailConfirmed;
  bool? get isIdVerification;
  bool? get isGoogleConnected;
  bool? get isFacebookConnected;
  static Serializer<GSignupData_createUser_result_user_verification>
      get serializer => _$gSignupDataCreateUserResultUserVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupData_createUser_result_user_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupData_createUser_result_user_verification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupData_createUser_result_user_verification.serializer,
        json,
      );
}

abstract class GSignupData_createUser_result_user_userData
    implements
        Built<GSignupData_createUser_result_user_userData,
            GSignupData_createUser_result_user_userDataBuilder> {
  GSignupData_createUser_result_user_userData._();

  factory GSignupData_createUser_result_user_userData(
      [void Function(GSignupData_createUser_result_user_userDataBuilder b)
          updates]) = _$GSignupData_createUser_result_user_userData;

  static void _initializeBuilder(
          GSignupData_createUser_result_user_userDataBuilder b) =>
      b..G__typename = 'UserProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get type;
  static Serializer<GSignupData_createUser_result_user_userData>
      get serializer => _$gSignupDataCreateUserResultUserUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignupData_createUser_result_user_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignupData_createUser_result_user_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignupData_createUser_result_user_userData.serializer,
        json,
      );
}

abstract class GSocialLoginData
    implements Built<GSocialLoginData, GSocialLoginDataBuilder> {
  GSocialLoginData._();

  factory GSocialLoginData([void Function(GSocialLoginDataBuilder b) updates]) =
      _$GSocialLoginData;

  static void _initializeBuilder(GSocialLoginDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialLoginData_userSocialLogin? get userSocialLogin;
  static Serializer<GSocialLoginData> get serializer =>
      _$gSocialLoginDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginData.serializer,
        json,
      );
}

abstract class GSocialLoginData_userSocialLogin
    implements
        Built<GSocialLoginData_userSocialLogin,
            GSocialLoginData_userSocialLoginBuilder> {
  GSocialLoginData_userSocialLogin._();

  factory GSocialLoginData_userSocialLogin(
          [void Function(GSocialLoginData_userSocialLoginBuilder b) updates]) =
      _$GSocialLoginData_userSocialLogin;

  static void _initializeBuilder(GSocialLoginData_userSocialLoginBuilder b) =>
      b..G__typename = 'UserCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialLoginData_userSocialLogin_result? get result;
  int? get status;
  String? get errorMessage;
  static Serializer<GSocialLoginData_userSocialLogin> get serializer =>
      _$gSocialLoginDataUserSocialLoginSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginData_userSocialLogin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginData_userSocialLogin? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginData_userSocialLogin.serializer,
        json,
      );
}

abstract class GSocialLoginData_userSocialLogin_result
    implements
        Built<GSocialLoginData_userSocialLogin_result,
            GSocialLoginData_userSocialLogin_resultBuilder> {
  GSocialLoginData_userSocialLogin_result._();

  factory GSocialLoginData_userSocialLogin_result(
      [void Function(GSocialLoginData_userSocialLogin_resultBuilder b)
          updates]) = _$GSocialLoginData_userSocialLogin_result;

  static void _initializeBuilder(
          GSocialLoginData_userSocialLogin_resultBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userId;
  String? get userToken;
  GSocialLoginData_userSocialLogin_result_user? get user;
  int? get createListingCount;
  int? get overallRating;
  static Serializer<GSocialLoginData_userSocialLogin_result> get serializer =>
      _$gSocialLoginDataUserSocialLoginResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginData_userSocialLogin_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginData_userSocialLogin_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginData_userSocialLogin_result.serializer,
        json,
      );
}

abstract class GSocialLoginData_userSocialLogin_result_user
    implements
        Built<GSocialLoginData_userSocialLogin_result_user,
            GSocialLoginData_userSocialLogin_result_userBuilder> {
  GSocialLoginData_userSocialLogin_result_user._();

  factory GSocialLoginData_userSocialLogin_result_user(
      [void Function(GSocialLoginData_userSocialLogin_result_userBuilder b)
          updates]) = _$GSocialLoginData_userSocialLogin_result_user;

  static void _initializeBuilder(
          GSocialLoginData_userSocialLogin_result_userBuilder b) =>
      b..G__typename = 'userEditProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get gender;
  String? get info;
  String? get location;
  String? get dateOfBirth;
  String? get countryCode;
  String? get phoneNumber;
  String? get preferredLanguage;
  String? get preferredCurrency;
  String? get createdAt;
  String? get picture;
  String? get appTheme;
  int? get profileId;
  GSocialLoginData_userSocialLogin_result_user_verification? get verification;
  GSocialLoginData_userSocialLogin_result_user_userData? get userData;
  bool? get renterServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus;
  static Serializer<GSocialLoginData_userSocialLogin_result_user>
      get serializer => _$gSocialLoginDataUserSocialLoginResultUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginData_userSocialLogin_result_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginData_userSocialLogin_result_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginData_userSocialLogin_result_user.serializer,
        json,
      );
}

abstract class GSocialLoginData_userSocialLogin_result_user_verification
    implements
        Built<GSocialLoginData_userSocialLogin_result_user_verification,
            GSocialLoginData_userSocialLogin_result_user_verificationBuilder> {
  GSocialLoginData_userSocialLogin_result_user_verification._();

  factory GSocialLoginData_userSocialLogin_result_user_verification(
      [void Function(
              GSocialLoginData_userSocialLogin_result_user_verificationBuilder
                  b)
          updates]) = _$GSocialLoginData_userSocialLogin_result_user_verification;

  static void _initializeBuilder(
          GSocialLoginData_userSocialLogin_result_user_verificationBuilder b) =>
      b..G__typename = 'UserVerifiedInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  bool? get isPhoneVerified;
  bool? get isEmailConfirmed;
  bool? get isIdVerification;
  bool? get isGoogleConnected;
  bool? get isFacebookConnected;
  static Serializer<GSocialLoginData_userSocialLogin_result_user_verification>
      get serializer =>
          _$gSocialLoginDataUserSocialLoginResultUserVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginData_userSocialLogin_result_user_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginData_userSocialLogin_result_user_verification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginData_userSocialLogin_result_user_verification.serializer,
        json,
      );
}

abstract class GSocialLoginData_userSocialLogin_result_user_userData
    implements
        Built<GSocialLoginData_userSocialLogin_result_user_userData,
            GSocialLoginData_userSocialLogin_result_user_userDataBuilder> {
  GSocialLoginData_userSocialLogin_result_user_userData._();

  factory GSocialLoginData_userSocialLogin_result_user_userData(
      [void Function(
              GSocialLoginData_userSocialLogin_result_user_userDataBuilder b)
          updates]) = _$GSocialLoginData_userSocialLogin_result_user_userData;

  static void _initializeBuilder(
          GSocialLoginData_userSocialLogin_result_user_userDataBuilder b) =>
      b..G__typename = 'UserProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get type;
  static Serializer<GSocialLoginData_userSocialLogin_result_user_userData>
      get serializer =>
          _$gSocialLoginDataUserSocialLoginResultUserUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialLoginData_userSocialLogin_result_user_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialLoginData_userSocialLogin_result_user_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialLoginData_userSocialLogin_result_user_userData.serializer,
        json,
      );
}

abstract class GLogoutData implements Built<GLogoutData, GLogoutDataBuilder> {
  GLogoutData._();

  factory GLogoutData([void Function(GLogoutDataBuilder b) updates]) =
      _$GLogoutData;

  static void _initializeBuilder(GLogoutDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLogoutData_userLogout? get userLogout;
  static Serializer<GLogoutData> get serializer => _$gLogoutDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLogoutData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLogoutData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLogoutData.serializer,
        json,
      );
}

abstract class GLogoutData_userLogout
    implements Built<GLogoutData_userLogout, GLogoutData_userLogoutBuilder> {
  GLogoutData_userLogout._();

  factory GLogoutData_userLogout(
          [void Function(GLogoutData_userLogoutBuilder b) updates]) =
      _$GLogoutData_userLogout;

  static void _initializeBuilder(GLogoutData_userLogoutBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GLogoutData_userLogout> get serializer =>
      _$gLogoutDataUserLogoutSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLogoutData_userLogout.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLogoutData_userLogout? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLogoutData_userLogout.serializer,
        json,
      );
}

abstract class GForgotPasswordData
    implements Built<GForgotPasswordData, GForgotPasswordDataBuilder> {
  GForgotPasswordData._();

  factory GForgotPasswordData(
          [void Function(GForgotPasswordDataBuilder b) updates]) =
      _$GForgotPasswordData;

  static void _initializeBuilder(GForgotPasswordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GForgotPasswordData_userForgotPassword? get userForgotPassword;
  static Serializer<GForgotPasswordData> get serializer =>
      _$gForgotPasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgotPasswordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgotPasswordData.serializer,
        json,
      );
}

abstract class GForgotPasswordData_userForgotPassword
    implements
        Built<GForgotPasswordData_userForgotPassword,
            GForgotPasswordData_userForgotPasswordBuilder> {
  GForgotPasswordData_userForgotPassword._();

  factory GForgotPasswordData_userForgotPassword(
      [void Function(GForgotPasswordData_userForgotPasswordBuilder b)
          updates]) = _$GForgotPasswordData_userForgotPassword;

  static void _initializeBuilder(
          GForgotPasswordData_userForgotPasswordBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get forgotLink;
  String? get errorMessage;
  static Serializer<GForgotPasswordData_userForgotPassword> get serializer =>
      _$gForgotPasswordDataUserForgotPasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgotPasswordData_userForgotPassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordData_userForgotPassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgotPasswordData_userForgotPassword.serializer,
        json,
      );
}

abstract class GForgotPasswordVerificationData
    implements
        Built<GForgotPasswordVerificationData,
            GForgotPasswordVerificationDataBuilder> {
  GForgotPasswordVerificationData._();

  factory GForgotPasswordVerificationData(
          [void Function(GForgotPasswordVerificationDataBuilder b) updates]) =
      _$GForgotPasswordVerificationData;

  static void _initializeBuilder(GForgotPasswordVerificationDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GForgotPasswordVerificationData_verifyForgotPassword?
      get verifyForgotPassword;
  static Serializer<GForgotPasswordVerificationData> get serializer =>
      _$gForgotPasswordVerificationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgotPasswordVerificationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordVerificationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgotPasswordVerificationData.serializer,
        json,
      );
}

abstract class GForgotPasswordVerificationData_verifyForgotPassword
    implements
        Built<GForgotPasswordVerificationData_verifyForgotPassword,
            GForgotPasswordVerificationData_verifyForgotPasswordBuilder> {
  GForgotPasswordVerificationData_verifyForgotPassword._();

  factory GForgotPasswordVerificationData_verifyForgotPassword(
      [void Function(
              GForgotPasswordVerificationData_verifyForgotPasswordBuilder b)
          updates]) = _$GForgotPasswordVerificationData_verifyForgotPassword;

  static void _initializeBuilder(
          GForgotPasswordVerificationData_verifyForgotPasswordBuilder b) =>
      b..G__typename = 'CommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GForgotPasswordVerificationData_verifyForgotPassword>
      get serializer =>
          _$gForgotPasswordVerificationDataVerifyForgotPasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForgotPasswordVerificationData_verifyForgotPassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForgotPasswordVerificationData_verifyForgotPassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForgotPasswordVerificationData_verifyForgotPassword.serializer,
        json,
      );
}

abstract class GResetPasswordData
    implements Built<GResetPasswordData, GResetPasswordDataBuilder> {
  GResetPasswordData._();

  factory GResetPasswordData(
          [void Function(GResetPasswordDataBuilder b) updates]) =
      _$GResetPasswordData;

  static void _initializeBuilder(GResetPasswordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GResetPasswordData_updateForgotPassword? get updateForgotPassword;
  static Serializer<GResetPasswordData> get serializer =>
      _$gResetPasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPasswordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPasswordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPasswordData.serializer,
        json,
      );
}

abstract class GResetPasswordData_updateForgotPassword
    implements
        Built<GResetPasswordData_updateForgotPassword,
            GResetPasswordData_updateForgotPasswordBuilder> {
  GResetPasswordData_updateForgotPassword._();

  factory GResetPasswordData_updateForgotPassword(
      [void Function(GResetPasswordData_updateForgotPasswordBuilder b)
          updates]) = _$GResetPasswordData_updateForgotPassword;

  static void _initializeBuilder(
          GResetPasswordData_updateForgotPasswordBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GResetPasswordData_updateForgotPassword> get serializer =>
      _$gResetPasswordDataUpdateForgotPasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GResetPasswordData_updateForgotPassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static GResetPasswordData_updateForgotPassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GResetPasswordData_updateForgotPassword.serializer,
        json,
      );
}

abstract class GdeleteUserData
    implements Built<GdeleteUserData, GdeleteUserDataBuilder> {
  GdeleteUserData._();

  factory GdeleteUserData([void Function(GdeleteUserDataBuilder b) updates]) =
      _$GdeleteUserData;

  static void _initializeBuilder(GdeleteUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GdeleteUserData_deleteUser? get deleteUser;
  static Serializer<GdeleteUserData> get serializer =>
      _$gdeleteUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserData.serializer,
        json,
      );
}

abstract class GdeleteUserData_deleteUser
    implements
        Built<GdeleteUserData_deleteUser, GdeleteUserData_deleteUserBuilder> {
  GdeleteUserData_deleteUser._();

  factory GdeleteUserData_deleteUser(
          [void Function(GdeleteUserData_deleteUserBuilder b) updates]) =
      _$GdeleteUserData_deleteUser;

  static void _initializeBuilder(GdeleteUserData_deleteUserBuilder b) =>
      b..G__typename = 'UserCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GdeleteUserData_deleteUser> get serializer =>
      _$gdeleteUserDataDeleteUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserData_deleteUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteUserData_deleteUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserData_deleteUser.serializer,
        json,
      );
}
