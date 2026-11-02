// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_series_fragment.var.gql.g.dart';

abstract class GownerReportingSeriesFragmentVars
    implements
        Built<GownerReportingSeriesFragmentVars,
            GownerReportingSeriesFragmentVarsBuilder> {
  GownerReportingSeriesFragmentVars._();

  factory GownerReportingSeriesFragmentVars(
          [void Function(GownerReportingSeriesFragmentVarsBuilder b) updates]) =
      _$GownerReportingSeriesFragmentVars;

  static Serializer<GownerReportingSeriesFragmentVars> get serializer =>
      _$gownerReportingSeriesFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingSeriesFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingSeriesFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingSeriesFragmentVars.serializer,
        json,
      );
}
