// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i1;

part 'reviews_fragment.data.gql.g.dart';

abstract class GreviewsFragment {
  String get G__typename;
  int? get id;
  int? get reservationId;
  int? get listId;
  String? get reviewContent;
  double? get rating;
  String? get privateFeedback;
  int? get yourReviewsCount;
  int? get reviewsCount;
  String? get createdAt;
  String? get updatedAt;
  String? get status;
  GreviewsFragment_userData? get userData;
  GreviewsFragment_listData? get listData;
  bool? get isAdmin;
  GreviewsFragment_response? get response;
  GreviewsFragment_authorData? get authorData;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_userData {
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get displayName;
  String? get picture;
  String? get location;
  String? get phoneNumber;
  String? get fullPhoneNumber;
  String? get createdAt;
  int? get reviewsCount;
  String? get dateOfBirth;
  String? get info;
  GreviewsFragment_userData_userVerification? get userVerification;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_userData_userVerification
    implements _i1.GuserVerifiedInfoFragment {
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

abstract class GreviewsFragment_listData {
  String get G__typename;
  String? get title;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_response {
  String get G__typename;
  String? get authorId;
  bool? get automated;
  int? get id;
  bool? get isAdmin;
  double? get rating;
  String? get createdAt;
  int? get listId;
  int? get parentId;
  String? get privateFeedback;
  String? get reviewContent;
  int? get reservationId;
  GreviewsFragment_response_userData? get userData;
  GreviewsFragment_response_authorData? get authorData;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_response_userData {
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get displayName;
  String? get picture;
  String? get location;
  String? get phoneNumber;
  String? get fullPhoneNumber;
  String? get createdAt;
  int? get reviewsCount;
  String? get dateOfBirth;
  String? get info;
  GreviewsFragment_response_userData_userVerification? get userVerification;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_response_userData_userVerification
    implements _i1.GuserVerifiedInfoFragment {
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

abstract class GreviewsFragment_response_authorData {
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get picture;
  String? get location;
  String? get createdAt;
  int? get reviewsCount;
  String? get info;
  GreviewsFragment_response_authorData_userVerification? get userVerification;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_response_authorData_userVerification
    implements _i1.GuserVerifiedInfoFragment {
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

abstract class GreviewsFragment_authorData {
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get picture;
  String? get location;
  String? get createdAt;
  int? get reviewsCount;
  String? get info;
  GreviewsFragment_authorData_userVerification? get userVerification;
  Map<String, dynamic> toJson();
}

abstract class GreviewsFragment_authorData_userVerification
    implements _i1.GuserVerifiedInfoFragment {
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

abstract class GreviewsFragmentData
    implements
        Built<GreviewsFragmentData, GreviewsFragmentDataBuilder>,
        GreviewsFragment {
  GreviewsFragmentData._();

  factory GreviewsFragmentData(
          [void Function(GreviewsFragmentDataBuilder b) updates]) =
      _$GreviewsFragmentData;

  static void _initializeBuilder(GreviewsFragmentDataBuilder b) =>
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
  GreviewsFragmentData_userData? get userData;
  @override
  GreviewsFragmentData_listData? get listData;
  @override
  bool? get isAdmin;
  @override
  GreviewsFragmentData_response? get response;
  @override
  GreviewsFragmentData_authorData? get authorData;
  static Serializer<GreviewsFragmentData> get serializer =>
      _$greviewsFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_userData
    implements
        Built<GreviewsFragmentData_userData,
            GreviewsFragmentData_userDataBuilder>,
        GreviewsFragment_userData {
  GreviewsFragmentData_userData._();

  factory GreviewsFragmentData_userData(
          [void Function(GreviewsFragmentData_userDataBuilder b) updates]) =
      _$GreviewsFragmentData_userData;

  static void _initializeBuilder(GreviewsFragmentData_userDataBuilder b) =>
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
  GreviewsFragmentData_userData_userVerification? get userVerification;
  static Serializer<GreviewsFragmentData_userData> get serializer =>
      _$greviewsFragmentDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_userData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_userData.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_userData_userVerification
    implements
        Built<GreviewsFragmentData_userData_userVerification,
            GreviewsFragmentData_userData_userVerificationBuilder>,
        GreviewsFragment_userData_userVerification,
        _i1.GuserVerifiedInfoFragment {
  GreviewsFragmentData_userData_userVerification._();

  factory GreviewsFragmentData_userData_userVerification(
      [void Function(GreviewsFragmentData_userData_userVerificationBuilder b)
          updates]) = _$GreviewsFragmentData_userData_userVerification;

  static void _initializeBuilder(
          GreviewsFragmentData_userData_userVerificationBuilder b) =>
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
  static Serializer<GreviewsFragmentData_userData_userVerification>
      get serializer =>
          _$greviewsFragmentDataUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_userData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_userData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_userData_userVerification.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_listData
    implements
        Built<GreviewsFragmentData_listData,
            GreviewsFragmentData_listDataBuilder>,
        GreviewsFragment_listData {
  GreviewsFragmentData_listData._();

  factory GreviewsFragmentData_listData(
          [void Function(GreviewsFragmentData_listDataBuilder b) updates]) =
      _$GreviewsFragmentData_listData;

  static void _initializeBuilder(GreviewsFragmentData_listDataBuilder b) =>
      b..G__typename = 'AdminListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  static Serializer<GreviewsFragmentData_listData> get serializer =>
      _$greviewsFragmentDataListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_listData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_listData.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_response
    implements
        Built<GreviewsFragmentData_response,
            GreviewsFragmentData_responseBuilder>,
        GreviewsFragment_response {
  GreviewsFragmentData_response._();

  factory GreviewsFragmentData_response(
          [void Function(GreviewsFragmentData_responseBuilder b) updates]) =
      _$GreviewsFragmentData_response;

  static void _initializeBuilder(GreviewsFragmentData_responseBuilder b) =>
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
  GreviewsFragmentData_response_userData? get userData;
  @override
  GreviewsFragmentData_response_authorData? get authorData;
  static Serializer<GreviewsFragmentData_response> get serializer =>
      _$greviewsFragmentDataResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_response.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_response? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_response.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_response_userData
    implements
        Built<GreviewsFragmentData_response_userData,
            GreviewsFragmentData_response_userDataBuilder>,
        GreviewsFragment_response_userData {
  GreviewsFragmentData_response_userData._();

  factory GreviewsFragmentData_response_userData(
      [void Function(GreviewsFragmentData_response_userDataBuilder b)
          updates]) = _$GreviewsFragmentData_response_userData;

  static void _initializeBuilder(
          GreviewsFragmentData_response_userDataBuilder b) =>
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
  GreviewsFragmentData_response_userData_userVerification? get userVerification;
  static Serializer<GreviewsFragmentData_response_userData> get serializer =>
      _$greviewsFragmentDataResponseUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_response_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_response_userData? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_response_userData.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_response_userData_userVerification
    implements
        Built<GreviewsFragmentData_response_userData_userVerification,
            GreviewsFragmentData_response_userData_userVerificationBuilder>,
        GreviewsFragment_response_userData_userVerification,
        _i1.GuserVerifiedInfoFragment {
  GreviewsFragmentData_response_userData_userVerification._();

  factory GreviewsFragmentData_response_userData_userVerification(
      [void Function(
              GreviewsFragmentData_response_userData_userVerificationBuilder b)
          updates]) = _$GreviewsFragmentData_response_userData_userVerification;

  static void _initializeBuilder(
          GreviewsFragmentData_response_userData_userVerificationBuilder b) =>
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
  static Serializer<GreviewsFragmentData_response_userData_userVerification>
      get serializer =>
          _$greviewsFragmentDataResponseUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_response_userData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_response_userData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_response_userData_userVerification.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_response_authorData
    implements
        Built<GreviewsFragmentData_response_authorData,
            GreviewsFragmentData_response_authorDataBuilder>,
        GreviewsFragment_response_authorData {
  GreviewsFragmentData_response_authorData._();

  factory GreviewsFragmentData_response_authorData(
      [void Function(GreviewsFragmentData_response_authorDataBuilder b)
          updates]) = _$GreviewsFragmentData_response_authorData;

  static void _initializeBuilder(
          GreviewsFragmentData_response_authorDataBuilder b) =>
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
  GreviewsFragmentData_response_authorData_userVerification?
      get userVerification;
  static Serializer<GreviewsFragmentData_response_authorData> get serializer =>
      _$greviewsFragmentDataResponseAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_response_authorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_response_authorData? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_response_authorData.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_response_authorData_userVerification
    implements
        Built<GreviewsFragmentData_response_authorData_userVerification,
            GreviewsFragmentData_response_authorData_userVerificationBuilder>,
        GreviewsFragment_response_authorData_userVerification,
        _i1.GuserVerifiedInfoFragment {
  GreviewsFragmentData_response_authorData_userVerification._();

  factory GreviewsFragmentData_response_authorData_userVerification(
      [void Function(
              GreviewsFragmentData_response_authorData_userVerificationBuilder
                  b)
          updates]) = _$GreviewsFragmentData_response_authorData_userVerification;

  static void _initializeBuilder(
          GreviewsFragmentData_response_authorData_userVerificationBuilder b) =>
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
  static Serializer<GreviewsFragmentData_response_authorData_userVerification>
      get serializer =>
          _$greviewsFragmentDataResponseAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_response_authorData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_response_authorData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_response_authorData_userVerification.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_authorData
    implements
        Built<GreviewsFragmentData_authorData,
            GreviewsFragmentData_authorDataBuilder>,
        GreviewsFragment_authorData {
  GreviewsFragmentData_authorData._();

  factory GreviewsFragmentData_authorData(
          [void Function(GreviewsFragmentData_authorDataBuilder b) updates]) =
      _$GreviewsFragmentData_authorData;

  static void _initializeBuilder(GreviewsFragmentData_authorDataBuilder b) =>
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
  GreviewsFragmentData_authorData_userVerification? get userVerification;
  static Serializer<GreviewsFragmentData_authorData> get serializer =>
      _$greviewsFragmentDataAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_authorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_authorData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_authorData.serializer,
        json,
      );
}

abstract class GreviewsFragmentData_authorData_userVerification
    implements
        Built<GreviewsFragmentData_authorData_userVerification,
            GreviewsFragmentData_authorData_userVerificationBuilder>,
        GreviewsFragment_authorData_userVerification,
        _i1.GuserVerifiedInfoFragment {
  GreviewsFragmentData_authorData_userVerification._();

  factory GreviewsFragmentData_authorData_userVerification(
      [void Function(GreviewsFragmentData_authorData_userVerificationBuilder b)
          updates]) = _$GreviewsFragmentData_authorData_userVerification;

  static void _initializeBuilder(
          GreviewsFragmentData_authorData_userVerificationBuilder b) =>
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
  static Serializer<GreviewsFragmentData_authorData_userVerification>
      get serializer =>
          _$greviewsFragmentDataAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GreviewsFragmentData_authorData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreviewsFragmentData_authorData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GreviewsFragmentData_authorData_userVerification.serializer,
        json,
      );
}
