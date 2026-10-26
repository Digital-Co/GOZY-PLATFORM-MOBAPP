// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/listingOptions/__generated__/listing_options_result_fragment.data.gql.dart'
    as _i2;

part 'save_listing_option.data.gql.g.dart';

abstract class GsaveListingOptionData
    implements Built<GsaveListingOptionData, GsaveListingOptionDataBuilder> {
  GsaveListingOptionData._();

  factory GsaveListingOptionData(
          [void Function(GsaveListingOptionDataBuilder b) updates]) =
      _$GsaveListingOptionData;

  static void _initializeBuilder(GsaveListingOptionDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsaveListingOptionData_saveListingOption? get saveListingOption;
  static Serializer<GsaveListingOptionData> get serializer =>
      _$gsaveListingOptionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveListingOptionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveListingOptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveListingOptionData.serializer,
        json,
      );
}

abstract class GsaveListingOptionData_saveListingOption
    implements
        Built<GsaveListingOptionData_saveListingOption,
            GsaveListingOptionData_saveListingOptionBuilder>,
        _i2.GlistingOptionsResultFragment {
  GsaveListingOptionData_saveListingOption._();

  factory GsaveListingOptionData_saveListingOption(
      [void Function(GsaveListingOptionData_saveListingOptionBuilder b)
          updates]) = _$GsaveListingOptionData_saveListingOption;

  static void _initializeBuilder(
          GsaveListingOptionData_saveListingOptionBuilder b) =>
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
  BuiltList<GsaveListingOptionData_saveListingOption_results?>? get results;
  static Serializer<GsaveListingOptionData_saveListingOption> get serializer =>
      _$gsaveListingOptionDataSaveListingOptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveListingOptionData_saveListingOption.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveListingOptionData_saveListingOption? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveListingOptionData_saveListingOption.serializer,
        json,
      );
}

abstract class GsaveListingOptionData_saveListingOption_results
    implements
        Built<GsaveListingOptionData_saveListingOption_results,
            GsaveListingOptionData_saveListingOption_resultsBuilder>,
        _i2.GlistingOptionsResultFragment_results,
        _i3.GlistingOptionFragment {
  GsaveListingOptionData_saveListingOption_results._();

  factory GsaveListingOptionData_saveListingOption_results(
      [void Function(GsaveListingOptionData_saveListingOption_resultsBuilder b)
          updates]) = _$GsaveListingOptionData_saveListingOption_results;

  static void _initializeBuilder(
          GsaveListingOptionData_saveListingOption_resultsBuilder b) =>
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
  static Serializer<GsaveListingOptionData_saveListingOption_results>
      get serializer =>
          _$gsaveListingOptionDataSaveListingOptionResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsaveListingOptionData_saveListingOption_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsaveListingOptionData_saveListingOption_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsaveListingOptionData_saveListingOption_results.serializer,
        json,
      );
}
