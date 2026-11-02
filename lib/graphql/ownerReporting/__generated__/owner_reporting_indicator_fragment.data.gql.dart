// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_indicator_fragment.data.gql.g.dart';

abstract class GownerReportingIndicatorFragment {
  String get G__typename;
  double? get value;
  double? get previous;
  double? get change;
  String? get trend;
  bool? get favorable;
  Map<String, dynamic> toJson();
}

abstract class GownerReportingIndicatorFragmentData
    implements
        Built<GownerReportingIndicatorFragmentData,
            GownerReportingIndicatorFragmentDataBuilder>,
        GownerReportingIndicatorFragment {
  GownerReportingIndicatorFragmentData._();

  factory GownerReportingIndicatorFragmentData(
      [void Function(GownerReportingIndicatorFragmentDataBuilder b)
          updates]) = _$GownerReportingIndicatorFragmentData;

  static void _initializeBuilder(
          GownerReportingIndicatorFragmentDataBuilder b) =>
      b..G__typename = 'OwnerReportingIndicator';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get value;
  @override
  double? get previous;
  @override
  double? get change;
  @override
  String? get trend;
  @override
  bool? get favorable;
  static Serializer<GownerReportingIndicatorFragmentData> get serializer =>
      _$gownerReportingIndicatorFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingIndicatorFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingIndicatorFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingIndicatorFragmentData.serializer,
        json,
      );
}
