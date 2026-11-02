// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_period_fragment.var.gql.g.dart';

abstract class GownerReportingPeriodFragmentVars
    implements
        Built<GownerReportingPeriodFragmentVars,
            GownerReportingPeriodFragmentVarsBuilder> {
  GownerReportingPeriodFragmentVars._();

  factory GownerReportingPeriodFragmentVars(
          [void Function(GownerReportingPeriodFragmentVarsBuilder b) updates]) =
      _$GownerReportingPeriodFragmentVars;

  static Serializer<GownerReportingPeriodFragmentVars> get serializer =>
      _$gownerReportingPeriodFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingPeriodFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingPeriodFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingPeriodFragmentVars.serializer,
        json,
      );
}
