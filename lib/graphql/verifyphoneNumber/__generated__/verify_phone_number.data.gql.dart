// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'verify_phone_number.data.gql.g.dart';

abstract class GVerifyPhoneNumberData
    implements Built<GVerifyPhoneNumberData, GVerifyPhoneNumberDataBuilder> {
  GVerifyPhoneNumberData._();

  factory GVerifyPhoneNumberData(
          [void Function(GVerifyPhoneNumberDataBuilder b) updates]) =
      _$GVerifyPhoneNumberData;

  static void _initializeBuilder(GVerifyPhoneNumberDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GVerifyPhoneNumberData_VerifyPhoneNumber? get VerifyPhoneNumber;
  static Serializer<GVerifyPhoneNumberData> get serializer =>
      _$gVerifyPhoneNumberDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVerifyPhoneNumberData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPhoneNumberData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVerifyPhoneNumberData.serializer,
        json,
      );
}

abstract class GVerifyPhoneNumberData_VerifyPhoneNumber
    implements
        Built<GVerifyPhoneNumberData_VerifyPhoneNumber,
            GVerifyPhoneNumberData_VerifyPhoneNumberBuilder> {
  GVerifyPhoneNumberData_VerifyPhoneNumber._();

  factory GVerifyPhoneNumberData_VerifyPhoneNumber(
      [void Function(GVerifyPhoneNumberData_VerifyPhoneNumberBuilder b)
          updates]) = _$GVerifyPhoneNumberData_VerifyPhoneNumber;

  static void _initializeBuilder(
          GVerifyPhoneNumberData_VerifyPhoneNumberBuilder b) =>
      b..G__typename = 'UserAccount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  static Serializer<GVerifyPhoneNumberData_VerifyPhoneNumber> get serializer =>
      _$gVerifyPhoneNumberDataVerifyPhoneNumberSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GVerifyPhoneNumberData_VerifyPhoneNumber.serializer,
        this,
      ) as Map<String, dynamic>);

  static GVerifyPhoneNumberData_VerifyPhoneNumber? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GVerifyPhoneNumberData_VerifyPhoneNumber.serializer,
        json,
      );
}
