// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserUpdateData> _$guserUpdateDataSerializer =
    new _$GuserUpdateDataSerializer();
Serializer<GuserUpdateData_userUpdate> _$guserUpdateDataUserUpdateSerializer =
    new _$GuserUpdateData_userUpdateSerializer();
Serializer<GSendConfirmEmailData> _$gSendConfirmEmailDataSerializer =
    new _$GSendConfirmEmailDataSerializer();
Serializer<GSendConfirmEmailData_ResendConfirmEmail>
    _$gSendConfirmEmailDataResendConfirmEmailSerializer =
    new _$GSendConfirmEmailData_ResendConfirmEmailSerializer();
Serializer<GSendConfirmEmailData_ResendConfirmEmail_results>
    _$gSendConfirmEmailDataResendConfirmEmailResultsSerializer =
    new _$GSendConfirmEmailData_ResendConfirmEmail_resultsSerializer();
Serializer<GSendConfirmEmailData_ResendConfirmEmail_results_profile>
    _$gSendConfirmEmailDataResendConfirmEmailResultsProfileSerializer =
    new _$GSendConfirmEmailData_ResendConfirmEmail_results_profileSerializer();
Serializer<GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData>
    _$gSendConfirmEmailDataResendConfirmEmailResultsProfileUserDataSerializer =
    new _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataSerializer();
Serializer<GCodeVerificationData> _$gCodeVerificationDataSerializer =
    new _$GCodeVerificationDataSerializer();
Serializer<GCodeVerificationData_EmailVerification>
    _$gCodeVerificationDataEmailVerificationSerializer =
    new _$GCodeVerificationData_EmailVerificationSerializer();
Serializer<GSocialLoginVerifyData> _$gSocialLoginVerifyDataSerializer =
    new _$GSocialLoginVerifyDataSerializer();
Serializer<GSocialLoginVerifyData_SocialVerification>
    _$gSocialLoginVerifyDataSocialVerificationSerializer =
    new _$GSocialLoginVerifyData_SocialVerificationSerializer();
Serializer<GshowUserProfileData> _$gshowUserProfileDataSerializer =
    new _$GshowUserProfileDataSerializer();
Serializer<GshowUserProfileData_showUserProfile>
    _$gshowUserProfileDataShowUserProfileSerializer =
    new _$GshowUserProfileData_showUserProfileSerializer();
Serializer<GshowUserProfileData_showUserProfile_results>
    _$gshowUserProfileDataShowUserProfileResultsSerializer =
    new _$GshowUserProfileData_showUserProfile_resultsSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_userData>
    _$gshowUserProfileDataShowUserProfileResultsUserDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_userDataSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_userData_userData>
    _$gshowUserProfileDataShowUserProfileResultsUserDataUserDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_userData_userDataSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_userData_userVerification>
    _$gshowUserProfileDataShowUserProfileResultsUserDataUserVerificationSerializer =
    new _$GshowUserProfileData_showUserProfile_results_userData_userVerificationSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_reviews>
    _$gshowUserProfileDataShowUserProfileResultsReviewsSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviewsSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_reviews_userData>
    _$gshowUserProfileDataShowUserProfileResultsReviewsUserDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_userDataSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification>
    _$gshowUserProfileDataShowUserProfileResultsReviewsUserDataUserVerificationSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_reviews_listData>
    _$gshowUserProfileDataShowUserProfileResultsReviewsListDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_listDataSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_reviews_response>
    _$gshowUserProfileDataShowUserProfileResultsReviewsResponseSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_responseSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_reviews_response_userData>
    _$gshowUserProfileDataShowUserProfileResultsReviewsResponseUserDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_response_userDataSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification>
    _$gshowUserProfileDataShowUserProfileResultsReviewsResponseUserDataUserVerificationSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_reviews_response_authorData>
    _$gshowUserProfileDataShowUserProfileResultsReviewsResponseAuthorDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_response_authorDataSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification>
    _$gshowUserProfileDataShowUserProfileResultsReviewsResponseAuthorDataUserVerificationSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationSerializer();
Serializer<GshowUserProfileData_showUserProfile_results_reviews_authorData>
    _$gshowUserProfileDataShowUserProfileResultsReviewsAuthorDataSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_authorDataSerializer();
Serializer<
        GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification>
    _$gshowUserProfileDataShowUserProfileResultsReviewsAuthorDataUserVerificationSerializer =
    new _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationSerializer();
Serializer<GuserAccountData> _$guserAccountDataSerializer =
    new _$GuserAccountDataSerializer();
Serializer<GuserAccountData_userAccount>
    _$guserAccountDataUserAccountSerializer =
    new _$GuserAccountData_userAccountSerializer();
Serializer<GuserAccountData_userAccount_result>
    _$guserAccountDataUserAccountResultSerializer =
    new _$GuserAccountData_userAccount_resultSerializer();
Serializer<GuserAccountData_userAccount_result_verification>
    _$guserAccountDataUserAccountResultVerificationSerializer =
    new _$GuserAccountData_userAccount_result_verificationSerializer();
Serializer<GuserAccountData_userAccount_result_userData>
    _$guserAccountDataUserAccountResultUserDataSerializer =
    new _$GuserAccountData_userAccount_result_userDataSerializer();

class _$GuserUpdateDataSerializer
    implements StructuredSerializer<GuserUpdateData> {
  @override
  final Iterable<Type> types = const [GuserUpdateData, _$GuserUpdateData];
  @override
  final String wireName = 'GuserUpdateData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserUpdateData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userUpdate;
    if (value != null) {
      result
        ..add('userUpdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GuserUpdateData_userUpdate)));
    }
    return result;
  }

  @override
  GuserUpdateData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserUpdateDataBuilder();

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
        case 'userUpdate':
          result.userUpdate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GuserUpdateData_userUpdate))!
              as GuserUpdateData_userUpdate);
          break;
      }
    }

    return result.build();
  }
}

class _$GuserUpdateData_userUpdateSerializer
    implements StructuredSerializer<GuserUpdateData_userUpdate> {
  @override
  final Iterable<Type> types = const [
    GuserUpdateData_userUpdate,
    _$GuserUpdateData_userUpdate
  ];
  @override
  final String wireName = 'GuserUpdateData_userUpdate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserUpdateData_userUpdate object,
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
    value = object.userToken;
    if (value != null) {
      result
        ..add('userToken')
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
  GuserUpdateData_userUpdate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserUpdateData_userUpdateBuilder();

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
        case 'userToken':
          result.userToken = serializers.deserialize(value,
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

class _$GSendConfirmEmailDataSerializer
    implements StructuredSerializer<GSendConfirmEmailData> {
  @override
  final Iterable<Type> types = const [
    GSendConfirmEmailData,
    _$GSendConfirmEmailData
  ];
  @override
  final String wireName = 'GSendConfirmEmailData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendConfirmEmailData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ResendConfirmEmail;
    if (value != null) {
      result
        ..add('ResendConfirmEmail')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSendConfirmEmailData_ResendConfirmEmail)));
    }
    return result;
  }

  @override
  GSendConfirmEmailData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendConfirmEmailDataBuilder();

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
        case 'ResendConfirmEmail':
          result.ResendConfirmEmail.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSendConfirmEmailData_ResendConfirmEmail))!
              as GSendConfirmEmailData_ResendConfirmEmail);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmailSerializer
    implements StructuredSerializer<GSendConfirmEmailData_ResendConfirmEmail> {
  @override
  final Iterable<Type> types = const [
    GSendConfirmEmailData_ResendConfirmEmail,
    _$GSendConfirmEmailData_ResendConfirmEmail
  ];
  @override
  final String wireName = 'GSendConfirmEmailData_ResendConfirmEmail';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendConfirmEmailData_ResendConfirmEmail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSendConfirmEmailData_ResendConfirmEmail_results)));
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
  GSendConfirmEmailData_ResendConfirmEmail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendConfirmEmailData_ResendConfirmEmailBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSendConfirmEmailData_ResendConfirmEmail_results))!
              as GSendConfirmEmailData_ResendConfirmEmail_results);
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

class _$GSendConfirmEmailData_ResendConfirmEmail_resultsSerializer
    implements
        StructuredSerializer<GSendConfirmEmailData_ResendConfirmEmail_results> {
  @override
  final Iterable<Type> types = const [
    GSendConfirmEmailData_ResendConfirmEmail_results,
    _$GSendConfirmEmailData_ResendConfirmEmail_results
  ];
  @override
  final String wireName = 'GSendConfirmEmailData_ResendConfirmEmail_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSendConfirmEmailData_ResendConfirmEmail_results object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSendConfirmEmailData_ResendConfirmEmail_results_profile)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSendConfirmEmailData_ResendConfirmEmail_results_profile))!
              as GSendConfirmEmailData_ResendConfirmEmail_results_profile);
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmail_results_profileSerializer
    implements
        StructuredSerializer<
            GSendConfirmEmailData_ResendConfirmEmail_results_profile> {
  @override
  final Iterable<Type> types = const [
    GSendConfirmEmailData_ResendConfirmEmail_results_profile,
    _$GSendConfirmEmailData_ResendConfirmEmail_results_profile
  ];
  @override
  final String wireName =
      'GSendConfirmEmailData_ResendConfirmEmail_results_profile';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSendConfirmEmailData_ResendConfirmEmail_results_profile object,
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
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData)));
    }
    return result;
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder();

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
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData))!
              as GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataSerializer
    implements
        StructuredSerializer<
            GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData> {
  @override
  final Iterable<Type> types = const [
    GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData,
    _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
  ];
  @override
  final String wireName =
      'GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCodeVerificationDataSerializer
    implements StructuredSerializer<GCodeVerificationData> {
  @override
  final Iterable<Type> types = const [
    GCodeVerificationData,
    _$GCodeVerificationData
  ];
  @override
  final String wireName = 'GCodeVerificationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCodeVerificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.EmailVerification;
    if (value != null) {
      result
        ..add('EmailVerification')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCodeVerificationData_EmailVerification)));
    }
    return result;
  }

  @override
  GCodeVerificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCodeVerificationDataBuilder();

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
        case 'EmailVerification':
          result.EmailVerification.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCodeVerificationData_EmailVerification))!
              as GCodeVerificationData_EmailVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GCodeVerificationData_EmailVerificationSerializer
    implements StructuredSerializer<GCodeVerificationData_EmailVerification> {
  @override
  final Iterable<Type> types = const [
    GCodeVerificationData_EmailVerification,
    _$GCodeVerificationData_EmailVerification
  ];
  @override
  final String wireName = 'GCodeVerificationData_EmailVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCodeVerificationData_EmailVerification object,
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
  GCodeVerificationData_EmailVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCodeVerificationData_EmailVerificationBuilder();

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

class _$GSocialLoginVerifyDataSerializer
    implements StructuredSerializer<GSocialLoginVerifyData> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginVerifyData,
    _$GSocialLoginVerifyData
  ];
  @override
  final String wireName = 'GSocialLoginVerifyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialLoginVerifyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SocialVerification;
    if (value != null) {
      result
        ..add('SocialVerification')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSocialLoginVerifyData_SocialVerification)));
    }
    return result;
  }

  @override
  GSocialLoginVerifyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginVerifyDataBuilder();

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
        case 'SocialVerification':
          result.SocialVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSocialLoginVerifyData_SocialVerification))!
              as GSocialLoginVerifyData_SocialVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialLoginVerifyData_SocialVerificationSerializer
    implements StructuredSerializer<GSocialLoginVerifyData_SocialVerification> {
  @override
  final Iterable<Type> types = const [
    GSocialLoginVerifyData_SocialVerification,
    _$GSocialLoginVerifyData_SocialVerification
  ];
  @override
  final String wireName = 'GSocialLoginVerifyData_SocialVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialLoginVerifyData_SocialVerification object,
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
  GSocialLoginVerifyData_SocialVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialLoginVerifyData_SocialVerificationBuilder();

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

class _$GshowUserProfileDataSerializer
    implements StructuredSerializer<GshowUserProfileData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData,
    _$GshowUserProfileData
  ];
  @override
  final String wireName = 'GshowUserProfileData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GshowUserProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.showUserProfile;
    if (value != null) {
      result
        ..add('showUserProfile')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GshowUserProfileData_showUserProfile)));
    }
    return result;
  }

  @override
  GshowUserProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GshowUserProfileDataBuilder();

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
        case 'showUserProfile':
          result.showUserProfile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GshowUserProfileData_showUserProfile))!
              as GshowUserProfileData_showUserProfile);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfileSerializer
    implements StructuredSerializer<GshowUserProfileData_showUserProfile> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile,
    _$GshowUserProfileData_showUserProfile
  ];
  @override
  final String wireName = 'GshowUserProfileData_showUserProfile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GshowUserProfileData_showUserProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GshowUserProfileData_showUserProfile_results)));
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
  GshowUserProfileData_showUserProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GshowUserProfileData_showUserProfileBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results))!
              as GshowUserProfileData_showUserProfile_results);
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

