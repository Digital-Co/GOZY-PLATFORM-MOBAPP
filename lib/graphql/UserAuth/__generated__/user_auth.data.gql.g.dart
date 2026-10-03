// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginData> _$gLoginDataSerializer = new _$GLoginDataSerializer();
Serializer<GLoginData_userLogin> _$gLoginDataUserLoginSerializer =
    new _$GLoginData_userLoginSerializer();
Serializer<GLoginData_userLogin_result> _$gLoginDataUserLoginResultSerializer =
    new _$GLoginData_userLogin_resultSerializer();
Serializer<GLoginData_userLogin_result_user>
    _$gLoginDataUserLoginResultUserSerializer =
    new _$GLoginData_userLogin_result_userSerializer();
Serializer<GLoginData_userLogin_result_user_verification>
    _$gLoginDataUserLoginResultUserVerificationSerializer =
    new _$GLoginData_userLogin_result_user_verificationSerializer();
Serializer<GLoginData_userLogin_result_user_userData>
    _$gLoginDataUserLoginResultUserUserDataSerializer =
    new _$GLoginData_userLogin_result_user_userDataSerializer();
Serializer<GSignupData> _$gSignupDataSerializer = new _$GSignupDataSerializer();
Serializer<GSignupData_createUser> _$gSignupDataCreateUserSerializer =
    new _$GSignupData_createUserSerializer();
Serializer<GSignupData_createUser_result>
    _$gSignupDataCreateUserResultSerializer =
    new _$GSignupData_createUser_resultSerializer();
Serializer<GSignupData_createUser_result_user>
    _$gSignupDataCreateUserResultUserSerializer =
    new _$GSignupData_createUser_result_userSerializer();
Serializer<GSignupData_createUser_result_user_verification>
    _$gSignupDataCreateUserResultUserVerificationSerializer =
    new _$GSignupData_createUser_result_user_verificationSerializer();
Serializer<GSignupData_createUser_result_user_userData>
    _$gSignupDataCreateUserResultUserUserDataSerializer =
    new _$GSignupData_createUser_result_user_userDataSerializer();
Serializer<GSocialLoginData> _$gSocialLoginDataSerializer =
    new _$GSocialLoginDataSerializer();
Serializer<GSocialLoginData_userSocialLogin>
    _$gSocialLoginDataUserSocialLoginSerializer =
    new _$GSocialLoginData_userSocialLoginSerializer();
Serializer<GSocialLoginData_userSocialLogin_result>
    _$gSocialLoginDataUserSocialLoginResultSerializer =
    new _$GSocialLoginData_userSocialLogin_resultSerializer();
Serializer<GSocialLoginData_userSocialLogin_result_user>
    _$gSocialLoginDataUserSocialLoginResultUserSerializer =
    new _$GSocialLoginData_userSocialLogin_result_userSerializer();
Serializer<GSocialLoginData_userSocialLogin_result_user_verification>
    _$gSocialLoginDataUserSocialLoginResultUserVerificationSerializer =
    new _$GSocialLoginData_userSocialLogin_result_user_verificationSerializer();
Serializer<GSocialLoginData_userSocialLogin_result_user_userData>
    _$gSocialLoginDataUserSocialLoginResultUserUserDataSerializer =
    new _$GSocialLoginData_userSocialLogin_result_user_userDataSerializer();
Serializer<GLogoutData> _$gLogoutDataSerializer = new _$GLogoutDataSerializer();
Serializer<GLogoutData_userLogout> _$gLogoutDataUserLogoutSerializer =
    new _$GLogoutData_userLogoutSerializer();
Serializer<GForgotPasswordData> _$gForgotPasswordDataSerializer =
    new _$GForgotPasswordDataSerializer();
Serializer<GForgotPasswordData_userForgotPassword>
    _$gForgotPasswordDataUserForgotPasswordSerializer =
    new _$GForgotPasswordData_userForgotPasswordSerializer();
Serializer<GForgotPasswordVerificationData>
    _$gForgotPasswordVerificationDataSerializer =
    new _$GForgotPasswordVerificationDataSerializer();
Serializer<GForgotPasswordVerificationData_verifyForgotPassword>
    _$gForgotPasswordVerificationDataVerifyForgotPasswordSerializer =
    new _$GForgotPasswordVerificationData_verifyForgotPasswordSerializer();
Serializer<GResetPasswordData> _$gResetPasswordDataSerializer =
    new _$GResetPasswordDataSerializer();
Serializer<GResetPasswordData_updateForgotPassword>
    _$gResetPasswordDataUpdateForgotPasswordSerializer =
    new _$GResetPasswordData_updateForgotPasswordSerializer();
Serializer<GdeleteUserData> _$gdeleteUserDataSerializer =
    new _$GdeleteUserDataSerializer();
Serializer<GdeleteUserData_deleteUser> _$gdeleteUserDataDeleteUserSerializer =
    new _$GdeleteUserData_deleteUserSerializer();

class _$GLoginDataSerializer implements StructuredSerializer<GLoginData> {
  @override
  final Iterable<Type> types = const [GLoginData, _$GLoginData];
  @override
  final String wireName = 'GLoginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userLogin;
    if (value != null) {
      result
        ..add('userLogin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoginData_userLogin)));
    }
    return result;
  }

