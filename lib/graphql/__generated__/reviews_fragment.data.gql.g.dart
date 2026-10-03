// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GreviewsFragmentData> _$greviewsFragmentDataSerializer =
    new _$GreviewsFragmentDataSerializer();
Serializer<GreviewsFragmentData_userData>
    _$greviewsFragmentDataUserDataSerializer =
    new _$GreviewsFragmentData_userDataSerializer();
Serializer<GreviewsFragmentData_userData_userVerification>
    _$greviewsFragmentDataUserDataUserVerificationSerializer =
    new _$GreviewsFragmentData_userData_userVerificationSerializer();
Serializer<GreviewsFragmentData_listData>
    _$greviewsFragmentDataListDataSerializer =
    new _$GreviewsFragmentData_listDataSerializer();
Serializer<GreviewsFragmentData_response>
    _$greviewsFragmentDataResponseSerializer =
    new _$GreviewsFragmentData_responseSerializer();
Serializer<GreviewsFragmentData_response_userData>
    _$greviewsFragmentDataResponseUserDataSerializer =
    new _$GreviewsFragmentData_response_userDataSerializer();
Serializer<GreviewsFragmentData_response_userData_userVerification>
    _$greviewsFragmentDataResponseUserDataUserVerificationSerializer =
    new _$GreviewsFragmentData_response_userData_userVerificationSerializer();
Serializer<GreviewsFragmentData_response_authorData>
    _$greviewsFragmentDataResponseAuthorDataSerializer =
    new _$GreviewsFragmentData_response_authorDataSerializer();
Serializer<GreviewsFragmentData_response_authorData_userVerification>
    _$greviewsFragmentDataResponseAuthorDataUserVerificationSerializer =
    new _$GreviewsFragmentData_response_authorData_userVerificationSerializer();
Serializer<GreviewsFragmentData_authorData>
    _$greviewsFragmentDataAuthorDataSerializer =
    new _$GreviewsFragmentData_authorDataSerializer();
Serializer<GreviewsFragmentData_authorData_userVerification>
    _$greviewsFragmentDataAuthorDataUserVerificationSerializer =
    new _$GreviewsFragmentData_authorData_userVerificationSerializer();

class _$GreviewsFragmentDataSerializer
    implements StructuredSerializer<GreviewsFragmentData> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData,
    _$GreviewsFragmentData
  ];
  @override
  final String wireName = 'GreviewsFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData object,
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
            specifiedType: const FullType(GreviewsFragmentData_userData)));
    }
    value = object.listData;
    if (value != null) {
      result
        ..add('listData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GreviewsFragmentData_listData)));
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
            specifiedType: const FullType(GreviewsFragmentData_response)));
    }
    value = object.authorData;
    if (value != null) {
      result
        ..add('authorData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GreviewsFragmentData_authorData)));
    }
    return result;
  }

  @override
  GreviewsFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentDataBuilder();

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
                  specifiedType: const FullType(GreviewsFragmentData_userData))!
              as GreviewsFragmentData_userData);
          break;
        case 'listData':
          result.listData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GreviewsFragmentData_listData))!
              as GreviewsFragmentData_listData);
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GreviewsFragmentData_response))!
              as GreviewsFragmentData_response);
          break;
        case 'authorData':
          result.authorData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GreviewsFragmentData_authorData))!
              as GreviewsFragmentData_authorData);
          break;
      }
    }

    return result.build();
  }
}

class _$GreviewsFragmentData_userDataSerializer
    implements StructuredSerializer<GreviewsFragmentData_userData> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_userData,
    _$GreviewsFragmentData_userData
  ];
  @override
  final String wireName = 'GreviewsFragmentData_userData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData_userData object,
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
                GreviewsFragmentData_userData_userVerification)));
    }
    return result;
  }

  @override
  GreviewsFragmentData_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_userDataBuilder();

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
                      GreviewsFragmentData_userData_userVerification))!
              as GreviewsFragmentData_userData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GreviewsFragmentData_userData_userVerificationSerializer
    implements
        StructuredSerializer<GreviewsFragmentData_userData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_userData_userVerification,
    _$GreviewsFragmentData_userData_userVerification
  ];
  @override
  final String wireName = 'GreviewsFragmentData_userData_userVerification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreviewsFragmentData_userData_userVerification object,
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
  GreviewsFragmentData_userData_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_userData_userVerificationBuilder();

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

