// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i1;

part 'user_profile_fragment.data.gql.g.dart';

abstract class GuserProfileFragment {
  String? get id;
  String get G__typename;
  GuserProfileFragment_userData? get userData;
  GuserProfileFragment_userVerification? get userVerification;
  int? get reviewsCount;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get displayName;
  String? get dateOfBirth;
  String? get picture;
  String? get location;
  String? get phoneNumber;
  String? get fullPhoneNumber;
  String? get info;
  String? get createdAt;
  Map<String, dynamic> toJson();
}

abstract class GuserProfileFragment_userData {
  String get G__typename;
  String get id;
  String? get email;
  int? get userBanStatus;
  String? get gender;
  Map<String, dynamic> toJson();
}

abstract class GuserProfileFragment_userVerification
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

abstract class GuserProfileFragmentData
    implements
        Built<GuserProfileFragmentData, GuserProfileFragmentDataBuilder>,
        GuserProfileFragment {
  GuserProfileFragmentData._();

  factory GuserProfileFragmentData(
          [void Function(GuserProfileFragmentDataBuilder b) updates]) =
      _$GuserProfileFragmentData;

  static void _initializeBuilder(GuserProfileFragmentDataBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  String? get id;
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GuserProfileFragmentData_userData? get userData;
  @override
  GuserProfileFragmentData_userVerification? get userVerification;
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
  static Serializer<GuserProfileFragmentData> get serializer =>
      _$guserProfileFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GuserProfileFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserProfileFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GuserProfileFragmentData.serializer,
        json,
      );
}

abstract class GuserProfileFragmentData_userData
    implements
        Built<GuserProfileFragmentData_userData,
            GuserProfileFragmentData_userDataBuilder>,
        GuserProfileFragment_userData {
  GuserProfileFragmentData_userData._();

  factory GuserProfileFragmentData_userData(
          [void Function(GuserProfileFragmentData_userDataBuilder b) updates]) =
      _$GuserProfileFragmentData_userData;

  static void _initializeBuilder(GuserProfileFragmentData_userDataBuilder b) =>
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
  static Serializer<GuserProfileFragmentData_userData> get serializer =>
      _$guserProfileFragmentDataUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GuserProfileFragmentData_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserProfileFragmentData_userData? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GuserProfileFragmentData_userData.serializer,
        json,
      );
}

abstract class GuserProfileFragmentData_userVerification
    implements
        Built<GuserProfileFragmentData_userVerification,
            GuserProfileFragmentData_userVerificationBuilder>,
        GuserProfileFragment_userVerification,
        _i1.GuserVerifiedInfoFragment {
  GuserProfileFragmentData_userVerification._();

  factory GuserProfileFragmentData_userVerification(
      [void Function(GuserProfileFragmentData_userVerificationBuilder b)
          updates]) = _$GuserProfileFragmentData_userVerification;

  static void _initializeBuilder(
          GuserProfileFragmentData_userVerificationBuilder b) =>
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
  static Serializer<GuserProfileFragmentData_userVerification> get serializer =>
      _$guserProfileFragmentDataUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GuserProfileFragmentData_userVerification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserProfileFragmentData_userVerification? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GuserProfileFragmentData_userVerification.serializer,
        json,
      );
}
