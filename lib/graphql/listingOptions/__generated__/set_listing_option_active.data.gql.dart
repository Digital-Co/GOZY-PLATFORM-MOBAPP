// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/listingOptions/__generated__/listing_option_fragment.data.gql.dart'
    as _i2;

part 'set_listing_option_active.data.gql.g.dart';

abstract class GsetListingOptionActiveData
    implements
        Built<GsetListingOptionActiveData, GsetListingOptionActiveDataBuilder> {
  GsetListingOptionActiveData._();

  factory GsetListingOptionActiveData(
          [void Function(GsetListingOptionActiveDataBuilder b) updates]) =
      _$GsetListingOptionActiveData;

  static void _initializeBuilder(GsetListingOptionActiveDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsetListingOptionActiveData_setListingOptionActive?
      get setListingOptionActive;
  static Serializer<GsetListingOptionActiveData> get serializer =>
      _$gsetListingOptionActiveDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetListingOptionActiveData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetListingOptionActiveData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetListingOptionActiveData.serializer,
        json,
      );
}

abstract class GsetListingOptionActiveData_setListingOptionActive
    implements
        Built<GsetListingOptionActiveData_setListingOptionActive,
            GsetListingOptionActiveData_setListingOptionActiveBuilder>,
        _i2.GlistingOptionsResultFragment {
  GsetListingOptionActiveData_setListingOptionActive._();

  factory GsetListingOptionActiveData_setListingOptionActive(
      [void Function(
              GsetListingOptionActiveData_setListingOptionActiveBuilder b)
          updates]) = _$GsetListingOptionActiveData_setListingOptionActive;

  static void _initializeBuilder(
          GsetListingOptionActiveData_setListingOptionActiveBuilder b) =>
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
  BuiltList<GsetListingOptionActiveData_setListingOptionActive_results?>?
      get results;
  static Serializer<GsetListingOptionActiveData_setListingOptionActive>
      get serializer =>
          _$gsetListingOptionActiveDataSetListingOptionActiveSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetListingOptionActiveData_setListingOptionActive.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetListingOptionActiveData_setListingOptionActive? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetListingOptionActiveData_setListingOptionActive.serializer,
        json,
      );
}

abstract class GsetListingOptionActiveData_setListingOptionActive_results
    implements
        Built<GsetListingOptionActiveData_setListingOptionActive_results,
            GsetListingOptionActiveData_setListingOptionActive_resultsBuilder>,
        _i2.GlistingOptionsResultFragment_results,
        _i2.GlistingOptionFragment {
  GsetListingOptionActiveData_setListingOptionActive_results._();

  factory GsetListingOptionActiveData_setListingOptionActive_results(
      [void Function(
              GsetListingOptionActiveData_setListingOptionActive_resultsBuilder
                  b)
          updates]) = _$GsetListingOptionActiveData_setListingOptionActive_results;

  static void _initializeBuilder(
          GsetListingOptionActiveData_setListingOptionActive_resultsBuilder
              b) =>
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
  static Serializer<GsetListingOptionActiveData_setListingOptionActive_results>
      get serializer =>
          _$gsetListingOptionActiveDataSetListingOptionActiveResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetListingOptionActiveData_setListingOptionActive_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetListingOptionActiveData_setListingOptionActive_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetListingOptionActiveData_setListingOptionActive_results.serializer,
        json,
      );
}