class _$GreviewsFragmentData_listDataSerializer
    implements StructuredSerializer<GreviewsFragmentData_listData> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_listData,
    _$GreviewsFragmentData_listData
  ];
  @override
  final String wireName = 'GreviewsFragmentData_listData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData_listData object,
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
  GreviewsFragmentData_listData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_listDataBuilder();

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

class _$GreviewsFragmentData_responseSerializer
    implements StructuredSerializer<GreviewsFragmentData_response> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_response,
    _$GreviewsFragmentData_response
  ];
  @override
  final String wireName = 'GreviewsFragmentData_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData_response object,
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
            specifiedType:
                const FullType(GreviewsFragmentData_response_userData)));
    }
    value = object.authorData;
    if (value != null) {
      result
        ..add('authorData')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GreviewsFragmentData_response_authorData)));
    }
    return result;
  }

  @override
  GreviewsFragmentData_response deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_responseBuilder();

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
                  specifiedType:
                      const FullType(GreviewsFragmentData_response_userData))!
              as GreviewsFragmentData_response_userData);
          break;
        case 'authorData':
          result.authorData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GreviewsFragmentData_response_authorData))!
              as GreviewsFragmentData_response_authorData);
          break;
      }
    }

    return result.build();
  }
}

class _$GreviewsFragmentData_response_userDataSerializer
    implements StructuredSerializer<GreviewsFragmentData_response_userData> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_response_userData,
    _$GreviewsFragmentData_response_userData
  ];
  @override
  final String wireName = 'GreviewsFragmentData_response_userData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData_response_userData object,
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
                GreviewsFragmentData_response_userData_userVerification)));
    }
    return result;
  }

  @override
  GreviewsFragmentData_response_userData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_response_userDataBuilder();

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
                      GreviewsFragmentData_response_userData_userVerification))!
              as GreviewsFragmentData_response_userData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GreviewsFragmentData_response_userData_userVerificationSerializer
    implements
        StructuredSerializer<
            GreviewsFragmentData_response_userData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_response_userData_userVerification,
    _$GreviewsFragmentData_response_userData_userVerification
  ];
  @override
  final String wireName =
      'GreviewsFragmentData_response_userData_userVerification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreviewsFragmentData_response_userData_userVerification object,
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
  GreviewsFragmentData_response_userData_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GreviewsFragmentData_response_userData_userVerificationBuilder();

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

class _$GreviewsFragmentData_response_authorDataSerializer
    implements StructuredSerializer<GreviewsFragmentData_response_authorData> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_response_authorData,
    _$GreviewsFragmentData_response_authorData
  ];
  @override
  final String wireName = 'GreviewsFragmentData_response_authorData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData_response_authorData object,
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
                GreviewsFragmentData_response_authorData_userVerification)));
    }
    return result;
  }

  @override
  GreviewsFragmentData_response_authorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_response_authorDataBuilder();

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
                      GreviewsFragmentData_response_authorData_userVerification))!
              as GreviewsFragmentData_response_authorData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GreviewsFragmentData_response_authorData_userVerificationSerializer
    implements
        StructuredSerializer<
            GreviewsFragmentData_response_authorData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_response_authorData_userVerification,
    _$GreviewsFragmentData_response_authorData_userVerification
  ];
  @override
  final String wireName =
      'GreviewsFragmentData_response_authorData_userVerification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreviewsFragmentData_response_authorData_userVerification object,
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
  GreviewsFragmentData_response_authorData_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GreviewsFragmentData_response_authorData_userVerificationBuilder();

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

