// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'user_verified_info_fragment.req.gql.g.dart';

abstract class GuserVerifiedInfoFragmentReq
    implements
        Built<GuserVerifiedInfoFragmentReq,
            GuserVerifiedInfoFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GuserVerifiedInfoFragmentData,
            _i3.GuserVerifiedInfoFragmentVars> {
  GuserVerifiedInfoFragmentReq._();

  factory GuserVerifiedInfoFragmentReq(
          [void Function(GuserVerifiedInfoFragmentReqBuilder b) updates]) =
      _$GuserVerifiedInfoFragmentReq;

  static void _initializeBuilder(GuserVerifiedInfoFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'userVerifiedInfoFragment';

  @override
  _i3.GuserVerifiedInfoFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GuserVerifiedInfoFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GuserVerifiedInfoFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GuserVerifiedInfoFragmentData data) =>
      data.toJson();

  static Serializer<GuserVerifiedInfoFragmentReq> get serializer =>
      _$guserVerifiedInfoFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserVerifiedInfoFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserVerifiedInfoFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserVerifiedInfoFragmentReq.serializer,
        json,
      );
}
