// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user_verified_info_fragment.data.gql.g.dart';

abstract class GuserVerifiedInfoFragment {
  String get G__typename;
  String get userId;
  bool? get isEmailConfirmed;
  bool? get isFacebookConnected;
  bool? get isGoogleConnected;
  bool? get isIdVerification;
  bool? get isPhoneVerified;
  Map<String, dynamic> toJson();
}

abstract class GuserVerifiedInfoFragmentData
    implements
        Built<GuserVerifiedInfoFragmentData,
            GuserVerifiedInfoFragmentDataBuilder>,
        GuserVerifiedInfoFragment {
  GuserVerifiedInfoFragmentData._();

  factory GuserVerifiedInfoFragmentData(
          [void Function(GuserVerifiedInfoFragmentDataBuilder b) updates]) =
      _$GuserVerifiedInfoFragmentData;

  static void _initializeBuilder(GuserVerifiedInfoFragmentDataBuilder b) =>
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
  static Serializer<GuserVerifiedInfoFragmentData> get serializer =>
      _$guserVerifiedInfoFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserVerifiedInfoFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserVerifiedInfoFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserVerifiedInfoFragmentData.serializer,
        json,
      );
}
