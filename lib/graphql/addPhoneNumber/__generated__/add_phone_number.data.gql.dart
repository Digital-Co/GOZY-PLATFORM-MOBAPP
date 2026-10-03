// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'add_phone_number.data.gql.g.dart';

abstract class GAddPhoneNumberData
    implements Built<GAddPhoneNumberData, GAddPhoneNumberDataBuilder> {
  GAddPhoneNumberData._();

  factory GAddPhoneNumberData(
          [void Function(GAddPhoneNumberDataBuilder b) updates]) =
      _$GAddPhoneNumberData;

  static void _initializeBuilder(GAddPhoneNumberDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddPhoneNumberData_AddPhoneNumber? get AddPhoneNumber;
  static Serializer<GAddPhoneNumberData> get serializer =>
      _$gAddPhoneNumberDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPhoneNumberData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddPhoneNumberData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPhoneNumberData.serializer,
        json,
      );
}

abstract class GAddPhoneNumberData_AddPhoneNumber
    implements
        Built<GAddPhoneNumberData_AddPhoneNumber,
            GAddPhoneNumberData_AddPhoneNumberBuilder> {
  GAddPhoneNumberData_AddPhoneNumber._();

  factory GAddPhoneNumberData_AddPhoneNumber(
      [void Function(GAddPhoneNumberData_AddPhoneNumberBuilder b)
          updates]) = _$GAddPhoneNumberData_AddPhoneNumber;

  static void _initializeBuilder(GAddPhoneNumberData_AddPhoneNumberBuilder b) =>
      b..G__typename = 'UserAccount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  String? get phoneNumberStatus;
  int? get verificationCode;
  static Serializer<GAddPhoneNumberData_AddPhoneNumber> get serializer =>
      _$gAddPhoneNumberDataAddPhoneNumberSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPhoneNumberData_AddPhoneNumber.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddPhoneNumberData_AddPhoneNumber? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPhoneNumberData_AddPhoneNumber.serializer,
        json,
      );
}
