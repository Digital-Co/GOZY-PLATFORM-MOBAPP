// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/reviews_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i3;

part 'Reviews.data.gql.g.dart';

abstract class GgetUserReviewsData
    implements Built<GgetUserReviewsData, GgetUserReviewsDataBuilder> {
  GgetUserReviewsData._();

  factory GgetUserReviewsData(
          [void Function(GgetUserReviewsDataBuilder b) updates]) =
      _$GgetUserReviewsData;

  static void _initializeBuilder(GgetUserReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUserReviewsData_getUserReviews? get getUserReviews;
  static Serializer<GgetUserReviewsData> get serializer =>
      _$ggetUserReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews
    implements
        Built<GgetUserReviewsData_getUserReviews,
            GgetUserReviewsData_getUserReviewsBuilder> {
  GgetUserReviewsData_getUserReviews._();

  factory GgetUserReviewsData_getUserReviews(
      [void Function(GgetUserReviewsData_getUserReviewsBuilder b)
          updates]) = _$GgetUserReviewsData_getUserReviews;

  static void _initializeBuilder(GgetUserReviewsData_getUserReviewsBuilder b) =>
      b..G__typename = 'Reviewlist';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  int? get currentPage;
  String? get ownerType;
  BuiltList<GgetUserReviewsData_getUserReviews_results?>? get results;
  static Serializer<GgetUserReviewsData_getUserReviews> get serializer =>
      _$ggetUserReviewsDataGetUserReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results
    implements
        Built<GgetUserReviewsData_getUserReviews_results,
            GgetUserReviewsData_getUserReviews_resultsBuilder>,
        _i2.GreviewsFragment {
  GgetUserReviewsData_getUserReviews_results._();

  factory GgetUserReviewsData_getUserReviews_results(
      [void Function(GgetUserReviewsData_getUserReviews_resultsBuilder b)
          updates]) = _$GgetUserReviewsData_getUserReviews_results;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_resultsBuilder b) =>
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
  GgetUserReviewsData_getUserReviews_results_userData? get userData;
  @override
  GgetUserReviewsData_getUserReviews_results_listData? get listData;
  @override
  bool? get isAdmin;
  @override
  GgetUserReviewsData_getUserReviews_results_response? get response;
  @override
  GgetUserReviewsData_getUserReviews_results_authorData? get authorData;
  static Serializer<GgetUserReviewsData_getUserReviews_results>
      get serializer => _$ggetUserReviewsDataGetUserReviewsResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews_results.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results_userData
    implements
        Built<GgetUserReviewsData_getUserReviews_results_userData,
            GgetUserReviewsData_getUserReviews_results_userDataBuilder>,
        _i2.GreviewsFragment_userData {
  GgetUserReviewsData_getUserReviews_results_userData._();

  factory GgetUserReviewsData_getUserReviews_results_userData(
      [void Function(
              GgetUserReviewsData_getUserReviews_results_userDataBuilder b)
          updates]) = _$GgetUserReviewsData_getUserReviews_results_userData;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_userDataBuilder b) =>
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
  GgetUserReviewsData_getUserReviews_results_userData_userVerification?
      get userVerification;
  static Serializer<GgetUserReviewsData_getUserReviews_results_userData>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews_results_userData.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results_userData_userVerification
    implements
        Built<
            GgetUserReviewsData_getUserReviews_results_userData_userVerification,
            GgetUserReviewsData_getUserReviews_results_userData_userVerificationBuilder>,
        _i2.GreviewsFragment_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetUserReviewsData_getUserReviews_results_userData_userVerification._();

  factory GgetUserReviewsData_getUserReviews_results_userData_userVerification(
          [void Function(
                  GgetUserReviewsData_getUserReviews_results_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetUserReviewsData_getUserReviews_results_userData_userVerification;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_userData_userVerificationBuilder
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
          GgetUserReviewsData_getUserReviews_results_userData_userVerification>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetUserReviewsData_getUserReviews_results_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetUserReviewsData_getUserReviews_results_listData
    implements
        Built<GgetUserReviewsData_getUserReviews_results_listData,
            GgetUserReviewsData_getUserReviews_results_listDataBuilder>,
        _i2.GreviewsFragment_listData {
  GgetUserReviewsData_getUserReviews_results_listData._();

  factory GgetUserReviewsData_getUserReviews_results_listData(
      [void Function(
              GgetUserReviewsData_getUserReviews_results_listDataBuilder b)
          updates]) = _$GgetUserReviewsData_getUserReviews_results_listData;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_listDataBuilder b) =>
      b..G__typename = 'AdminListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  static Serializer<GgetUserReviewsData_getUserReviews_results_listData>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews_results_listData.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results_response
    implements
        Built<GgetUserReviewsData_getUserReviews_results_response,
            GgetUserReviewsData_getUserReviews_results_responseBuilder>,
        _i2.GreviewsFragment_response {
  GgetUserReviewsData_getUserReviews_results_response._();

  factory GgetUserReviewsData_getUserReviews_results_response(
      [void Function(
              GgetUserReviewsData_getUserReviews_results_responseBuilder b)
          updates]) = _$GgetUserReviewsData_getUserReviews_results_response;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_responseBuilder b) =>
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
  GgetUserReviewsData_getUserReviews_results_response_userData? get userData;
  @override
  GgetUserReviewsData_getUserReviews_results_response_authorData?
      get authorData;
  static Serializer<GgetUserReviewsData_getUserReviews_results_response>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_response.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews_results_response.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results_response_userData
    implements
        Built<GgetUserReviewsData_getUserReviews_results_response_userData,
            GgetUserReviewsData_getUserReviews_results_response_userDataBuilder>,
        _i2.GreviewsFragment_response_userData {
  GgetUserReviewsData_getUserReviews_results_response_userData._();

  factory GgetUserReviewsData_getUserReviews_results_response_userData(
          [void Function(
                  GgetUserReviewsData_getUserReviews_results_response_userDataBuilder
                      b)
              updates]) =
      _$GgetUserReviewsData_getUserReviews_results_response_userData;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_response_userDataBuilder
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
  GgetUserReviewsData_getUserReviews_results_response_userData_userVerification?
      get userVerification;
  static Serializer<
          GgetUserReviewsData_getUserReviews_results_response_userData>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsResponseUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_response_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_response_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews_results_response_userData.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results_response_userData_userVerification
    implements
        Built<
            GgetUserReviewsData_getUserReviews_results_response_userData_userVerification,
            GgetUserReviewsData_getUserReviews_results_response_userData_userVerificationBuilder>,
        _i2.GreviewsFragment_response_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetUserReviewsData_getUserReviews_results_response_userData_userVerification._();

  factory GgetUserReviewsData_getUserReviews_results_response_userData_userVerification(
          [void Function(
                  GgetUserReviewsData_getUserReviews_results_response_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetUserReviewsData_getUserReviews_results_response_userData_userVerification;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_response_userData_userVerificationBuilder
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
          GgetUserReviewsData_getUserReviews_results_response_userData_userVerification>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsResponseUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_response_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_response_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetUserReviewsData_getUserReviews_results_response_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetUserReviewsData_getUserReviews_results_response_authorData
    implements
        Built<GgetUserReviewsData_getUserReviews_results_response_authorData,
            GgetUserReviewsData_getUserReviews_results_response_authorDataBuilder>,
        _i2.GreviewsFragment_response_authorData {
  GgetUserReviewsData_getUserReviews_results_response_authorData._();

  factory GgetUserReviewsData_getUserReviews_results_response_authorData(
          [void Function(
                  GgetUserReviewsData_getUserReviews_results_response_authorDataBuilder
                      b)
              updates]) =
      _$GgetUserReviewsData_getUserReviews_results_response_authorData;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_response_authorDataBuilder
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
  GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification?
      get userVerification;
  static Serializer<
          GgetUserReviewsData_getUserReviews_results_response_authorData>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsResponseAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_response_authorData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_response_authorData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetUserReviewsData_getUserReviews_results_response_authorData
                .serializer,
            json,
          );
}

abstract class GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification
    implements
        Built<
            GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification,
            GgetUserReviewsData_getUserReviews_results_response_authorData_userVerificationBuilder>,
        _i2.GreviewsFragment_response_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification._();

  factory GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification(
          [void Function(
                  GgetUserReviewsData_getUserReviews_results_response_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_response_authorData_userVerificationBuilder
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
          GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsResponseAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetUserReviewsData_getUserReviews_results_response_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetUserReviewsData_getUserReviews_results_authorData
    implements
        Built<GgetUserReviewsData_getUserReviews_results_authorData,
            GgetUserReviewsData_getUserReviews_results_authorDataBuilder>,
        _i2.GreviewsFragment_authorData {
  GgetUserReviewsData_getUserReviews_results_authorData._();

  factory GgetUserReviewsData_getUserReviews_results_authorData(
      [void Function(
              GgetUserReviewsData_getUserReviews_results_authorDataBuilder b)
          updates]) = _$GgetUserReviewsData_getUserReviews_results_authorData;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_authorDataBuilder b) =>
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
  GgetUserReviewsData_getUserReviews_results_authorData_userVerification?
      get userVerification;
  static Serializer<GgetUserReviewsData_getUserReviews_results_authorData>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_authorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_authorData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUserReviewsData_getUserReviews_results_authorData.serializer,
        json,
      );
}

abstract class GgetUserReviewsData_getUserReviews_results_authorData_userVerification
    implements
        Built<
            GgetUserReviewsData_getUserReviews_results_authorData_userVerification,
            GgetUserReviewsData_getUserReviews_results_authorData_userVerificationBuilder>,
        _i2.GreviewsFragment_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetUserReviewsData_getUserReviews_results_authorData_userVerification._();

  factory GgetUserReviewsData_getUserReviews_results_authorData_userVerification(
          [void Function(
                  GgetUserReviewsData_getUserReviews_results_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetUserReviewsData_getUserReviews_results_authorData_userVerification;

  static void _initializeBuilder(
          GgetUserReviewsData_getUserReviews_results_authorData_userVerificationBuilder
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
          GgetUserReviewsData_getUserReviews_results_authorData_userVerification>
      get serializer =>
          _$ggetUserReviewsDataGetUserReviewsResultsAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUserReviewsData_getUserReviews_results_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUserReviewsData_getUserReviews_results_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetUserReviewsData_getUserReviews_results_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GuserReviewsData
    implements Built<GuserReviewsData, GuserReviewsDataBuilder> {
  GuserReviewsData._();

  factory GuserReviewsData([void Function(GuserReviewsDataBuilder b) updates]) =
      _$GuserReviewsData;

  static void _initializeBuilder(GuserReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserReviewsData_userReviews? get userReviews;
  static Serializer<GuserReviewsData> get serializer =>
      _$guserReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews
    implements
        Built<GuserReviewsData_userReviews,
            GuserReviewsData_userReviewsBuilder> {
  GuserReviewsData_userReviews._();

  factory GuserReviewsData_userReviews(
          [void Function(GuserReviewsData_userReviewsBuilder b) updates]) =
      _$GuserReviewsData_userReviews;

  static void _initializeBuilder(GuserReviewsData_userReviewsBuilder b) =>
      b..G__typename = 'Reviewlist';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  int? get count;
  int? get currentPage;
  String? get ownerType;
  String? get errorMessage;
  BuiltList<GuserReviewsData_userReviews_results?>? get results;
  static Serializer<GuserReviewsData_userReviews> get serializer =>
      _$guserReviewsDataUserReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results
    implements
        Built<GuserReviewsData_userReviews_results,
            GuserReviewsData_userReviews_resultsBuilder>,
        _i2.GreviewsFragment {
  GuserReviewsData_userReviews_results._();

  factory GuserReviewsData_userReviews_results(
      [void Function(GuserReviewsData_userReviews_resultsBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_resultsBuilder b) =>
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
  GuserReviewsData_userReviews_results_userData? get userData;
  @override
  GuserReviewsData_userReviews_results_listData? get listData;
  @override
  bool? get isAdmin;
  @override
  GuserReviewsData_userReviews_results_response? get response;
  @override
  GuserReviewsData_userReviews_results_authorData? get authorData;
  static Serializer<GuserReviewsData_userReviews_results> get serializer =>
      _$guserReviewsDataUserReviewsResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_userData
    implements
        Built<GuserReviewsData_userReviews_results_userData,
            GuserReviewsData_userReviews_results_userDataBuilder>,
        _i2.GreviewsFragment_userData {
  GuserReviewsData_userReviews_results_userData._();

  factory GuserReviewsData_userReviews_results_userData(
      [void Function(GuserReviewsData_userReviews_results_userDataBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results_userData;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_userDataBuilder b) =>
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
  GuserReviewsData_userReviews_results_userData_userVerification?
      get userVerification;
  static Serializer<GuserReviewsData_userReviews_results_userData>
      get serializer => _$guserReviewsDataUserReviewsResultsUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results_userData.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_userData_userVerification
    implements
        Built<GuserReviewsData_userReviews_results_userData_userVerification,
            GuserReviewsData_userReviews_results_userData_userVerificationBuilder>,
        _i2.GreviewsFragment_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GuserReviewsData_userReviews_results_userData_userVerification._();

  factory GuserReviewsData_userReviews_results_userData_userVerification(
          [void Function(
                  GuserReviewsData_userReviews_results_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GuserReviewsData_userReviews_results_userData_userVerification;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_userData_userVerificationBuilder
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
          GuserReviewsData_userReviews_results_userData_userVerification>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GuserReviewsData_userReviews_results_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GuserReviewsData_userReviews_results_listData
    implements
        Built<GuserReviewsData_userReviews_results_listData,
            GuserReviewsData_userReviews_results_listDataBuilder>,
        _i2.GreviewsFragment_listData {
  GuserReviewsData_userReviews_results_listData._();

  factory GuserReviewsData_userReviews_results_listData(
      [void Function(GuserReviewsData_userReviews_results_listDataBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results_listData;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_listDataBuilder b) =>
      b..G__typename = 'AdminListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  static Serializer<GuserReviewsData_userReviews_results_listData>
      get serializer => _$guserReviewsDataUserReviewsResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results_listData.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_response
    implements
        Built<GuserReviewsData_userReviews_results_response,
            GuserReviewsData_userReviews_results_responseBuilder>,
        _i2.GreviewsFragment_response {
  GuserReviewsData_userReviews_results_response._();

  factory GuserReviewsData_userReviews_results_response(
      [void Function(GuserReviewsData_userReviews_results_responseBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results_response;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_responseBuilder b) =>
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
  GuserReviewsData_userReviews_results_response_userData? get userData;
  @override
  GuserReviewsData_userReviews_results_response_authorData? get authorData;
  static Serializer<GuserReviewsData_userReviews_results_response>
      get serializer => _$guserReviewsDataUserReviewsResultsResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_response.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results_response.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_response_userData
    implements
        Built<GuserReviewsData_userReviews_results_response_userData,
            GuserReviewsData_userReviews_results_response_userDataBuilder>,
        _i2.GreviewsFragment_response_userData {
  GuserReviewsData_userReviews_results_response_userData._();

  factory GuserReviewsData_userReviews_results_response_userData(
      [void Function(
              GuserReviewsData_userReviews_results_response_userDataBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results_response_userData;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_response_userDataBuilder b) =>
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
  GuserReviewsData_userReviews_results_response_userData_userVerification?
      get userVerification;
  static Serializer<GuserReviewsData_userReviews_results_response_userData>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsResponseUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_response_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_response_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results_response_userData.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_response_userData_userVerification
    implements
        Built<
            GuserReviewsData_userReviews_results_response_userData_userVerification,
            GuserReviewsData_userReviews_results_response_userData_userVerificationBuilder>,
        _i2.GreviewsFragment_response_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GuserReviewsData_userReviews_results_response_userData_userVerification._();

  factory GuserReviewsData_userReviews_results_response_userData_userVerification(
          [void Function(
                  GuserReviewsData_userReviews_results_response_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GuserReviewsData_userReviews_results_response_userData_userVerification;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_response_userData_userVerificationBuilder
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
          GuserReviewsData_userReviews_results_response_userData_userVerification>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsResponseUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_response_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_response_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GuserReviewsData_userReviews_results_response_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GuserReviewsData_userReviews_results_response_authorData
    implements
        Built<GuserReviewsData_userReviews_results_response_authorData,
            GuserReviewsData_userReviews_results_response_authorDataBuilder>,
        _i2.GreviewsFragment_response_authorData {
  GuserReviewsData_userReviews_results_response_authorData._();

  factory GuserReviewsData_userReviews_results_response_authorData(
      [void Function(
              GuserReviewsData_userReviews_results_response_authorDataBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results_response_authorData;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_response_authorDataBuilder b) =>
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
  GuserReviewsData_userReviews_results_response_authorData_userVerification?
      get userVerification;
  static Serializer<GuserReviewsData_userReviews_results_response_authorData>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsResponseAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_response_authorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_response_authorData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results_response_authorData.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_response_authorData_userVerification
    implements
        Built<
            GuserReviewsData_userReviews_results_response_authorData_userVerification,
            GuserReviewsData_userReviews_results_response_authorData_userVerificationBuilder>,
        _i2.GreviewsFragment_response_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GuserReviewsData_userReviews_results_response_authorData_userVerification._();

  factory GuserReviewsData_userReviews_results_response_authorData_userVerification(
          [void Function(
                  GuserReviewsData_userReviews_results_response_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GuserReviewsData_userReviews_results_response_authorData_userVerification;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_response_authorData_userVerificationBuilder
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
          GuserReviewsData_userReviews_results_response_authorData_userVerification>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsResponseAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_response_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_response_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GuserReviewsData_userReviews_results_response_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GuserReviewsData_userReviews_results_authorData
    implements
        Built<GuserReviewsData_userReviews_results_authorData,
            GuserReviewsData_userReviews_results_authorDataBuilder>,
        _i2.GreviewsFragment_authorData {
  GuserReviewsData_userReviews_results_authorData._();

  factory GuserReviewsData_userReviews_results_authorData(
      [void Function(GuserReviewsData_userReviews_results_authorDataBuilder b)
          updates]) = _$GuserReviewsData_userReviews_results_authorData;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_authorDataBuilder b) =>
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
  GuserReviewsData_userReviews_results_authorData_userVerification?
      get userVerification;
  static Serializer<GuserReviewsData_userReviews_results_authorData>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_authorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_authorData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserReviewsData_userReviews_results_authorData.serializer,
        json,
      );
}

abstract class GuserReviewsData_userReviews_results_authorData_userVerification
    implements
        Built<GuserReviewsData_userReviews_results_authorData_userVerification,
            GuserReviewsData_userReviews_results_authorData_userVerificationBuilder>,
        _i2.GreviewsFragment_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GuserReviewsData_userReviews_results_authorData_userVerification._();

  factory GuserReviewsData_userReviews_results_authorData_userVerification(
          [void Function(
                  GuserReviewsData_userReviews_results_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GuserReviewsData_userReviews_results_authorData_userVerification;

  static void _initializeBuilder(
          GuserReviewsData_userReviews_results_authorData_userVerificationBuilder
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
          GuserReviewsData_userReviews_results_authorData_userVerification>
      get serializer =>
          _$guserReviewsDataUserReviewsResultsAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserReviewsData_userReviews_results_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReviewsData_userReviews_results_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GuserReviewsData_userReviews_results_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData
    implements Built<GgetPropertyReviewsData, GgetPropertyReviewsDataBuilder> {
  GgetPropertyReviewsData._();

  factory GgetPropertyReviewsData(
          [void Function(GgetPropertyReviewsDataBuilder b) updates]) =
      _$GgetPropertyReviewsData;

  static void _initializeBuilder(GgetPropertyReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPropertyReviewsData_getPropertyReviews? get getPropertyReviews;
  static Serializer<GgetPropertyReviewsData> get serializer =>
      _$ggetPropertyReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsData.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsData_getPropertyReviews
    implements
        Built<GgetPropertyReviewsData_getPropertyReviews,
            GgetPropertyReviewsData_getPropertyReviewsBuilder> {
  GgetPropertyReviewsData_getPropertyReviews._();

  factory GgetPropertyReviewsData_getPropertyReviews(
      [void Function(GgetPropertyReviewsData_getPropertyReviewsBuilder b)
          updates]) = _$GgetPropertyReviewsData_getPropertyReviews;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviewsBuilder b) =>
      b..G__typename = 'Reviewlist';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  int? get currentPage;
  String? get ownerType;
  BuiltList<GgetPropertyReviewsData_getPropertyReviews_results?>? get results;
  static Serializer<GgetPropertyReviewsData_getPropertyReviews>
      get serializer => _$ggetPropertyReviewsDataGetPropertyReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsData_getPropertyReviews.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results
    implements
        Built<GgetPropertyReviewsData_getPropertyReviews_results,
            GgetPropertyReviewsData_getPropertyReviews_resultsBuilder>,
        _i2.GreviewsFragment {
  GgetPropertyReviewsData_getPropertyReviews_results._();

  factory GgetPropertyReviewsData_getPropertyReviews_results(
      [void Function(
              GgetPropertyReviewsData_getPropertyReviews_resultsBuilder b)
          updates]) = _$GgetPropertyReviewsData_getPropertyReviews_results;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_resultsBuilder b) =>
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
  GgetPropertyReviewsData_getPropertyReviews_results_userData? get userData;
  @override
  GgetPropertyReviewsData_getPropertyReviews_results_listData? get listData;
  @override
  bool? get isAdmin;
  @override
  GgetPropertyReviewsData_getPropertyReviews_results_response? get response;
  @override
  GgetPropertyReviewsData_getPropertyReviews_results_authorData? get authorData;
  static Serializer<GgetPropertyReviewsData_getPropertyReviews_results>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_userData
    implements
        Built<GgetPropertyReviewsData_getPropertyReviews_results_userData,
            GgetPropertyReviewsData_getPropertyReviews_results_userDataBuilder>,
        _i2.GreviewsFragment_userData {
  GgetPropertyReviewsData_getPropertyReviews_results_userData._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_userData(
      [void Function(
              GgetPropertyReviewsData_getPropertyReviews_results_userDataBuilder
                  b)
          updates]) = _$GgetPropertyReviewsData_getPropertyReviews_results_userData;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_userDataBuilder
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
  GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification?
      get userVerification;
  static Serializer<GgetPropertyReviewsData_getPropertyReviews_results_userData>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_userData.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification
    implements
        Built<
            GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification,
            GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerificationBuilder>,
        _i2.GreviewsFragment_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerificationBuilder
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
          GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_listData
    implements
        Built<GgetPropertyReviewsData_getPropertyReviews_results_listData,
            GgetPropertyReviewsData_getPropertyReviews_results_listDataBuilder>,
        _i2.GreviewsFragment_listData {
  GgetPropertyReviewsData_getPropertyReviews_results_listData._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_listData(
      [void Function(
              GgetPropertyReviewsData_getPropertyReviews_results_listDataBuilder
                  b)
          updates]) = _$GgetPropertyReviewsData_getPropertyReviews_results_listData;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_listDataBuilder
              b) =>
      b..G__typename = 'AdminListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  static Serializer<GgetPropertyReviewsData_getPropertyReviews_results_listData>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_listData.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_response
    implements
        Built<GgetPropertyReviewsData_getPropertyReviews_results_response,
            GgetPropertyReviewsData_getPropertyReviews_results_responseBuilder>,
        _i2.GreviewsFragment_response {
  GgetPropertyReviewsData_getPropertyReviews_results_response._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_response(
      [void Function(
              GgetPropertyReviewsData_getPropertyReviews_results_responseBuilder
                  b)
          updates]) = _$GgetPropertyReviewsData_getPropertyReviews_results_response;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_responseBuilder
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
  GgetPropertyReviewsData_getPropertyReviews_results_response_userData?
      get userData;
  @override
  GgetPropertyReviewsData_getPropertyReviews_results_response_authorData?
      get authorData;
  static Serializer<GgetPropertyReviewsData_getPropertyReviews_results_response>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_response.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_response? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_response.serializer,
        json,
      );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_response_userData
    implements
        Built<
            GgetPropertyReviewsData_getPropertyReviews_results_response_userData,
            GgetPropertyReviewsData_getPropertyReviews_results_response_userDataBuilder>,
        _i2.GreviewsFragment_response_userData {
  GgetPropertyReviewsData_getPropertyReviews_results_response_userData._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_response_userData(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_response_userDataBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_response_userData;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_response_userDataBuilder
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
  GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification?
      get userVerification;
  static Serializer<
          GgetPropertyReviewsData_getPropertyReviews_results_response_userData>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsResponseUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_response_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_response_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_response_userData
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification
    implements
        Built<
            GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification,
            GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerificationBuilder>,
        _i2.GreviewsFragment_response_userData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerificationBuilder
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
          GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsResponseUserDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_response_userData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_response_authorData
    implements
        Built<
            GgetPropertyReviewsData_getPropertyReviews_results_response_authorData,
            GgetPropertyReviewsData_getPropertyReviews_results_response_authorDataBuilder>,
        _i2.GreviewsFragment_response_authorData {
  GgetPropertyReviewsData_getPropertyReviews_results_response_authorData._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_response_authorData(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_response_authorDataBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_response_authorData;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_response_authorDataBuilder
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
  GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification?
      get userVerification;
  static Serializer<
          GgetPropertyReviewsData_getPropertyReviews_results_response_authorData>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsResponseAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_response_authorData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_response_authorData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_response_authorData
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification
    implements
        Built<
            GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification,
            GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerificationBuilder>,
        _i2.GreviewsFragment_response_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerificationBuilder
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
          GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsResponseAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_response_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_authorData
    implements
        Built<GgetPropertyReviewsData_getPropertyReviews_results_authorData,
            GgetPropertyReviewsData_getPropertyReviews_results_authorDataBuilder>,
        _i2.GreviewsFragment_authorData {
  GgetPropertyReviewsData_getPropertyReviews_results_authorData._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_authorData(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_authorDataBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_authorData;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_authorDataBuilder
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
  GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification?
      get userVerification;
  static Serializer<
          GgetPropertyReviewsData_getPropertyReviews_results_authorData>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsAuthorDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_authorData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_authorData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_authorData
                .serializer,
            json,
          );
}

abstract class GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification
    implements
        Built<
            GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification,
            GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerificationBuilder>,
        _i2.GreviewsFragment_authorData_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification._();

  factory GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification(
          [void Function(
                  GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification;

  static void _initializeBuilder(
          GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerificationBuilder
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
          GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification>
      get serializer =>
          _$ggetPropertyReviewsDataGetPropertyReviewsResultsAuthorDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPropertyReviewsData_getPropertyReviews_results_authorData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData
    implements
        Built<GgetPendingUserReviewsData, GgetPendingUserReviewsDataBuilder> {
  GgetPendingUserReviewsData._();

  factory GgetPendingUserReviewsData(
          [void Function(GgetPendingUserReviewsDataBuilder b) updates]) =
      _$GgetPendingUserReviewsData;

  static void _initializeBuilder(GgetPendingUserReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPendingUserReviewsData_getPendingUserReviews? get getPendingUserReviews;
  static Serializer<GgetPendingUserReviewsData> get serializer =>
      _$ggetPendingUserReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewsData.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews
    implements
        Built<GgetPendingUserReviewsData_getPendingUserReviews,
            GgetPendingUserReviewsData_getPendingUserReviewsBuilder> {
  GgetPendingUserReviewsData_getPendingUserReviews._();

  factory GgetPendingUserReviewsData_getPendingUserReviews(
      [void Function(GgetPendingUserReviewsData_getPendingUserReviewsBuilder b)
          updates]) = _$GgetPendingUserReviewsData_getPendingUserReviews;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviewsBuilder b) =>
      b..G__typename = 'AllReservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get count;
  int? get currentPage;
  BuiltList<GgetPendingUserReviewsData_getPendingUserReviews_results?>?
      get results;
  static Serializer<GgetPendingUserReviewsData_getPendingUserReviews>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results
    implements
        Built<GgetPendingUserReviewsData_getPendingUserReviews_results,
            GgetPendingUserReviewsData_getPendingUserReviews_resultsBuilder> {
  GgetPendingUserReviewsData_getPendingUserReviews_results._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results(
      [void Function(
              GgetPendingUserReviewsData_getPendingUserReviews_resultsBuilder b)
          updates]) = _$GgetPendingUserReviewsData_getPendingUserReviews_results;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_resultsBuilder b) =>
      b..G__typename = 'Reservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get listId;
  String? get hostId;
  String? get guestId;
  String? get listTitle;
  GgetPendingUserReviewsData_getPendingUserReviews_results_listData?
      get listData;
  GgetPendingUserReviewsData_getPendingUserReviews_results_threadData?
      get threadData;
  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData?
      get hostData;
  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData?
      get guestData;
  static Serializer<GgetPendingUserReviewsData_getPendingUserReviews_results>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_listData
    implements
        Built<GgetPendingUserReviewsData_getPendingUserReviews_results_listData,
            GgetPendingUserReviewsData_getPendingUserReviews_results_listDataBuilder> {
  GgetPendingUserReviewsData_getPendingUserReviews_results_listData._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_listData(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_listDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_listData;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_listDataBuilder
              b) =>
      b..G__typename = 'ShowListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get title;
  static Serializer<
          GgetPendingUserReviewsData_getPendingUserReviews_results_listData>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_listData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_threadData
    implements
        Built<
            GgetPendingUserReviewsData_getPendingUserReviews_results_threadData,
            GgetPendingUserReviewsData_getPendingUserReviews_results_threadDataBuilder> {
  GgetPendingUserReviewsData_getPendingUserReviews_results_threadData._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_threadData(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_threadDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_threadData;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_threadDataBuilder
              b) =>
      b..G__typename = 'ThreadItems';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get reservationId;
  static Serializer<
          GgetPendingUserReviewsData_getPendingUserReviews_results_threadData>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsThreadDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_threadData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_threadData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_threadData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_hostData
    implements
        Built<GgetPendingUserReviewsData_getPendingUserReviews_results_hostData,
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostDataBuilder>,
        _i4.GuserProfileFragment {
  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_hostData(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_hostDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_hostData;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_hostDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData?
      get userData;
  @override
  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification?
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
          GgetPendingUserReviewsData_getPendingUserReviews_results_hostData>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsHostDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_hostData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_hostData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData
    implements
        Built<
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData,
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userDataBuilder>,
        _i4.GuserProfileFragment_userData {
  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userDataBuilder
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
          GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsHostDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification
    implements
        Built<
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification,
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerificationBuilder>,
        _i4.GuserProfileFragment_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerificationBuilder
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
          GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsHostDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_hostData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_guestData
    implements
        Built<
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData,
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestDataBuilder>,
        _i4.GuserProfileFragment {
  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_guestData(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_guestDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_guestData;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_guestDataBuilder
              b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData?
      get userData;
  @override
  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification?
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
          GgetPendingUserReviewsData_getPendingUserReviews_results_guestData>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsGuestDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_guestData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_guestData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData
    implements
        Built<
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData,
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userDataBuilder>,
        _i4.GuserProfileFragment_userData {
  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userDataBuilder
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
          GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsGuestDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification
    implements
        Built<
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification,
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerificationBuilder>,
        _i4.GuserProfileFragment_userVerification,
        _i3.GuserVerifiedInfoFragment {
  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification._();

  factory GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification(
          [void Function(
                  GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerificationBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification;

  static void _initializeBuilder(
          GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerificationBuilder
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
          GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification>
      get serializer =>
          _$ggetPendingUserReviewsDataGetPendingUserReviewsResultsGuestDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewsData_getPendingUserReviews_results_guestData_userVerification
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewData
    implements
        Built<GgetPendingUserReviewData, GgetPendingUserReviewDataBuilder> {
  GgetPendingUserReviewData._();

  factory GgetPendingUserReviewData(
          [void Function(GgetPendingUserReviewDataBuilder b) updates]) =
      _$GgetPendingUserReviewData;

  static void _initializeBuilder(GgetPendingUserReviewDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetPendingUserReviewData_getPendingUserReview? get getPendingUserReview;
  static Serializer<GgetPendingUserReviewData> get serializer =>
      _$ggetPendingUserReviewDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewData.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewData_getPendingUserReview
    implements
        Built<GgetPendingUserReviewData_getPendingUserReview,
            GgetPendingUserReviewData_getPendingUserReviewBuilder> {
  GgetPendingUserReviewData_getPendingUserReview._();

  factory GgetPendingUserReviewData_getPendingUserReview(
      [void Function(GgetPendingUserReviewData_getPendingUserReviewBuilder b)
          updates]) = _$GgetPendingUserReviewData_getPendingUserReview;

  static void _initializeBuilder(
          GgetPendingUserReviewData_getPendingUserReviewBuilder b) =>
      b..G__typename = 'CommonReservationType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetPendingUserReviewData_getPendingUserReview_result? get result;
  static Serializer<GgetPendingUserReviewData_getPendingUserReview>
      get serializer =>
          _$ggetPendingUserReviewDataGetPendingUserReviewSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewData_getPendingUserReview.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewData_getPendingUserReview? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewData_getPendingUserReview.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewData_getPendingUserReview_result
    implements
        Built<GgetPendingUserReviewData_getPendingUserReview_result,
            GgetPendingUserReviewData_getPendingUserReview_resultBuilder> {
  GgetPendingUserReviewData_getPendingUserReview_result._();

  factory GgetPendingUserReviewData_getPendingUserReview_result(
      [void Function(
              GgetPendingUserReviewData_getPendingUserReview_resultBuilder b)
          updates]) = _$GgetPendingUserReviewData_getPendingUserReview_result;

  static void _initializeBuilder(
          GgetPendingUserReviewData_getPendingUserReview_resultBuilder b) =>
      b..G__typename = 'Reservation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get listId;
  String? get guestId;
  String? get hostId;
  String? get listTitle;
  GgetPendingUserReviewData_getPendingUserReview_result_listData? get listData;
  static Serializer<GgetPendingUserReviewData_getPendingUserReview_result>
      get serializer =>
          _$ggetPendingUserReviewDataGetPendingUserReviewResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewData_getPendingUserReview_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewData_getPendingUserReview_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPendingUserReviewData_getPendingUserReview_result.serializer,
        json,
      );
}

abstract class GgetPendingUserReviewData_getPendingUserReview_result_listData
    implements
        Built<GgetPendingUserReviewData_getPendingUserReview_result_listData,
            GgetPendingUserReviewData_getPendingUserReview_result_listDataBuilder> {
  GgetPendingUserReviewData_getPendingUserReview_result_listData._();

  factory GgetPendingUserReviewData_getPendingUserReview_result_listData(
          [void Function(
                  GgetPendingUserReviewData_getPendingUserReview_result_listDataBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewData_getPendingUserReview_result_listData;

  static void _initializeBuilder(
          GgetPendingUserReviewData_getPendingUserReview_result_listDataBuilder
              b) =>
      b..G__typename = 'ShowListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get title;
  String? get city;
  String? get state;
  String? get country;
  String? get transmission;
  String? get carType;
  GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType?
      get dynamicCarType;
  String? get odometer;
  int? get reviewsCount;
  int? get reviewsStarRating;
  int? get coverPhoto;
  String? get listPhotoName;
  BuiltList<
          GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos?>?
      get listPhotos;
  static Serializer<
          GgetPendingUserReviewData_getPendingUserReview_result_listData>
      get serializer =>
          _$ggetPendingUserReviewDataGetPendingUserReviewResultListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewData_getPendingUserReview_result_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewData_getPendingUserReview_result_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewData_getPendingUserReview_result_listData
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType
    implements
        Built<
            GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType,
            GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarTypeBuilder> {
  GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType._();

  factory GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType(
          [void Function(
                  GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType;

  static void _initializeBuilder(
          GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarTypeBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get ar;
  String? get en;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  static Serializer<
          GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType>
      get serializer =>
          _$ggetPendingUserReviewDataGetPendingUserReviewResultListDataDynamicCarTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewData_getPendingUserReview_result_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos
    implements
        Built<
            GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos,
            GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotosBuilder> {
  GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos._();

  factory GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos(
          [void Function(
                  GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos;

  static void _initializeBuilder(
          GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotosBuilder
              b) =>
      b..G__typename = 'listPhotosData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  static Serializer<
          GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos>
      get serializer =>
          _$ggetPendingUserReviewDataGetPendingUserReviewResultListDataListPhotosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPendingUserReviewData_getPendingUserReview_result_listData_listPhotos
                .serializer,
            json,
          );
}

abstract class GwriteUserReviewData
    implements Built<GwriteUserReviewData, GwriteUserReviewDataBuilder> {
  GwriteUserReviewData._();

  factory GwriteUserReviewData(
          [void Function(GwriteUserReviewDataBuilder b) updates]) =
      _$GwriteUserReviewData;

  static void _initializeBuilder(GwriteUserReviewDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GwriteUserReviewData_writeUserReview? get writeUserReview;
  static Serializer<GwriteUserReviewData> get serializer =>
      _$gwriteUserReviewDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GwriteUserReviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GwriteUserReviewData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GwriteUserReviewData.serializer,
        json,
      );
}

abstract class GwriteUserReviewData_writeUserReview
    implements
        Built<GwriteUserReviewData_writeUserReview,
            GwriteUserReviewData_writeUserReviewBuilder> {
  GwriteUserReviewData_writeUserReview._();

  factory GwriteUserReviewData_writeUserReview(
      [void Function(GwriteUserReviewData_writeUserReviewBuilder b)
          updates]) = _$GwriteUserReviewData_writeUserReview;

  static void _initializeBuilder(
          GwriteUserReviewData_writeUserReviewBuilder b) =>
      b..G__typename = 'CommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GwriteUserReviewData_writeUserReview> get serializer =>
      _$gwriteUserReviewDataWriteUserReviewSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GwriteUserReviewData_writeUserReview.serializer,
        this,
      ) as Map<String, dynamic>);

  static GwriteUserReviewData_writeUserReview? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GwriteUserReviewData_writeUserReview.serializer,
        json,
      );
}
