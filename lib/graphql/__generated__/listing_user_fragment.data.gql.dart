// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i1;

part 'listing_user_fragment.data.gql.g.dart';

abstract class GlistingUserFragment {
  String get G__typename;
  String? get email;
  GlistingUserFragment_profile? get profile;
  GlistingUserFragment_verification? get verification;
  int? get userBanStatus;
  Map<String, dynamic> toJson();
}

abstract class GlistingUserFragment_profile {
  String get G__typename;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get displayName;
  String? get picture;
  String? get location;
  String? get info;
  String? get createdAt;
  Map<String, dynamic> toJson();
}

abstract class GlistingUserFragment_verification
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

abstract class GlistingUserFragmentData
    implements
        Built<GlistingUserFragmentData, GlistingUserFragmentDataBuilder>,
        GlistingUserFragment {
  GlistingUserFragmentData._();

  factory GlistingUserFragmentData(
          [void Function(GlistingUserFragmentDataBuilder b) updates]) =
      _$GlistingUserFragmentData;

  static void _initializeBuilder(GlistingUserFragmentDataBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GlistingUserFragmentData_profile? get profile;
  @override
  GlistingUserFragmentData_verification? get verification;
  @override
  int? get userBanStatus;
  static Serializer<GlistingUserFragmentData> get serializer =>
      _$glistingUserFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlistingUserFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingUserFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlistingUserFragmentData.serializer,
        json,
      );
}

abstract class GlistingUserFragmentData_profile
    implements
        Built<GlistingUserFragmentData_profile,
            GlistingUserFragmentData_profileBuilder>,
        GlistingUserFragment_profile {
  GlistingUserFragmentData_profile._();

  factory GlistingUserFragmentData_profile(
          [void Function(GlistingUserFragmentData_profileBuilder b) updates]) =
      _$GlistingUserFragmentData_profile;

  static void _initializeBuilder(GlistingUserFragmentData_profileBuilder b) =>
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
  static Serializer<GlistingUserFragmentData_profile> get serializer =>
      _$glistingUserFragmentDataProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlistingUserFragmentData_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingUserFragmentData_profile? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlistingUserFragmentData_profile.serializer,
        json,
      );
}

abstract class GlistingUserFragmentData_verification
    implements
        Built<GlistingUserFragmentData_verification,
            GlistingUserFragmentData_verificationBuilder>,
        GlistingUserFragment_verification,
        _i1.GuserVerifiedInfoFragment {
  GlistingUserFragmentData_verification._();

  factory GlistingUserFragmentData_verification(
      [void Function(GlistingUserFragmentData_verificationBuilder b)
          updates]) = _$GlistingUserFragmentData_verification;

  static void _initializeBuilder(
          GlistingUserFragmentData_verificationBuilder b) =>
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
  static Serializer<GlistingUserFragmentData_verification> get serializer =>
      _$glistingUserFragmentDataVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlistingUserFragmentData_verification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingUserFragmentData_verification? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlistingUserFragmentData_verification.serializer,
        json,
      );
}
