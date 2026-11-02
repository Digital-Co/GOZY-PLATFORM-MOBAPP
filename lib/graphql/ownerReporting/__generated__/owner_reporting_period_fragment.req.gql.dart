// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_period_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_period_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_period_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'owner_reporting_period_fragment.req.gql.g.dart';

abstract class GownerReportingPeriodFragmentReq
    implements
        Built<GownerReportingPeriodFragmentReq,
            GownerReportingPeriodFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GownerReportingPeriodFragmentData,
            _i3.GownerReportingPeriodFragmentVars> {
  GownerReportingPeriodFragmentReq._();

  factory GownerReportingPeriodFragmentReq(
          [void Function(GownerReportingPeriodFragmentReqBuilder b) updates]) =
      _$GownerReportingPeriodFragmentReq;

  static void _initializeBuilder(GownerReportingPeriodFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ownerReportingPeriodFragment';

  @override
  _i3.GownerReportingPeriodFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GownerReportingPeriodFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GownerReportingPeriodFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GownerReportingPeriodFragmentData data) =>
      data.toJson();

  static Serializer<GownerReportingPeriodFragmentReq> get serializer =>
      _$gownerReportingPeriodFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GownerReportingPeriodFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingPeriodFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GownerReportingPeriodFragmentReq.serializer,
        json,
      );
}
