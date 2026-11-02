// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_revenue_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_revenue_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_revenue_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'owner_reporting_revenue_fragment.req.gql.g.dart';

abstract class GownerReportingRevenueFragmentReq
    implements
        Built<GownerReportingRevenueFragmentReq,
            GownerReportingRevenueFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GownerReportingRevenueFragmentData,
            _i3.GownerReportingRevenueFragmentVars> {
  GownerReportingRevenueFragmentReq._();

  factory GownerReportingRevenueFragmentReq(
          [void Function(GownerReportingRevenueFragmentReqBuilder b) updates]) =
      _$GownerReportingRevenueFragmentReq;

  static void _initializeBuilder(GownerReportingRevenueFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'ownerReportingRevenueFragment';

  @override
  _i3.GownerReportingRevenueFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GownerReportingRevenueFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GownerReportingRevenueFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GownerReportingRevenueFragmentData data) =>
      data.toJson();

  static Serializer<GownerReportingRevenueFragmentReq> get serializer =>
      _$gownerReportingRevenueFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GownerReportingRevenueFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingRevenueFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GownerReportingRevenueFragmentReq.serializer,
        json,
      );
}
