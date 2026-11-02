// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_period_fragment.data.gql.g.dart';

abstract class GownerReportingPeriodFragment {
  String get G__typename;
  String? get preset;
  String? get start;
  String? get end;
  int? get days;
  String? get previousStart;
  String? get previousEnd;
  int? get previousDays;
  Map<String, dynamic> toJson();
}

abstract class GownerReportingPeriodFragmentData
    implements
        Built<GownerReportingPeriodFragmentData,
            GownerReportingPeriodFragmentDataBuilder>,
        GownerReportingPeriodFragment {
  GownerReportingPeriodFragmentData._();

  factory GownerReportingPeriodFragmentData(
          [void Function(GownerReportingPeriodFragmentDataBuilder b) updates]) =
      _$GownerReportingPeriodFragmentData;

  static void _initializeBuilder(GownerReportingPeriodFragmentDataBuilder b) =>
      b..G__typename = 'OwnerReportingPeriod';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get preset;
  @override
  String? get start;
  @override
  String? get end;
  @override
  int? get days;
  @override
  String? get previousStart;
  @override
  String? get previousEnd;
  @override
  int? get previousDays;
  static Serializer<GownerReportingPeriodFragmentData> get serializer =>
      _$gownerReportingPeriodFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingPeriodFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingPeriodFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingPeriodFragmentData.serializer,
        json,
      );
}
