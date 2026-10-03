// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'add_phone_number.var.gql.g.dart';

abstract class GAddPhoneNumberVars
    implements Built<GAddPhoneNumberVars, GAddPhoneNumberVarsBuilder> {
  GAddPhoneNumberVars._();

  factory GAddPhoneNumberVars(
          [void Function(GAddPhoneNumberVarsBuilder b) updates]) =
      _$GAddPhoneNumberVars;

  String get countryCode;
  String get phoneNumber;
  String? get countryName;
  static Serializer<GAddPhoneNumberVars> get serializer =>
      _$gAddPhoneNumberVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddPhoneNumberVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddPhoneNumberVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddPhoneNumberVars.serializer,
        json,
      );
}
