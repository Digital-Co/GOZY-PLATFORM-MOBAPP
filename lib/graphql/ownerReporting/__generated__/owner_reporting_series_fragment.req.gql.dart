// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_series_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_series_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_series_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'owner_reporting_series_fragment.req.gql.g.dart';

abstract class GownerReportingSeriesFragmentReq
    implements
        Built<GownerReportingSeriesFragmentReq,
            GownerReportingSeriesFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GownerReportingSeriesFragmentData,
            _i3.GownerReportingSeriesFragmentVars> {
  GownerReportingSeriesFragmentReq._();

  factory GownerReportingSeriesFragmentReq(
          [void Function(GownerReportingSeriesFragmentReqBuilder b) updates]) =
      _$GownerReportingSeriesFragmentReq;

  static void _initializeBuilder(GownerReportingSeriesFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ownerReportingSeriesFragment';

  @override
  _i3.GownerReportingSeriesFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GownerReportingSeriesFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GownerReportingSeriesFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GownerReportingSeriesFragmentData data) =>
      data.toJson();

  static Serializer<GownerReportingSeriesFragmentReq> get serializer =>
      _$gownerReportingSeriesFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GownerReportingSeriesFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingSeriesFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GownerReportingSeriesFragmentReq.serializer,
        json,
      );
}