class _$GshowUserProfileData_showUserProfile_resultsSerializer
    implements
        StructuredSerializer<GshowUserProfileData_showUserProfile_results> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results,
    _$GshowUserProfileData_showUserProfile_results
  ];
  @override
  final String wireName = 'GshowUserProfileData_showUserProfile_results';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_userData)));
    }
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GshowUserProfileData_showUserProfile_results_reviews)
            ])));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GshowUserProfileData_showUserProfile_resultsBuilder();

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
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_userData))!
              as GshowUserProfileData_showUserProfile_results_userData);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GshowUserProfileData_showUserProfile_results_reviews)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_userDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_userData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_userData,
    _$GshowUserProfileData_showUserProfile_results_userData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_userData object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_userData_userData)));
    }
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_userData_userVerification)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
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
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullPhoneNumber;
    if (value != null) {
      result
        ..add('fullPhoneNumber')
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_userDataBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_userData_userData))!
              as GshowUserProfileData_showUserProfile_results_userData_userData);
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_userData_userVerification))!
              as GshowUserProfileData_showUserProfile_results_userData_userVerification);
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullPhoneNumber':
          result.fullPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_userData_userDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_userData_userData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_userData_userData,
    _$GshowUserProfileData_showUserProfile_results_userData_userData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_userData_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_userData_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_userData_userDataBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_userData_userVerificationSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_userData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_userData_userVerification,
    _$GshowUserProfileData_showUserProfile_results_userData_userVerification
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_userData_userVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_userData_userVerification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
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
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
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
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData_userVerification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviewsSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews,
    _$GshowUserProfileData_showUserProfile_results_reviews
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews object,
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
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviewContent;
    if (value != null) {
      result
        ..add('reviewContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.privateFeedback;
    if (value != null) {
      result
        ..add('privateFeedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.yourReviewsCount;
    if (value != null) {
      result
        ..add('yourReviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_userData)));
    }
    value = object.listData;
    if (value != null) {
      result
        ..add('listData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_listData)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_response)));
    }
    value = object.authorData;
    if (value != null) {
      result
        ..add('authorData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_authorData)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviewsBuilder();

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
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reviewContent':
          result.reviewContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'privateFeedback':
          result.privateFeedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'yourReviewsCount':
          result.yourReviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_userData))!
              as GshowUserProfileData_showUserProfile_results_reviews_userData);
          break;
        case 'listData':
          result.listData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_listData))!
              as GshowUserProfileData_showUserProfile_results_reviews_listData);
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_response))!
              as GshowUserProfileData_showUserProfile_results_reviews_response);
          break;
        case 'authorData':
          result.authorData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_authorData))!
              as GshowUserProfileData_showUserProfile_results_reviews_authorData);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_userDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_userData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_userData,
    _$GshowUserProfileData_showUserProfile_results_reviews_userData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_userData object,
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
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
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
    value = object.fullPhoneNumber;
    if (value != null) {
      result
        ..add('fullPhoneNumber')
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
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
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
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder();

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
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullPhoneNumber':
          result.fullPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification))!
              as GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification,
    _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
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
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
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
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_listDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_listData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_listData,
    _$GshowUserProfileData_showUserProfile_results_reviews_listData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_listData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_listData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_listData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_responseSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_response> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_response,
    _$GshowUserProfileData_showUserProfile_results_reviews_response
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_response';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_response object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.authorId;
    if (value != null) {
      result
        ..add('authorId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.automated;
    if (value != null) {
      result
        ..add('automated')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listId;
    if (value != null) {
      result
        ..add('listId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parentId;
    if (value != null) {
      result
        ..add('parentId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.privateFeedback;
    if (value != null) {
      result
        ..add('privateFeedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewContent;
    if (value != null) {
      result
        ..add('reviewContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reservationId;
    if (value != null) {
      result
        ..add('reservationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_response_userData)));
    }
    value = object.authorData;
    if (value != null) {
      result
        ..add('authorData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_response_authorData)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_responseBuilder();

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
        case 'authorId':
          result.authorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'automated':
          result.automated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listId':
          result.listId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parentId':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'privateFeedback':
          result.privateFeedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewContent':
          result.reviewContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reservationId':
          result.reservationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_response_userData))!
              as GshowUserProfileData_showUserProfile_results_reviews_response_userData);
          break;
        case 'authorData':
          result.authorData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_response_authorData))!
              as GshowUserProfileData_showUserProfile_results_reviews_response_authorData);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_userDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_response_userData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_response_userData,
    _$GshowUserProfileData_showUserProfile_results_reviews_response_userData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_response_userData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_response_userData
          object,
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
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
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
    value = object.fullPhoneNumber;
    if (value != null) {
      result
        ..add('fullPhoneNumber')
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
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
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
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder();

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
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullPhoneNumber':
          result.fullPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification))!
              as GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification,
    _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
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
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
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
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_authorDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_response_authorData,
    _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_response_authorData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_response_authorData
          object,
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
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder();

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
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification))!
              as GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification,
    _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
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
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
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
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_authorDataSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_authorData> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_authorData,
    _$GshowUserProfileData_showUserProfile_results_reviews_authorData
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_authorData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_authorData object,
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
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userVerification;
    if (value != null) {
      result
        ..add('userVerification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder();

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
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewsCount':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userVerification':
          result.userVerification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification))!
              as GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationSerializer
    implements
        StructuredSerializer<
            GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification,
    _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
  ];
  @override
  final String wireName =
      'GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
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
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
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
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserAccountDataSerializer
    implements StructuredSerializer<GuserAccountData> {
  @override
  final Iterable<Type> types = const [GuserAccountData, _$GuserAccountData];
  @override
  final String wireName = 'GuserAccountData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserAccountData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userAccount;
    if (value != null) {
      result
        ..add('userAccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GuserAccountData_userAccount)));
    }
    return result;
  }

  @override
  GuserAccountData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserAccountDataBuilder();

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
        case 'userAccount':
          result.userAccount.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GuserAccountData_userAccount))!
              as GuserAccountData_userAccount);
          break;
      }
    }

    return result.build();
  }
}

class _$GuserAccountData_userAccountSerializer
    implements StructuredSerializer<GuserAccountData_userAccount> {
  @override
  final Iterable<Type> types = const [
    GuserAccountData_userAccount,
    _$GuserAccountData_userAccount
  ];
  @override
  final String wireName = 'GuserAccountData_userAccount';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserAccountData_userAccount object,
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
                const FullType(GuserAccountData_userAccount_result)));
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
  GuserAccountData_userAccount deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserAccountData_userAccountBuilder();

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
                      const FullType(GuserAccountData_userAccount_result))!
              as GuserAccountData_userAccount_result);
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

