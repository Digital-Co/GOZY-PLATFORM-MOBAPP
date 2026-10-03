// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/__generated__/user_profile_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/user_profile_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'user_profile_fragment.req.gql.g.dart';

abstract class GuserProfileFragmentReq
    implements
        Built<GuserProfileFragmentReq, GuserProfileFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GuserProfileFragmentData,
            _i3.GuserProfileFragmentVars> {
  GuserProfileFragmentReq._();

  factory GuserProfileFragmentReq(
          [void Function(GuserProfileFragmentReqBuilder b) updates]) =
      _$GuserProfileFragmentReq;

  static void _initializeBuilder(GuserProfileFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'userProfileFragment';

  @override
  _i3.GuserProfileFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GuserProfileFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GuserProfileFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GuserProfileFragmentData data) =>
      data.toJson();

  static Serializer<GuserProfileFragmentReq> get serializer =>
      _$guserProfileFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserProfileFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserProfileFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserProfileFragmentReq.serializer,
        json,
      );
}
