// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'changepassword.data.gql.g.dart';

abstract class GchangePasswordData
    implements Built<GchangePasswordData, GchangePasswordDataBuilder> {
  GchangePasswordData._();

  factory GchangePasswordData(
          [void Function(GchangePasswordDataBuilder b) updates]) =
      _$GchangePasswordData;

  static void _initializeBuilder(GchangePasswordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GchangePasswordData_changePassword? get changePassword;
  static Serializer<GchangePasswordData> get serializer =>
      _$gchangePasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchangePasswordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangePasswordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchangePasswordData.serializer,
        json,
      );
}

abstract class GchangePasswordData_changePassword
    implements
        Built<GchangePasswordData_changePassword,
            GchangePasswordData_changePasswordBuilder> {
  GchangePasswordData_changePassword._();

  factory GchangePasswordData_changePassword(
      [void Function(GchangePasswordData_changePasswordBuilder b)
          updates]) = _$GchangePasswordData_changePassword;

  static void _initializeBuilder(GchangePasswordData_changePasswordBuilder b) =>
      b..G__typename = 'UserType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GchangePasswordData_changePassword> get serializer =>
      _$gchangePasswordDataChangePasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchangePasswordData_changePassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangePasswordData_changePassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchangePasswordData_changePassword.serializer,
        json,
      );
}
