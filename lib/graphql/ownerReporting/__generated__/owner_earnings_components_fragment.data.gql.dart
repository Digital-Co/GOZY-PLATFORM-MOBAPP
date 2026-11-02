// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'owner_earnings_components_fragment.data.gql.g.dart';

abstract class GownerEarningsComponentsFragment {
  String get G__typename;
  double? get rental;
  double? get options;
  double? get delivery;
  double? get other;
  Map<String, dynamic> toJson();
}

abstract class GownerEarningsComponentsFragmentData
    implements
        Built<GownerEarningsComponentsFragmentData,
            GownerEarningsComponentsFragmentDataBuilder>,
        GownerEarningsComponentsFragment {
  GownerEarningsComponentsFragmentData._();

  factory GownerEarningsComponentsFragmentData(
      [void Function(GownerEarningsComponentsFragmentDataBuilder b)
          updates]) = _$GownerEarningsComponentsFragmentData;

  static void _initializeBuilder(
          GownerEarningsComponentsFragmentDataBuilder b) =>
      b..G__typename = 'OwnerEarningsBreakdown';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get rental;
  @override
  double? get options;
  @override
  double? get delivery;
  @override
  double? get other;
  static Serializer<GownerEarningsComponentsFragmentData> get serializer =>
      _$gownerEarningsComponentsFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GownerEarningsComponentsFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GownerEarningsComponentsFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GownerEarningsComponentsFragmentData.serializer,
        json,
      );
}
