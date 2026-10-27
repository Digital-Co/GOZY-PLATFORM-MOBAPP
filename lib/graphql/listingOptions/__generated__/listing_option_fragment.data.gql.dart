// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_option_fragment.data.gql.g.dart';

abstract class GlistingOptionFragment {
  String get G__typename;
  int? get id;
  int? get listId;
  String? get slot;
  String? get code;
  bool? get isFixed;
  String? get label;
  String? get description;
  double? get price;
  String? get billingMode;
  bool? get isActive;
  bool? get adminDisabled;
  String? get icon;
  int? get sortOrder;
  Map<String, dynamic> toJson();
}

abstract class GlistingOptionFragmentData
    implements
        Built<GlistingOptionFragmentData, GlistingOptionFragmentDataBuilder>,
        GlistingOptionFragment {
  GlistingOptionFragmentData._();

  factory GlistingOptionFragmentData(
          [void Function(GlistingOptionFragmentDataBuilder b) updates]) =
      _$GlistingOptionFragmentData;

  static void _initializeBuilder(GlistingOptionFragmentDataBuilder b) =>
      b..G__typename = 'ListingOption';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get listId;
  @override
  String? get slot;
  @override
  String? get code;
  @override
  bool? get isFixed;
  @override
  String? get label;
  @override
  String? get description;
  @override
  double? get price;
  @override
  String? get billingMode;
  @override
  bool? get isActive;
  @override
  bool? get adminDisabled;
  @override
  String? get icon;
  @override
  int? get sortOrder;
  static Serializer<GlistingOptionFragmentData> get serializer =>
      _$glistingOptionFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionFragmentData.serializer,
        json,
      );
}
