// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'deleteUser.data.gql.g.dart';

abstract class GdeleteUserData
    implements Built<GdeleteUserData, GdeleteUserDataBuilder> {
  GdeleteUserData._();

  factory GdeleteUserData([void Function(GdeleteUserDataBuilder b) updates]) =
      _$GdeleteUserData;

  static void _initializeBuilder(GdeleteUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GdeleteUserData_deleteUser? get deleteUser;
  static Serializer<GdeleteUserData> get serializer =>
      _$gdeleteUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserData.serializer,
        json,
      );
}

abstract class GdeleteUserData_deleteUser
    implements
        Built<GdeleteUserData_deleteUser, GdeleteUserData_deleteUserBuilder> {
  GdeleteUserData_deleteUser._();

  factory GdeleteUserData_deleteUser(
          [void Function(GdeleteUserData_deleteUserBuilder b) updates]) =
      _$GdeleteUserData_deleteUser;

  static void _initializeBuilder(GdeleteUserData_deleteUserBuilder b) =>
      b..G__typename = 'UserCommon';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GdeleteUserData_deleteUser> get serializer =>
      _$gdeleteUserDataDeleteUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserData_deleteUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteUserData_deleteUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserData_deleteUser.serializer,
        json,
      );
}
