// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_revenue_fragment.var.gql.g.dart';

abstract class GownerReportingRevenueFragmentVars
    implements
        Built<GownerReportingRevenueFragmentVars,
            GownerReportingRevenueFragmentVarsBuilder> {
  GownerReportingRevenueFragmentVars._();

  factory GownerReportingRevenueFragmentVars(
      [void Function(GownerReportingRevenueFragmentVarsBuilder b)
          updates]) = _$GownerReportingRevenueFragmentVars;

  static Serializer<GownerReportingRevenueFragmentVars> get serializer =>
      _$gownerReportingRevenueFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingRevenueFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingRevenueFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingRevenueFragmentVars.serializer,
        json,
      );
}
