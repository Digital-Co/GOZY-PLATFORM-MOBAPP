// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'SearchListing.data.gql.g.dart';

abstract class GSearchListingData
    implements Built<GSearchListingData, GSearchListingDataBuilder> {
  GSearchListingData._();

  factory GSearchListingData(
          [void Function(GSearchListingDataBuilder b) updates]) =
      _$GSearchListingData;

  static void _initializeBuilder(GSearchListingDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchListingData_searchListing? get searchListing;
  static Serializer<GSearchListingData> get serializer =>
      _$gSearchListingDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing
    implements
        Built<GSearchListingData_searchListing,
            GSearchListingData_searchListingBuilder> {
  GSearchListingData_searchListing._();

  factory GSearchListingData_searchListing(
          [void Function(GSearchListingData_searchListingBuilder b) updates]) =
      _$GSearchListingData_searchListing;

  static void _initializeBuilder(GSearchListingData_searchListingBuilder b) =>
      b..G__typename = 'SearchListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  BuiltList<GSearchListingData_searchListing_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GSearchListingData_searchListing> get serializer =>
      _$gSearchListingDataSearchListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results
    implements
        Built<GSearchListingData_searchListing_results,
            GSearchListingData_searchListing_resultsBuilder>,
        _i2.GviewListingShortFragment {
  GSearchListingData_searchListing_results._();

  factory GSearchListingData_searchListing_results(
      [void Function(GSearchListingData_searchListing_resultsBuilder b)
          updates]) = _$GSearchListingData_searchListing_results;

  static void _initializeBuilder(
          GSearchListingData_searchListing_resultsBuilder b) =>
      b..G__typename = 'ShowListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get transmission;
  @override
  bool? get wishListStatus;
  @override
  String? get carType;
  @override
  int? get reviewsStarRating;
  @override
  int? get reviewsCount;
  @override
  String? get bookingType;
  @override
  bool? get isListOwner;
  @override
  int? get coverPhoto;
  @override
  double? get lat;
  @override
  BuiltList<GSearchListingData_searchListing_results_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GSearchListingData_searchListing_results_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GSearchListingData_searchListing_results_dynamicListTitle?
      get dynamicListTitle;
  @override
  GSearchListingData_searchListing_results_dynamicListDescription?
      get dynamicListDescription;
  @override
  GSearchListingData_searchListing_results_dynamicCarType? get dynamicCarType;
  @override
  GSearchListingData_searchListing_results_dynamicmake? get dynamicmake;
  @override
  GSearchListingData_searchListing_results_dynamicModel? get dynamicModel;
  @override
  GSearchListingData_searchListing_results_dynamicYear? get dynamicYear;
  @override
  GSearchListingData_searchListing_results_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GSearchListingData_searchListing_results_carRules?>? get carRules;
  @override
  BuiltList<GSearchListingData_searchListing_results_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GSearchListingData_searchListing_results_listPhotos?>?
      get listPhotos;
  @override
  GSearchListingData_searchListing_results_listingData? get listingData;
  static Serializer<GSearchListingData_searchListing_results> get serializer =>
      _$gSearchListingDataSearchListingResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicListingTitle
    implements
        Built<GSearchListingData_searchListing_results_dynamicListingTitle,
            GSearchListingData_searchListing_results_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GSearchListingData_searchListing_results_dynamicListingTitle._();

  factory GSearchListingData_searchListing_results_dynamicListingTitle(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GSearchListingData_searchListing_results_dynamicListingTitle;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicListingTitleBuilder
              b) =>
      b..G__typename = 'DynamicListTitleType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  static Serializer<
          GSearchListingData_searchListing_results_dynamicListingTitle>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicListingTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicListingTitle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicListingTitle.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicListingDescription
    implements
        Built<
            GSearchListingData_searchListing_results_dynamicListingDescription,
            GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GSearchListingData_searchListing_results_dynamicListingDescription._();

  factory GSearchListingData_searchListing_results_dynamicListingDescription(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GSearchListingData_searchListing_results_dynamicListingDescription;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicListingDescriptionBuilder
              b) =>
      b..G__typename = 'DynamicListDescriptionType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  static Serializer<
          GSearchListingData_searchListing_results_dynamicListingDescription>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchListingData_searchListing_results_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GSearchListingData_searchListing_results_dynamicListTitle
    implements
        Built<GSearchListingData_searchListing_results_dynamicListTitle,
            GSearchListingData_searchListing_results_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GSearchListingData_searchListing_results_dynamicListTitle._();

  factory GSearchListingData_searchListing_results_dynamicListTitle(
      [void Function(
              GSearchListingData_searchListing_results_dynamicListTitleBuilder
                  b)
          updates]) = _$GSearchListingData_searchListing_results_dynamicListTitle;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicListTitleBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GSearchListingData_searchListing_results_dynamicListTitle>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicListTitle.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicListDescription
    implements
        Built<GSearchListingData_searchListing_results_dynamicListDescription,
            GSearchListingData_searchListing_results_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GSearchListingData_searchListing_results_dynamicListDescription._();

  factory GSearchListingData_searchListing_results_dynamicListDescription(
          [void Function(
                  GSearchListingData_searchListing_results_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GSearchListingData_searchListing_results_dynamicListDescription;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicListDescriptionBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GSearchListingData_searchListing_results_dynamicListDescription>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchListingData_searchListing_results_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GSearchListingData_searchListing_results_dynamicCarType
    implements
        Built<GSearchListingData_searchListing_results_dynamicCarType,
            GSearchListingData_searchListing_results_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GSearchListingData_searchListing_results_dynamicCarType._();

  factory GSearchListingData_searchListing_results_dynamicCarType(
      [void Function(
              GSearchListingData_searchListing_results_dynamicCarTypeBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_dynamicCarType;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicCarTypeBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GSearchListingData_searchListing_results_dynamicCarType>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicCarType.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicmake
    implements
        Built<GSearchListingData_searchListing_results_dynamicmake,
            GSearchListingData_searchListing_results_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GSearchListingData_searchListing_results_dynamicmake._();

  factory GSearchListingData_searchListing_results_dynamicmake(
      [void Function(
              GSearchListingData_searchListing_results_dynamicmakeBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_dynamicmake;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicmakeBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GSearchListingData_searchListing_results_dynamicmake>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicmake.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicModel
    implements
        Built<GSearchListingData_searchListing_results_dynamicModel,
            GSearchListingData_searchListing_results_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GSearchListingData_searchListing_results_dynamicModel._();

  factory GSearchListingData_searchListing_results_dynamicModel(
      [void Function(
              GSearchListingData_searchListing_results_dynamicModelBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_dynamicModel;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicModelBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GSearchListingData_searchListing_results_dynamicModel>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicModel.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicYear
    implements
        Built<GSearchListingData_searchListing_results_dynamicYear,
            GSearchListingData_searchListing_results_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GSearchListingData_searchListing_results_dynamicYear._();

  factory GSearchListingData_searchListing_results_dynamicYear(
      [void Function(
              GSearchListingData_searchListing_results_dynamicYearBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_dynamicYear;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicYearBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GSearchListingData_searchListing_results_dynamicYear>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicYear.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_dynamicOdometer
    implements
        Built<GSearchListingData_searchListing_results_dynamicOdometer,
            GSearchListingData_searchListing_results_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GSearchListingData_searchListing_results_dynamicOdometer._();

  factory GSearchListingData_searchListing_results_dynamicOdometer(
      [void Function(
              GSearchListingData_searchListing_results_dynamicOdometerBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_dynamicOdometer;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_dynamicOdometerBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GSearchListingData_searchListing_results_dynamicOdometer>
      get serializer =>
          _$gSearchListingDataSearchListingResultsDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_dynamicOdometer.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_carRules
    implements
        Built<GSearchListingData_searchListing_results_carRules,
            GSearchListingData_searchListing_results_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GSearchListingData_searchListing_results_carRules._();

  factory GSearchListingData_searchListing_results_carRules(
      [void Function(GSearchListingData_searchListing_results_carRulesBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_carRules;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GSearchListingData_searchListing_results_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GSearchListingData_searchListing_results_carRules>
      get serializer =>
          _$gSearchListingDataSearchListingResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_carRules.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_carRules_dynamicItemName
    implements
        Built<GSearchListingData_searchListing_results_carRules_dynamicItemName,
            GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GSearchListingData_searchListing_results_carRules_dynamicItemName._();

  factory GSearchListingData_searchListing_results_carRules_dynamicItemName(
          [void Function(
                  GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GSearchListingData_searchListing_results_carRules_dynamicItemName;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_carRules_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GSearchListingData_searchListing_results_carRules_dynamicItemName>
      get serializer =>
          _$gSearchListingDataSearchListingResultsCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchListingData_searchListing_results_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GSearchListingData_searchListing_results_carFeatures
    implements
        Built<GSearchListingData_searchListing_results_carFeatures,
            GSearchListingData_searchListing_results_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GSearchListingData_searchListing_results_carFeatures._();

  factory GSearchListingData_searchListing_results_carFeatures(
      [void Function(
              GSearchListingData_searchListing_results_carFeaturesBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_carFeatures;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GSearchListingData_searchListing_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GSearchListingData_searchListing_results_carFeatures>
      get serializer =>
          _$gSearchListingDataSearchListingResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_carFeatures.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_carFeatures_dynamicItemName
    implements
        Built<
            GSearchListingData_searchListing_results_carFeatures_dynamicItemName,
            GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GSearchListingData_searchListing_results_carFeatures_dynamicItemName._();

  factory GSearchListingData_searchListing_results_carFeatures_dynamicItemName(
          [void Function(
                  GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GSearchListingData_searchListing_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_carFeatures_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get en;
  @override
  String? get ar;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GSearchListingData_searchListing_results_carFeatures_dynamicItemName>
      get serializer =>
          _$gSearchListingDataSearchListingResultsCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSearchListingData_searchListing_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GSearchListingData_searchListing_results_listPhotos
    implements
        Built<GSearchListingData_searchListing_results_listPhotos,
            GSearchListingData_searchListing_results_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GSearchListingData_searchListing_results_listPhotos._();

  factory GSearchListingData_searchListing_results_listPhotos(
      [void Function(
              GSearchListingData_searchListing_results_listPhotosBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_listPhotos;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GSearchListingData_searchListing_results_listPhotos>
      get serializer =>
          _$gSearchListingDataSearchListingResultsListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_listPhotos.serializer,
        json,
      );
}

abstract class GSearchListingData_searchListing_results_listingData
    implements
        Built<GSearchListingData_searchListing_results_listingData,
            GSearchListingData_searchListing_results_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GSearchListingData_searchListing_results_listingData._();

  factory GSearchListingData_searchListing_results_listingData(
      [void Function(
              GSearchListingData_searchListing_results_listingDataBuilder b)
          updates]) = _$GSearchListingData_searchListing_results_listingData;

  static void _initializeBuilder(
          GSearchListingData_searchListing_results_listingDataBuilder b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get basePrice;
  @override
  String? get currency;
  static Serializer<GSearchListingData_searchListing_results_listingData>
      get serializer =>
          _$gSearchListingDataSearchListingResultsListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchListingData_searchListing_results_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchListingData_searchListing_results_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchListingData_searchListing_results_listingData.serializer,
        json,
      );
}
