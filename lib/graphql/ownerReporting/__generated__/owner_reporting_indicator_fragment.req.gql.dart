// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_indicator_fragment.ast.gql.dart'
    as _i4;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_indicator_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/ownerReporting/__generated__/owner_reporting_indicator_fragment.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'owner_reporting_indicator_fragment.req.gql.g.dart';

abstract class GownerReportingIndicatorFragmentReq
    implements
        Built<GownerReportingIndicatorFragmentReq,
            GownerReportingIndicatorFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GownerReportingIndicatorFragmentData,
            _i3.GownerReportingIndicatorFragmentVars> {
  GownerReportingIndicatorFragmentReq._();

  factory GownerReportingIndicatorFragmentReq(
      [void Function(GownerReportingIndicatorFragmentReqBuilder b)
          updates]) = _$GownerReportingIndicatorFragmentReq;

  static void _initializeBuilder(
          GownerReportingIndicatorFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'ownerReportingIndicatorFragment';

  @override
  _i3.GownerReportingIndicatorFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GownerReportingIndicatorFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GownerReportingIndicatorFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GownerReportingIndicatorFragmentData data) =>
      data.toJson();

  static Serializer<GownerReportingIndicatorFragmentReq> get serializer =>
      _$gownerReportingIndicatorFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GownerReportingIndicatorFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingIndicatorFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GownerReportingIndicatorFragmentReq.serializer,
        json,
      );
}
