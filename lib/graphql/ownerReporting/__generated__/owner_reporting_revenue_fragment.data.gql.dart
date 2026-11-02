// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_reporting_revenue_fragment.data.gql.g.dart';

abstract class GownerReportingRevenueFragment {
  String get G__typename;
  double? get netRevenue;
  double? get upcoming;
  double? get pendingPayout;
  double? get paid;
  double? get paidAmount;
  Map<String, dynamic> toJson();
}

abstract class GownerReportingRevenueFragmentData
    implements
        Built<GownerReportingRevenueFragmentData,
            GownerReportingRevenueFragmentDataBuilder>,
        GownerReportingRevenueFragment {
  GownerReportingRevenueFragmentData._();

  factory GownerReportingRevenueFragmentData(
      [void Function(GownerReportingRevenueFragmentDataBuilder b)
          updates]) = _$GownerReportingRevenueFragmentData;

  static void _initializeBuilder(GownerReportingRevenueFragmentDataBuilder b) =>
      b..G__typename = 'OwnerReportingRevenue';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get netRevenue;
  @override
  double? get upcoming;
  @override
  double? get pendingPayout;
  @override
  double? get paid;
  @override
  double? get paidAmount;
  static Serializer<GownerReportingRevenueFragmentData> get serializer =>
      _$gownerReportingRevenueFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerReportingRevenueFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerReportingRevenueFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerReportingRevenueFragmentData.serializer,
        json,
      );
}