class _$GuserAccountData_userAccount_resultSerializer
    implements StructuredSerializer<GuserAccountData_userAccount_result> {
  @override
  final Iterable<Type> types = const [
    GuserAccountData_userAccount_result,
    _$GuserAccountData_userAccount_result
  ];
  @override
  final String wireName = 'GuserAccountData_userAccount_result';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GuserAccountData_userAccount_result object,
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
    value = object.profileId;
    if (value != null) {
      result
        ..add('profileId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iosDOB;
    if (value != null) {
      result
        ..add('iosDOB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userBanStatus;
    if (value != null) {
      result
        ..add('userBanStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.preferredLanguageName;
    if (value != null) {
      result
        ..add('preferredLanguageName')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userDeletedAt;
    if (value != null) {
      result
        ..add('userDeletedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verification;
    if (value != null) {
      result
        ..add('verification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GuserAccountData_userAccount_result_verification)));
    }
    value = object.userData;
    if (value != null) {
      result
        ..add('userData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GuserAccountData_userAccount_result_userData)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.verificationCode;
    if (value != null) {
      result
        ..add('verificationCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.countryCode;
    if (value != null) {
      result
        ..add('countryCode')
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
    value = object.loginUserType;
    if (value != null) {
      result
        ..add('loginUserType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAddedList;
    if (value != null) {
      result
        ..add('isAddedList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.phoneNumberStatus;
    if (value != null) {
      result
        ..add('phoneNumberStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GuserAccountData_userAccount_result deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserAccountData_userAccount_resultBuilder();

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
        case 'profileId':
          result.profileId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iosDOB':
          result.iosDOB = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userBanStatus':
          result.userBanStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredLanguage':
          result.preferredLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredLanguageName':
          result.preferredLanguageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferredCurrency':
          result.preferredCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userDeletedAt':
          result.userDeletedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'verification':
          result.verification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GuserAccountData_userAccount_result_verification))!
              as GuserAccountData_userAccount_result_verification);
          break;
        case 'userData':
          result.userData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GuserAccountData_userAccount_result_userData))!
              as GuserAccountData_userAccount_result_userData);
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'verificationCode':
          result.verificationCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'errorMessage':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loginUserType':
          result.loginUserType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAddedList':
          result.isAddedList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'phoneNumberStatus':
          result.phoneNumberStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GuserAccountData_userAccount_result_verificationSerializer
    implements
        StructuredSerializer<GuserAccountData_userAccount_result_verification> {
  @override
  final Iterable<Type> types = const [
    GuserAccountData_userAccount_result_verification,
    _$GuserAccountData_userAccount_result_verification
  ];
  @override
  final String wireName = 'GuserAccountData_userAccount_result_verification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GuserAccountData_userAccount_result_verification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isEmailConfirmed;
    if (value != null) {
      result
        ..add('isEmailConfirmed')
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
    value = object.isGoogleConnected;
    if (value != null) {
      result
        ..add('isGoogleConnected')
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
    value = object.isPhoneVerified;
    if (value != null) {
      result
        ..add('isPhoneVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GuserAccountData_userAccount_result_verification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GuserAccountData_userAccount_result_verificationBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEmailConfirmed':
          result.isEmailConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isFacebookConnected':
          result.isFacebookConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isGoogleConnected':
          result.isGoogleConnected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isIdVerification':
          result.isIdVerification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPhoneVerified':
          result.isPhoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserAccountData_userAccount_result_userDataSerializer
    implements
        StructuredSerializer<GuserAccountData_userAccount_result_userData> {
  @override
  final Iterable<Type> types = const [
    GuserAccountData_userAccount_result_userData,
    _$GuserAccountData_userAccount_result_userData
  ];
  @override
  final String wireName = 'GuserAccountData_userAccount_result_userData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GuserAccountData_userAccount_result_userData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userToken;
    if (value != null) {
      result
        ..add('userToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.forgotLink;
    if (value != null) {
      result
        ..add('forgotLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GuserAccountData_userAccount_result_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserAccountData_userAccount_result_userDataBuilder();

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
        case 'userToken':
          result.userToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'forgotLink':
          result.forgotLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GuserUpdateData extends GuserUpdateData {
  @override
  final String G__typename;
  @override
  final GuserUpdateData_userUpdate? userUpdate;

  factory _$GuserUpdateData([void Function(GuserUpdateDataBuilder)? updates]) =>
      (new GuserUpdateDataBuilder()..update(updates))._build();

  _$GuserUpdateData._({required this.G__typename, this.userUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserUpdateData', 'G__typename');
  }

  @override
  GuserUpdateData rebuild(void Function(GuserUpdateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserUpdateDataBuilder toBuilder() =>
      new GuserUpdateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserUpdateData &&
        G__typename == other.G__typename &&
        userUpdate == other.userUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserUpdateData')
          ..add('G__typename', G__typename)
          ..add('userUpdate', userUpdate))
        .toString();
  }
}

class GuserUpdateDataBuilder
    implements Builder<GuserUpdateData, GuserUpdateDataBuilder> {
  _$GuserUpdateData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GuserUpdateData_userUpdateBuilder? _userUpdate;
  GuserUpdateData_userUpdateBuilder get userUpdate =>
      _$this._userUpdate ??= new GuserUpdateData_userUpdateBuilder();
  set userUpdate(GuserUpdateData_userUpdateBuilder? userUpdate) =>
      _$this._userUpdate = userUpdate;

  GuserUpdateDataBuilder() {
    GuserUpdateData._initializeBuilder(this);
  }

  GuserUpdateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userUpdate = $v.userUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserUpdateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserUpdateData;
  }

  @override
  void update(void Function(GuserUpdateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserUpdateData build() => _build();

  _$GuserUpdateData _build() {
    _$GuserUpdateData _$result;
    try {
      _$result = _$v ??
          new _$GuserUpdateData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GuserUpdateData', 'G__typename'),
              userUpdate: _userUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userUpdate';
        _userUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GuserUpdateData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GuserUpdateData_userUpdate extends GuserUpdateData_userUpdate {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? userToken;
  @override
  final String? errorMessage;

  factory _$GuserUpdateData_userUpdate(
          [void Function(GuserUpdateData_userUpdateBuilder)? updates]) =>
      (new GuserUpdateData_userUpdateBuilder()..update(updates))._build();

  _$GuserUpdateData_userUpdate._(
      {required this.G__typename,
      this.status,
      this.userToken,
      this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserUpdateData_userUpdate', 'G__typename');
  }

  @override
  GuserUpdateData_userUpdate rebuild(
          void Function(GuserUpdateData_userUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserUpdateData_userUpdateBuilder toBuilder() =>
      new GuserUpdateData_userUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserUpdateData_userUpdate &&
        G__typename == other.G__typename &&
        status == other.status &&
        userToken == other.userToken &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, userToken.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserUpdateData_userUpdate')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('userToken', userToken)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GuserUpdateData_userUpdateBuilder
    implements
        Builder<GuserUpdateData_userUpdate, GuserUpdateData_userUpdateBuilder> {
  _$GuserUpdateData_userUpdate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GuserUpdateData_userUpdateBuilder() {
    GuserUpdateData_userUpdate._initializeBuilder(this);
  }

  GuserUpdateData_userUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _userToken = $v.userToken;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserUpdateData_userUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserUpdateData_userUpdate;
  }

  @override
  void update(void Function(GuserUpdateData_userUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserUpdateData_userUpdate build() => _build();

  _$GuserUpdateData_userUpdate _build() {
    final _$result = _$v ??
        new _$GuserUpdateData_userUpdate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GuserUpdateData_userUpdate', 'G__typename'),
            status: status,
            userToken: userToken,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GSendConfirmEmailData extends GSendConfirmEmailData {
  @override
  final String G__typename;
  @override
  final GSendConfirmEmailData_ResendConfirmEmail? ResendConfirmEmail;

  factory _$GSendConfirmEmailData(
          [void Function(GSendConfirmEmailDataBuilder)? updates]) =>
      (new GSendConfirmEmailDataBuilder()..update(updates))._build();

  _$GSendConfirmEmailData._(
      {required this.G__typename, this.ResendConfirmEmail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSendConfirmEmailData', 'G__typename');
  }

  @override
  GSendConfirmEmailData rebuild(
          void Function(GSendConfirmEmailDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendConfirmEmailDataBuilder toBuilder() =>
      new GSendConfirmEmailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendConfirmEmailData &&
        G__typename == other.G__typename &&
        ResendConfirmEmail == other.ResendConfirmEmail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ResendConfirmEmail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSendConfirmEmailData')
          ..add('G__typename', G__typename)
          ..add('ResendConfirmEmail', ResendConfirmEmail))
        .toString();
  }
}

class GSendConfirmEmailDataBuilder
    implements Builder<GSendConfirmEmailData, GSendConfirmEmailDataBuilder> {
  _$GSendConfirmEmailData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSendConfirmEmailData_ResendConfirmEmailBuilder? _ResendConfirmEmail;
  GSendConfirmEmailData_ResendConfirmEmailBuilder get ResendConfirmEmail =>
      _$this._ResendConfirmEmail ??=
          new GSendConfirmEmailData_ResendConfirmEmailBuilder();
  set ResendConfirmEmail(
          GSendConfirmEmailData_ResendConfirmEmailBuilder?
              ResendConfirmEmail) =>
      _$this._ResendConfirmEmail = ResendConfirmEmail;

  GSendConfirmEmailDataBuilder() {
    GSendConfirmEmailData._initializeBuilder(this);
  }

  GSendConfirmEmailDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ResendConfirmEmail = $v.ResendConfirmEmail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendConfirmEmailData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendConfirmEmailData;
  }

  @override
  void update(void Function(GSendConfirmEmailDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendConfirmEmailData build() => _build();

  _$GSendConfirmEmailData _build() {
    _$GSendConfirmEmailData _$result;
    try {
      _$result = _$v ??
          new _$GSendConfirmEmailData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSendConfirmEmailData', 'G__typename'),
              ResendConfirmEmail: _ResendConfirmEmail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ResendConfirmEmail';
        _ResendConfirmEmail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSendConfirmEmailData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmail
    extends GSendConfirmEmailData_ResendConfirmEmail {
  @override
  final String G__typename;
  @override
  final GSendConfirmEmailData_ResendConfirmEmail_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GSendConfirmEmailData_ResendConfirmEmail(
          [void Function(GSendConfirmEmailData_ResendConfirmEmailBuilder)?
              updates]) =>
      (new GSendConfirmEmailData_ResendConfirmEmailBuilder()..update(updates))
          ._build();

  _$GSendConfirmEmailData_ResendConfirmEmail._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSendConfirmEmailData_ResendConfirmEmail', 'G__typename');
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail rebuild(
          void Function(GSendConfirmEmailData_ResendConfirmEmailBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendConfirmEmailData_ResendConfirmEmailBuilder toBuilder() =>
      new GSendConfirmEmailData_ResendConfirmEmailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendConfirmEmailData_ResendConfirmEmail &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSendConfirmEmailData_ResendConfirmEmail')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GSendConfirmEmailData_ResendConfirmEmailBuilder
    implements
        Builder<GSendConfirmEmailData_ResendConfirmEmail,
            GSendConfirmEmailData_ResendConfirmEmailBuilder> {
  _$GSendConfirmEmailData_ResendConfirmEmail? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder? _results;
  GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder get results =>
      _$this._results ??=
          new GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder();
  set results(
          GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GSendConfirmEmailData_ResendConfirmEmailBuilder() {
    GSendConfirmEmailData_ResendConfirmEmail._initializeBuilder(this);
  }

  GSendConfirmEmailData_ResendConfirmEmailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendConfirmEmailData_ResendConfirmEmail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendConfirmEmailData_ResendConfirmEmail;
  }

  @override
  void update(
      void Function(GSendConfirmEmailData_ResendConfirmEmailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail build() => _build();

  _$GSendConfirmEmailData_ResendConfirmEmail _build() {
    _$GSendConfirmEmailData_ResendConfirmEmail _$result;
    try {
      _$result = _$v ??
          new _$GSendConfirmEmailData_ResendConfirmEmail._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSendConfirmEmailData_ResendConfirmEmail', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSendConfirmEmailData_ResendConfirmEmail',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmail_results
    extends GSendConfirmEmailData_ResendConfirmEmail_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final GSendConfirmEmailData_ResendConfirmEmail_results_profile? profile;
  @override
  final String? token;
  @override
  final String? email;
  @override
  final String? status;

  factory _$GSendConfirmEmailData_ResendConfirmEmail_results(
          [void Function(
                  GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder)?
              updates]) =>
      (new GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder()
            ..update(updates))
          ._build();

  _$GSendConfirmEmailData_ResendConfirmEmail_results._(
      {required this.G__typename,
      this.id,
      this.userId,
      this.profile,
      this.token,
      this.email,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSendConfirmEmailData_ResendConfirmEmail_results', 'G__typename');
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results rebuild(
          void Function(GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder toBuilder() =>
      new GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendConfirmEmailData_ResendConfirmEmail_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        profile == other.profile &&
        token == other.token &&
        email == other.email &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSendConfirmEmailData_ResendConfirmEmail_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('profile', profile)
          ..add('token', token)
          ..add('email', email)
          ..add('status', status))
        .toString();
  }
}

class GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder
    implements
        Builder<GSendConfirmEmailData_ResendConfirmEmail_results,
            GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder> {
  _$GSendConfirmEmailData_ResendConfirmEmail_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder? _profile;
  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder get profile =>
      _$this._profile ??=
          new GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder();
  set profile(
          GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder?
              profile) =>
      _$this._profile = profile;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder() {
    GSendConfirmEmailData_ResendConfirmEmail_results._initializeBuilder(this);
  }

  GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _profile = $v.profile?.toBuilder();
      _token = $v.token;
      _email = $v.email;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendConfirmEmailData_ResendConfirmEmail_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendConfirmEmailData_ResendConfirmEmail_results;
  }

  @override
  void update(
      void Function(GSendConfirmEmailData_ResendConfirmEmail_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results build() => _build();

  _$GSendConfirmEmailData_ResendConfirmEmail_results _build() {
    _$GSendConfirmEmailData_ResendConfirmEmail_results _$result;
    try {
      _$result = _$v ??
          new _$GSendConfirmEmailData_ResendConfirmEmail_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSendConfirmEmailData_ResendConfirmEmail_results',
                  'G__typename'),
              id: id,
              userId: userId,
              profile: _profile?.build(),
              token: token,
              email: email,
              status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profile';
        _profile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSendConfirmEmailData_ResendConfirmEmail_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmail_results_profile
    extends GSendConfirmEmailData_ResendConfirmEmail_results_profile {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData?
      userData;

  factory _$GSendConfirmEmailData_ResendConfirmEmail_results_profile(
          [void Function(
                  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder)?
              updates]) =>
      (new GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder()
            ..update(updates))
          ._build();

  _$GSendConfirmEmailData_ResendConfirmEmail_results_profile._(
      {required this.G__typename, this.firstName, this.userData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSendConfirmEmailData_ResendConfirmEmail_results_profile',
        'G__typename');
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile rebuild(
          void Function(
                  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder toBuilder() =>
      new GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendConfirmEmailData_ResendConfirmEmail_results_profile &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        userData == other.userData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSendConfirmEmailData_ResendConfirmEmail_results_profile')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('userData', userData))
        .toString();
  }
}

class GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder
    implements
        Builder<GSendConfirmEmailData_ResendConfirmEmail_results_profile,
            GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder> {
  _$GSendConfirmEmailData_ResendConfirmEmail_results_profile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder?
      _userData;
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder
      get userData => _$this._userData ??=
          new GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder();
  set userData(
          GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder?
              userData) =>
      _$this._userData = userData;

  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder() {
    GSendConfirmEmailData_ResendConfirmEmail_results_profile._initializeBuilder(
        this);
  }

  GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _userData = $v.userData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendConfirmEmailData_ResendConfirmEmail_results_profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendConfirmEmailData_ResendConfirmEmail_results_profile;
  }

  @override
  void update(
      void Function(
              GSendConfirmEmailData_ResendConfirmEmail_results_profileBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile build() => _build();

  _$GSendConfirmEmailData_ResendConfirmEmail_results_profile _build() {
    _$GSendConfirmEmailData_ResendConfirmEmail_results_profile _$result;
    try {
      _$result = _$v ??
          new _$GSendConfirmEmailData_ResendConfirmEmail_results_profile._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSendConfirmEmailData_ResendConfirmEmail_results_profile',
                  'G__typename'),
              firstName: firstName,
              userData: _userData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSendConfirmEmailData_ResendConfirmEmail_results_profile',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
    extends GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData {
  @override
  final String G__typename;
  @override
  final String? email;

  factory _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData(
          [void Function(
                  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder)?
              updates]) =>
      (new GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder()
            ..update(updates))
          ._build();

  _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData._(
      {required this.G__typename, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData',
        'G__typename');
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData rebuild(
          void Function(
                  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder
      toBuilder() =>
          new GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData &&
        G__typename == other.G__typename &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData')
          ..add('G__typename', G__typename)
          ..add('email', email))
        .toString();
  }
}

class GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder
    implements
        Builder<
            GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData,
            GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder> {
  _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder() {
    GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
        ._initializeBuilder(this);
  }

  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData;
  }

  @override
  void update(
      void Function(
              GSendConfirmEmailData_ResendConfirmEmail_results_profile_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData build() =>
      _build();

  _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData _build() {
    final _$result = _$v ??
        new _$GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSendConfirmEmailData_ResendConfirmEmail_results_profile_userData',
                'G__typename'),
            email: email);
    replace(_$result);
    return _$result;
  }
}

class _$GCodeVerificationData extends GCodeVerificationData {
  @override
  final String G__typename;
  @override
  final GCodeVerificationData_EmailVerification? EmailVerification;

  factory _$GCodeVerificationData(
          [void Function(GCodeVerificationDataBuilder)? updates]) =>
      (new GCodeVerificationDataBuilder()..update(updates))._build();

  _$GCodeVerificationData._({required this.G__typename, this.EmailVerification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCodeVerificationData', 'G__typename');
  }

  @override
  GCodeVerificationData rebuild(
          void Function(GCodeVerificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCodeVerificationDataBuilder toBuilder() =>
      new GCodeVerificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCodeVerificationData &&
        G__typename == other.G__typename &&
        EmailVerification == other.EmailVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, EmailVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCodeVerificationData')
          ..add('G__typename', G__typename)
          ..add('EmailVerification', EmailVerification))
        .toString();
  }
}

class GCodeVerificationDataBuilder
    implements Builder<GCodeVerificationData, GCodeVerificationDataBuilder> {
  _$GCodeVerificationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCodeVerificationData_EmailVerificationBuilder? _EmailVerification;
  GCodeVerificationData_EmailVerificationBuilder get EmailVerification =>
      _$this._EmailVerification ??=
          new GCodeVerificationData_EmailVerificationBuilder();
  set EmailVerification(
          GCodeVerificationData_EmailVerificationBuilder? EmailVerification) =>
      _$this._EmailVerification = EmailVerification;

  GCodeVerificationDataBuilder() {
    GCodeVerificationData._initializeBuilder(this);
  }

  GCodeVerificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _EmailVerification = $v.EmailVerification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCodeVerificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCodeVerificationData;
  }

  @override
  void update(void Function(GCodeVerificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCodeVerificationData build() => _build();

  _$GCodeVerificationData _build() {
    _$GCodeVerificationData _$result;
    try {
      _$result = _$v ??
          new _$GCodeVerificationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCodeVerificationData', 'G__typename'),
              EmailVerification: _EmailVerification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'EmailVerification';
        _EmailVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCodeVerificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCodeVerificationData_EmailVerification
    extends GCodeVerificationData_EmailVerification {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GCodeVerificationData_EmailVerification(
          [void Function(GCodeVerificationData_EmailVerificationBuilder)?
              updates]) =>
      (new GCodeVerificationData_EmailVerificationBuilder()..update(updates))
          ._build();

  _$GCodeVerificationData_EmailVerification._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCodeVerificationData_EmailVerification', 'G__typename');
  }

  @override
  GCodeVerificationData_EmailVerification rebuild(
          void Function(GCodeVerificationData_EmailVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCodeVerificationData_EmailVerificationBuilder toBuilder() =>
      new GCodeVerificationData_EmailVerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCodeVerificationData_EmailVerification &&
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
            r'GCodeVerificationData_EmailVerification')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GCodeVerificationData_EmailVerificationBuilder
    implements
        Builder<GCodeVerificationData_EmailVerification,
            GCodeVerificationData_EmailVerificationBuilder> {
  _$GCodeVerificationData_EmailVerification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GCodeVerificationData_EmailVerificationBuilder() {
    GCodeVerificationData_EmailVerification._initializeBuilder(this);
  }

  GCodeVerificationData_EmailVerificationBuilder get _$this {
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
  void replace(GCodeVerificationData_EmailVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCodeVerificationData_EmailVerification;
  }

  @override
  void update(
      void Function(GCodeVerificationData_EmailVerificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCodeVerificationData_EmailVerification build() => _build();

  _$GCodeVerificationData_EmailVerification _build() {
    final _$result = _$v ??
        new _$GCodeVerificationData_EmailVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCodeVerificationData_EmailVerification', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginVerifyData extends GSocialLoginVerifyData {
  @override
  final String G__typename;
  @override
  final GSocialLoginVerifyData_SocialVerification? SocialVerification;

  factory _$GSocialLoginVerifyData(
          [void Function(GSocialLoginVerifyDataBuilder)? updates]) =>
      (new GSocialLoginVerifyDataBuilder()..update(updates))._build();

  _$GSocialLoginVerifyData._(
      {required this.G__typename, this.SocialVerification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialLoginVerifyData', 'G__typename');
  }

  @override
  GSocialLoginVerifyData rebuild(
          void Function(GSocialLoginVerifyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginVerifyDataBuilder toBuilder() =>
      new GSocialLoginVerifyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginVerifyData &&
        G__typename == other.G__typename &&
        SocialVerification == other.SocialVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SocialVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialLoginVerifyData')
          ..add('G__typename', G__typename)
          ..add('SocialVerification', SocialVerification))
        .toString();
  }
}

class GSocialLoginVerifyDataBuilder
    implements Builder<GSocialLoginVerifyData, GSocialLoginVerifyDataBuilder> {
  _$GSocialLoginVerifyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialLoginVerifyData_SocialVerificationBuilder? _SocialVerification;
  GSocialLoginVerifyData_SocialVerificationBuilder get SocialVerification =>
      _$this._SocialVerification ??=
          new GSocialLoginVerifyData_SocialVerificationBuilder();
  set SocialVerification(
          GSocialLoginVerifyData_SocialVerificationBuilder?
              SocialVerification) =>
      _$this._SocialVerification = SocialVerification;

  GSocialLoginVerifyDataBuilder() {
    GSocialLoginVerifyData._initializeBuilder(this);
  }

  GSocialLoginVerifyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SocialVerification = $v.SocialVerification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialLoginVerifyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginVerifyData;
  }

  @override
  void update(void Function(GSocialLoginVerifyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginVerifyData build() => _build();

  _$GSocialLoginVerifyData _build() {
    _$GSocialLoginVerifyData _$result;
    try {
      _$result = _$v ??
          new _$GSocialLoginVerifyData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSocialLoginVerifyData', 'G__typename'),
              SocialVerification: _SocialVerification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SocialVerification';
        _SocialVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialLoginVerifyData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialLoginVerifyData_SocialVerification
    extends GSocialLoginVerifyData_SocialVerification {
  @override
  final String G__typename;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GSocialLoginVerifyData_SocialVerification(
          [void Function(GSocialLoginVerifyData_SocialVerificationBuilder)?
              updates]) =>
      (new GSocialLoginVerifyData_SocialVerificationBuilder()..update(updates))
          ._build();

  _$GSocialLoginVerifyData_SocialVerification._(
      {required this.G__typename, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSocialLoginVerifyData_SocialVerification', 'G__typename');
  }

  @override
  GSocialLoginVerifyData_SocialVerification rebuild(
          void Function(GSocialLoginVerifyData_SocialVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialLoginVerifyData_SocialVerificationBuilder toBuilder() =>
      new GSocialLoginVerifyData_SocialVerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialLoginVerifyData_SocialVerification &&
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
            r'GSocialLoginVerifyData_SocialVerification')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GSocialLoginVerifyData_SocialVerificationBuilder
    implements
        Builder<GSocialLoginVerifyData_SocialVerification,
            GSocialLoginVerifyData_SocialVerificationBuilder> {
  _$GSocialLoginVerifyData_SocialVerification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GSocialLoginVerifyData_SocialVerificationBuilder() {
    GSocialLoginVerifyData_SocialVerification._initializeBuilder(this);
  }

  GSocialLoginVerifyData_SocialVerificationBuilder get _$this {
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
  void replace(GSocialLoginVerifyData_SocialVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialLoginVerifyData_SocialVerification;
  }

  @override
  void update(
      void Function(GSocialLoginVerifyData_SocialVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialLoginVerifyData_SocialVerification build() => _build();

  _$GSocialLoginVerifyData_SocialVerification _build() {
    final _$result = _$v ??
        new _$GSocialLoginVerifyData_SocialVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSocialLoginVerifyData_SocialVerification', 'G__typename'),
            status: status,
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData extends GshowUserProfileData {
  @override
  final String G__typename;
  @override
  final GshowUserProfileData_showUserProfile? showUserProfile;

  factory _$GshowUserProfileData(
          [void Function(GshowUserProfileDataBuilder)? updates]) =>
      (new GshowUserProfileDataBuilder()..update(updates))._build();

  _$GshowUserProfileData._({required this.G__typename, this.showUserProfile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GshowUserProfileData', 'G__typename');
  }

  @override
  GshowUserProfileData rebuild(
          void Function(GshowUserProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileDataBuilder toBuilder() =>
      new GshowUserProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GshowUserProfileData &&
        G__typename == other.G__typename &&
        showUserProfile == other.showUserProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, showUserProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GshowUserProfileData')
          ..add('G__typename', G__typename)
          ..add('showUserProfile', showUserProfile))
        .toString();
  }
}

class GshowUserProfileDataBuilder
    implements Builder<GshowUserProfileData, GshowUserProfileDataBuilder> {
  _$GshowUserProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GshowUserProfileData_showUserProfileBuilder? _showUserProfile;
  GshowUserProfileData_showUserProfileBuilder get showUserProfile =>
      _$this._showUserProfile ??=
          new GshowUserProfileData_showUserProfileBuilder();
  set showUserProfile(
          GshowUserProfileData_showUserProfileBuilder? showUserProfile) =>
      _$this._showUserProfile = showUserProfile;

  GshowUserProfileDataBuilder() {
    GshowUserProfileData._initializeBuilder(this);
  }

  GshowUserProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _showUserProfile = $v.showUserProfile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GshowUserProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GshowUserProfileData;
  }

  @override
  void update(void Function(GshowUserProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData build() => _build();

  _$GshowUserProfileData _build() {
    _$GshowUserProfileData _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GshowUserProfileData', 'G__typename'),
              showUserProfile: _showUserProfile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'showUserProfile';
        _showUserProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile
    extends GshowUserProfileData_showUserProfile {
  @override
  final String G__typename;
  @override
  final GshowUserProfileData_showUserProfile_results? results;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GshowUserProfileData_showUserProfile(
          [void Function(GshowUserProfileData_showUserProfileBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfileBuilder()..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile._(
      {required this.G__typename, this.results, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GshowUserProfileData_showUserProfile', 'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile rebuild(
          void Function(GshowUserProfileData_showUserProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfileBuilder toBuilder() =>
      new GshowUserProfileData_showUserProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GshowUserProfileData_showUserProfile &&
        G__typename == other.G__typename &&
        results == other.results &&
        status == other.status &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GshowUserProfileData_showUserProfile')
          ..add('G__typename', G__typename)
          ..add('results', results)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GshowUserProfileData_showUserProfileBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile,
            GshowUserProfileData_showUserProfileBuilder> {
  _$GshowUserProfileData_showUserProfile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GshowUserProfileData_showUserProfile_resultsBuilder? _results;
  GshowUserProfileData_showUserProfile_resultsBuilder get results =>
      _$this._results ??=
          new GshowUserProfileData_showUserProfile_resultsBuilder();
  set results(GshowUserProfileData_showUserProfile_resultsBuilder? results) =>
      _$this._results = results;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GshowUserProfileData_showUserProfileBuilder() {
    GshowUserProfileData_showUserProfile._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _status = $v.status;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GshowUserProfileData_showUserProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GshowUserProfileData_showUserProfile;
  }

  @override
  void update(
      void Function(GshowUserProfileData_showUserProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile build() => _build();

  _$GshowUserProfileData_showUserProfile _build() {
    _$GshowUserProfileData_showUserProfile _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GshowUserProfileData_showUserProfile', 'G__typename'),
              results: _results?.build(),
              status: status,
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results
    extends GshowUserProfileData_showUserProfile_results {
  @override
  final String G__typename;
  @override
  final GshowUserProfileData_showUserProfile_results_userData? userData;
  @override
  final BuiltList<GshowUserProfileData_showUserProfile_results_reviews?>?
      reviews;

  factory _$GshowUserProfileData_showUserProfile_results(
          [void Function(GshowUserProfileData_showUserProfile_resultsBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_resultsBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results._(
      {required this.G__typename, this.userData, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GshowUserProfileData_showUserProfile_results', 'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results rebuild(
          void Function(GshowUserProfileData_showUserProfile_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_resultsBuilder toBuilder() =>
      new GshowUserProfileData_showUserProfile_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GshowUserProfileData_showUserProfile_results &&
        G__typename == other.G__typename &&
        userData == other.userData &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results')
          ..add('G__typename', G__typename)
          ..add('userData', userData)
          ..add('reviews', reviews))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_resultsBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results,
            GshowUserProfileData_showUserProfile_resultsBuilder> {
  _$GshowUserProfileData_showUserProfile_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GshowUserProfileData_showUserProfile_results_userDataBuilder? _userData;
  GshowUserProfileData_showUserProfile_results_userDataBuilder get userData =>
      _$this._userData ??=
          new GshowUserProfileData_showUserProfile_results_userDataBuilder();
  set userData(
          GshowUserProfileData_showUserProfile_results_userDataBuilder?
              userData) =>
      _$this._userData = userData;

  ListBuilder<GshowUserProfileData_showUserProfile_results_reviews?>? _reviews;
  ListBuilder<GshowUserProfileData_showUserProfile_results_reviews?>
      get reviews => _$this._reviews ??= new ListBuilder<
          GshowUserProfileData_showUserProfile_results_reviews?>();
  set reviews(
          ListBuilder<GshowUserProfileData_showUserProfile_results_reviews?>?
              reviews) =>
      _$this._reviews = reviews;

  GshowUserProfileData_showUserProfile_resultsBuilder() {
    GshowUserProfileData_showUserProfile_results._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userData = $v.userData?.toBuilder();
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GshowUserProfileData_showUserProfile_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GshowUserProfileData_showUserProfile_results;
  }

  @override
  void update(
      void Function(GshowUserProfileData_showUserProfile_resultsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results build() => _build();

  _$GshowUserProfileData_showUserProfile_results _build() {
    _$GshowUserProfileData_showUserProfile_results _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results',
                  'G__typename'),
              userData: _userData?.build(),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_userData
    extends GshowUserProfileData_showUserProfile_results_userData {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final GshowUserProfileData_showUserProfile_results_userData_userData?
      userData;
  @override
  final GshowUserProfileData_showUserProfile_results_userData_userVerification?
      userVerification;
  @override
  final int? reviewsCount;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? dateOfBirth;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? fullPhoneNumber;
  @override
  final String? info;
  @override
  final String? createdAt;

  factory _$GshowUserProfileData_showUserProfile_results_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_userDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_userDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_userData._(
      {required this.G__typename,
      this.id,
      this.userData,
      this.userVerification,
      this.reviewsCount,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.dateOfBirth,
      this.picture,
      this.location,
      this.phoneNumber,
      this.fullPhoneNumber,
      this.info,
      this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_userData',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_userDataBuilder toBuilder() =>
      new GshowUserProfileData_showUserProfile_results_userDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GshowUserProfileData_showUserProfile_results_userData &&
        G__typename == other.G__typename &&
        id == other.id &&
        userData == other.userData &&
        userVerification == other.userVerification &&
        reviewsCount == other.reviewsCount &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        dateOfBirth == other.dateOfBirth &&
        picture == other.picture &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        fullPhoneNumber == other.fullPhoneNumber &&
        info == other.info &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, fullPhoneNumber.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_userData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userData', userData)
          ..add('userVerification', userVerification)
          ..add('reviewsCount', reviewsCount)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('picture', picture)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('fullPhoneNumber', fullPhoneNumber)
          ..add('info', info)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_userDataBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_userData,
            GshowUserProfileData_showUserProfile_results_userDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder?
      _userData;
  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder
      get userData => _$this._userData ??=
          new GshowUserProfileData_showUserProfile_results_userData_userDataBuilder();
  set userData(
          GshowUserProfileData_showUserProfile_results_userData_userDataBuilder?
              userData) =>
      _$this._userData = userData;

  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder?
      _userVerification;
  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder();
  set userVerification(
          GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _fullPhoneNumber;
  String? get fullPhoneNumber => _$this._fullPhoneNumber;
  set fullPhoneNumber(String? fullPhoneNumber) =>
      _$this._fullPhoneNumber = fullPhoneNumber;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  GshowUserProfileData_showUserProfile_results_userDataBuilder() {
    GshowUserProfileData_showUserProfile_results_userData._initializeBuilder(
        this);
  }

  GshowUserProfileData_showUserProfile_results_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userData = $v.userData?.toBuilder();
      _userVerification = $v.userVerification?.toBuilder();
      _reviewsCount = $v.reviewsCount;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _dateOfBirth = $v.dateOfBirth;
      _picture = $v.picture;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _fullPhoneNumber = $v.fullPhoneNumber;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GshowUserProfileData_showUserProfile_results_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GshowUserProfileData_showUserProfile_results_userData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData build() => _build();

  _$GshowUserProfileData_showUserProfile_results_userData _build() {
    _$GshowUserProfileData_showUserProfile_results_userData _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_userData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_userData',
                  'G__typename'),
              id: id,
              userData: _userData?.build(),
              userVerification: _userVerification?.build(),
              reviewsCount: reviewsCount,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              dateOfBirth: dateOfBirth,
              picture: picture,
              location: location,
              phoneNumber: phoneNumber,
              fullPhoneNumber: fullPhoneNumber,
              info: info,
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_userData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_userData_userData
    extends GshowUserProfileData_showUserProfile_results_userData_userData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? email;
  @override
  final int? userBanStatus;
  @override
  final String? gender;

  factory _$GshowUserProfileData_showUserProfile_results_userData_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_userData_userDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_userData_userData._(
      {required this.G__typename,
      required this.id,
      this.email,
      this.userBanStatus,
      this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_userData_userData',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GshowUserProfileData_showUserProfile_results_userData_userData',
        'id');
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData_userData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_userData_userDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_userData_userData &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        userBanStatus == other.userBanStatus &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_userData_userData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('userBanStatus', userBanStatus)
          ..add('gender', gender))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_userData_userDataBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_userData_userData,
            GshowUserProfileData_showUserProfile_results_userData_userDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_userData_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder() {
    GshowUserProfileData_showUserProfile_results_userData_userData
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_userData_userDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _userBanStatus = $v.userBanStatus;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_userData_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_userData_userData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_userData_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData_userData build() =>
      _build();

  _$GshowUserProfileData_showUserProfile_results_userData_userData _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_userData_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_userData_userData',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GshowUserProfileData_showUserProfile_results_userData_userData',
                'id'),
            email: email,
            userBanStatus: userBanStatus,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_userData_userVerification
    extends GshowUserProfileData_showUserProfile_results_userData_userVerification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GshowUserProfileData_showUserProfile_results_userData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_userData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_userData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GshowUserProfileData_showUserProfile_results_userData_userVerification',
        'userId');
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData_userVerification rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_userData_userVerification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_userData_userVerification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_userData_userVerification,
            GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder> {
  _$GshowUserProfileData_showUserProfile_results_userData_userVerification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder() {
    GshowUserProfileData_showUserProfile_results_userData_userVerification
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_userData_userVerification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_userData_userVerification;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_userData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_userData_userVerification
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_userData_userVerification
      _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_userData_userVerification
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_userData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GshowUserProfileData_showUserProfile_results_userData_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews
    extends GshowUserProfileData_showUserProfile_results_reviews {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final int? reservationId;
  @override
  final int? listId;
  @override
  final String? reviewContent;
  @override
  final double? rating;
  @override
  final String? privateFeedback;
  @override
  final int? yourReviewsCount;
  @override
  final int? reviewsCount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? status;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_userData? userData;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_listData? listData;
  @override
  final bool? isAdmin;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_response? response;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_authorData?
      authorData;

  factory _$GshowUserProfileData_showUserProfile_results_reviews(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviewsBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviewsBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews._(
      {required this.G__typename,
      this.id,
      this.reservationId,
      this.listId,
      this.reviewContent,
      this.rating,
      this.privateFeedback,
      this.yourReviewsCount,
      this.reviewsCount,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.userData,
      this.listData,
      this.isAdmin,
      this.response,
      this.authorData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews', 'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviewsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviewsBuilder toBuilder() =>
      new GshowUserProfileData_showUserProfile_results_reviewsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GshowUserProfileData_showUserProfile_results_reviews &&
        G__typename == other.G__typename &&
        id == other.id &&
        reservationId == other.reservationId &&
        listId == other.listId &&
        reviewContent == other.reviewContent &&
        rating == other.rating &&
        privateFeedback == other.privateFeedback &&
        yourReviewsCount == other.yourReviewsCount &&
        reviewsCount == other.reviewsCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        status == other.status &&
        userData == other.userData &&
        listData == other.listData &&
        isAdmin == other.isAdmin &&
        response == other.response &&
        authorData == other.authorData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, reviewContent.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, privateFeedback.hashCode);
    _$hash = $jc(_$hash, yourReviewsCount.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, listData.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, authorData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('reservationId', reservationId)
          ..add('listId', listId)
          ..add('reviewContent', reviewContent)
          ..add('rating', rating)
          ..add('privateFeedback', privateFeedback)
          ..add('yourReviewsCount', yourReviewsCount)
          ..add('reviewsCount', reviewsCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('status', status)
          ..add('userData', userData)
          ..add('listData', listData)
          ..add('isAdmin', isAdmin)
          ..add('response', response)
          ..add('authorData', authorData))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviewsBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_reviews,
            GshowUserProfileData_showUserProfile_results_reviewsBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  String? _reviewContent;
  String? get reviewContent => _$this._reviewContent;
  set reviewContent(String? reviewContent) =>
      _$this._reviewContent = reviewContent;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _privateFeedback;
  String? get privateFeedback => _$this._privateFeedback;
  set privateFeedback(String? privateFeedback) =>
      _$this._privateFeedback = privateFeedback;

  int? _yourReviewsCount;
  int? get yourReviewsCount => _$this._yourReviewsCount;
  set yourReviewsCount(int? yourReviewsCount) =>
      _$this._yourReviewsCount = yourReviewsCount;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder?
      _userData;
  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder
      get userData => _$this._userData ??=
          new GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder();
  set userData(
          GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder?
              userData) =>
      _$this._userData = userData;

  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder?
      _listData;
  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder
      get listData => _$this._listData ??=
          new GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder();
  set listData(
          GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder?
              listData) =>
      _$this._listData = listData;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder?
      _response;
  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder
      get response => _$this._response ??=
          new GshowUserProfileData_showUserProfile_results_reviews_responseBuilder();
  set response(
          GshowUserProfileData_showUserProfile_results_reviews_responseBuilder?
              response) =>
      _$this._response = response;

  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder?
      _authorData;
  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder
      get authorData => _$this._authorData ??=
          new GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder();
  set authorData(
          GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder?
              authorData) =>
      _$this._authorData = authorData;

  GshowUserProfileData_showUserProfile_results_reviewsBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews._initializeBuilder(
        this);
  }

  GshowUserProfileData_showUserProfile_results_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _reservationId = $v.reservationId;
      _listId = $v.listId;
      _reviewContent = $v.reviewContent;
      _rating = $v.rating;
      _privateFeedback = $v.privateFeedback;
      _yourReviewsCount = $v.yourReviewsCount;
      _reviewsCount = $v.reviewsCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _status = $v.status;
      _userData = $v.userData?.toBuilder();
      _listData = $v.listData?.toBuilder();
      _isAdmin = $v.isAdmin;
      _response = $v.response?.toBuilder();
      _authorData = $v.authorData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GshowUserProfileData_showUserProfile_results_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GshowUserProfileData_showUserProfile_results_reviews;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviewsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews _build() {
    _$GshowUserProfileData_showUserProfile_results_reviews _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_reviews',
                  'G__typename'),
              id: id,
              reservationId: reservationId,
              listId: listId,
              reviewContent: reviewContent,
              rating: rating,
              privateFeedback: privateFeedback,
              yourReviewsCount: yourReviewsCount,
              reviewsCount: reviewsCount,
              createdAt: createdAt,
              updatedAt: updatedAt,
              status: status,
              userData: _userData?.build(),
              listData: _listData?.build(),
              isAdmin: isAdmin,
              response: _response?.build(),
              authorData: _authorData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'listData';
        _listData?.build();

        _$failedField = 'response';
        _response?.build();
        _$failedField = 'authorData';
        _authorData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_reviews',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_userData
    extends GshowUserProfileData_showUserProfile_results_reviews_userData {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? fullPhoneNumber;
  @override
  final String? createdAt;
  @override
  final int? reviewsCount;
  @override
  final String? dateOfBirth;
  @override
  final String? info;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification?
      userVerification;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_userData._(
      {required this.G__typename,
      this.userId,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.picture,
      this.location,
      this.phoneNumber,
      this.fullPhoneNumber,
      this.createdAt,
      this.reviewsCount,
      this.dateOfBirth,
      this.info,
      this.userVerification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_userData',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_userData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        picture == other.picture &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        fullPhoneNumber == other.fullPhoneNumber &&
        createdAt == other.createdAt &&
        reviewsCount == other.reviewsCount &&
        dateOfBirth == other.dateOfBirth &&
        info == other.info &&
        userVerification == other.userVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, fullPhoneNumber.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_userData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('picture', picture)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('fullPhoneNumber', fullPhoneNumber)
          ..add('createdAt', createdAt)
          ..add('reviewsCount', reviewsCount)
          ..add('dateOfBirth', dateOfBirth)
          ..add('info', info)
          ..add('userVerification', userVerification))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_reviews_userData,
            GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _fullPhoneNumber;
  String? get fullPhoneNumber => _$this._fullPhoneNumber;
  set fullPhoneNumber(String? fullPhoneNumber) =>
      _$this._fullPhoneNumber = fullPhoneNumber;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder?
      _userVerification;
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder();
  set userVerification(
          GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_userData
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _picture = $v.picture;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _fullPhoneNumber = $v.fullPhoneNumber;
      _createdAt = $v.createdAt;
      _reviewsCount = $v.reviewsCount;
      _dateOfBirth = $v.dateOfBirth;
      _info = $v.info;
      _userVerification = $v.userVerification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_userData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData build() =>
      _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_userData _build() {
    _$GshowUserProfileData_showUserProfile_results_reviews_userData _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_reviews_userData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_reviews_userData',
                  'G__typename'),
              userId: userId,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              picture: picture,
              location: location,
              phoneNumber: phoneNumber,
              fullPhoneNumber: fullPhoneNumber,
              createdAt: createdAt,
              reviewsCount: reviewsCount,
              dateOfBirth: dateOfBirth,
              info: info,
              userVerification: _userVerification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_reviews_userData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
    extends GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification',
        'userId');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
      rebuild(
              void Function(
                      GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_userData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
      _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GshowUserProfileData_showUserProfile_results_reviews_userData_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_listData
    extends GshowUserProfileData_showUserProfile_results_reviews_listData {
  @override
  final String G__typename;
  @override
  final String? title;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_listData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_listData._(
      {required this.G__typename, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_listData',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_listData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_listData &&
        G__typename == other.G__typename &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_listData')
          ..add('G__typename', G__typename)
          ..add('title', title))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_reviews_listData,
            GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_listData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_listData
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_listData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_listData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_listDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_listData build() =>
      _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_listData _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_reviews_listData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_reviews_listData',
                'G__typename'),
            title: title);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response
    extends GshowUserProfileData_showUserProfile_results_reviews_response {
  @override
  final String G__typename;
  @override
  final String? authorId;
  @override
  final bool? automated;
  @override
  final int? id;
  @override
  final bool? isAdmin;
  @override
  final double? rating;
  @override
  final String? createdAt;
  @override
  final int? listId;
  @override
  final int? parentId;
  @override
  final String? privateFeedback;
  @override
  final String? reviewContent;
  @override
  final int? reservationId;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_response_userData?
      userData;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_response_authorData?
      authorData;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_response(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_responseBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response._(
      {required this.G__typename,
      this.authorId,
      this.automated,
      this.id,
      this.isAdmin,
      this.rating,
      this.createdAt,
      this.listId,
      this.parentId,
      this.privateFeedback,
      this.reviewContent,
      this.reservationId,
      this.userData,
      this.authorData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_response',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_responseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_response &&
        G__typename == other.G__typename &&
        authorId == other.authorId &&
        automated == other.automated &&
        id == other.id &&
        isAdmin == other.isAdmin &&
        rating == other.rating &&
        createdAt == other.createdAt &&
        listId == other.listId &&
        parentId == other.parentId &&
        privateFeedback == other.privateFeedback &&
        reviewContent == other.reviewContent &&
        reservationId == other.reservationId &&
        userData == other.userData &&
        authorData == other.authorData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, listId.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, privateFeedback.hashCode);
    _$hash = $jc(_$hash, reviewContent.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, authorData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_response')
          ..add('G__typename', G__typename)
          ..add('authorId', authorId)
          ..add('automated', automated)
          ..add('id', id)
          ..add('isAdmin', isAdmin)
          ..add('rating', rating)
          ..add('createdAt', createdAt)
          ..add('listId', listId)
          ..add('parentId', parentId)
          ..add('privateFeedback', privateFeedback)
          ..add('reviewContent', reviewContent)
          ..add('reservationId', reservationId)
          ..add('userData', userData)
          ..add('authorData', authorData))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_responseBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_reviews_response,
            GshowUserProfileData_showUserProfile_results_reviews_responseBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_response? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(String? authorId) => _$this._authorId = authorId;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _listId;
  int? get listId => _$this._listId;
  set listId(int? listId) => _$this._listId = listId;

  int? _parentId;
  int? get parentId => _$this._parentId;
  set parentId(int? parentId) => _$this._parentId = parentId;

  String? _privateFeedback;
  String? get privateFeedback => _$this._privateFeedback;
  set privateFeedback(String? privateFeedback) =>
      _$this._privateFeedback = privateFeedback;

  String? _reviewContent;
  String? get reviewContent => _$this._reviewContent;
  set reviewContent(String? reviewContent) =>
      _$this._reviewContent = reviewContent;

  int? _reservationId;
  int? get reservationId => _$this._reservationId;
  set reservationId(int? reservationId) =>
      _$this._reservationId = reservationId;

  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder?
      _userData;
  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder
      get userData => _$this._userData ??=
          new GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder();
  set userData(
          GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder?
              userData) =>
      _$this._userData = userData;

  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder?
      _authorData;
  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder
      get authorData => _$this._authorData ??=
          new GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder();
  set authorData(
          GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder?
              authorData) =>
      _$this._authorData = authorData;

  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_response
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_responseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorId = $v.authorId;
      _automated = $v.automated;
      _id = $v.id;
      _isAdmin = $v.isAdmin;
      _rating = $v.rating;
      _createdAt = $v.createdAt;
      _listId = $v.listId;
      _parentId = $v.parentId;
      _privateFeedback = $v.privateFeedback;
      _reviewContent = $v.reviewContent;
      _reservationId = $v.reservationId;
      _userData = $v.userData?.toBuilder();
      _authorData = $v.authorData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_response;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_responseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response build() =>
      _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response _build() {
    _$GshowUserProfileData_showUserProfile_results_reviews_response _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_reviews_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_reviews_response',
                  'G__typename'),
              authorId: authorId,
              automated: automated,
              id: id,
              isAdmin: isAdmin,
              rating: rating,
              createdAt: createdAt,
              listId: listId,
              parentId: parentId,
              privateFeedback: privateFeedback,
              reviewContent: reviewContent,
              reservationId: reservationId,
              userData: _userData?.build(),
              authorData: _authorData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'authorData';
        _authorData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_reviews_response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_userData
    extends GshowUserProfileData_showUserProfile_results_reviews_response_userData {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? fullPhoneNumber;
  @override
  final String? createdAt;
  @override
  final int? reviewsCount;
  @override
  final String? dateOfBirth;
  @override
  final String? info;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification?
      userVerification;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_response_userData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_userData._(
      {required this.G__typename,
      this.userId,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.picture,
      this.location,
      this.phoneNumber,
      this.fullPhoneNumber,
      this.createdAt,
      this.reviewsCount,
      this.dateOfBirth,
      this.info,
      this.userVerification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_response_userData',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_response_userData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        picture == other.picture &&
        location == other.location &&
        phoneNumber == other.phoneNumber &&
        fullPhoneNumber == other.fullPhoneNumber &&
        createdAt == other.createdAt &&
        reviewsCount == other.reviewsCount &&
        dateOfBirth == other.dateOfBirth &&
        info == other.info &&
        userVerification == other.userVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, fullPhoneNumber.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_response_userData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('picture', picture)
          ..add('location', location)
          ..add('phoneNumber', phoneNumber)
          ..add('fullPhoneNumber', fullPhoneNumber)
          ..add('createdAt', createdAt)
          ..add('reviewsCount', reviewsCount)
          ..add('dateOfBirth', dateOfBirth)
          ..add('info', info)
          ..add('userVerification', userVerification))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_reviews_response_userData,
            GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_response_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _fullPhoneNumber;
  String? get fullPhoneNumber => _$this._fullPhoneNumber;
  set fullPhoneNumber(String? fullPhoneNumber) =>
      _$this._fullPhoneNumber = fullPhoneNumber;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder?
      _userVerification;
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder();
  set userVerification(
          GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_response_userData
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _picture = $v.picture;
      _location = $v.location;
      _phoneNumber = $v.phoneNumber;
      _fullPhoneNumber = $v.fullPhoneNumber;
      _createdAt = $v.createdAt;
      _reviewsCount = $v.reviewsCount;
      _dateOfBirth = $v.dateOfBirth;
      _info = $v.info;
      _userVerification = $v.userVerification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_response_userData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_response_userData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_response_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_userData
      _build() {
    _$GshowUserProfileData_showUserProfile_results_reviews_response_userData
        _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_reviews_response_userData
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_reviews_response_userData',
                  'G__typename'),
              userId: userId,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              picture: picture,
              location: location,
              phoneNumber: phoneNumber,
              fullPhoneNumber: fullPhoneNumber,
              createdAt: createdAt,
              reviewsCount: reviewsCount,
              dateOfBirth: dateOfBirth,
              info: info,
              userVerification: _userVerification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_reviews_response_userData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
    extends GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification',
        'userId');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
      rebuild(
              void Function(
                      GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
      _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GshowUserProfileData_showUserProfile_results_reviews_response_userData_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData
    extends GshowUserProfileData_showUserProfile_results_reviews_response_authorData {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? createdAt;
  @override
  final int? reviewsCount;
  @override
  final String? info;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification?
      userVerification;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData._(
      {required this.G__typename,
      this.userId,
      this.profileId,
      this.firstName,
      this.lastName,
      this.picture,
      this.location,
      this.createdAt,
      this.reviewsCount,
      this.info,
      this.userVerification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_response_authorData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        picture == other.picture &&
        location == other.location &&
        createdAt == other.createdAt &&
        reviewsCount == other.reviewsCount &&
        info == other.info &&
        userVerification == other.userVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('picture', picture)
          ..add('location', location)
          ..add('createdAt', createdAt)
          ..add('reviewsCount', reviewsCount)
          ..add('info', info)
          ..add('userVerification', userVerification))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData,
            GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder?
      _userVerification;
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder();
  set userVerification(
          GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_response_authorData
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _picture = $v.picture;
      _location = $v.location;
      _createdAt = $v.createdAt;
      _reviewsCount = $v.reviewsCount;
      _info = $v.info;
      _userVerification = $v.userVerification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_response_authorData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_response_authorDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData
      _build() {
    _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData
        _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData',
                  'G__typename'),
              userId: userId,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              picture: picture,
              location: location,
              createdAt: createdAt,
              reviewsCount: reviewsCount,
              info: info,
              userVerification: _userVerification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
    extends GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification',
        'userId');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
      rebuild(
              void Function(
                      GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
      _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GshowUserProfileData_showUserProfile_results_reviews_response_authorData_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_authorData
    extends GshowUserProfileData_showUserProfile_results_reviews_authorData {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final String? createdAt;
  @override
  final int? reviewsCount;
  @override
  final String? info;
  @override
  final GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification?
      userVerification;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_authorData(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_authorData._(
      {required this.G__typename,
      this.userId,
      this.profileId,
      this.firstName,
      this.lastName,
      this.picture,
      this.location,
      this.createdAt,
      this.reviewsCount,
      this.info,
      this.userVerification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_authorData',
        'G__typename');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData rebuild(
          void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_authorData &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        picture == other.picture &&
        location == other.location &&
        createdAt == other.createdAt &&
        reviewsCount == other.reviewsCount &&
        info == other.info &&
        userVerification == other.userVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, userVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_authorData')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('picture', picture)
          ..add('location', location)
          ..add('createdAt', createdAt)
          ..add('reviewsCount', reviewsCount)
          ..add('info', info)
          ..add('userVerification', userVerification))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder
    implements
        Builder<GshowUserProfileData_showUserProfile_results_reviews_authorData,
            GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_authorData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder?
      _userVerification;
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder();
  set userVerification(
          GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_authorData
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _picture = $v.picture;
      _location = $v.location;
      _createdAt = $v.createdAt;
      _reviewsCount = $v.reviewsCount;
      _info = $v.info;
      _userVerification = $v.userVerification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_authorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_authorData;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_authorDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData build() =>
      _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_authorData _build() {
    _$GshowUserProfileData_showUserProfile_results_reviews_authorData _$result;
    try {
      _$result = _$v ??
          new _$GshowUserProfileData_showUserProfile_results_reviews_authorData
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GshowUserProfileData_showUserProfile_results_reviews_authorData',
                  'G__typename'),
              userId: userId,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              picture: picture,
              location: location,
              createdAt: createdAt,
              reviewsCount: reviewsCount,
              info: info,
              userVerification: _userVerification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userVerification';
        _userVerification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GshowUserProfileData_showUserProfile_results_reviews_authorData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
    extends GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification {
  @override
  final String G__typename;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;

  factory _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification(
          [void Function(
                  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder)?
              updates]) =>
      (new GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId,
        r'GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification',
        'userId');
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
      rebuild(
              void Function(
                      GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder
      toBuilder() =>
          new GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified))
        .toString();
  }
}

class GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder
    implements
        Builder<
            GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification,
            GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder> {
  _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder() {
    GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
        ._initializeBuilder(this);
  }

  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification;
  }

  @override
  void update(
      void Function(
              GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
      build() => _build();

  _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
      _build() {
    final _$result = _$v ??
        new _$GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GshowUserProfileData_showUserProfile_results_reviews_authorData_userVerification',
                'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GuserAccountData extends GuserAccountData {
  @override
  final String G__typename;
  @override
  final GuserAccountData_userAccount? userAccount;

  factory _$GuserAccountData(
          [void Function(GuserAccountDataBuilder)? updates]) =>
      (new GuserAccountDataBuilder()..update(updates))._build();

  _$GuserAccountData._({required this.G__typename, this.userAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserAccountData', 'G__typename');
  }

  @override
  GuserAccountData rebuild(void Function(GuserAccountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserAccountDataBuilder toBuilder() =>
      new GuserAccountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserAccountData &&
        G__typename == other.G__typename &&
        userAccount == other.userAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserAccountData')
          ..add('G__typename', G__typename)
          ..add('userAccount', userAccount))
        .toString();
  }
}

class GuserAccountDataBuilder
    implements Builder<GuserAccountData, GuserAccountDataBuilder> {
  _$GuserAccountData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GuserAccountData_userAccountBuilder? _userAccount;
  GuserAccountData_userAccountBuilder get userAccount =>
      _$this._userAccount ??= new GuserAccountData_userAccountBuilder();
  set userAccount(GuserAccountData_userAccountBuilder? userAccount) =>
      _$this._userAccount = userAccount;

  GuserAccountDataBuilder() {
    GuserAccountData._initializeBuilder(this);
  }

  GuserAccountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userAccount = $v.userAccount?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserAccountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserAccountData;
  }

  @override
  void update(void Function(GuserAccountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserAccountData build() => _build();

  _$GuserAccountData _build() {
    _$GuserAccountData _$result;
    try {
      _$result = _$v ??
          new _$GuserAccountData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GuserAccountData', 'G__typename'),
              userAccount: _userAccount?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userAccount';
        _userAccount?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GuserAccountData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GuserAccountData_userAccount extends GuserAccountData_userAccount {
  @override
  final String G__typename;
  @override
  final GuserAccountData_userAccount_result? result;
  @override
  final int? status;
  @override
  final String? errorMessage;

  factory _$GuserAccountData_userAccount(
          [void Function(GuserAccountData_userAccountBuilder)? updates]) =>
      (new GuserAccountData_userAccountBuilder()..update(updates))._build();

  _$GuserAccountData_userAccount._(
      {required this.G__typename, this.result, this.status, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserAccountData_userAccount', 'G__typename');
  }

  @override
  GuserAccountData_userAccount rebuild(
          void Function(GuserAccountData_userAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserAccountData_userAccountBuilder toBuilder() =>
      new GuserAccountData_userAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserAccountData_userAccount &&
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
    return (newBuiltValueToStringHelper(r'GuserAccountData_userAccount')
          ..add('G__typename', G__typename)
          ..add('result', result)
          ..add('status', status)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class GuserAccountData_userAccountBuilder
    implements
        Builder<GuserAccountData_userAccount,
            GuserAccountData_userAccountBuilder> {
  _$GuserAccountData_userAccount? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GuserAccountData_userAccount_resultBuilder? _result;
  GuserAccountData_userAccount_resultBuilder get result =>
      _$this._result ??= new GuserAccountData_userAccount_resultBuilder();
  set result(GuserAccountData_userAccount_resultBuilder? result) =>
      _$this._result = result;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  GuserAccountData_userAccountBuilder() {
    GuserAccountData_userAccount._initializeBuilder(this);
  }

  GuserAccountData_userAccountBuilder get _$this {
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
  void replace(GuserAccountData_userAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserAccountData_userAccount;
  }

  @override
  void update(void Function(GuserAccountData_userAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserAccountData_userAccount build() => _build();

  _$GuserAccountData_userAccount _build() {
    _$GuserAccountData_userAccount _$result;
    try {
      _$result = _$v ??
          new _$GuserAccountData_userAccount._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GuserAccountData_userAccount', 'G__typename'),
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
            r'GuserAccountData_userAccount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GuserAccountData_userAccount_result
    extends GuserAccountData_userAccount_result {
  @override
  final String G__typename;
  @override
  final String? userId;
  @override
  final int? profileId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? displayName;
  @override
  final String? gender;
  @override
  final String? dateOfBirth;
  @override
  final String? iosDOB;
  @override
  final String? email;
  @override
  final int? userBanStatus;
  @override
  final String? phoneNumber;
  @override
  final String? preferredLanguage;
  @override
  final String? preferredLanguageName;
  @override
  final String? preferredCurrency;
  @override
  final String? location;
  @override
  final String? info;
  @override
  final String? createdAt;
  @override
  final String? userDeletedAt;
  @override
  final int? status;
  @override
  final String? picture;
  @override
  final GuserAccountData_userAccount_result_verification? verification;
  @override
  final GuserAccountData_userAccount_result_userData? userData;
  @override
  final int? country;
  @override
  final int? verificationCode;
  @override
  final String? countryCode;
  @override
  final String? errorMessage;
  @override
  final String? loginUserType;
  @override
  final bool? isAddedList;
  @override
  final String? phoneNumberStatus;
  @override
  final bool? renterServicePlanAIFeatureStatus;
  @override
  final bool? ownerServicePlanAIFeatureStatus;

  factory _$GuserAccountData_userAccount_result(
          [void Function(GuserAccountData_userAccount_resultBuilder)?
              updates]) =>
      (new GuserAccountData_userAccount_resultBuilder()..update(updates))
          ._build();

  _$GuserAccountData_userAccount_result._(
      {required this.G__typename,
      this.userId,
      this.profileId,
      this.firstName,
      this.lastName,
      this.displayName,
      this.gender,
      this.dateOfBirth,
      this.iosDOB,
      this.email,
      this.userBanStatus,
      this.phoneNumber,
      this.preferredLanguage,
      this.preferredLanguageName,
      this.preferredCurrency,
      this.location,
      this.info,
      this.createdAt,
      this.userDeletedAt,
      this.status,
      this.picture,
      this.verification,
      this.userData,
      this.country,
      this.verificationCode,
      this.countryCode,
      this.errorMessage,
      this.loginUserType,
      this.isAddedList,
      this.phoneNumberStatus,
      this.renterServicePlanAIFeatureStatus,
      this.ownerServicePlanAIFeatureStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GuserAccountData_userAccount_result', 'G__typename');
  }

  @override
  GuserAccountData_userAccount_result rebuild(
          void Function(GuserAccountData_userAccount_resultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserAccountData_userAccount_resultBuilder toBuilder() =>
      new GuserAccountData_userAccount_resultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserAccountData_userAccount_result &&
        G__typename == other.G__typename &&
        userId == other.userId &&
        profileId == other.profileId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        gender == other.gender &&
        dateOfBirth == other.dateOfBirth &&
        iosDOB == other.iosDOB &&
        email == other.email &&
        userBanStatus == other.userBanStatus &&
        phoneNumber == other.phoneNumber &&
        preferredLanguage == other.preferredLanguage &&
        preferredLanguageName == other.preferredLanguageName &&
        preferredCurrency == other.preferredCurrency &&
        location == other.location &&
        info == other.info &&
        createdAt == other.createdAt &&
        userDeletedAt == other.userDeletedAt &&
        status == other.status &&
        picture == other.picture &&
        verification == other.verification &&
        userData == other.userData &&
        country == other.country &&
        verificationCode == other.verificationCode &&
        countryCode == other.countryCode &&
        errorMessage == other.errorMessage &&
        loginUserType == other.loginUserType &&
        isAddedList == other.isAddedList &&
        phoneNumberStatus == other.phoneNumberStatus &&
        renterServicePlanAIFeatureStatus ==
            other.renterServicePlanAIFeatureStatus &&
        ownerServicePlanAIFeatureStatus ==
            other.ownerServicePlanAIFeatureStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, iosDOB.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userBanStatus.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, preferredLanguage.hashCode);
    _$hash = $jc(_$hash, preferredLanguageName.hashCode);
    _$hash = $jc(_$hash, preferredCurrency.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, userDeletedAt.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, picture.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, verificationCode.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, loginUserType.hashCode);
    _$hash = $jc(_$hash, isAddedList.hashCode);
    _$hash = $jc(_$hash, phoneNumberStatus.hashCode);
    _$hash = $jc(_$hash, renterServicePlanAIFeatureStatus.hashCode);
    _$hash = $jc(_$hash, ownerServicePlanAIFeatureStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserAccountData_userAccount_result')
          ..add('G__typename', G__typename)
          ..add('userId', userId)
          ..add('profileId', profileId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('gender', gender)
          ..add('dateOfBirth', dateOfBirth)
          ..add('iosDOB', iosDOB)
          ..add('email', email)
          ..add('userBanStatus', userBanStatus)
          ..add('phoneNumber', phoneNumber)
          ..add('preferredLanguage', preferredLanguage)
          ..add('preferredLanguageName', preferredLanguageName)
          ..add('preferredCurrency', preferredCurrency)
          ..add('location', location)
          ..add('info', info)
          ..add('createdAt', createdAt)
          ..add('userDeletedAt', userDeletedAt)
          ..add('status', status)
          ..add('picture', picture)
          ..add('verification', verification)
          ..add('userData', userData)
          ..add('country', country)
          ..add('verificationCode', verificationCode)
          ..add('countryCode', countryCode)
          ..add('errorMessage', errorMessage)
          ..add('loginUserType', loginUserType)
          ..add('isAddedList', isAddedList)
          ..add('phoneNumberStatus', phoneNumberStatus)
          ..add('renterServicePlanAIFeatureStatus',
              renterServicePlanAIFeatureStatus)
          ..add('ownerServicePlanAIFeatureStatus',
              ownerServicePlanAIFeatureStatus))
        .toString();
  }
}

class GuserAccountData_userAccount_resultBuilder
    implements
        Builder<GuserAccountData_userAccount_result,
            GuserAccountData_userAccount_resultBuilder> {
  _$GuserAccountData_userAccount_result? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _profileId;
  int? get profileId => _$this._profileId;
  set profileId(int? profileId) => _$this._profileId = profileId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _iosDOB;
  String? get iosDOB => _$this._iosDOB;
  set iosDOB(String? iosDOB) => _$this._iosDOB = iosDOB;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _userBanStatus;
  int? get userBanStatus => _$this._userBanStatus;
  set userBanStatus(int? userBanStatus) =>
      _$this._userBanStatus = userBanStatus;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _preferredLanguage;
  String? get preferredLanguage => _$this._preferredLanguage;
  set preferredLanguage(String? preferredLanguage) =>
      _$this._preferredLanguage = preferredLanguage;

  String? _preferredLanguageName;
  String? get preferredLanguageName => _$this._preferredLanguageName;
  set preferredLanguageName(String? preferredLanguageName) =>
      _$this._preferredLanguageName = preferredLanguageName;

  String? _preferredCurrency;
  String? get preferredCurrency => _$this._preferredCurrency;
  set preferredCurrency(String? preferredCurrency) =>
      _$this._preferredCurrency = preferredCurrency;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _userDeletedAt;
  String? get userDeletedAt => _$this._userDeletedAt;
  set userDeletedAt(String? userDeletedAt) =>
      _$this._userDeletedAt = userDeletedAt;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  GuserAccountData_userAccount_result_verificationBuilder? _verification;
  GuserAccountData_userAccount_result_verificationBuilder get verification =>
      _$this._verification ??=
          new GuserAccountData_userAccount_result_verificationBuilder();
  set verification(
          GuserAccountData_userAccount_result_verificationBuilder?
              verification) =>
      _$this._verification = verification;

  GuserAccountData_userAccount_result_userDataBuilder? _userData;
  GuserAccountData_userAccount_result_userDataBuilder get userData =>
      _$this._userData ??=
          new GuserAccountData_userAccount_result_userDataBuilder();
  set userData(GuserAccountData_userAccount_result_userDataBuilder? userData) =>
      _$this._userData = userData;

  int? _country;
  int? get country => _$this._country;
  set country(int? country) => _$this._country = country;

  int? _verificationCode;
  int? get verificationCode => _$this._verificationCode;
  set verificationCode(int? verificationCode) =>
      _$this._verificationCode = verificationCode;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _loginUserType;
  String? get loginUserType => _$this._loginUserType;
  set loginUserType(String? loginUserType) =>
      _$this._loginUserType = loginUserType;

  bool? _isAddedList;
  bool? get isAddedList => _$this._isAddedList;
  set isAddedList(bool? isAddedList) => _$this._isAddedList = isAddedList;

  String? _phoneNumberStatus;
  String? get phoneNumberStatus => _$this._phoneNumberStatus;
  set phoneNumberStatus(String? phoneNumberStatus) =>
      _$this._phoneNumberStatus = phoneNumberStatus;

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

  GuserAccountData_userAccount_resultBuilder() {
    GuserAccountData_userAccount_result._initializeBuilder(this);
  }

  GuserAccountData_userAccount_resultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userId = $v.userId;
      _profileId = $v.profileId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _gender = $v.gender;
      _dateOfBirth = $v.dateOfBirth;
      _iosDOB = $v.iosDOB;
      _email = $v.email;
      _userBanStatus = $v.userBanStatus;
      _phoneNumber = $v.phoneNumber;
      _preferredLanguage = $v.preferredLanguage;
      _preferredLanguageName = $v.preferredLanguageName;
      _preferredCurrency = $v.preferredCurrency;
      _location = $v.location;
      _info = $v.info;
      _createdAt = $v.createdAt;
      _userDeletedAt = $v.userDeletedAt;
      _status = $v.status;
      _picture = $v.picture;
      _verification = $v.verification?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _country = $v.country;
      _verificationCode = $v.verificationCode;
      _countryCode = $v.countryCode;
      _errorMessage = $v.errorMessage;
      _loginUserType = $v.loginUserType;
      _isAddedList = $v.isAddedList;
      _phoneNumberStatus = $v.phoneNumberStatus;
      _renterServicePlanAIFeatureStatus = $v.renterServicePlanAIFeatureStatus;
      _ownerServicePlanAIFeatureStatus = $v.ownerServicePlanAIFeatureStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserAccountData_userAccount_result other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserAccountData_userAccount_result;
  }

  @override
  void update(
      void Function(GuserAccountData_userAccount_resultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserAccountData_userAccount_result build() => _build();

  _$GuserAccountData_userAccount_result _build() {
    _$GuserAccountData_userAccount_result _$result;
    try {
      _$result = _$v ??
          new _$GuserAccountData_userAccount_result._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GuserAccountData_userAccount_result', 'G__typename'),
              userId: userId,
              profileId: profileId,
              firstName: firstName,
              lastName: lastName,
              displayName: displayName,
              gender: gender,
              dateOfBirth: dateOfBirth,
              iosDOB: iosDOB,
              email: email,
              userBanStatus: userBanStatus,
              phoneNumber: phoneNumber,
              preferredLanguage: preferredLanguage,
              preferredLanguageName: preferredLanguageName,
              preferredCurrency: preferredCurrency,
              location: location,
              info: info,
              createdAt: createdAt,
              userDeletedAt: userDeletedAt,
              status: status,
              picture: picture,
              verification: _verification?.build(),
              userData: _userData?.build(),
              country: country,
              verificationCode: verificationCode,
              countryCode: countryCode,
              errorMessage: errorMessage,
              loginUserType: loginUserType,
              isAddedList: isAddedList,
              phoneNumberStatus: phoneNumberStatus,
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
            r'GuserAccountData_userAccount_result',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GuserAccountData_userAccount_result_verification
    extends GuserAccountData_userAccount_result_verification {
  @override
  final String G__typename;
  @override
  final int? id;
  @override
  final String userId;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isFacebookConnected;
  @override
  final bool? isGoogleConnected;
  @override
  final bool? isIdVerification;
  @override
  final bool? isPhoneVerified;
  @override
  final String? status;

  factory _$GuserAccountData_userAccount_result_verification(
          [void Function(
                  GuserAccountData_userAccount_result_verificationBuilder)?
              updates]) =>
      (new GuserAccountData_userAccount_result_verificationBuilder()
            ..update(updates))
          ._build();

  _$GuserAccountData_userAccount_result_verification._(
      {required this.G__typename,
      this.id,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GuserAccountData_userAccount_result_verification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GuserAccountData_userAccount_result_verification', 'userId');
  }

  @override
  GuserAccountData_userAccount_result_verification rebuild(
          void Function(GuserAccountData_userAccount_result_verificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserAccountData_userAccount_result_verificationBuilder toBuilder() =>
      new GuserAccountData_userAccount_result_verificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserAccountData_userAccount_result_verification &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isFacebookConnected == other.isFacebookConnected &&
        isGoogleConnected == other.isGoogleConnected &&
        isIdVerification == other.isIdVerification &&
        isPhoneVerified == other.isPhoneVerified &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isFacebookConnected.hashCode);
    _$hash = $jc(_$hash, isGoogleConnected.hashCode);
    _$hash = $jc(_$hash, isIdVerification.hashCode);
    _$hash = $jc(_$hash, isPhoneVerified.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GuserAccountData_userAccount_result_verification')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isFacebookConnected', isFacebookConnected)
          ..add('isGoogleConnected', isGoogleConnected)
          ..add('isIdVerification', isIdVerification)
          ..add('isPhoneVerified', isPhoneVerified)
          ..add('status', status))
        .toString();
  }
}

class GuserAccountData_userAccount_result_verificationBuilder
    implements
        Builder<GuserAccountData_userAccount_result_verification,
            GuserAccountData_userAccount_result_verificationBuilder> {
  _$GuserAccountData_userAccount_result_verification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isFacebookConnected;
  bool? get isFacebookConnected => _$this._isFacebookConnected;
  set isFacebookConnected(bool? isFacebookConnected) =>
      _$this._isFacebookConnected = isFacebookConnected;

  bool? _isGoogleConnected;
  bool? get isGoogleConnected => _$this._isGoogleConnected;
  set isGoogleConnected(bool? isGoogleConnected) =>
      _$this._isGoogleConnected = isGoogleConnected;

  bool? _isIdVerification;
  bool? get isIdVerification => _$this._isIdVerification;
  set isIdVerification(bool? isIdVerification) =>
      _$this._isIdVerification = isIdVerification;

  bool? _isPhoneVerified;
  bool? get isPhoneVerified => _$this._isPhoneVerified;
  set isPhoneVerified(bool? isPhoneVerified) =>
      _$this._isPhoneVerified = isPhoneVerified;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GuserAccountData_userAccount_result_verificationBuilder() {
    GuserAccountData_userAccount_result_verification._initializeBuilder(this);
  }

  GuserAccountData_userAccount_result_verificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isFacebookConnected = $v.isFacebookConnected;
      _isGoogleConnected = $v.isGoogleConnected;
      _isIdVerification = $v.isIdVerification;
      _isPhoneVerified = $v.isPhoneVerified;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserAccountData_userAccount_result_verification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserAccountData_userAccount_result_verification;
  }

  @override
  void update(
      void Function(GuserAccountData_userAccount_result_verificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserAccountData_userAccount_result_verification build() => _build();

  _$GuserAccountData_userAccount_result_verification _build() {
    final _$result = _$v ??
        new _$GuserAccountData_userAccount_result_verification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GuserAccountData_userAccount_result_verification',
                'G__typename'),
            id: id,
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GuserAccountData_userAccount_result_verification', 'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified,
            status: status);
    replace(_$result);
    return _$result;
  }
}

class _$GuserAccountData_userAccount_result_userData
    extends GuserAccountData_userAccount_result_userData {
  @override
  final String G__typename;
  @override
  final String? userToken;
  @override
  final String? forgotLink;
  @override
  final String? type;
  @override
  final int? createListingCount;
  @override
  final int? overallRating;

  factory _$GuserAccountData_userAccount_result_userData(
          [void Function(GuserAccountData_userAccount_result_userDataBuilder)?
              updates]) =>
      (new GuserAccountData_userAccount_result_userDataBuilder()
            ..update(updates))
          ._build();

  _$GuserAccountData_userAccount_result_userData._(
      {required this.G__typename,
      this.userToken,
      this.forgotLink,
      this.type,
      this.createListingCount,
      this.overallRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GuserAccountData_userAccount_result_userData', 'G__typename');
  }

  @override
  GuserAccountData_userAccount_result_userData rebuild(
          void Function(GuserAccountData_userAccount_result_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserAccountData_userAccount_result_userDataBuilder toBuilder() =>
      new GuserAccountData_userAccount_result_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserAccountData_userAccount_result_userData &&
        G__typename == other.G__typename &&
        userToken == other.userToken &&
        forgotLink == other.forgotLink &&
        type == other.type &&
        createListingCount == other.createListingCount &&
        overallRating == other.overallRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userToken.hashCode);
    _$hash = $jc(_$hash, forgotLink.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createListingCount.hashCode);
    _$hash = $jc(_$hash, overallRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GuserAccountData_userAccount_result_userData')
          ..add('G__typename', G__typename)
          ..add('userToken', userToken)
          ..add('forgotLink', forgotLink)
          ..add('type', type)
          ..add('createListingCount', createListingCount)
          ..add('overallRating', overallRating))
        .toString();
  }
}

class GuserAccountData_userAccount_result_userDataBuilder
    implements
        Builder<GuserAccountData_userAccount_result_userData,
            GuserAccountData_userAccount_result_userDataBuilder> {
  _$GuserAccountData_userAccount_result_userData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  String? _forgotLink;
  String? get forgotLink => _$this._forgotLink;
  set forgotLink(String? forgotLink) => _$this._forgotLink = forgotLink;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _createListingCount;
  int? get createListingCount => _$this._createListingCount;
  set createListingCount(int? createListingCount) =>
      _$this._createListingCount = createListingCount;

  int? _overallRating;
  int? get overallRating => _$this._overallRating;
  set overallRating(int? overallRating) =>
      _$this._overallRating = overallRating;

  GuserAccountData_userAccount_result_userDataBuilder() {
    GuserAccountData_userAccount_result_userData._initializeBuilder(this);
  }

  GuserAccountData_userAccount_result_userDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userToken = $v.userToken;
      _forgotLink = $v.forgotLink;
      _type = $v.type;
      _createListingCount = $v.createListingCount;
      _overallRating = $v.overallRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserAccountData_userAccount_result_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserAccountData_userAccount_result_userData;
  }

  @override
  void update(
      void Function(GuserAccountData_userAccount_result_userDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserAccountData_userAccount_result_userData build() => _build();

  _$GuserAccountData_userAccount_result_userData _build() {
    final _$result = _$v ??
        new _$GuserAccountData_userAccount_result_userData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GuserAccountData_userAccount_result_userData', 'G__typename'),
            userToken: userToken,
            forgotLink: forgotLink,
            type: type,
            createListingCount: createListingCount,
            overallRating: overallRating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