  @override
  GLoginData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userLogin':
          result.userLogin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLoginData_userLogin))!
              as GLoginData_userLogin);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_userLoginSerializer
    implements StructuredSerializer<GLoginData_userLogin> {
  @override
  final Iterable<Type> types = const [
    GLoginData_userLogin,
    _$GLoginData_userLogin
  ];
  @override
  final String wireName = 'GLoginData_userLogin';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_userLogin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoginData_userLogin_result)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLoginData_userLogin deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_userLoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLoginData_userLogin_result))!
              as GLoginData_userLogin_result);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_userLogin_resultSerializer
    implements StructuredSerializer<GLoginData_userLogin_result> {
  @override
  final Iterable<Type> types = const [
    GLoginData_userLogin_result,
    _$GLoginData_userLogin_result
  ];
  @override
  final String wireName = 'GLoginData_userLogin_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_userLogin_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userToken;
    if (value != null) {
      result
        ..add('userToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLoginData_userLogin_result_user)));
    }
    value = object.createListingCount;
    if (value != null) {
      result
        ..add('createListingCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.overallRating;
    if (value != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GLoginData_userLogin_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_userLogin_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userToken':
          result.userToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLoginData_userLogin_result_user))!
              as GLoginData_userLogin_result_user);
          break;
        case 'createListingCount':
          result.createListingCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'overallRating':
          result.overallRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_userLogin_result_userSerializer
    implements StructuredSerializer<GLoginData_userLogin_result_user> {
  @override
  final Iterable<Type> types = const [
    GLoginData_userLogin_result_user,
    _$GLoginData_userLogin_result_user
  ];
  @override
  final String wireName = 'GLoginData_userLogin_result_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_userLogin_result_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('countryCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredLanguage;
    if (value != null) {
      result
        ..add('preferredLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredCurrency;
    if (value != null) {
      result
        ..add('preferredCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appTheme;
    if (value != null) {
      result
        ..add('appTheme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.verification;
    if (value != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GLoginData_userLogin_result_user_verification)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GLoginData_userLogin_result_user_userData)));
    }
    value = object.renterServicePlanAIFeatureStatus;
    if (value != null) {
      result
        ..add('renterServicePlanAIFeatureStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ownerServicePlanAIFeatureStatus;
    if (value != null) {
      result
        ..add('ownerServicePlanAIFeatureStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GLoginData_userLogin_result_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_userLogin_result_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredLanguage':
          result.preferredLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredCurrency':
          result.preferredCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appTheme':
          result.appTheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GLoginData_userLogin_result_user_verification))!
              as GLoginData_userLogin_result_user_verification);
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GLoginData_userLogin_result_user_userData))!
              as GLoginData_userLogin_result_user_userData);
          break;
        case 'renterServicePlanAIFeatureStatus':
          result.renterServicePlanAIFeatureStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ownerServicePlanAIFeatureStatus':
          result.ownerServicePlanAIFeatureStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_userLogin_result_user_verificationSerializer
    implements
        StructuredSerializer<GLoginData_userLogin_result_user_verification> {
  @override
  final Iterable<Type> types = const [
    GLoginData_userLogin_result_user_verification,
    _$GLoginData_userLogin_result_user_verification
  ];
  @override
  final String wireName = 'GLoginData_userLogin_result_user_verification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GLoginData_userLogin_result_user_verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isIdVerification;
    if (value != null) {
      result
        ..add('isIdVerification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFacebookConnected;
    if (value != null) {
      result
        ..add('isFacebookConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GLoginData_userLogin_result_user_verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_userLogin_result_user_verificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_userLogin_result_user_userDataSerializer
    implements StructuredSerializer<GLoginData_userLogin_result_user_userData> {
  @override
  final Iterable<Type> types = const [
    GLoginData_userLogin_result_user_userData,
    _$GLoginData_userLogin_result_user_userData
  ];
  @override
  final String wireName = 'GLoginData_userLogin_result_user_userData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_userLogin_result_user_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLoginData_userLogin_result_user_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_userLogin_result_user_userDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupDataSerializer implements StructuredSerializer<GSignupData> {
  @override
  final Iterable<Type> types = const [GSignupData, _$GSignupData];
  @override
  final String wireName = 'GSignupData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignupData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createUser;
    if (value != null) {
      result
        ..add('createUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSignupData_createUser)));
    }
    return result;
  }

  @override
  GSignupData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createUser':
          result.createUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignupData_createUser))!
              as GSignupData_createUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupData_createUserSerializer
    implements StructuredSerializer<GSignupData_createUser> {
  @override
  final Iterable<Type> types = const [
    GSignupData_createUser,
    _$GSignupData_createUser
  ];
  @override
  final String wireName = 'GSignupData_createUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignupData_createUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSignupData_createUser_result)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSignupData_createUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupData_createUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignupData_createUser_result))!
              as GSignupData_createUser_result);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupData_createUser_resultSerializer
    implements StructuredSerializer<GSignupData_createUser_result> {
  @override
  final Iterable<Type> types = const [
    GSignupData_createUser_result,
    _$GSignupData_createUser_result
  ];
  @override
  final String wireName = 'GSignupData_createUser_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignupData_createUser_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userToken;
    if (value != null) {
      result
        ..add('userToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSignupData_createUser_result_user)));
    }
    value = object.createListingCount;
    if (value != null) {
      result
        ..add('createListingCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.overallRating;
    if (value != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GSignupData_createUser_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupData_createUser_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userToken':
          result.userToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSignupData_createUser_result_user))!
              as GSignupData_createUser_result_user);
          break;
        case 'createListingCount':
          result.createListingCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'overallRating':
          result.overallRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupData_createUser_result_userSerializer
    implements StructuredSerializer<GSignupData_createUser_result_user> {
  @override
  final Iterable<Type> types = const [
    GSignupData_createUser_result_user,
    _$GSignupData_createUser_result_user
  ];
  @override
  final String wireName = 'GSignupData_createUser_result_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignupData_createUser_result_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('countryCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredLanguage;
    if (value != null) {
      result
        ..add('preferredLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredCurrency;
    if (value != null) {
      result
        ..add('preferredCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appTheme;
    if (value != null) {
      result
        ..add('appTheme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.verification;
    if (value != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSignupData_createUser_result_user_verification)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSignupData_createUser_result_user_userData)));
    }
    value = object.renterServicePlanAIFeatureStatus;
    if (value != null) {
      result
        ..add('renterServicePlanAIFeatureStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ownerServicePlanAIFeatureStatus;
    if (value != null) {
      result
        ..add('ownerServicePlanAIFeatureStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSignupData_createUser_result_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupData_createUser_result_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredLanguage':
          result.preferredLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredCurrency':
          result.preferredCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appTheme':
          result.appTheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSignupData_createUser_result_user_verification))!
              as GSignupData_createUser_result_user_verification);
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSignupData_createUser_result_user_userData))!
              as GSignupData_createUser_result_user_userData);
          break;
        case 'renterServicePlanAIFeatureStatus':
          result.renterServicePlanAIFeatureStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ownerServicePlanAIFeatureStatus':
          result.ownerServicePlanAIFeatureStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupData_createUser_result_user_verificationSerializer
    implements
        StructuredSerializer<GSignupData_createUser_result_user_verification> {
  @override
  final Iterable<Type> types = const [
    GSignupData_createUser_result_user_verification,
    _$GSignupData_createUser_result_user_verification
  ];
  @override
  final String wireName = 'GSignupData_createUser_result_user_verification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSignupData_createUser_result_user_verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isIdVerification;
    if (value != null) {
      result
        ..add('isIdVerification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFacebookConnected;
    if (value != null) {
      result
        ..add('isFacebookConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSignupData_createUser_result_user_verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupData_createUser_result_user_verificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignupData_createUser_result_user_userDataSerializer
    implements
        StructuredSerializer<GSignupData_createUser_result_user_userData> {
  @override
  final Iterable<Type> types = const [
    GSignupData_createUser_result_user_userData,
    _$GSignupData_createUser_result_user_userData
  ];
  @override
  final String wireName = 'GSignupData_createUser_result_user_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSignupData_createUser_result_user_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSignupData_createUser_result_user_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignupData_createUser_result_user_userDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginDataSerializer
    implements StructuredSerializer<GSocialLoginData> {
  @override
  final Iterable<Type> types = const [GSocialLoginData, _$GSocialLoginData];
  @override
  final String wireName = 'GSocialLoginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSocialLoginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userSocialLogin;
    if (value != null) {
      result
        ..add('userSocialLogin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSocialLoginData_userSocialLogin)));
    }
    return result;
  }

  @override
  GSocialLoginData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userSocialLogin':
          result.userSocialLogin.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSocialLoginData_userSocialLogin))!
              as GSocialLoginData_userSocialLogin);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginData_userSocialLoginSerializer
    implements StructuredSerializer<GSocialLoginData_userSocialLogin> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginData_userSocialLogin,
    _$GSocialLoginData_userSocialLogin
  ];
  @override
  final String wireName = 'GSocialLoginData_userSocialLogin';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialLoginData_userSocialLogin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSocialLoginData_userSocialLogin_result)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSocialLoginData_userSocialLogin deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginData_userSocialLoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSocialLoginData_userSocialLogin_result))!
              as GSocialLoginData_userSocialLogin_result);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginData_userSocialLogin_resultSerializer
    implements StructuredSerializer<GSocialLoginData_userSocialLogin_result> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginData_userSocialLogin_result,
    _$GSocialLoginData_userSocialLogin_result
  ];
  @override
  final String wireName = 'GSocialLoginData_userSocialLogin_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialLoginData_userSocialLogin_result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userToken;
    if (value != null) {
      result
        ..add('userToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSocialLoginData_userSocialLogin_result_user)));
    }
    value = object.createListingCount;
    if (value != null) {
      result
        ..add('createListingCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.overallRating;
    if (value != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GSocialLoginData_userSocialLogin_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginData_userSocialLogin_resultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userToken':
          result.userToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSocialLoginData_userSocialLogin_result_user))!
              as GSocialLoginData_userSocialLogin_result_user);
          break;
        case 'createListingCount':
          result.createListingCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'overallRating':
          result.overallRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginData_userSocialLogin_result_userSerializer
    implements
        StructuredSerializer<GSocialLoginData_userSocialLogin_result_user> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginData_userSocialLogin_result_user,
    _$GSocialLoginData_userSocialLogin_result_user
  ];
  @override
  final String wireName = 'GSocialLoginData_userSocialLogin_result_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSocialLoginData_userSocialLogin_result_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('countryCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredLanguage;
    if (value != null) {
      result
        ..add('preferredLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredCurrency;
    if (value != null) {
      result
        ..add('preferredCurrency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appTheme;
    if (value != null) {
      result
        ..add('appTheme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.verification;
    if (value != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSocialLoginData_userSocialLogin_result_user_verification)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSocialLoginData_userSocialLogin_result_user_userData)));
    }
    value = object.renterServicePlanAIFeatureStatus;
    if (value != null) {
      result
        ..add('renterServicePlanAIFeatureStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ownerServicePlanAIFeatureStatus;
    if (value != null) {
      result
        ..add('ownerServicePlanAIFeatureStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSocialLoginData_userSocialLogin_result_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginData_userSocialLogin_result_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredLanguage':
          result.preferredLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredCurrency':
          result.preferredCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appTheme':
          result.appTheme = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSocialLoginData_userSocialLogin_result_user_verification))!
              as GSocialLoginData_userSocialLogin_result_user_verification);
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSocialLoginData_userSocialLogin_result_user_userData))!
              as GSocialLoginData_userSocialLogin_result_user_userData);
          break;
        case 'renterServicePlanAIFeatureStatus':
          result.renterServicePlanAIFeatureStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ownerServicePlanAIFeatureStatus':
          result.ownerServicePlanAIFeatureStatus = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginData_userSocialLogin_result_user_verificationSerializer
    implements
        StructuredSerializer<
            GSocialLoginData_userSocialLogin_result_user_verification> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginData_userSocialLogin_result_user_verification,
    _$GSocialLoginData_userSocialLogin_result_user_verification
  ];
  @override
  final String wireName =
      'GSocialLoginData_userSocialLogin_result_user_verification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSocialLoginData_userSocialLogin_result_user_verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isIdVerification;
    if (value != null) {
      result
        ..add('isIdVerification')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFacebookConnected;
    if (value != null) {
      result
        ..add('isFacebookConnected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSocialLoginData_userSocialLogin_result_user_verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSocialLoginData_userSocialLogin_result_user_verificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginData_userSocialLogin_result_user_userDataSerializer
    implements
        StructuredSerializer<
            GSocialLoginData_userSocialLogin_result_user_userData> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginData_userSocialLogin_result_user_userData,
    _$GSocialLoginData_userSocialLogin_result_user_userData
  ];
  @override
  final String wireName =
      'GSocialLoginData_userSocialLogin_result_user_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSocialLoginData_userSocialLogin_result_user_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSocialLoginData_userSocialLogin_result_user_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSocialLoginData_userSocialLogin_result_user_userDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLogoutDataSerializer implements StructuredSerializer<GLogoutData> {
  @override
  final Iterable<Type> types = const [GLogoutData, _$GLogoutData];
  @override
  final String wireName = 'GLogoutData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLogoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userLogout;
    if (value != null) {
      result
        ..add('userLogout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLogoutData_userLogout)));
    }
    return result;
  }

  @override
  GLogoutData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLogoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userLogout':
          result.userLogout.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLogoutData_userLogout))!
              as GLogoutData_userLogout);
          break;
      }
    }

    return result.build();
  }
}

class _$GLogoutData_userLogoutSerializer
    implements StructuredSerializer<GLogoutData_userLogout> {
  @override
  final Iterable<Type> types = const [
    GLogoutData_userLogout,
    _$GLogoutData_userLogout
  ];
  @override
  final String wireName = 'GLogoutData_userLogout';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLogoutData_userLogout object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLogoutData_userLogout deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLogoutData_userLogoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GForgotPasswordDataSerializer
    implements StructuredSerializer<GForgotPasswordData> {
  @override
  final Iterable<Type> types = const [
    GForgotPasswordData,
    _$GForgotPasswordData
  ];
  @override
  final String wireName = 'GForgotPasswordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForgotPasswordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userForgotPassword;
    if (value != null) {
      result
        ..add('userForgotPassword')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForgotPasswordData_userForgotPassword)));
    }
    return result;
  }

  @override
  GForgotPasswordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForgotPasswordDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userForgotPassword':
          result.userForgotPassword.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GForgotPasswordData_userForgotPassword))!
              as GForgotPasswordData_userForgotPassword);
          break;
      }
    }

    return result.build();
  }
}

class _$GForgotPasswordData_userForgotPasswordSerializer
    implements StructuredSerializer<GForgotPasswordData_userForgotPassword> {
  @override
  final Iterable<Type> types = const [
    GForgotPasswordData_userForgotPassword,
    _$GForgotPasswordData_userForgotPassword
  ];
  @override
  final String wireName = 'GForgotPasswordData_userForgotPassword';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForgotPasswordData_userForgotPassword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.forgotLink;
    if (value != null) {
      result
        ..add('forgotLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GForgotPasswordData_userForgotPassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForgotPasswordData_userForgotPasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'forgotLink':
          result.forgotLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GForgotPasswordVerificationDataSerializer
    implements StructuredSerializer<GForgotPasswordVerificationData> {
  @override
  final Iterable<Type> types = const [
    GForgotPasswordVerificationData,
    _$GForgotPasswordVerificationData
  ];
  @override
  final String wireName = 'GForgotPasswordVerificationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForgotPasswordVerificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.verifyForgotPassword;
    if (value != null) {
      result
        ..add('verifyForgotPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GForgotPasswordVerificationData_verifyForgotPassword)));
    }
    return result;
  }

  @override
  GForgotPasswordVerificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForgotPasswordVerificationDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'verifyForgotPassword':
          result.verifyForgotPassword.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GForgotPasswordVerificationData_verifyForgotPassword))!
              as GForgotPasswordVerificationData_verifyForgotPassword);
          break;
      }
    }

    return result.build();
  }
}

class _$GForgotPasswordVerificationData_verifyForgotPasswordSerializer
    implements
        StructuredSerializer<
            GForgotPasswordVerificationData_verifyForgotPassword> {
  @override
  final Iterable<Type> types = const [
    GForgotPasswordVerificationData_verifyForgotPassword,
    _$GForgotPasswordVerificationData_verifyForgotPassword
  ];
  @override
  final String wireName =
      'GForgotPasswordVerificationData_verifyForgotPassword';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForgotPasswordVerificationData_verifyForgotPassword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GForgotPasswordVerificationData_verifyForgotPassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForgotPasswordVerificationData_verifyForgotPasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GResetPasswordDataSerializer
    implements StructuredSerializer<GResetPasswordData> {
  @override
  final Iterable<Type> types = const [GResetPasswordData, _$GResetPasswordData];
  @override
  final String wireName = 'GResetPasswordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GResetPasswordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateForgotPassword;
    if (value != null) {
      result
        ..add('updateForgotPassword')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GResetPasswordData_updateForgotPassword)));
    }
    return result;
  }

  @override
  GResetPasswordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GResetPasswordDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updateForgotPassword':
          result.updateForgotPassword.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GResetPasswordData_updateForgotPassword))!
              as GResetPasswordData_updateForgotPassword);
          break;
      }
    }

    return result.build();
  }
}

