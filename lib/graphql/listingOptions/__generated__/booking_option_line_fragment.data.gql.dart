// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'booking_option_line_fragment.data.gql.g.dart';

abstract class GbookingOptionLineFragment {
  String get G__typename;
  int? get listingOptionId;
  String? get code;
  bool? get isFixed;
  String? get label;
  String? get labelKey;
  String? get description;
  String? get billingMode;
  double? get unitPrice;
  int? get quantity;
  double? get amount;
  String? get currency;
  String? get userInput;
  Map<String, dynamic> toJson();
}

abstract class GbookingOptionLineFragmentData
    implements
        Built<GbookingOptionLineFragmentData,
            GbookingOptionLineFragmentDataBuilder>,
        GbookingOptionLineFragment {
  GbookingOptionLineFragmentData._();

  factory GbookingOptionLineFragmentData(
          [void Function(GbookingOptionLineFragmentDataBuilder b) updates]) =
      _$GbookingOptionLineFragmentData;

  static void _initializeBuilder(GbookingOptionLineFragmentDataBuilder b) =>
      b..G__typename = 'BookingOptionLineType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get listingOptionId;
  @override
  String? get code;
  @override
  bool? get isFixed;
  @override
  String? get label;
  @override
  String? get labelKey;
  @override
  String? get description;
  @override
  String? get billingMode;
  @override
  double? get unitPrice;
  @override
  int? get quantity;
  @override
  double? get amount;
  @override
  String? get currency;
  @override
  String? get userInput;
  static Serializer<GbookingOptionLineFragmentData> get serializer =>
      _$gbookingOptionLineFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GbookingOptionLineFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GbookingOptionLineFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GbookingOptionLineFragmentData.serializer,
        json,
      );
}
