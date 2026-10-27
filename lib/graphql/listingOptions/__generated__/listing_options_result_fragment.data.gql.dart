// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.data.gql.dart'
    as _i1;

part 'listing_options_result_fragment.data.gql.g.dart';

abstract class GlistingOptionsResultFragment {
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get maxCustom;
  int? get customCount;
  BuiltList<GlistingOptionsResultFragment_results?>? get results;
  Map<String, dynamic> toJson();
}

abstract class GlistingOptionsResultFragment_results
    implements _i1.GlistingOptionFragment {
  @override
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
  @override
  Map<String, dynamic> toJson();
}

abstract class GlistingOptionsResultFragmentData
    implements
        Built<GlistingOptionsResultFragmentData,
            GlistingOptionsResultFragmentDataBuilder>,
        GlistingOptionsResultFragment {
  GlistingOptionsResultFragmentData._();

  factory GlistingOptionsResultFragmentData(
          [void Function(GlistingOptionsResultFragmentDataBuilder b) updates]) =
      _$GlistingOptionsResultFragmentData;

  static void _initializeBuilder(GlistingOptionsResultFragmentDataBuilder b) =>
      b..G__typename = 'ListingOptionsResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get status;
  @override
  String? get errorMessage;
  @override
  int? get maxCustom;
  @override
  int? get customCount;
  @override
  BuiltList<GlistingOptionsResultFragmentData_results?>? get results;
  static Serializer<GlistingOptionsResultFragmentData> get serializer =>
      _$glistingOptionsResultFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlistingOptionsResultFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlistingOptionsResultFragmentData.serializer,
        json,
      );
}

abstract class GlistingOptionsResultFragmentData_results
    implements
        Built<GlistingOptionsResultFragmentData_results,
            GlistingOptionsResultFragmentData_resultsBuilder>,
        GlistingOptionsResultFragment_results,
        _i1.GlistingOptionFragment {
  GlistingOptionsResultFragmentData_results._();

  factory GlistingOptionsResultFragmentData_results(
      [void Function(GlistingOptionsResultFragmentData_resultsBuilder b)
          updates]) = _$GlistingOptionsResultFragmentData_results;

  static void _initializeBuilder(
          GlistingOptionsResultFragmentData_resultsBuilder b) =>
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
  static Serializer<GlistingOptionsResultFragmentData_results> get serializer =>
      _$glistingOptionsResultFragmentDataResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlistingOptionsResultFragmentData_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentData_results? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlistingOptionsResultFragmentData_results.serializer,
        json,
      );
}