class _$GResetPasswordData_updateForgotPasswordSerializer
    implements StructuredSerializer<GResetPasswordData_updateForgotPassword> {
  @override
  final Iterable<Type> types = const [
    GResetPasswordData_updateForgotPassword,
    _$GResetPasswordData_updateForgotPassword
  ];
  @override
  final String wireName = 'GResetPasswordData_updateForgotPassword';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GResetPasswordData_updateForgotPassword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GResetPasswordData_updateForgotPassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GResetPasswordData_updateForgotPasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteUserDataSerializer
    implements StructuredSerializer<GdeleteUserData> {
  @override
  final Iterable<Type> types = const [GdeleteUserData, _$GdeleteUserData];
  @override
  final String wireName = 'GdeleteUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeleteUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleteUser;
    if (value != null) {
      result
        ..add('deleteUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GdeleteUserData_deleteUser)));
    }
    return result;
  }

  @override
  GdeleteUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deleteUser':
          result.deleteUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GdeleteUserData_deleteUser))!
              as GdeleteUserData_deleteUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteUserData_deleteUserSerializer
    implements StructuredSerializer<GdeleteUserData_deleteUser> {
  @override
  final Iterable<Type> types = const [
    GdeleteUserData_deleteUser,
    _$GdeleteUserData_deleteUser
  ];
  @override
  final String wireName = 'GdeleteUserData_deleteUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteUserData_deleteUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorMessage;
    if (value != null) {
      result
        ..add('errorMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GdeleteUserData_deleteUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserData_deleteUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData extends GLoginData {
  @override
  final String G__typename;
  @override
  final GLoginData_userLogin? userLogin;

  factory _$GLoginData([void Function(GLoginDataBuilder)? updates]) =>
      (new GLoginDataBuilder()..update(updates))._build();

  _$GLoginData._({required this.G__typename, this.userLogin}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData', 'G__typename');
  }

  @override
  GLoginData rebuild(void Function(GLoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginDataBuilder toBuilder() => new GLoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData &&
        G__typename == other.G__typename &&
        userLogin == other.userLogin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userLogin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginData')
          ..add('G__typename', G__typename)
          ..add('userLogin', userLogin))
        .toString();
  }
}

class GLoginDataBuilder implements Builder<GLoginData, GLoginDataBuilder> {
  _$GLoginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginData_userLoginBuilder? _userLogin;
  GLoginData_userLoginBuilder get userLogin =>
      _$this._userLogin ??= new GLoginData_userLoginBuilder();
  set userLogin(GLoginData_userLoginBuilder? userLogin) =>
      _$this._userLogin = userLogin;

  GLoginDataBuilder() {
    GLoginData._initializeBuilder(this);
  }

  GLoginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userLogin = $v.userLogin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData;
  }

  @override
  void update(void Function(GLoginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData build() => _build();

  _$GLoginData _build() {
    _$GLoginData _$result;
    try {
      _$result = _$v ??
          new _$GLoginData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLoginData', 'G__typename'),
              userLogin: _userLogin?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userLogin';
        _userLogin?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_userLogin extends GLoginData_userLogin {
  @override
  final String G__typename;
  @override
  final GLoginData_userLogin_result? result;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GLoginData_userLogin(
          [void Function(GLoginData_userLoginBuilder)? updates]) =>
      (new GLoginData_userLoginBuilder()..update(updates))._build();

  _$GLoginData_userLogin._(
      {required this.G__typename, this.result, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData_userLogin', 'G__typename');
  }

  @override
  GLoginData_userLogin rebuild(
          void Function(GLoginData_userLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_userLoginBuilder toBuilder() =>
      new GLoginData_userLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_userLogin &&
        G__typename == other.G__typename &&
        result == other.result &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginData_userLogin')
          ..add('G__typename', G__typename)
          ..add('result', result)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GLoginData_userLoginBuilder
    implements Builder<GLoginData_userLogin, GLoginData_userLoginBuilder> {
  _$GLoginData_userLogin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginData_userLogin_resultBuilder? _result;
  GLoginData_userLogin_resultBuilder get result =>
      _$this._result ??= new GLoginData_userLogin_resultBuilder();
  set result(GLoginData_userLogin_resultBuilder? result) =>
      _$this._result = result;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GLoginData_userLoginBuilder() {
    GLoginData_userLogin._initializeBuilder(this);
  }

  GLoginData_userLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_userLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_userLogin;
  }

  @override
  void update(void Function(GLoginData_userLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_userLogin build() => _build();

  _$GLoginData_userLogin _build() {
    _$GLoginData_userLogin _$result;
    try {
      _$result = _$v ??
          new _$GLoginData_userLogin._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLoginData_userLogin', 'G__typename'),
              result: _result?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoginData_userLogin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_userLogin_result extends GLoginData_userLogin_result {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final String? userToken;
  @override
  final GLoginData_userLogin_result_user? user;
  @override
  final int? createListingCount;
  @override
  final int? overallRating;

  factory _$GLoginData_userLogin_result(
          [void Function(GLoginData_userLogin_resultBuilder)? updates]) =>
      (new GLoginData_userLogin_resultBuilder()..update(updates))._build();

  _$GLoginData_userLogin_result._(
      {required this.G__typename,
      this.userId,
      this.userToken,
      this.user,
      this.createListingCount,
      this.overallRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData_userLogin_result', 'G__typename');
  }

  @override
  GLoginData_userLogin_result rebuild(
          void Function(GLoginData_userLogin_resultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_userLogin_resultBuilder toBuilder() =>
      new GLoginData_userLogin_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_userLogin_result &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        userToken == other.userToken &&
        user == other.user &&
        createListingCount == other.createListingCount &&
        overallRating == other.overallRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, createListingCount.hashCode);
    _$hash = $jc(_$hash, overallRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginData_userLogin_result')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('userToken', userToken)
          ..add('user', user)
          ..add('createListingCount', createListingCount)
          ..add('overallRating', overallRating))
        .toString();
  }
}

class GLoginData_userLogin_resultBuilder
    implements
        Builder<GLoginData_userLogin_result,
            GLoginData_userLogin_resultBuilder> {
  _$GLoginData_userLogin_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  GLoginData_userLogin_result_userBuilder? _user;
  GLoginData_userLogin_result_userBuilder get user =>
      _$this._user ??= new GLoginData_userLogin_result_userBuilder();
  set user(GLoginData_userLogin_result_userBuilder? user) =>
      _$this._user = user;

  int? _createListingCount;
  int? get createListingCount => _$this._createListingCount;
  set createListingCount(int? createListingCount) =>
      _$this._createListingCount = createListingCount;

  int? _overallRating;
  int? get overallRating => _$this._overallRating;
  set overallRating(int? overallRating) =>
      _$this._overallRating = overallRating;

  GLoginData_userLogin_resultBuilder() {
    GLoginData_userLogin_result._initializeBuilder(this);
  }

  GLoginData_userLogin_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _userToken = $v.userToken;
      _user = $v.user?.toBuilder();
      _createListingCount = $v.createListingCount;
      _overallRating = $v.overallRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_userLogin_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_userLogin_result;
  }

  @override
  void update(void Function(GLoginData_userLogin_resultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_userLogin_result build() => _build();

  _$GLoginData_userLogin_result _build() {
    _$GLoginData_userLogin_result _$result;
    try {
      _$result = _$v ??
          new _$GLoginData_userLogin_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLoginData_userLogin_result', 'G__typename'),
              userId: userId,
              userToken: userToken,
              user: _user?.build(),
              createListingCount: createListingCount,
              overallRating: overallRating);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoginData_userLogin_result', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_userLogin_result_user
    extends GLoginData_userLogin_result_user {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? info;
  @override
  final String? location;
  @override
  final String? dateOfBirth;
  @override
  final String? countryCode;
  @override
  final String? phoneNumber;
  @override
  final String? preferredLanguage;
  @override
  final String? preferredCurrency;
  @override
  final String? createdAt;
  @override
  final String? picture;
  @override
  final String? appTheme;
  @override
  final int? profileId;
  @override
  final GLoginData_userLogin_result_user_verification? verification;
  @override
  final GLoginData_userLogin_result_user_userData? userData;
  @override
  final bool? renterServicePlanAIFeatureStatus;
  @override
  final bool? ownerServicePlanAIFeatureStatus;

  factory _$GLoginData_userLogin_result_user(
          [void Function(GLoginData_userLogin_result_userBuilder)? updates]) =>
      (new GLoginData_userLogin_result_userBuilder()..update(updates))._build();

  _$GLoginData_userLogin_result_user._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.gender,
      this.info,
      this.location,
      this.dateOfBirth,
      this.countryCode,
      this.phoneNumber,
      this.preferredLanguage,
      this.preferredCurrency,
      this.createdAt,
      this.picture,
      this.appTheme,
      this.profileId,
      this.verification,
      this.userData,
      this.renterServicePlanAIFeatureStatus,
      this.ownerServicePlanAIFeatureStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData_userLogin_result_user', 'G__typename');
  }

  @override
  GLoginData_userLogin_result_user rebuild(
          void Function(GLoginData_userLogin_result_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_userLogin_result_userBuilder toBuilder() =>
      new GLoginData_userLogin_result_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_userLogin_result_user &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        gender == other.gender &&
        info == other.info &&
        location == other.location &&
        dateOfBirth == other.dateOfBirth &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        preferredLanguage == other.preferredLanguage &&
        preferredCurrency == other.preferredCurrency &&
        createdAt == other.createdAt &&
        picture == other.picture &&
        appTheme == other.appTheme &&
        profileId == other.profileId &&
        verification == other.verification &&
        userData == other.userData &&
        renterServicePlanAIFeatureStatus ==
            other.renterServicePlanAIFeatureStatus &&
        ownerServicePlanAIFeatureStatus ==
            other.ownerServicePlanAIFeatureStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, preferredLanguage.hashCode);
    _$hash = $jc(_$hash, preferredCurrency.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, appTheme.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, renterServicePlanAIFeatureStatus.hashCode);
    _$hash = $jc(_$hash, ownerServicePlanAIFeatureStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginData_userLogin_result_user')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('gender', gender)
          ..add('info', info)
          ..add('location', location)
          ..add('dateOfBirth', dateOfBirth)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('preferredLanguage', preferredLanguage)
          ..add('preferredCurrency', preferredCurrency)
          ..add('createdAt', createdAt)
          ..add('picture', picture)
          ..add('appTheme', appTheme)
          ..add('profileId', profileId)
          ..add('verification', verification)
          ..add('userData', userData)
          ..add('renterServicePlanAIFeatureStatus',
              renterServicePlanAIFeatureStatus)
          ..add('ownerServicePlanAIFeatureStatus',
              ownerServicePlanAIFeatureStatus))
        .toString();
  }
}

class GLoginData_userLogin_result_userBuilder
    implements
        Builder<GLoginData_userLogin_result_user,
            GLoginData_userLogin_result_userBuilder> {
  _$GLoginData_userLogin_result_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _preferredLanguage;
  String? get preferredLanguage => _$this._preferredLanguage;
  set preferredLanguage(String? preferredLanguage) =>
      _$this._preferredLanguage = preferredLanguage;

  String? _preferredCurrency;
  String? get preferredCurrency => _$this._preferredCurrency;
  set preferredCurrency(String? preferredCurrency) =>
      _$this._preferredCurrency = preferredCurrency;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _appTheme;
  String? get appTheme => _$this._appTheme;
  set appTheme(String? appTheme) => _$this._appTheme = appTheme;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  GLoginData_userLogin_result_user_verificationBuilder? _verification;
  GLoginData_userLogin_result_user_verificationBuilder get verification =>
      _$this._verification ??=
          new GLoginData_userLogin_result_user_verificationBuilder();
  set verification(
          GLoginData_userLogin_result_user_verificationBuilder? verification) =>
      _$this._verification = verification;

  GLoginData_userLogin_result_user_userDataBuilder? _userData;
  GLoginData_userLogin_result_user_userDataBuilder get userData =>
      _$this._userData ??=
          new GLoginData_userLogin_result_user_userDataBuilder();
  set userData(GLoginData_userLogin_result_user_userDataBuilder? userData) =>
      _$this._userData = userData;

  bool? _renterServicePlanAIFeatureStatus;
  bool? get renterServicePlanAIFeatureStatus =>
      _$this._renterServicePlanAIFeatureStatus;
  set renterServicePlanAIFeatureStatus(
          bool? renterServicePlanAIFeatureStatus) =>
      _$this._renterServicePlanAIFeatureStatus =
          renterServicePlanAIFeatureStatus;

  bool? _ownerServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus =>
      _$this._ownerServicePlanAIFeatureStatus;
  set ownerServicePlanAIFeatureStatus(bool? ownerServicePlanAIFeatureStatus) =>
      _$this._ownerServicePlanAIFeatureStatus = ownerServicePlanAIFeatureStatus;

  GLoginData_userLogin_result_userBuilder() {
    GLoginData_userLogin_result_user._initializeBuilder(this);
  }

  GLoginData_userLogin_result_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _gender = $v.gender;
      _info = $v.info;
      _location = $v.location;
      _dateOfBirth = $v.dateOfBirth;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _preferredLanguage = $v.preferredLanguage;
      _preferredCurrency = $v.preferredCurrency;
      _createdAt = $v.createdAt;
      _picture = $v.picture;
      _appTheme = $v.appTheme;
      _profileId = $v.profileId;
      _verification = $v.verification?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _renterServicePlanAIFeatureStatus = $v.renterServicePlanAIFeatureStatus;
      _ownerServicePlanAIFeatureStatus = $v.ownerServicePlanAIFeatureStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_userLogin_result_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_userLogin_result_user;
  }

  @override
  void update(void Function(GLoginData_userLogin_result_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_userLogin_result_user build() => _build();

  _$GLoginData_userLogin_result_user _build() {
    _$GLoginData_userLogin_result_user _$result;
    try {
      _$result = _$v ??
          new _$GLoginData_userLogin_result_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GLoginData_userLogin_result_user', 'G__typename'),
              firstName: firstName,
              lastName: lastName,
              gender: gender,
              info: info,
              location: location,
              dateOfBirth: dateOfBirth,
              countryCode: countryCode,
              phoneNumber: phoneNumber,
              preferredLanguage: preferredLanguage,
              preferredCurrency: preferredCurrency,
              createdAt: createdAt,
              picture: picture,
              appTheme: appTheme,
              profileId: profileId,
              verification: _verification?.build(),
              userData: _userData?.build(),
              renterServicePlanAIFeatureStatus:
                  renterServicePlanAIFeatureStatus,
              ownerServicePlanAIFeatureStatus: ownerServicePlanAIFeatureStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verification';
        _verification?.build();
        _$failedField = 'userData';
        _userData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoginData_userLogin_result_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_userLogin_result_user_verification
    extends GLoginData_userLogin_result_user_verification {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final bool? isPhoneVerified;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isIdVerification;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isFacebookConnected;

  factory _$GLoginData_userLogin_result_user_verification(
          [void Function(GLoginData_userLogin_result_user_verificationBuilder)?
              updates]) =>
      (new GLoginData_userLogin_result_user_verificationBuilder()
            ..update(updates))
          ._build();

  _$GLoginData_userLogin_result_user_verification._(
      {required this.G__typename,
      this.id,
      this.isPhoneVerified,
      this.isEmailConfirmed,
      this.isIdVerification,
      this.isGoogleConnected,
      this.isFacebookConnected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GLoginData_userLogin_result_user_verification', 'G__typename');
  }

  @override
  GLoginData_userLogin_result_user_verification rebuild(
          void Function(GLoginData_userLogin_result_user_verificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_userLogin_result_user_verificationBuilder toBuilder() =>
      new GLoginData_userLogin_result_user_verificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_userLogin_result_user_verification &&
        G__typename == other.G__typename &&
        id == other.id &&
        isPhoneVerified == other.isPhoneVerified &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isIdVerification == other.isIdVerification &&
        isGoogleConnected == other.isGoogleConnected &&
        isFacebookConnected == other.isFacebookConnected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLoginData_userLogin_result_user_verification')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isIdVerification', isIdVerification)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isFacebookConnected', isFacebookConnected))
        .toString();
  }
}

class GLoginData_userLogin_result_user_verificationBuilder
    implements
        Builder<GLoginData_userLogin_result_user_verification,
            GLoginData_userLogin_result_user_verificationBuilder> {
  _$GLoginData_userLogin_result_user_verification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  GLoginData_userLogin_result_user_verificationBuilder() {
    GLoginData_userLogin_result_user_verification._initializeBuilder(this);
  }

  GLoginData_userLogin_result_user_verificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isPhoneVerified = $v.isPhoneVerified;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isIdVerification = $v.isIdVerification;
      _isGoogleConnected = $v.isGoogleConnected;
      _isFacebookConnected = $v.isFacebookConnected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_userLogin_result_user_verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_userLogin_result_user_verification;
  }

  @override
  void update(
      void Function(GLoginData_userLogin_result_user_verificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_userLogin_result_user_verification build() => _build();

  _$GLoginData_userLogin_result_user_verification _build() {
    final _$result = _$v ??
        new _$GLoginData_userLogin_result_user_verification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GLoginData_userLogin_result_user_verification',
                'G__typename'),
            id: id,
            isPhoneVerified: isPhoneVerified,
            isEmailConfirmed: isEmailConfirmed,
            isIdVerification: isIdVerification,
            isGoogleConnected: isGoogleConnected,
            isFacebookConnected: isFacebookConnected);
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_userLogin_result_user_userData
    extends GLoginData_userLogin_result_user_userData {
  @override
  final String G__typename;
  @override
  final String? type;

  factory _$GLoginData_userLogin_result_user_userData(
          [void Function(GLoginData_userLogin_result_user_userDataBuilder)?
              updates]) =>
      (new GLoginData_userLogin_result_user_userDataBuilder()..update(updates))
          ._build();

  _$GLoginData_userLogin_result_user_userData._(
      {required this.G__typename, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GLoginData_userLogin_result_user_userData', 'G__typename');
  }

  @override
  GLoginData_userLogin_result_user_userData rebuild(
          void Function(GLoginData_userLogin_result_user_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_userLogin_result_user_userDataBuilder toBuilder() =>
      new GLoginData_userLogin_result_user_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_userLogin_result_user_userData &&
        G__typename == other.G__typename &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLoginData_userLogin_result_user_userData')
          ..add('G__typename', G__typename)
          ..add('type', type))
        .toString();
  }
}

class GLoginData_userLogin_result_user_userDataBuilder
    implements
        Builder<GLoginData_userLogin_result_user_userData,
            GLoginData_userLogin_result_user_userDataBuilder> {
  _$GLoginData_userLogin_result_user_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GLoginData_userLogin_result_user_userDataBuilder() {
    GLoginData_userLogin_result_user_userData._initializeBuilder(this);
  }

  GLoginData_userLogin_result_user_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_userLogin_result_user_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_userLogin_result_user_userData;
  }

  @override
  void update(
      void Function(GLoginData_userLogin_result_user_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_userLogin_result_user_userData build() => _build();

  _$GLoginData_userLogin_result_user_userData _build() {
    final _$result = _$v ??
        new _$GLoginData_userLogin_result_user_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GLoginData_userLogin_result_user_userData', 'G__typename'),
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GSignupData extends GSignupData {
  @override
  final String G__typename;
  @override
  final GSignupData_createUser? createUser;

  factory _$GSignupData([void Function(GSignupDataBuilder)? updates]) =>
      (new GSignupDataBuilder()..update(updates))._build();

  _$GSignupData._({required this.G__typename, this.createUser}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignupData', 'G__typename');
  }

  @override
  GSignupData rebuild(void Function(GSignupDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupDataBuilder toBuilder() => new GSignupDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupData &&
        G__typename == other.G__typename &&
        createUser == other.createUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignupData')
          ..add('G__typename', G__typename)
          ..add('createUser', createUser))
        .toString();
  }
}

class GSignupDataBuilder implements Builder<GSignupData, GSignupDataBuilder> {
  _$GSignupData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignupData_createUserBuilder? _createUser;
  GSignupData_createUserBuilder get createUser =>
      _$this._createUser ??= new GSignupData_createUserBuilder();
  set createUser(GSignupData_createUserBuilder? createUser) =>
      _$this._createUser = createUser;

  GSignupDataBuilder() {
    GSignupData._initializeBuilder(this);
  }

  GSignupDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createUser = $v.createUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupData;
  }

  @override
  void update(void Function(GSignupDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupData build() => _build();

  _$GSignupData _build() {
    _$GSignupData _$result;
    try {
      _$result = _$v ??
          new _$GSignupData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignupData', 'G__typename'),
              createUser: _createUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createUser';
        _createUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignupData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignupData_createUser extends GSignupData_createUser {
  @override
  final String G__typename;
  @override
  final GSignupData_createUser_result? result;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GSignupData_createUser(
          [void Function(GSignupData_createUserBuilder)? updates]) =>
      (new GSignupData_createUserBuilder()..update(updates))._build();

  _$GSignupData_createUser._(
      {required this.G__typename, this.result, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignupData_createUser', 'G__typename');
  }

  @override
  GSignupData_createUser rebuild(
          void Function(GSignupData_createUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupData_createUserBuilder toBuilder() =>
      new GSignupData_createUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupData_createUser &&
        G__typename == other.G__typename &&
        result == other.result &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignupData_createUser')
          ..add('G__typename', G__typename)
          ..add('result', result)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GSignupData_createUserBuilder
    implements Builder<GSignupData_createUser, GSignupData_createUserBuilder> {
  _$GSignupData_createUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignupData_createUser_resultBuilder? _result;
  GSignupData_createUser_resultBuilder get result =>
      _$this._result ??= new GSignupData_createUser_resultBuilder();
  set result(GSignupData_createUser_resultBuilder? result) =>
      _$this._result = result;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GSignupData_createUserBuilder() {
    GSignupData_createUser._initializeBuilder(this);
  }

  GSignupData_createUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupData_createUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupData_createUser;
  }

  @override
  void update(void Function(GSignupData_createUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupData_createUser build() => _build();

  _$GSignupData_createUser _build() {
    _$GSignupData_createUser _$result;
    try {
      _$result = _$v ??
          new _$GSignupData_createUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignupData_createUser', 'G__typename'),
              result: _result?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignupData_createUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignupData_createUser_result extends GSignupData_createUser_result {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final String? userToken;
  @override
  final GSignupData_createUser_result_user? user;
  @override
  final int? createListingCount;
  @override
  final int? overallRating;

  factory _$GSignupData_createUser_result(
          [void Function(GSignupData_createUser_resultBuilder)? updates]) =>
      (new GSignupData_createUser_resultBuilder()..update(updates))._build();

  _$GSignupData_createUser_result._(
      {required this.G__typename,
      this.userId,
      this.userToken,
      this.user,
      this.createListingCount,
      this.overallRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignupData_createUser_result', 'G__typename');
  }

  @override
  GSignupData_createUser_result rebuild(
          void Function(GSignupData_createUser_resultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupData_createUser_resultBuilder toBuilder() =>
      new GSignupData_createUser_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupData_createUser_result &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        userToken == other.userToken &&
        user == other.user &&
        createListingCount == other.createListingCount &&
        overallRating == other.overallRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, createListingCount.hashCode);
    _$hash = $jc(_$hash, overallRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignupData_createUser_result')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('userToken', userToken)
          ..add('user', user)
          ..add('createListingCount', createListingCount)
          ..add('overallRating', overallRating))
        .toString();
  }
}

class GSignupData_createUser_resultBuilder
    implements
        Builder<GSignupData_createUser_result,
            GSignupData_createUser_resultBuilder> {
  _$GSignupData_createUser_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  GSignupData_createUser_result_userBuilder? _user;
  GSignupData_createUser_result_userBuilder get user =>
      _$this._user ??= new GSignupData_createUser_result_userBuilder();
  set user(GSignupData_createUser_result_userBuilder? user) =>
      _$this._user = user;

  int? _createListingCount;
  int? get createListingCount => _$this._createListingCount;
  set createListingCount(int? createListingCount) =>
      _$this._createListingCount = createListingCount;

  int? _overallRating;
  int? get overallRating => _$this._overallRating;
  set overallRating(int? overallRating) =>
      _$this._overallRating = overallRating;

  GSignupData_createUser_resultBuilder() {
    GSignupData_createUser_result._initializeBuilder(this);
  }

  GSignupData_createUser_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _userToken = $v.userToken;
      _user = $v.user?.toBuilder();
      _createListingCount = $v.createListingCount;
      _overallRating = $v.overallRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupData_createUser_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupData_createUser_result;
  }

  @override
  void update(void Function(GSignupData_createUser_resultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupData_createUser_result build() => _build();

  _$GSignupData_createUser_result _build() {
    _$GSignupData_createUser_result _$result;
    try {
      _$result = _$v ??
          new _$GSignupData_createUser_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignupData_createUser_result', 'G__typename'),
              userId: userId,
              userToken: userToken,
              user: _user?.build(),
              createListingCount: createListingCount,
              overallRating: overallRating);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignupData_createUser_result', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignupData_createUser_result_user
    extends GSignupData_createUser_result_user {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? info;
  @override
  final String? location;
  @override
  final String? dateOfBirth;
  @override
  final String? countryCode;
  @override
  final String? phoneNumber;
  @override
  final String? preferredLanguage;
  @override
  final String? preferredCurrency;
  @override
  final String? createdAt;
  @override
  final String? picture;
  @override
  final String? appTheme;
  @override
  final int? profileId;
  @override
  final GSignupData_createUser_result_user_verification? verification;
  @override
  final GSignupData_createUser_result_user_userData? userData;
  @override
  final bool? renterServicePlanAIFeatureStatus;
  @override
  final bool? ownerServicePlanAIFeatureStatus;

  factory _$GSignupData_createUser_result_user(
          [void Function(GSignupData_createUser_result_userBuilder)?
              updates]) =>
      (new GSignupData_createUser_result_userBuilder()..update(updates))
          ._build();

  _$GSignupData_createUser_result_user._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.gender,
      this.info,
      this.location,
      this.dateOfBirth,
      this.countryCode,
      this.phoneNumber,
      this.preferredLanguage,
      this.preferredCurrency,
      this.createdAt,
      this.picture,
      this.appTheme,
      this.profileId,
      this.verification,
      this.userData,
      this.renterServicePlanAIFeatureStatus,
      this.ownerServicePlanAIFeatureStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignupData_createUser_result_user', 'G__typename');
  }

  @override
  GSignupData_createUser_result_user rebuild(
          void Function(GSignupData_createUser_result_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupData_createUser_result_userBuilder toBuilder() =>
      new GSignupData_createUser_result_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupData_createUser_result_user &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        gender == other.gender &&
        info == other.info &&
        location == other.location &&
        dateOfBirth == other.dateOfBirth &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        preferredLanguage == other.preferredLanguage &&
        preferredCurrency == other.preferredCurrency &&
        createdAt == other.createdAt &&
        picture == other.picture &&
        appTheme == other.appTheme &&
        profileId == other.profileId &&
        verification == other.verification &&
        userData == other.userData &&
        renterServicePlanAIFeatureStatus ==
            other.renterServicePlanAIFeatureStatus &&
        ownerServicePlanAIFeatureStatus ==
            other.ownerServicePlanAIFeatureStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, preferredLanguage.hashCode);
    _$hash = $jc(_$hash, preferredCurrency.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, appTheme.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, renterServicePlanAIFeatureStatus.hashCode);
    _$hash = $jc(_$hash, ownerServicePlanAIFeatureStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignupData_createUser_result_user')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('gender', gender)
          ..add('info', info)
          ..add('location', location)
          ..add('dateOfBirth', dateOfBirth)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('preferredLanguage', preferredLanguage)
          ..add('preferredCurrency', preferredCurrency)
          ..add('createdAt', createdAt)
          ..add('picture', picture)
          ..add('appTheme', appTheme)
          ..add('profileId', profileId)
          ..add('verification', verification)
          ..add('userData', userData)
          ..add('renterServicePlanAIFeatureStatus',
              renterServicePlanAIFeatureStatus)
          ..add('ownerServicePlanAIFeatureStatus',
              ownerServicePlanAIFeatureStatus))
        .toString();
  }
}

class GSignupData_createUser_result_userBuilder
    implements
        Builder<GSignupData_createUser_result_user,
            GSignupData_createUser_result_userBuilder> {
  _$GSignupData_createUser_result_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _preferredLanguage;
  String? get preferredLanguage => _$this._preferredLanguage;
  set preferredLanguage(String? preferredLanguage) =>
      _$this._preferredLanguage = preferredLanguage;

  String? _preferredCurrency;
  String? get preferredCurrency => _$this._preferredCurrency;
  set preferredCurrency(String? preferredCurrency) =>
      _$this._preferredCurrency = preferredCurrency;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _appTheme;
  String? get appTheme => _$this._appTheme;
  set appTheme(String? appTheme) => _$this._appTheme = appTheme;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  GSignupData_createUser_result_user_verificationBuilder? _verification;
  GSignupData_createUser_result_user_verificationBuilder get verification =>
      _$this._verification ??=
          new GSignupData_createUser_result_user_verificationBuilder();
  set verification(
          GSignupData_createUser_result_user_verificationBuilder?
              verification) =>
      _$this._verification = verification;

  GSignupData_createUser_result_user_userDataBuilder? _userData;
  GSignupData_createUser_result_user_userDataBuilder get userData =>
      _$this._userData ??=
          new GSignupData_createUser_result_user_userDataBuilder();
  set userData(GSignupData_createUser_result_user_userDataBuilder? userData) =>
      _$this._userData = userData;

  bool? _renterServicePlanAIFeatureStatus;
  bool? get renterServicePlanAIFeatureStatus =>
      _$this._renterServicePlanAIFeatureStatus;
  set renterServicePlanAIFeatureStatus(
          bool? renterServicePlanAIFeatureStatus) =>
      _$this._renterServicePlanAIFeatureStatus =
          renterServicePlanAIFeatureStatus;

  bool? _ownerServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus =>
      _$this._ownerServicePlanAIFeatureStatus;
  set ownerServicePlanAIFeatureStatus(bool? ownerServicePlanAIFeatureStatus) =>
      _$this._ownerServicePlanAIFeatureStatus = ownerServicePlanAIFeatureStatus;

  GSignupData_createUser_result_userBuilder() {
    GSignupData_createUser_result_user._initializeBuilder(this);
  }

  GSignupData_createUser_result_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _gender = $v.gender;
      _info = $v.info;
      _location = $v.location;
      _dateOfBirth = $v.dateOfBirth;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _preferredLanguage = $v.preferredLanguage;
      _preferredCurrency = $v.preferredCurrency;
      _createdAt = $v.createdAt;
      _picture = $v.picture;
      _appTheme = $v.appTheme;
      _profileId = $v.profileId;
      _verification = $v.verification?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _renterServicePlanAIFeatureStatus = $v.renterServicePlanAIFeatureStatus;
      _ownerServicePlanAIFeatureStatus = $v.ownerServicePlanAIFeatureStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupData_createUser_result_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupData_createUser_result_user;
  }

  @override
  void update(
      void Function(GSignupData_createUser_result_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupData_createUser_result_user build() => _build();

  _$GSignupData_createUser_result_user _build() {
    _$GSignupData_createUser_result_user _$result;
    try {
      _$result = _$v ??
          new _$GSignupData_createUser_result_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSignupData_createUser_result_user', 'G__typename'),
              firstName: firstName,
              lastName: lastName,
              gender: gender,
              info: info,
              location: location,
              dateOfBirth: dateOfBirth,
              countryCode: countryCode,
              phoneNumber: phoneNumber,
              preferredLanguage: preferredLanguage,
              preferredCurrency: preferredCurrency,
              createdAt: createdAt,
              picture: picture,
              appTheme: appTheme,
              profileId: profileId,
              verification: _verification?.build(),
              userData: _userData?.build(),
              renterServicePlanAIFeatureStatus:
                  renterServicePlanAIFeatureStatus,
              ownerServicePlanAIFeatureStatus: ownerServicePlanAIFeatureStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verification';
        _verification?.build();
        _$failedField = 'userData';
        _userData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignupData_createUser_result_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignupData_createUser_result_user_verification
    extends GSignupData_createUser_result_user_verification {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final bool? isPhoneVerified;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isIdVerification;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isFacebookConnected;

  factory _$GSignupData_createUser_result_user_verification(
          [void Function(
                  GSignupData_createUser_result_user_verificationBuilder)?
              updates]) =>
      (new GSignupData_createUser_result_user_verificationBuilder()
            ..update(updates))
          ._build();

  _$GSignupData_createUser_result_user_verification._(
      {required this.G__typename,
      this.id,
      this.isPhoneVerified,
      this.isEmailConfirmed,
      this.isIdVerification,
      this.isGoogleConnected,
      this.isFacebookConnected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSignupData_createUser_result_user_verification', 'G__typename');
  }

  @override
  GSignupData_createUser_result_user_verification rebuild(
          void Function(GSignupData_createUser_result_user_verificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupData_createUser_result_user_verificationBuilder toBuilder() =>
      new GSignupData_createUser_result_user_verificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupData_createUser_result_user_verification &&
        G__typename == other.G__typename &&
        id == other.id &&
        isPhoneVerified == other.isPhoneVerified &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isIdVerification == other.isIdVerification &&
        isGoogleConnected == other.isGoogleConnected &&
        isFacebookConnected == other.isFacebookConnected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSignupData_createUser_result_user_verification')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isIdVerification', isIdVerification)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isFacebookConnected', isFacebookConnected))
        .toString();
  }
}

class GSignupData_createUser_result_user_verificationBuilder
    implements
        Builder<GSignupData_createUser_result_user_verification,
            GSignupData_createUser_result_user_verificationBuilder> {
  _$GSignupData_createUser_result_user_verification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  GSignupData_createUser_result_user_verificationBuilder() {
    GSignupData_createUser_result_user_verification._initializeBuilder(this);
  }

  GSignupData_createUser_result_user_verificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isPhoneVerified = $v.isPhoneVerified;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isIdVerification = $v.isIdVerification;
      _isGoogleConnected = $v.isGoogleConnected;
      _isFacebookConnected = $v.isFacebookConnected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupData_createUser_result_user_verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupData_createUser_result_user_verification;
  }

  @override
  void update(
      void Function(GSignupData_createUser_result_user_verificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupData_createUser_result_user_verification build() => _build();

  _$GSignupData_createUser_result_user_verification _build() {
    final _$result = _$v ??
        new _$GSignupData_createUser_result_user_verification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSignupData_createUser_result_user_verification',
                'G__typename'),
            id: id,
            isPhoneVerified: isPhoneVerified,
            isEmailConfirmed: isEmailConfirmed,
            isIdVerification: isIdVerification,
            isGoogleConnected: isGoogleConnected,
            isFacebookConnected: isFacebookConnected);
    replace(_$result);
    return _$result;
  }
}

class _$GSignupData_createUser_result_user_userData
    extends GSignupData_createUser_result_user_userData {
  @override
  final String G__typename;
  @override
  final String? type;

  factory _$GSignupData_createUser_result_user_userData(
          [void Function(GSignupData_createUser_result_user_userDataBuilder)?
              updates]) =>
      (new GSignupData_createUser_result_user_userDataBuilder()
            ..update(updates))
          ._build();

  _$GSignupData_createUser_result_user_userData._(
      {required this.G__typename, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSignupData_createUser_result_user_userData', 'G__typename');
  }

  @override
  GSignupData_createUser_result_user_userData rebuild(
          void Function(GSignupData_createUser_result_user_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignupData_createUser_result_user_userDataBuilder toBuilder() =>
      new GSignupData_createUser_result_user_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignupData_createUser_result_user_userData &&
        G__typename == other.G__typename &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSignupData_createUser_result_user_userData')
          ..add('G__typename', G__typename)
          ..add('type', type))
        .toString();
  }
}

class GSignupData_createUser_result_user_userDataBuilder
    implements
        Builder<GSignupData_createUser_result_user_userData,
            GSignupData_createUser_result_user_userDataBuilder> {
  _$GSignupData_createUser_result_user_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GSignupData_createUser_result_user_userDataBuilder() {
    GSignupData_createUser_result_user_userData._initializeBuilder(this);
  }

  GSignupData_createUser_result_user_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignupData_createUser_result_user_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignupData_createUser_result_user_userData;
  }

  @override
  void update(
      void Function(GSignupData_createUser_result_user_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignupData_createUser_result_user_userData build() => _build();

  _$GSignupData_createUser_result_user_userData _build() {
    final _$result = _$v ??
        new _$GSignupData_createUser_result_user_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSignupData_createUser_result_user_userData', 'G__typename'),
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginData extends GSocialLoginData {
  @override
  final String G__typename;
  @override
  final GSocialLoginData_userSocialLogin? userSocialLogin;

  factory _$GSocialLoginData(
          [void Function(GSocialLoginDataBuilder)? updates]) =>
      (new GSocialLoginDataBuilder()..update(updates))._build();

  _$GSocialLoginData._({required this.G__typename, this.userSocialLogin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialLoginData', 'G__typename');
  }

  @override
  GSocialLoginData rebuild(void Function(GSocialLoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginDataBuilder toBuilder() =>
      new GSocialLoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginData &&
        G__typename == other.G__typename &&
        userSocialLogin == other.userSocialLogin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userSocialLogin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialLoginData')
          ..add('G__typename', G__typename)
          ..add('userSocialLogin', userSocialLogin))
        .toString();
  }
}

class GSocialLoginDataBuilder
    implements Builder<GSocialLoginData, GSocialLoginDataBuilder> {
  _$GSocialLoginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialLoginData_userSocialLoginBuilder? _userSocialLogin;
  GSocialLoginData_userSocialLoginBuilder get userSocialLogin =>
      _$this._userSocialLogin ??= new GSocialLoginData_userSocialLoginBuilder();
  set userSocialLogin(
          GSocialLoginData_userSocialLoginBuilder? userSocialLogin) =>
      _$this._userSocialLogin = userSocialLogin;

  GSocialLoginDataBuilder() {
    GSocialLoginData._initializeBuilder(this);
  }

  GSocialLoginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userSocialLogin = $v.userSocialLogin?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginData;
  }

  @override
  void update(void Function(GSocialLoginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginData build() => _build();

  _$GSocialLoginData _build() {
    _$GSocialLoginData _$result;
    try {
      _$result = _$v ??
          new _$GSocialLoginData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSocialLoginData', 'G__typename'),
              userSocialLogin: _userSocialLogin?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userSocialLogin';
        _userSocialLogin?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialLoginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginData_userSocialLogin
    extends GSocialLoginData_userSocialLogin {
  @override
  final String G__typename;
  @override
  final GSocialLoginData_userSocialLogin_result? result;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GSocialLoginData_userSocialLogin(
          [void Function(GSocialLoginData_userSocialLoginBuilder)? updates]) =>
      (new GSocialLoginData_userSocialLoginBuilder()..update(updates))._build();

  _$GSocialLoginData_userSocialLogin._(
      {required this.G__typename, this.result, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialLoginData_userSocialLogin', 'G__typename');
  }

  @override
  GSocialLoginData_userSocialLogin rebuild(
          void Function(GSocialLoginData_userSocialLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginData_userSocialLoginBuilder toBuilder() =>
      new GSocialLoginData_userSocialLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginData_userSocialLogin &&
        G__typename == other.G__typename &&
        result == other.result &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialLoginData_userSocialLogin')
          ..add('G__typename', G__typename)
          ..add('result', result)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GSocialLoginData_userSocialLoginBuilder
    implements
        Builder<GSocialLoginData_userSocialLogin,
            GSocialLoginData_userSocialLoginBuilder> {
  _$GSocialLoginData_userSocialLogin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialLoginData_userSocialLogin_resultBuilder? _result;
  GSocialLoginData_userSocialLogin_resultBuilder get result =>
      _$this._result ??= new GSocialLoginData_userSocialLogin_resultBuilder();
  set result(GSocialLoginData_userSocialLogin_resultBuilder? result) =>
      _$this._result = result;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GSocialLoginData_userSocialLoginBuilder() {
    GSocialLoginData_userSocialLogin._initializeBuilder(this);
  }

  GSocialLoginData_userSocialLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _result = $v.result?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginData_userSocialLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginData_userSocialLogin;
  }

  @override
  void update(void Function(GSocialLoginData_userSocialLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginData_userSocialLogin build() => _build();

  _$GSocialLoginData_userSocialLogin _build() {
    _$GSocialLoginData_userSocialLogin _$result;
    try {
      _$result = _$v ??
          new _$GSocialLoginData_userSocialLogin._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSocialLoginData_userSocialLogin', 'G__typename'),
              result: _result?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialLoginData_userSocialLogin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginData_userSocialLogin_result
    extends GSocialLoginData_userSocialLogin_result {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final String? userToken;
  @override
  final GSocialLoginData_userSocialLogin_result_user? user;
  @override
  final int? createListingCount;
  @override
  final int? overallRating;

  factory _$GSocialLoginData_userSocialLogin_result(
          [void Function(GSocialLoginData_userSocialLogin_resultBuilder)?
              updates]) =>
      (new GSocialLoginData_userSocialLogin_resultBuilder()..update(updates))
          ._build();

  _$GSocialLoginData_userSocialLogin_result._(
      {required this.G__typename,
      this.userId,
      this.userToken,
      this.user,
      this.createListingCount,
      this.overallRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialLoginData_userSocialLogin_result', 'G__typename');
  }

  @override
  GSocialLoginData_userSocialLogin_result rebuild(
          void Function(GSocialLoginData_userSocialLogin_resultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginData_userSocialLogin_resultBuilder toBuilder() =>
      new GSocialLoginData_userSocialLogin_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginData_userSocialLogin_result &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        userToken == other.userToken &&
        user == other.user &&
        createListingCount == other.createListingCount &&
        overallRating == other.overallRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, createListingCount.hashCode);
    _$hash = $jc(_$hash, overallRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSocialLoginData_userSocialLogin_result')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('userToken', userToken)
          ..add('user', user)
          ..add('createListingCount', createListingCount)
          ..add('overallRating', overallRating))
        .toString();
  }
}

class GSocialLoginData_userSocialLogin_resultBuilder
    implements
        Builder<GSocialLoginData_userSocialLogin_result,
            GSocialLoginData_userSocialLogin_resultBuilder> {
  _$GSocialLoginData_userSocialLogin_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  GSocialLoginData_userSocialLogin_result_userBuilder? _user;
  GSocialLoginData_userSocialLogin_result_userBuilder get user =>
      _$this._user ??=
          new GSocialLoginData_userSocialLogin_result_userBuilder();
  set user(GSocialLoginData_userSocialLogin_result_userBuilder? user) =>
      _$this._user = user;

  int? _createListingCount;
  int? get createListingCount => _$this._createListingCount;
  set createListingCount(int? createListingCount) =>
      _$this._createListingCount = createListingCount;

  int? _overallRating;
  int? get overallRating => _$this._overallRating;
  set overallRating(int? overallRating) =>
      _$this._overallRating = overallRating;

  GSocialLoginData_userSocialLogin_resultBuilder() {
    GSocialLoginData_userSocialLogin_result._initializeBuilder(this);
  }

  GSocialLoginData_userSocialLogin_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _userToken = $v.userToken;
      _user = $v.user?.toBuilder();
      _createListingCount = $v.createListingCount;
      _overallRating = $v.overallRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginData_userSocialLogin_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginData_userSocialLogin_result;
  }

  @override
  void update(
      void Function(GSocialLoginData_userSocialLogin_resultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginData_userSocialLogin_result build() => _build();

  _$GSocialLoginData_userSocialLogin_result _build() {
    _$GSocialLoginData_userSocialLogin_result _$result;
    try {
      _$result = _$v ??
          new _$GSocialLoginData_userSocialLogin_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSocialLoginData_userSocialLogin_result', 'G__typename'),
              userId: userId,
              userToken: userToken,
              user: _user?.build(),
              createListingCount: createListingCount,
              overallRating: overallRating);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialLoginData_userSocialLogin_result',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginData_userSocialLogin_result_user
    extends GSocialLoginData_userSocialLogin_result_user {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? info;
  @override
  final String? location;
  @override
  final String? dateOfBirth;
  @override
  final String? countryCode;
  @override
  final String? phoneNumber;
  @override
  final String? preferredLanguage;
  @override
  final String? preferredCurrency;
  @override
  final String? createdAt;
  @override
  final String? picture;
  @override
  final String? appTheme;
  @override
  final int? profileId;
  @override
  final GSocialLoginData_userSocialLogin_result_user_verification? verification;
  @override
  final GSocialLoginData_userSocialLogin_result_user_userData? userData;
  @override
  final bool? renterServicePlanAIFeatureStatus;
  @override
  final bool? ownerServicePlanAIFeatureStatus;

  factory _$GSocialLoginData_userSocialLogin_result_user(
          [void Function(GSocialLoginData_userSocialLogin_result_userBuilder)?
              updates]) =>
      (new GSocialLoginData_userSocialLogin_result_userBuilder()
            ..update(updates))
          ._build();

  _$GSocialLoginData_userSocialLogin_result_user._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.gender,
      this.info,
      this.location,
      this.dateOfBirth,
      this.countryCode,
      this.phoneNumber,
      this.preferredLanguage,
      this.preferredCurrency,
      this.createdAt,
      this.picture,
      this.appTheme,
      this.profileId,
      this.verification,
      this.userData,
      this.renterServicePlanAIFeatureStatus,
      this.ownerServicePlanAIFeatureStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSocialLoginData_userSocialLogin_result_user', 'G__typename');
  }

  @override
  GSocialLoginData_userSocialLogin_result_user rebuild(
          void Function(GSocialLoginData_userSocialLogin_result_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginData_userSocialLogin_result_userBuilder toBuilder() =>
      new GSocialLoginData_userSocialLogin_result_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginData_userSocialLogin_result_user &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        gender == other.gender &&
        info == other.info &&
        location == other.location &&
        dateOfBirth == other.dateOfBirth &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        preferredLanguage == other.preferredLanguage &&
        preferredCurrency == other.preferredCurrency &&
        createdAt == other.createdAt &&
        picture == other.picture &&
        appTheme == other.appTheme &&
        profileId == other.profileId &&
        verification == other.verification &&
        userData == other.userData &&
        renterServicePlanAIFeatureStatus ==
            other.renterServicePlanAIFeatureStatus &&
        ownerServicePlanAIFeatureStatus ==
            other.ownerServicePlanAIFeatureStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, preferredLanguage.hashCode);
    _$hash = $jc(_$hash, preferredCurrency.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, appTheme.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, renterServicePlanAIFeatureStatus.hashCode);
    _$hash = $jc(_$hash, ownerServicePlanAIFeatureStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSocialLoginData_userSocialLogin_result_user')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('gender', gender)
          ..add('info', info)
          ..add('location', location)
          ..add('dateOfBirth', dateOfBirth)
          ..add('countryCode', countryCode)
          ..add('phoneNumber', phoneNumber)
          ..add('preferredLanguage', preferredLanguage)
          ..add('preferredCurrency', preferredCurrency)
          ..add('createdAt', createdAt)
          ..add('picture', picture)
          ..add('appTheme', appTheme)
          ..add('profileId', profileId)
          ..add('verification', verification)
          ..add('userData', userData)
          ..add('renterServicePlanAIFeatureStatus',
              renterServicePlanAIFeatureStatus)
          ..add('ownerServicePlanAIFeatureStatus',
              ownerServicePlanAIFeatureStatus))
        .toString();
  }
}

class GSocialLoginData_userSocialLogin_result_userBuilder
    implements
        Builder<GSocialLoginData_userSocialLogin_result_user,
            GSocialLoginData_userSocialLogin_result_userBuilder> {
  _$GSocialLoginData_userSocialLogin_result_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _preferredLanguage;
  String? get preferredLanguage => _$this._preferredLanguage;
  set preferredLanguage(String? preferredLanguage) =>
      _$this._preferredLanguage = preferredLanguage;

  String? _preferredCurrency;
  String? get preferredCurrency => _$this._preferredCurrency;
  set preferredCurrency(String? preferredCurrency) =>
      _$this._preferredCurrency = preferredCurrency;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _appTheme;
  String? get appTheme => _$this._appTheme;
  set appTheme(String? appTheme) => _$this._appTheme = appTheme;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  GSocialLoginData_userSocialLogin_result_user_verificationBuilder?
      _verification;
  GSocialLoginData_userSocialLogin_result_user_verificationBuilder
      get verification => _$this._verification ??=
          new GSocialLoginData_userSocialLogin_result_user_verificationBuilder();
  set verification(
          GSocialLoginData_userSocialLogin_result_user_verificationBuilder?
              verification) =>
      _$this._verification = verification;

  GSocialLoginData_userSocialLogin_result_user_userDataBuilder? _userData;
  GSocialLoginData_userSocialLogin_result_user_userDataBuilder get userData =>
      _$this._userData ??=
          new GSocialLoginData_userSocialLogin_result_user_userDataBuilder();
  set userData(
          GSocialLoginData_userSocialLogin_result_user_userDataBuilder?
              userData) =>
      _$this._userData = userData;

  bool? _renterServicePlanAIFeatureStatus;
  bool? get renterServicePlanAIFeatureStatus =>
      _$this._renterServicePlanAIFeatureStatus;
  set renterServicePlanAIFeatureStatus(
          bool? renterServicePlanAIFeatureStatus) =>
      _$this._renterServicePlanAIFeatureStatus =
          renterServicePlanAIFeatureStatus;

  bool? _ownerServicePlanAIFeatureStatus;
  bool? get ownerServicePlanAIFeatureStatus =>
      _$this._ownerServicePlanAIFeatureStatus;
  set ownerServicePlanAIFeatureStatus(bool? ownerServicePlanAIFeatureStatus) =>
      _$this._ownerServicePlanAIFeatureStatus = ownerServicePlanAIFeatureStatus;

  GSocialLoginData_userSocialLogin_result_userBuilder() {
    GSocialLoginData_userSocialLogin_result_user._initializeBuilder(this);
  }

  GSocialLoginData_userSocialLogin_result_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _gender = $v.gender;
      _info = $v.info;
      _location = $v.location;
      _dateOfBirth = $v.dateOfBirth;
      _countryCode = $v.countryCode;
      _phoneNumber = $v.phoneNumber;
      _preferredLanguage = $v.preferredLanguage;
      _preferredCurrency = $v.preferredCurrency;
      _createdAt = $v.createdAt;
      _picture = $v.picture;
      _appTheme = $v.appTheme;
      _profileId = $v.profileId;
      _verification = $v.verification?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _renterServicePlanAIFeatureStatus = $v.renterServicePlanAIFeatureStatus;
      _ownerServicePlanAIFeatureStatus = $v.ownerServicePlanAIFeatureStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginData_userSocialLogin_result_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginData_userSocialLogin_result_user;
  }

  @override
  void update(
      void Function(GSocialLoginData_userSocialLogin_result_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginData_userSocialLogin_result_user build() => _build();

  _$GSocialLoginData_userSocialLogin_result_user _build() {
    _$GSocialLoginData_userSocialLogin_result_user _$result;
    try {
      _$result = _$v ??
          new _$GSocialLoginData_userSocialLogin_result_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSocialLoginData_userSocialLogin_result_user',
                  'G__typename'),
              firstName: firstName,
              lastName: lastName,
              gender: gender,
              info: info,
              location: location,
              dateOfBirth: dateOfBirth,
              countryCode: countryCode,
              phoneNumber: phoneNumber,
              preferredLanguage: preferredLanguage,
              preferredCurrency: preferredCurrency,
              createdAt: createdAt,
              picture: picture,
              appTheme: appTheme,
              profileId: profileId,
              verification: _verification?.build(),
              userData: _userData?.build(),
              renterServicePlanAIFeatureStatus:
                  renterServicePlanAIFeatureStatus,
              ownerServicePlanAIFeatureStatus: ownerServicePlanAIFeatureStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verification';
        _verification?.build();
        _$failedField = 'userData';
        _userData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialLoginData_userSocialLogin_result_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginData_userSocialLogin_result_user_verification
    extends GSocialLoginData_userSocialLogin_result_user_verification {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final bool? isPhoneVerified;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isIdVerification;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isFacebookConnected;

  factory _$GSocialLoginData_userSocialLogin_result_user_verification(
          [void Function(
                  GSocialLoginData_userSocialLogin_result_user_verificationBuilder)?
              updates]) =>
      (new GSocialLoginData_userSocialLogin_result_user_verificationBuilder()
            ..update(updates))
          ._build();

  _$GSocialLoginData_userSocialLogin_result_user_verification._(
      {required this.G__typename,
      this.id,
      this.isPhoneVerified,
      this.isEmailConfirmed,
      this.isIdVerification,
      this.isGoogleConnected,
      this.isFacebookConnected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSocialLoginData_userSocialLogin_result_user_verification',
        'G__typename');
  }

  @override
  GSocialLoginData_userSocialLogin_result_user_verification rebuild(
          void Function(
                  GSocialLoginData_userSocialLogin_result_user_verificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginData_userSocialLogin_result_user_verificationBuilder
      toBuilder() =>
          new GSocialLoginData_userSocialLogin_result_user_verificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginData_userSocialLogin_result_user_verification &&
        G__typename == other.G__typename &&
        id == other.id &&
        isPhoneVerified == other.isPhoneVerified &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isIdVerification == other.isIdVerification &&
        isGoogleConnected == other.isGoogleConnected &&
        isFacebookConnected == other.isFacebookConnected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSocialLoginData_userSocialLogin_result_user_verification')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isIdVerification', isIdVerification)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isFacebookConnected', isFacebookConnected))
        .toString();
  }
}

class GSocialLoginData_userSocialLogin_result_user_verificationBuilder
    implements
        Builder<GSocialLoginData_userSocialLogin_result_user_verification,
            GSocialLoginData_userSocialLogin_result_user_verificationBuilder> {
  _$GSocialLoginData_userSocialLogin_result_user_verification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  GSocialLoginData_userSocialLogin_result_user_verificationBuilder() {
    GSocialLoginData_userSocialLogin_result_user_verification
        ._initializeBuilder(this);
  }

  GSocialLoginData_userSocialLogin_result_user_verificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isPhoneVerified = $v.isPhoneVerified;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isIdVerification = $v.isIdVerification;
      _isGoogleConnected = $v.isGoogleConnected;
      _isFacebookConnected = $v.isFacebookConnected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GSocialLoginData_userSocialLogin_result_user_verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginData_userSocialLogin_result_user_verification;
  }

  @override
  void update(
      void Function(
              GSocialLoginData_userSocialLogin_result_user_verificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginData_userSocialLogin_result_user_verification build() => _build();

  _$GSocialLoginData_userSocialLogin_result_user_verification _build() {
    final _$result = _$v ??
        new _$GSocialLoginData_userSocialLogin_result_user_verification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSocialLoginData_userSocialLogin_result_user_verification',
                'G__typename'),
            id: id,
            isPhoneVerified: isPhoneVerified,
            isEmailConfirmed: isEmailConfirmed,
            isIdVerification: isIdVerification,
            isGoogleConnected: isGoogleConnected,
            isFacebookConnected: isFacebookConnected);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginData_userSocialLogin_result_user_userData
    extends GSocialLoginData_userSocialLogin_result_user_userData {
  @override
  final String G__typename;
  @override
  final String? type;

  factory _$GSocialLoginData_userSocialLogin_result_user_userData(
          [void Function(
                  GSocialLoginData_userSocialLogin_result_user_userDataBuilder)?
              updates]) =>
      (new GSocialLoginData_userSocialLogin_result_user_userDataBuilder()
            ..update(updates))
          ._build();

  _$GSocialLoginData_userSocialLogin_result_user_userData._(
      {required this.G__typename, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSocialLoginData_userSocialLogin_result_user_userData',
        'G__typename');
  }

  @override
  GSocialLoginData_userSocialLogin_result_user_userData rebuild(
          void Function(
                  GSocialLoginData_userSocialLogin_result_user_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginData_userSocialLogin_result_user_userDataBuilder toBuilder() =>
      new GSocialLoginData_userSocialLogin_result_user_userDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginData_userSocialLogin_result_user_userData &&
        G__typename == other.G__typename &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSocialLoginData_userSocialLogin_result_user_userData')
          ..add('G__typename', G__typename)
          ..add('type', type))
        .toString();
  }
}

class GSocialLoginData_userSocialLogin_result_user_userDataBuilder
    implements
        Builder<GSocialLoginData_userSocialLogin_result_user_userData,
            GSocialLoginData_userSocialLogin_result_user_userDataBuilder> {
  _$GSocialLoginData_userSocialLogin_result_user_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GSocialLoginData_userSocialLogin_result_user_userDataBuilder() {
    GSocialLoginData_userSocialLogin_result_user_userData._initializeBuilder(
        this);
  }

  GSocialLoginData_userSocialLogin_result_user_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginData_userSocialLogin_result_user_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginData_userSocialLogin_result_user_userData;
  }

  @override
  void update(
      void Function(
              GSocialLoginData_userSocialLogin_result_user_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginData_userSocialLogin_result_user_userData build() => _build();

  _$GSocialLoginData_userSocialLogin_result_user_userData _build() {
    final _$result = _$v ??
        new _$GSocialLoginData_userSocialLogin_result_user_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSocialLoginData_userSocialLogin_result_user_userData',
                'G__typename'),
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GLogoutData extends GLogoutData {
  @override
  final String G__typename;
  @override
  final GLogoutData_userLogout? userLogout;

  factory _$GLogoutData([void Function(GLogoutDataBuilder)? updates]) =>
      (new GLogoutDataBuilder()..update(updates))._build();

  _$GLogoutData._({required this.G__typename, this.userLogout}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLogoutData', 'G__typename');
  }

  @override
  GLogoutData rebuild(void Function(GLogoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLogoutDataBuilder toBuilder() => new GLogoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLogoutData &&
        G__typename == other.G__typename &&
        userLogout == other.userLogout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userLogout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLogoutData')
          ..add('G__typename', G__typename)
          ..add('userLogout', userLogout))
        .toString();
  }
}

class GLogoutDataBuilder implements Builder<GLogoutData, GLogoutDataBuilder> {
  _$GLogoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLogoutData_userLogoutBuilder? _userLogout;
  GLogoutData_userLogoutBuilder get userLogout =>
      _$this._userLogout ??= new GLogoutData_userLogoutBuilder();
  set userLogout(GLogoutData_userLogoutBuilder? userLogout) =>
      _$this._userLogout = userLogout;

  GLogoutDataBuilder() {
    GLogoutData._initializeBuilder(this);
  }

  GLogoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userLogout = $v.userLogout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLogoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLogoutData;
  }

  @override
  void update(void Function(GLogoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLogoutData build() => _build();

  _$GLogoutData _build() {
    _$GLogoutData _$result;
    try {
      _$result = _$v ??
          new _$GLogoutData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLogoutData', 'G__typename'),
              userLogout: _userLogout?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userLogout';
        _userLogout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLogoutData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLogoutData_userLogout extends GLogoutData_userLogout {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GLogoutData_userLogout(
          [void Function(GLogoutData_userLogoutBuilder)? updates]) =>
      (new GLogoutData_userLogoutBuilder()..update(updates))._build();

  _$GLogoutData_userLogout._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLogoutData_userLogout', 'G__typename');
  }

  @override
  GLogoutData_userLogout rebuild(
          void Function(GLogoutData_userLogoutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLogoutData_userLogoutBuilder toBuilder() =>
      new GLogoutData_userLogoutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLogoutData_userLogout &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLogoutData_userLogout')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GLogoutData_userLogoutBuilder
    implements Builder<GLogoutData_userLogout, GLogoutData_userLogoutBuilder> {
  _$GLogoutData_userLogout? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GLogoutData_userLogoutBuilder() {
    GLogoutData_userLogout._initializeBuilder(this);
  }

  GLogoutData_userLogoutBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLogoutData_userLogout other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLogoutData_userLogout;
  }

  @override
  void update(void Function(GLogoutData_userLogoutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLogoutData_userLogout build() => _build();

  _$GLogoutData_userLogout _build() {
    final _$result = _$v ??
        new _$GLogoutData_userLogout._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLogoutData_userLogout', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GForgotPasswordData extends GForgotPasswordData {
  @override
  final String G__typename;
  @override
  final GForgotPasswordData_userForgotPassword? userForgotPassword;

  factory _$GForgotPasswordData(
          [void Function(GForgotPasswordDataBuilder)? updates]) =>
      (new GForgotPasswordDataBuilder()..update(updates))._build();

  _$GForgotPasswordData._({required this.G__typename, this.userForgotPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForgotPasswordData', 'G__typename');
  }

  @override
  GForgotPasswordData rebuild(
          void Function(GForgotPasswordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForgotPasswordDataBuilder toBuilder() =>
      new GForgotPasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgotPasswordData &&
        G__typename == other.G__typename &&
        userForgotPassword == other.userForgotPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userForgotPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForgotPasswordData')
          ..add('G__typename', G__typename)
          ..add('userForgotPassword', userForgotPassword))
        .toString();
  }
}

class GForgotPasswordDataBuilder
    implements Builder<GForgotPasswordData, GForgotPasswordDataBuilder> {
  _$GForgotPasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GForgotPasswordData_userForgotPasswordBuilder? _userForgotPassword;
  GForgotPasswordData_userForgotPasswordBuilder get userForgotPassword =>
      _$this._userForgotPassword ??=
          new GForgotPasswordData_userForgotPasswordBuilder();
  set userForgotPassword(
          GForgotPasswordData_userForgotPasswordBuilder? userForgotPassword) =>
      _$this._userForgotPassword = userForgotPassword;

  GForgotPasswordDataBuilder() {
    GForgotPasswordData._initializeBuilder(this);
  }

  GForgotPasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userForgotPassword = $v.userForgotPassword?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgotPasswordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForgotPasswordData;
  }

  @override
  void update(void Function(GForgotPasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgotPasswordData build() => _build();

  _$GForgotPasswordData _build() {
    _$GForgotPasswordData _$result;
    try {
      _$result = _$v ??
          new _$GForgotPasswordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GForgotPasswordData', 'G__typename'),
              userForgotPassword: _userForgotPassword?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userForgotPassword';
        _userForgotPassword?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForgotPasswordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForgotPasswordData_userForgotPassword
    extends GForgotPasswordData_userForgotPassword {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? forgotLink;
  @override
  final String? errorMessage;

  factory _$GForgotPasswordData_userForgotPassword(
          [void Function(GForgotPasswordData_userForgotPasswordBuilder)?
              updates]) =>
      (new GForgotPasswordData_userForgotPasswordBuilder()..update(updates))
          ._build();

  _$GForgotPasswordData_userForgotPassword._(
      {required this.G__typename,
      this.status,
      this.forgotLink,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForgotPasswordData_userForgotPassword', 'G__typename');
  }

  @override
  GForgotPasswordData_userForgotPassword rebuild(
          void Function(GForgotPasswordData_userForgotPasswordBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForgotPasswordData_userForgotPasswordBuilder toBuilder() =>
      new GForgotPasswordData_userForgotPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgotPasswordData_userForgotPassword &&
        G__typename == other.G__typename &&
        status == other.status &&
        forgotLink == other.forgotLink &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, forgotLink.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GForgotPasswordData_userForgotPassword')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('forgotLink', forgotLink)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GForgotPasswordData_userForgotPasswordBuilder
    implements
        Builder<GForgotPasswordData_userForgotPassword,
            GForgotPasswordData_userForgotPasswordBuilder> {
  _$GForgotPasswordData_userForgotPassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _forgotLink;
  String? get forgotLink => _$this._forgotLink;
  set forgotLink(String? forgotLink) => _$this._forgotLink = forgotLink;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GForgotPasswordData_userForgotPasswordBuilder() {
    GForgotPasswordData_userForgotPassword._initializeBuilder(this);
  }

  GForgotPasswordData_userForgotPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _forgotLink = $v.forgotLink;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgotPasswordData_userForgotPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForgotPasswordData_userForgotPassword;
  }

  @override
  void update(
      void Function(GForgotPasswordData_userForgotPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgotPasswordData_userForgotPassword build() => _build();

  _$GForgotPasswordData_userForgotPassword _build() {
    final _$result = _$v ??
        new _$GForgotPasswordData_userForgotPassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GForgotPasswordData_userForgotPassword', 'G__typename'),
            status: status,
            forgotLink: forgotLink,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GForgotPasswordVerificationData
    extends GForgotPasswordVerificationData {
  @override
  final String G__typename;
  @override
  final GForgotPasswordVerificationData_verifyForgotPassword?
      verifyForgotPassword;

  factory _$GForgotPasswordVerificationData(
          [void Function(GForgotPasswordVerificationDataBuilder)? updates]) =>
      (new GForgotPasswordVerificationDataBuilder()..update(updates))._build();

  _$GForgotPasswordVerificationData._(
      {required this.G__typename, this.verifyForgotPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForgotPasswordVerificationData', 'G__typename');
  }

  @override
  GForgotPasswordVerificationData rebuild(
          void Function(GForgotPasswordVerificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForgotPasswordVerificationDataBuilder toBuilder() =>
      new GForgotPasswordVerificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgotPasswordVerificationData &&
        G__typename == other.G__typename &&
        verifyForgotPassword == other.verifyForgotPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, verifyForgotPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForgotPasswordVerificationData')
          ..add('G__typename', G__typename)
          ..add('verifyForgotPassword', verifyForgotPassword))
        .toString();
  }
}

class GForgotPasswordVerificationDataBuilder
    implements
        Builder<GForgotPasswordVerificationData,
            GForgotPasswordVerificationDataBuilder> {
  _$GForgotPasswordVerificationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GForgotPasswordVerificationData_verifyForgotPasswordBuilder?
      _verifyForgotPassword;
  GForgotPasswordVerificationData_verifyForgotPasswordBuilder
      get verifyForgotPassword => _$this._verifyForgotPassword ??=
          new GForgotPasswordVerificationData_verifyForgotPasswordBuilder();
  set verifyForgotPassword(
          GForgotPasswordVerificationData_verifyForgotPasswordBuilder?
              verifyForgotPassword) =>
      _$this._verifyForgotPassword = verifyForgotPassword;

  GForgotPasswordVerificationDataBuilder() {
    GForgotPasswordVerificationData._initializeBuilder(this);
  }

  GForgotPasswordVerificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _verifyForgotPassword = $v.verifyForgotPassword?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgotPasswordVerificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForgotPasswordVerificationData;
  }

  @override
  void update(void Function(GForgotPasswordVerificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgotPasswordVerificationData build() => _build();

  _$GForgotPasswordVerificationData _build() {
    _$GForgotPasswordVerificationData _$result;
    try {
      _$result = _$v ??
          new _$GForgotPasswordVerificationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForgotPasswordVerificationData', 'G__typename'),
              verifyForgotPassword: _verifyForgotPassword?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifyForgotPassword';
        _verifyForgotPassword?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForgotPasswordVerificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForgotPasswordVerificationData_verifyForgotPassword
    extends GForgotPasswordVerificationData_verifyForgotPassword {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GForgotPasswordVerificationData_verifyForgotPassword(
          [void Function(
                  GForgotPasswordVerificationData_verifyForgotPasswordBuilder)?
              updates]) =>
      (new GForgotPasswordVerificationData_verifyForgotPasswordBuilder()
            ..update(updates))
          ._build();

  _$GForgotPasswordVerificationData_verifyForgotPassword._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForgotPasswordVerificationData_verifyForgotPassword', 'G__typename');
  }

  @override
  GForgotPasswordVerificationData_verifyForgotPassword rebuild(
          void Function(
                  GForgotPasswordVerificationData_verifyForgotPasswordBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForgotPasswordVerificationData_verifyForgotPasswordBuilder toBuilder() =>
      new GForgotPasswordVerificationData_verifyForgotPasswordBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForgotPasswordVerificationData_verifyForgotPassword &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GForgotPasswordVerificationData_verifyForgotPassword')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GForgotPasswordVerificationData_verifyForgotPasswordBuilder
    implements
        Builder<GForgotPasswordVerificationData_verifyForgotPassword,
            GForgotPasswordVerificationData_verifyForgotPasswordBuilder> {
  _$GForgotPasswordVerificationData_verifyForgotPassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GForgotPasswordVerificationData_verifyForgotPasswordBuilder() {
    GForgotPasswordVerificationData_verifyForgotPassword._initializeBuilder(
        this);
  }

  GForgotPasswordVerificationData_verifyForgotPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForgotPasswordVerificationData_verifyForgotPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForgotPasswordVerificationData_verifyForgotPassword;
  }

  @override
  void update(
      void Function(
              GForgotPasswordVerificationData_verifyForgotPasswordBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForgotPasswordVerificationData_verifyForgotPassword build() => _build();

  _$GForgotPasswordVerificationData_verifyForgotPassword _build() {
    final _$result = _$v ??
        new _$GForgotPasswordVerificationData_verifyForgotPassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForgotPasswordVerificationData_verifyForgotPassword',
                'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GResetPasswordData extends GResetPasswordData {
  @override
  final String G__typename;
  @override
  final GResetPasswordData_updateForgotPassword? updateForgotPassword;

  factory _$GResetPasswordData(
          [void Function(GResetPasswordDataBuilder)? updates]) =>
      (new GResetPasswordDataBuilder()..update(updates))._build();

  _$GResetPasswordData._({required this.G__typename, this.updateForgotPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GResetPasswordData', 'G__typename');
  }

  @override
  GResetPasswordData rebuild(
          void Function(GResetPasswordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GResetPasswordDataBuilder toBuilder() =>
      new GResetPasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPasswordData &&
        G__typename == other.G__typename &&
        updateForgotPassword == other.updateForgotPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateForgotPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GResetPasswordData')
          ..add('G__typename', G__typename)
          ..add('updateForgotPassword', updateForgotPassword))
        .toString();
  }
}

class GResetPasswordDataBuilder
    implements Builder<GResetPasswordData, GResetPasswordDataBuilder> {
  _$GResetPasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GResetPasswordData_updateForgotPasswordBuilder? _updateForgotPassword;
  GResetPasswordData_updateForgotPasswordBuilder get updateForgotPassword =>
      _$this._updateForgotPassword ??=
          new GResetPasswordData_updateForgotPasswordBuilder();
  set updateForgotPassword(
          GResetPasswordData_updateForgotPasswordBuilder?
              updateForgotPassword) =>
      _$this._updateForgotPassword = updateForgotPassword;

  GResetPasswordDataBuilder() {
    GResetPasswordData._initializeBuilder(this);
  }

  GResetPasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateForgotPassword = $v.updateForgotPassword?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResetPasswordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GResetPasswordData;
  }

  @override
  void update(void Function(GResetPasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPasswordData build() => _build();

  _$GResetPasswordData _build() {
    _$GResetPasswordData _$result;
    try {
      _$result = _$v ??
          new _$GResetPasswordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GResetPasswordData', 'G__typename'),
              updateForgotPassword: _updateForgotPassword?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateForgotPassword';
        _updateForgotPassword?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GResetPasswordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GResetPasswordData_updateForgotPassword
    extends GResetPasswordData_updateForgotPassword {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GResetPasswordData_updateForgotPassword(
          [void Function(GResetPasswordData_updateForgotPasswordBuilder)?
              updates]) =>
      (new GResetPasswordData_updateForgotPasswordBuilder()..update(updates))
          ._build();

  _$GResetPasswordData_updateForgotPassword._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GResetPasswordData_updateForgotPassword', 'G__typename');
  }

  @override
  GResetPasswordData_updateForgotPassword rebuild(
          void Function(GResetPasswordData_updateForgotPasswordBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GResetPasswordData_updateForgotPasswordBuilder toBuilder() =>
      new GResetPasswordData_updateForgotPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GResetPasswordData_updateForgotPassword &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GResetPasswordData_updateForgotPassword')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GResetPasswordData_updateForgotPasswordBuilder
    implements
        Builder<GResetPasswordData_updateForgotPassword,
            GResetPasswordData_updateForgotPasswordBuilder> {
  _$GResetPasswordData_updateForgotPassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GResetPasswordData_updateForgotPasswordBuilder() {
    GResetPasswordData_updateForgotPassword._initializeBuilder(this);
  }

  GResetPasswordData_updateForgotPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GResetPasswordData_updateForgotPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GResetPasswordData_updateForgotPassword;
  }

  @override
  void update(
      void Function(GResetPasswordData_updateForgotPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GResetPasswordData_updateForgotPassword build() => _build();

  _$GResetPasswordData_updateForgotPassword _build() {
    final _$result = _$v ??
        new _$GResetPasswordData_updateForgotPassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GResetPasswordData_updateForgotPassword', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserData extends GdeleteUserData {
  @override
  final String G__typename;
  @override
  final GdeleteUserData_deleteUser? deleteUser;

  factory _$GdeleteUserData([void Function(GdeleteUserDataBuilder)? updates]) =>
      (new GdeleteUserDataBuilder()..update(updates))._build();

  _$GdeleteUserData._({required this.G__typename, this.deleteUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdeleteUserData', 'G__typename');
  }

  @override
  GdeleteUserData rebuild(void Function(GdeleteUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserDataBuilder toBuilder() =>
      new GdeleteUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserData &&
        G__typename == other.G__typename &&
        deleteUser == other.deleteUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteUserData')
          ..add('G__typename', G__typename)
          ..add('deleteUser', deleteUser))
        .toString();
  }
}

class GdeleteUserDataBuilder
    implements Builder<GdeleteUserData, GdeleteUserDataBuilder> {
  _$GdeleteUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GdeleteUserData_deleteUserBuilder? _deleteUser;
  GdeleteUserData_deleteUserBuilder get deleteUser =>
      _$this._deleteUser ??= new GdeleteUserData_deleteUserBuilder();
  set deleteUser(GdeleteUserData_deleteUserBuilder? deleteUser) =>
      _$this._deleteUser = deleteUser;

  GdeleteUserDataBuilder() {
    GdeleteUserData._initializeBuilder(this);
  }

  GdeleteUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteUser = $v.deleteUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserData;
  }

  @override
  void update(void Function(GdeleteUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserData build() => _build();

  _$GdeleteUserData _build() {
    _$GdeleteUserData _$result;
    try {
      _$result = _$v ??
          new _$GdeleteUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdeleteUserData', 'G__typename'),
              deleteUser: _deleteUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteUser';
        _deleteUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdeleteUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserData_deleteUser extends GdeleteUserData_deleteUser {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GdeleteUserData_deleteUser(
          [void Function(GdeleteUserData_deleteUserBuilder)? updates]) =>
      (new GdeleteUserData_deleteUserBuilder()..update(updates))._build();

  _$GdeleteUserData_deleteUser._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdeleteUserData_deleteUser', 'G__typename');
  }

  @override
  GdeleteUserData_deleteUser rebuild(
          void Function(GdeleteUserData_deleteUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserData_deleteUserBuilder toBuilder() =>
      new GdeleteUserData_deleteUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserData_deleteUser &&
        G__typename == other.G__typename &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteUserData_deleteUser')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GdeleteUserData_deleteUserBuilder
    implements
        Builder<GdeleteUserData_deleteUser, GdeleteUserData_deleteUserBuilder> {
  _$GdeleteUserData_deleteUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GdeleteUserData_deleteUserBuilder() {
    GdeleteUserData_deleteUser._initializeBuilder(this);
  }

  GdeleteUserData_deleteUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteUserData_deleteUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserData_deleteUser;
  }

  @override
  void update(void Function(GdeleteUserData_deleteUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserData_deleteUser build() => _build();

  _$GdeleteUserData_deleteUser _build() {
    final _$result = _$v ??
        new _$GdeleteUserData_deleteUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdeleteUserData_deleteUser', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