class _$GreviewsFragmentData_authorDataSerializer
    implements StructuredSerializer<GreviewsFragmentData_authorData> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_authorData,
    _$GreviewsFragmentData_authorData
  ];
  @override
  final String wireName = 'GreviewsFragmentData_authorData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GreviewsFragmentData_authorData object,
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
                GreviewsFragmentData_authorData_userVerification)));
    }
    return result;
  }

  @override
  GreviewsFragmentData_authorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GreviewsFragmentData_authorDataBuilder();

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
                      GreviewsFragmentData_authorData_userVerification))!
              as GreviewsFragmentData_authorData_userVerification);
          break;
      }
    }

    return result.build();
  }
}

class _$GreviewsFragmentData_authorData_userVerificationSerializer
    implements
        StructuredSerializer<GreviewsFragmentData_authorData_userVerification> {
  @override
  final Iterable<Type> types = const [
    GreviewsFragmentData_authorData_userVerification,
    _$GreviewsFragmentData_authorData_userVerification
  ];
  @override
  final String wireName = 'GreviewsFragmentData_authorData_userVerification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GreviewsFragmentData_authorData_userVerification object,
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
  GreviewsFragmentData_authorData_userVerification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GreviewsFragmentData_authorData_userVerificationBuilder();

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

class _$GreviewsFragmentData extends GreviewsFragmentData {
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
  final GreviewsFragmentData_userData? userData;
  @override
  final GreviewsFragmentData_listData? listData;
  @override
  final bool? isAdmin;
  @override
  final GreviewsFragmentData_response? response;
  @override
  final GreviewsFragmentData_authorData? authorData;

  factory _$GreviewsFragmentData(
          [void Function(GreviewsFragmentDataBuilder)? updates]) =>
      (new GreviewsFragmentDataBuilder()..update(updates))._build();

  _$GreviewsFragmentData._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GreviewsFragmentData', 'G__typename');
  }

  @override
  GreviewsFragmentData rebuild(
          void Function(GreviewsFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentDataBuilder toBuilder() =>
      new GreviewsFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GreviewsFragmentData')
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

class GreviewsFragmentDataBuilder
    implements Builder<GreviewsFragmentData, GreviewsFragmentDataBuilder> {
  _$GreviewsFragmentData? _$v;

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

  GreviewsFragmentData_userDataBuilder? _userData;
  GreviewsFragmentData_userDataBuilder get userData =>
      _$this._userData ??= new GreviewsFragmentData_userDataBuilder();
  set userData(GreviewsFragmentData_userDataBuilder? userData) =>
      _$this._userData = userData;

  GreviewsFragmentData_listDataBuilder? _listData;
  GreviewsFragmentData_listDataBuilder get listData =>
      _$this._listData ??= new GreviewsFragmentData_listDataBuilder();
  set listData(GreviewsFragmentData_listDataBuilder? listData) =>
      _$this._listData = listData;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  GreviewsFragmentData_responseBuilder? _response;
  GreviewsFragmentData_responseBuilder get response =>
      _$this._response ??= new GreviewsFragmentData_responseBuilder();
  set response(GreviewsFragmentData_responseBuilder? response) =>
      _$this._response = response;

  GreviewsFragmentData_authorDataBuilder? _authorData;
  GreviewsFragmentData_authorDataBuilder get authorData =>
      _$this._authorData ??= new GreviewsFragmentData_authorDataBuilder();
  set authorData(GreviewsFragmentData_authorDataBuilder? authorData) =>
      _$this._authorData = authorData;

  GreviewsFragmentDataBuilder() {
    GreviewsFragmentData._initializeBuilder(this);
  }

  GreviewsFragmentDataBuilder get _$this {
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
  void replace(GreviewsFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData;
  }

  @override
  void update(void Function(GreviewsFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData build() => _build();

  _$GreviewsFragmentData _build() {
    _$GreviewsFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GreviewsFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GreviewsFragmentData', 'G__typename'),
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
            r'GreviewsFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_userData extends GreviewsFragmentData_userData {
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
  final GreviewsFragmentData_userData_userVerification? userVerification;

  factory _$GreviewsFragmentData_userData(
          [void Function(GreviewsFragmentData_userDataBuilder)? updates]) =>
      (new GreviewsFragmentData_userDataBuilder()..update(updates))._build();

  _$GreviewsFragmentData_userData._(
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
        G__typename, r'GreviewsFragmentData_userData', 'G__typename');
  }

  @override
  GreviewsFragmentData_userData rebuild(
          void Function(GreviewsFragmentData_userDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_userDataBuilder toBuilder() =>
      new GreviewsFragmentData_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_userData &&
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
    return (newBuiltValueToStringHelper(r'GreviewsFragmentData_userData')
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

class GreviewsFragmentData_userDataBuilder
    implements
        Builder<GreviewsFragmentData_userData,
            GreviewsFragmentData_userDataBuilder> {
  _$GreviewsFragmentData_userData? _$v;

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

  GreviewsFragmentData_userData_userVerificationBuilder? _userVerification;
  GreviewsFragmentData_userData_userVerificationBuilder get userVerification =>
      _$this._userVerification ??=
          new GreviewsFragmentData_userData_userVerificationBuilder();
  set userVerification(
          GreviewsFragmentData_userData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GreviewsFragmentData_userDataBuilder() {
    GreviewsFragmentData_userData._initializeBuilder(this);
  }

  GreviewsFragmentData_userDataBuilder get _$this {
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
  void replace(GreviewsFragmentData_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_userData;
  }

  @override
  void update(void Function(GreviewsFragmentData_userDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_userData build() => _build();

  _$GreviewsFragmentData_userData _build() {
    _$GreviewsFragmentData_userData _$result;
    try {
      _$result = _$v ??
          new _$GreviewsFragmentData_userData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GreviewsFragmentData_userData', 'G__typename'),
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
            r'GreviewsFragmentData_userData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_userData_userVerification
    extends GreviewsFragmentData_userData_userVerification {
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

  factory _$GreviewsFragmentData_userData_userVerification(
          [void Function(GreviewsFragmentData_userData_userVerificationBuilder)?
              updates]) =>
      (new GreviewsFragmentData_userData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GreviewsFragmentData_userData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GreviewsFragmentData_userData_userVerification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GreviewsFragmentData_userData_userVerification', 'userId');
  }

  @override
  GreviewsFragmentData_userData_userVerification rebuild(
          void Function(GreviewsFragmentData_userData_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_userData_userVerificationBuilder toBuilder() =>
      new GreviewsFragmentData_userData_userVerificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_userData_userVerification &&
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
            r'GreviewsFragmentData_userData_userVerification')
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

class GreviewsFragmentData_userData_userVerificationBuilder
    implements
        Builder<GreviewsFragmentData_userData_userVerification,
            GreviewsFragmentData_userData_userVerificationBuilder> {
  _$GreviewsFragmentData_userData_userVerification? _$v;

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

  GreviewsFragmentData_userData_userVerificationBuilder() {
    GreviewsFragmentData_userData_userVerification._initializeBuilder(this);
  }

  GreviewsFragmentData_userData_userVerificationBuilder get _$this {
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
  void replace(GreviewsFragmentData_userData_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_userData_userVerification;
  }

  @override
  void update(
      void Function(GreviewsFragmentData_userData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_userData_userVerification build() => _build();

  _$GreviewsFragmentData_userData_userVerification _build() {
    final _$result = _$v ??
        new _$GreviewsFragmentData_userData_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GreviewsFragmentData_userData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GreviewsFragmentData_userData_userVerification', 'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_listData extends GreviewsFragmentData_listData {
  @override
  final String G__typename;
  @override
  final String? title;

  factory _$GreviewsFragmentData_listData(
          [void Function(GreviewsFragmentData_listDataBuilder)? updates]) =>
      (new GreviewsFragmentData_listDataBuilder()..update(updates))._build();

  _$GreviewsFragmentData_listData._({required this.G__typename, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GreviewsFragmentData_listData', 'G__typename');
  }

  @override
  GreviewsFragmentData_listData rebuild(
          void Function(GreviewsFragmentData_listDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_listDataBuilder toBuilder() =>
      new GreviewsFragmentData_listDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_listData &&
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
    return (newBuiltValueToStringHelper(r'GreviewsFragmentData_listData')
          ..add('G__typename', G__typename)
          ..add('title', title))
        .toString();
  }
}

class GreviewsFragmentData_listDataBuilder
    implements
        Builder<GreviewsFragmentData_listData,
            GreviewsFragmentData_listDataBuilder> {
  _$GreviewsFragmentData_listData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GreviewsFragmentData_listDataBuilder() {
    GreviewsFragmentData_listData._initializeBuilder(this);
  }

  GreviewsFragmentData_listDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreviewsFragmentData_listData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_listData;
  }

  @override
  void update(void Function(GreviewsFragmentData_listDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_listData build() => _build();

  _$GreviewsFragmentData_listData _build() {
    final _$result = _$v ??
        new _$GreviewsFragmentData_listData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GreviewsFragmentData_listData', 'G__typename'),
            title: title);
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_response extends GreviewsFragmentData_response {
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
  final GreviewsFragmentData_response_userData? userData;
  @override
  final GreviewsFragmentData_response_authorData? authorData;

  factory _$GreviewsFragmentData_response(
          [void Function(GreviewsFragmentData_responseBuilder)? updates]) =>
      (new GreviewsFragmentData_responseBuilder()..update(updates))._build();

  _$GreviewsFragmentData_response._(
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
        G__typename, r'GreviewsFragmentData_response', 'G__typename');
  }

  @override
  GreviewsFragmentData_response rebuild(
          void Function(GreviewsFragmentData_responseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_responseBuilder toBuilder() =>
      new GreviewsFragmentData_responseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_response &&
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
    return (newBuiltValueToStringHelper(r'GreviewsFragmentData_response')
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

class GreviewsFragmentData_responseBuilder
    implements
        Builder<GreviewsFragmentData_response,
            GreviewsFragmentData_responseBuilder> {
  _$GreviewsFragmentData_response? _$v;

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

  GreviewsFragmentData_response_userDataBuilder? _userData;
  GreviewsFragmentData_response_userDataBuilder get userData =>
      _$this._userData ??= new GreviewsFragmentData_response_userDataBuilder();
  set userData(GreviewsFragmentData_response_userDataBuilder? userData) =>
      _$this._userData = userData;

  GreviewsFragmentData_response_authorDataBuilder? _authorData;
  GreviewsFragmentData_response_authorDataBuilder get authorData =>
      _$this._authorData ??=
          new GreviewsFragmentData_response_authorDataBuilder();
  set authorData(GreviewsFragmentData_response_authorDataBuilder? authorData) =>
      _$this._authorData = authorData;

  GreviewsFragmentData_responseBuilder() {
    GreviewsFragmentData_response._initializeBuilder(this);
  }

  GreviewsFragmentData_responseBuilder get _$this {
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
  void replace(GreviewsFragmentData_response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_response;
  }

  @override
  void update(void Function(GreviewsFragmentData_responseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_response build() => _build();

  _$GreviewsFragmentData_response _build() {
    _$GreviewsFragmentData_response _$result;
    try {
      _$result = _$v ??
          new _$GreviewsFragmentData_response._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GreviewsFragmentData_response', 'G__typename'),
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
            r'GreviewsFragmentData_response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_response_userData
    extends GreviewsFragmentData_response_userData {
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
  final GreviewsFragmentData_response_userData_userVerification?
      userVerification;

  factory _$GreviewsFragmentData_response_userData(
          [void Function(GreviewsFragmentData_response_userDataBuilder)?
              updates]) =>
      (new GreviewsFragmentData_response_userDataBuilder()..update(updates))
          ._build();

  _$GreviewsFragmentData_response_userData._(
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
        G__typename, r'GreviewsFragmentData_response_userData', 'G__typename');
  }

  @override
  GreviewsFragmentData_response_userData rebuild(
          void Function(GreviewsFragmentData_response_userDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_response_userDataBuilder toBuilder() =>
      new GreviewsFragmentData_response_userDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_response_userData &&
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
            r'GreviewsFragmentData_response_userData')
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

class GreviewsFragmentData_response_userDataBuilder
    implements
        Builder<GreviewsFragmentData_response_userData,
            GreviewsFragmentData_response_userDataBuilder> {
  _$GreviewsFragmentData_response_userData? _$v;

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

  GreviewsFragmentData_response_userData_userVerificationBuilder?
      _userVerification;
  GreviewsFragmentData_response_userData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GreviewsFragmentData_response_userData_userVerificationBuilder();
  set userVerification(
          GreviewsFragmentData_response_userData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GreviewsFragmentData_response_userDataBuilder() {
    GreviewsFragmentData_response_userData._initializeBuilder(this);
  }

  GreviewsFragmentData_response_userDataBuilder get _$this {
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
  void replace(GreviewsFragmentData_response_userData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_response_userData;
  }

  @override
  void update(
      void Function(GreviewsFragmentData_response_userDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_response_userData build() => _build();

  _$GreviewsFragmentData_response_userData _build() {
    _$GreviewsFragmentData_response_userData _$result;
    try {
      _$result = _$v ??
          new _$GreviewsFragmentData_response_userData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GreviewsFragmentData_response_userData', 'G__typename'),
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
            r'GreviewsFragmentData_response_userData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_response_userData_userVerification
    extends GreviewsFragmentData_response_userData_userVerification {
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

  factory _$GreviewsFragmentData_response_userData_userVerification(
          [void Function(
                  GreviewsFragmentData_response_userData_userVerificationBuilder)?
              updates]) =>
      (new GreviewsFragmentData_response_userData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GreviewsFragmentData_response_userData_userVerification._(
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
        r'GreviewsFragmentData_response_userData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(userId,
        r'GreviewsFragmentData_response_userData_userVerification', 'userId');
  }

  @override
  GreviewsFragmentData_response_userData_userVerification rebuild(
          void Function(
                  GreviewsFragmentData_response_userData_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_response_userData_userVerificationBuilder toBuilder() =>
      new GreviewsFragmentData_response_userData_userVerificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_response_userData_userVerification &&
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
            r'GreviewsFragmentData_response_userData_userVerification')
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

class GreviewsFragmentData_response_userData_userVerificationBuilder
    implements
        Builder<GreviewsFragmentData_response_userData_userVerification,
            GreviewsFragmentData_response_userData_userVerificationBuilder> {
  _$GreviewsFragmentData_response_userData_userVerification? _$v;

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

  GreviewsFragmentData_response_userData_userVerificationBuilder() {
    GreviewsFragmentData_response_userData_userVerification._initializeBuilder(
        this);
  }

  GreviewsFragmentData_response_userData_userVerificationBuilder get _$this {
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
  void replace(GreviewsFragmentData_response_userData_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_response_userData_userVerification;
  }

  @override
  void update(
      void Function(
              GreviewsFragmentData_response_userData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_response_userData_userVerification build() => _build();

  _$GreviewsFragmentData_response_userData_userVerification _build() {
    final _$result = _$v ??
        new _$GreviewsFragmentData_response_userData_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GreviewsFragmentData_response_userData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GreviewsFragmentData_response_userData_userVerification',
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

class _$GreviewsFragmentData_response_authorData
    extends GreviewsFragmentData_response_authorData {
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
  final GreviewsFragmentData_response_authorData_userVerification?
      userVerification;

  factory _$GreviewsFragmentData_response_authorData(
          [void Function(GreviewsFragmentData_response_authorDataBuilder)?
              updates]) =>
      (new GreviewsFragmentData_response_authorDataBuilder()..update(updates))
          ._build();

  _$GreviewsFragmentData_response_authorData._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GreviewsFragmentData_response_authorData', 'G__typename');
  }

  @override
  GreviewsFragmentData_response_authorData rebuild(
          void Function(GreviewsFragmentData_response_authorDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_response_authorDataBuilder toBuilder() =>
      new GreviewsFragmentData_response_authorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_response_authorData &&
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
            r'GreviewsFragmentData_response_authorData')
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

class GreviewsFragmentData_response_authorDataBuilder
    implements
        Builder<GreviewsFragmentData_response_authorData,
            GreviewsFragmentData_response_authorDataBuilder> {
  _$GreviewsFragmentData_response_authorData? _$v;

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

  GreviewsFragmentData_response_authorData_userVerificationBuilder?
      _userVerification;
  GreviewsFragmentData_response_authorData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GreviewsFragmentData_response_authorData_userVerificationBuilder();
  set userVerification(
          GreviewsFragmentData_response_authorData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GreviewsFragmentData_response_authorDataBuilder() {
    GreviewsFragmentData_response_authorData._initializeBuilder(this);
  }

  GreviewsFragmentData_response_authorDataBuilder get _$this {
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
  void replace(GreviewsFragmentData_response_authorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_response_authorData;
  }

  @override
  void update(
      void Function(GreviewsFragmentData_response_authorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_response_authorData build() => _build();

  _$GreviewsFragmentData_response_authorData _build() {
    _$GreviewsFragmentData_response_authorData _$result;
    try {
      _$result = _$v ??
          new _$GreviewsFragmentData_response_authorData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GreviewsFragmentData_response_authorData', 'G__typename'),
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
            r'GreviewsFragmentData_response_authorData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_response_authorData_userVerification
    extends GreviewsFragmentData_response_authorData_userVerification {
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

  factory _$GreviewsFragmentData_response_authorData_userVerification(
          [void Function(
                  GreviewsFragmentData_response_authorData_userVerificationBuilder)?
              updates]) =>
      (new GreviewsFragmentData_response_authorData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GreviewsFragmentData_response_authorData_userVerification._(
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
        r'GreviewsFragmentData_response_authorData_userVerification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(userId,
        r'GreviewsFragmentData_response_authorData_userVerification', 'userId');
  }

  @override
  GreviewsFragmentData_response_authorData_userVerification rebuild(
          void Function(
                  GreviewsFragmentData_response_authorData_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_response_authorData_userVerificationBuilder
      toBuilder() =>
          new GreviewsFragmentData_response_authorData_userVerificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_response_authorData_userVerification &&
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
            r'GreviewsFragmentData_response_authorData_userVerification')
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

class GreviewsFragmentData_response_authorData_userVerificationBuilder
    implements
        Builder<GreviewsFragmentData_response_authorData_userVerification,
            GreviewsFragmentData_response_authorData_userVerificationBuilder> {
  _$GreviewsFragmentData_response_authorData_userVerification? _$v;

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

  GreviewsFragmentData_response_authorData_userVerificationBuilder() {
    GreviewsFragmentData_response_authorData_userVerification
        ._initializeBuilder(this);
  }

  GreviewsFragmentData_response_authorData_userVerificationBuilder get _$this {
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
      GreviewsFragmentData_response_authorData_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_response_authorData_userVerification;
  }

  @override
  void update(
      void Function(
              GreviewsFragmentData_response_authorData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_response_authorData_userVerification build() => _build();

  _$GreviewsFragmentData_response_authorData_userVerification _build() {
    final _$result = _$v ??
        new _$GreviewsFragmentData_response_authorData_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GreviewsFragmentData_response_authorData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId,
                r'GreviewsFragmentData_response_authorData_userVerification',
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

class _$GreviewsFragmentData_authorData
    extends GreviewsFragmentData_authorData {
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
  final GreviewsFragmentData_authorData_userVerification? userVerification;

  factory _$GreviewsFragmentData_authorData(
          [void Function(GreviewsFragmentData_authorDataBuilder)? updates]) =>
      (new GreviewsFragmentData_authorDataBuilder()..update(updates))._build();

  _$GreviewsFragmentData_authorData._(
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
        G__typename, r'GreviewsFragmentData_authorData', 'G__typename');
  }

  @override
  GreviewsFragmentData_authorData rebuild(
          void Function(GreviewsFragmentData_authorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_authorDataBuilder toBuilder() =>
      new GreviewsFragmentData_authorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_authorData &&
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
    return (newBuiltValueToStringHelper(r'GreviewsFragmentData_authorData')
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

class GreviewsFragmentData_authorDataBuilder
    implements
        Builder<GreviewsFragmentData_authorData,
            GreviewsFragmentData_authorDataBuilder> {
  _$GreviewsFragmentData_authorData? _$v;

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

  GreviewsFragmentData_authorData_userVerificationBuilder? _userVerification;
  GreviewsFragmentData_authorData_userVerificationBuilder
      get userVerification => _$this._userVerification ??=
          new GreviewsFragmentData_authorData_userVerificationBuilder();
  set userVerification(
          GreviewsFragmentData_authorData_userVerificationBuilder?
              userVerification) =>
      _$this._userVerification = userVerification;

  GreviewsFragmentData_authorDataBuilder() {
    GreviewsFragmentData_authorData._initializeBuilder(this);
  }

  GreviewsFragmentData_authorDataBuilder get _$this {
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
  void replace(GreviewsFragmentData_authorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_authorData;
  }

  @override
  void update(void Function(GreviewsFragmentData_authorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_authorData build() => _build();

  _$GreviewsFragmentData_authorData _build() {
    _$GreviewsFragmentData_authorData _$result;
    try {
      _$result = _$v ??
          new _$GreviewsFragmentData_authorData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GreviewsFragmentData_authorData', 'G__typename'),
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
            r'GreviewsFragmentData_authorData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GreviewsFragmentData_authorData_userVerification
    extends GreviewsFragmentData_authorData_userVerification {
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

  factory _$GreviewsFragmentData_authorData_userVerification(
          [void Function(
                  GreviewsFragmentData_authorData_userVerificationBuilder)?
              updates]) =>
      (new GreviewsFragmentData_authorData_userVerificationBuilder()
            ..update(updates))
          ._build();

  _$GreviewsFragmentData_authorData_userVerification._(
      {required this.G__typename,
      required this.userId,
      this.isEmailConfirmed,
      this.isFacebookConnected,
      this.isGoogleConnected,
      this.isIdVerification,
      this.isPhoneVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GreviewsFragmentData_authorData_userVerification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GreviewsFragmentData_authorData_userVerification', 'userId');
  }

  @override
  GreviewsFragmentData_authorData_userVerification rebuild(
          void Function(GreviewsFragmentData_authorData_userVerificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreviewsFragmentData_authorData_userVerificationBuilder toBuilder() =>
      new GreviewsFragmentData_authorData_userVerificationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreviewsFragmentData_authorData_userVerification &&
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
            r'GreviewsFragmentData_authorData_userVerification')
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

class GreviewsFragmentData_authorData_userVerificationBuilder
    implements
        Builder<GreviewsFragmentData_authorData_userVerification,
            GreviewsFragmentData_authorData_userVerificationBuilder> {
  _$GreviewsFragmentData_authorData_userVerification? _$v;

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

  GreviewsFragmentData_authorData_userVerificationBuilder() {
    GreviewsFragmentData_authorData_userVerification._initializeBuilder(this);
  }

  GreviewsFragmentData_authorData_userVerificationBuilder get _$this {
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
  void replace(GreviewsFragmentData_authorData_userVerification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreviewsFragmentData_authorData_userVerification;
  }

  @override
  void update(
      void Function(GreviewsFragmentData_authorData_userVerificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GreviewsFragmentData_authorData_userVerification build() => _build();

  _$GreviewsFragmentData_authorData_userVerification _build() {
    final _$result = _$v ??
        new _$GreviewsFragmentData_authorData_userVerification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GreviewsFragmentData_authorData_userVerification',
                'G__typename'),
            userId: BuiltValueNullFieldError.checkNotNull(userId,
                r'GreviewsFragmentData_authorData_userVerification', 'userId'),
            isEmailConfirmed: isEmailConfirmed,
            isFacebookConnected: isFacebookConnected,
            isGoogleConnected: isGoogleConnected,
            isIdVerification: isIdVerification,
            isPhoneVerified: isPhoneVerified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
