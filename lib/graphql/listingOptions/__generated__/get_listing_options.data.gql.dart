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

part 'get_listing_options.data.gql.g.dart';

abstract class GgetListingOptionsData
    implements Built<GgetListingOptionsData, GgetListingOptionsDataBuilder> {
  GgetListingOptionsData._();

  factory GgetListingOptionsData(
          [void Function(GgetListingOptionsDataBuilder b) updates]) =
      _$GgetListingOptionsData;

  static void _initializeBuilder(GgetListingOptionsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetListingOptionsData_getListingOptions? get getListingOptions;
  static Serializer<GgetListingOptionsData> get serializer =>
      _$ggetListingOptionsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingOptionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingOptionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingOptionsData.serializer,
        json,
      );
}

abstract class GgetListingOptionsData_getListingOptions
    implements
        Built<GgetListingOptionsData_getListingOptions,
            GgetListingOptionsData_getListingOptionsBuilder>,
        _i2.GlistingOptionsResultFragment {
  GgetListingOptionsData_getListingOptions._();

  factory GgetListingOptionsData_getListingOptions(
      [void Function(GgetListingOptionsData_getListingOptionsBuilder b)
          updates]) = _$GgetListingOptionsData_getListingOptions;

  static void _initializeBuilder(
          GgetListingOptionsData_getListingOptionsBuilder b) =>
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
  BuiltList<GgetListingOptionsData_getListingOptions_results?>? get results;
  static Serializer<GgetListingOptionsData_getListingOptions> get serializer =>
      _$ggetListingOptionsDataGetListingOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingOptionsData_getListingOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingOptionsData_getListingOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingOptionsData_getListingOptions.serializer,
        json,
      );
}

abstract class GgetListingOptionsData_getListingOptions_results
    implements
        Built<GgetListingOptionsData_getListingOptions_results,
            GgetListingOptionsData_getListingOptions_resultsBuilder>,
        _i2.GlistingOptionsResultFragment_results,
        _i3.GlistingOptionFragment {
  GgetListingOptionsData_getListingOptions_results._();

  factory GgetListingOptionsData_getListingOptions_results(
      [void Function(GgetListingOptionsData_getListingOptions_resultsBuilder b)
          updates]) = _$GgetListingOptionsData_getListingOptions_results;

  static void _initializeBuilder(
          GgetListingOptionsData_getListingOptions_resultsBuilder b) =>
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
  static Serializer<GgetListingOptionsData_getListingOptions_results>
      get serializer =>
          _$ggetListingOptionsDataGetListingOptionsResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetListingOptionsData_getListingOptions_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetListingOptionsData_getListingOptions_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetListingOptionsData_getListingOptions_results.serializer,
        json,
      );
}
