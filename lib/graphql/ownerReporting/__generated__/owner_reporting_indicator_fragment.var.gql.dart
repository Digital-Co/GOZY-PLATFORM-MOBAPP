// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_indicator_fragment.var.gql.g.dart';

abstract class GownerReportingIndicatorFragmentVars
    implements
        Built<GownerReportingIndicatorFragmentVars,
            GownerReportingIndicatorFragmentVarsBuilder> {
  GownerReportingIndicatorFragmentVars._();

  factory GownerReportingIndicatorFragmentVars(
      [void Function(GownerReportingIndicatorFragmentVarsBuilder b)
          updates]) = _$GownerReportingIndicatorFragmentVars;

  static Serializer<GownerReportingIndicatorFragmentVars> get serializer =>
      _$gownerReportingIndicatorFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingIndicatorFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingIndicatorFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingIndicatorFragmentVars.serializer,
        json,
      );
}
