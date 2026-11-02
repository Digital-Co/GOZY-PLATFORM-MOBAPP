// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_earnings_components_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_earnings_components_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_earnings_components_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'owner_earnings_components_fragment.req.gql.g.dart';

abstract class GownerEarningsComponentsFragmentReq
    implements
        Built<GownerEarningsComponentsFragmentReq,
            GownerEarningsComponentsFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GownerEarningsComponentsFragmentData,
            _i3.GownerEarningsComponentsFragmentVars> {
  GownerEarningsComponentsFragmentReq._();

  factory GownerEarningsComponentsFragmentReq(
      [void Function(GownerEarningsComponentsFragmentReqBuilder b)
          updates]) = _$GownerEarningsComponentsFragmentReq;

  static void _initializeBuilder(
          GownerEarningsComponentsFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'ownerEarningsComponentsFragment';

  @override
  _i3.GownerEarningsComponentsFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GownerEarningsComponentsFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GownerEarningsComponentsFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GownerEarningsComponentsFragmentData data) =>
      data.toJson();

  static Serializer<GownerEarningsComponentsFragmentReq> get serializer =>
      _$gownerEarningsComponentsFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GownerEarningsComponentsFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerEarningsComponentsFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GownerEarningsComponentsFragmentReq.serializer,
        json,
      );
}
