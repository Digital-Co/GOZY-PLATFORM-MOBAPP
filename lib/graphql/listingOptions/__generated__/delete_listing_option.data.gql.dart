// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.data.gql.dart'
    as _i2;

part 'delete_listing_option.data.gql.g.dart';

abstract class GdeleteListingOptionData
    implements
        Built<GdeleteListingOptionData, GdeleteListingOptionDataBuilder> {
  GdeleteListingOptionData._();

  factory GdeleteListingOptionData(
          [void Function(GdeleteListingOptionDataBuilder b) updates]) =
      _$GdeleteListingOptionData;

  static void _initializeBuilder(GdeleteListingOptionDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GdeleteListingOptionData_deleteListingOption? get deleteListingOption;
  static Serializer<GdeleteListingOptionData> get serializer =>
      _$gdeleteListingOptionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteListingOptionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteListingOptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteListingOptionData.serializer,
        json,
      );
}

abstract class GdeleteListingOptionData_deleteListingOption
    implements
        Built<GdeleteListingOptionData_deleteListingOption,
            GdeleteListingOptionData_deleteListingOptionBuilder>,
        _i2.GlistingOptionsResultFragment {
  GdeleteListingOptionData_deleteListingOption._();

  factory GdeleteListingOptionData_deleteListingOption(
      [void Function(GdeleteListingOptionData_deleteListingOptionBuilder b)
          updates]) = _$GdeleteListingOptionData_deleteListingOption;

  static void _initializeBuilder(
          GdeleteListingOptionData_deleteListingOptionBuilder b) =>
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
  BuiltList<GdeleteListingOptionData_deleteListingOption_results?>? get results;
  static Serializer<GdeleteListingOptionData_deleteListingOption>
      get serializer => _$gdeleteListingOptionDataDeleteListingOptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteListingOptionData_deleteListingOption.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteListingOptionData_deleteListingOption? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteListingOptionData_deleteListingOption.serializer,
        json,
      );
}

abstract class GdeleteListingOptionData_deleteListingOption_results
    implements
        Built<GdeleteListingOptionData_deleteListingOption_results,
            GdeleteListingOptionData_deleteListingOption_resultsBuilder>,
        _i2.GlistingOptionsResultFragment_results,
        _i2.GlistingOptionFragment {
  GdeleteListingOptionData_deleteListingOption_results._();

  factory GdeleteListingOptionData_deleteListingOption_results(
      [void Function(
              GdeleteListingOptionData_deleteListingOption_resultsBuilder b)
          updates]) = _$GdeleteListingOptionData_deleteListingOption_results;

  static void _initializeBuilder(
          GdeleteListingOptionData_deleteListingOption_resultsBuilder b) =>
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
  static Serializer<GdeleteListingOptionData_deleteListingOption_results>
      get serializer =>
          _$gdeleteListingOptionDataDeleteListingOptionResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteListingOptionData_deleteListingOption_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteListingOptionData_deleteListingOption_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteListingOptionData_deleteListingOption_results.serializer,
        json,
      );
}
