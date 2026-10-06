// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'explore_list.data.gql.g.dart';

abstract class GgetExploreListingsData
    implements Built<GgetExploreListingsData, GgetExploreListingsDataBuilder> {
  GgetExploreListingsData._();

  factory GgetExploreListingsData(
          [void Function(GgetExploreListingsDataBuilder b) updates]) =
      _$GgetExploreListingsData;

  static void _initializeBuilder(GgetExploreListingsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetExploreListingsData_getPopularLocations? get getPopularLocations;
  GgetExploreListingsData_getMostViewedListing? get getMostViewedListing;
  GgetExploreListingsData_getRecommend? get getRecommend;
  static Serializer<GgetExploreListingsData> get serializer =>
      _$ggetExploreListingsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getPopularLocations
    implements
        Built<GgetExploreListingsData_getPopularLocations,
            GgetExploreListingsData_getPopularLocationsBuilder> {
  GgetExploreListingsData_getPopularLocations._();

  factory GgetExploreListingsData_getPopularLocations(
      [void Function(GgetExploreListingsData_getPopularLocationsBuilder b)
          updates]) = _$GgetExploreListingsData_getPopularLocations;

  static void _initializeBuilder(
          GgetExploreListingsData_getPopularLocationsBuilder b) =>
      b..G__typename = 'PopularLocationCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetExploreListingsData_getPopularLocations_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetExploreListingsData_getPopularLocations>
      get serializer => _$ggetExploreListingsDataGetPopularLocationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getPopularLocations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getPopularLocations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getPopularLocations.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getPopularLocations_results
    implements
        Built<GgetExploreListingsData_getPopularLocations_results,
            GgetExploreListingsData_getPopularLocations_resultsBuilder> {
  GgetExploreListingsData_getPopularLocations_results._();

  factory GgetExploreListingsData_getPopularLocations_results(
      [void Function(
              GgetExploreListingsData_getPopularLocations_resultsBuilder b)
          updates]) = _$GgetExploreListingsData_getPopularLocations_results;

  static void _initializeBuilder(
          GgetExploreListingsData_getPopularLocations_resultsBuilder b) =>
      b..G__typename = 'PopularLocationListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get location;
  String? get locationAddress;
  String? get image;
  static Serializer<GgetExploreListingsData_getPopularLocations_results>
      get serializer =>
          _$ggetExploreListingsDataGetPopularLocationsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getPopularLocations_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getPopularLocations_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getPopularLocations_results.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getMostViewedListing
    implements
        Built<GgetExploreListingsData_getMostViewedListing,
            GgetExploreListingsData_getMostViewedListingBuilder> {
  GgetExploreListingsData_getMostViewedListing._();

  factory GgetExploreListingsData_getMostViewedListing(
      [void Function(GgetExploreListingsData_getMostViewedListingBuilder b)
          updates]) = _$GgetExploreListingsData_getMostViewedListing;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListingBuilder b) =>
      b..G__typename = 'AllList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetExploreListingsData_getMostViewedListing_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetExploreListingsData_getMostViewedListing>
      get serializer => _$ggetExploreListingsDataGetMostViewedListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getMostViewedListing.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getMostViewedListing_results
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results,
            GgetExploreListingsData_getMostViewedListing_resultsBuilder>,
        _i2.GviewListingShortFragment {
  GgetExploreListingsData_getMostViewedListing_results._();

  factory GgetExploreListingsData_getMostViewedListing_results(
      [void Function(
              GgetExploreListingsData_getMostViewedListing_resultsBuilder b)
          updates]) = _$GgetExploreListingsData_getMostViewedListing_results;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_resultsBuilder b) =>
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
  BuiltList<
          GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicCarType?
      get dynamicCarType;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicmake?
      get dynamicmake;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicModel?
      get dynamicModel;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicYear?
      get dynamicYear;
  @override
  GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GgetExploreListingsData_getMostViewedListing_results_carRules?>?
      get carRules;
  @override
  BuiltList<GgetExploreListingsData_getMostViewedListing_results_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GgetExploreListingsData_getMostViewedListing_results_listPhotos?>?
      get listPhotos;
  @override
  GgetExploreListingsData_getMostViewedListing_results_listingData?
      get listingData;
  static Serializer<GgetExploreListingsData_getMostViewedListing_results>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getMostViewedListing_results.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle,
            GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitleBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription,
            GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescriptionBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle,
            GgetExploreListingsData_getMostViewedListing_results_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicListTitleBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription,
            GgetExploreListingsData_getMostViewedListing_results_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicListDescriptionBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicCarType
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_dynamicCarType,
            GgetExploreListingsData_getMostViewedListing_results_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GgetExploreListingsData_getMostViewedListing_results_dynamicCarType._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicCarType(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicCarType;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicCarTypeBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicCarType>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicmake
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_dynamicmake,
            GgetExploreListingsData_getMostViewedListing_results_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GgetExploreListingsData_getMostViewedListing_results_dynamicmake._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicmake(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicmake;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicmakeBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicmake>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicmake
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicModel
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_dynamicModel,
            GgetExploreListingsData_getMostViewedListing_results_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GgetExploreListingsData_getMostViewedListing_results_dynamicModel._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicModel(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicModel;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicModelBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicModel>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicYear
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_dynamicYear,
            GgetExploreListingsData_getMostViewedListing_results_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GgetExploreListingsData_getMostViewedListing_results_dynamicYear._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicYear(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicYear;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicYearBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicYear>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicYear
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer,
            GgetExploreListingsData_getMostViewedListing_results_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer._();

  factory GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_dynamicOdometerBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_carRules
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_carRules,
            GgetExploreListingsData_getMostViewedListing_results_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GgetExploreListingsData_getMostViewedListing_results_carRules._();

  factory GgetExploreListingsData_getMostViewedListing_results_carRules(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_carRulesBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_carRules;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetExploreListingsData_getMostViewedListing_results_carRules>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_carRules
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_carRules?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_carRules
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName,
            GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName._();

  factory GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemNameBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_carFeatures
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_carFeatures,
            GgetExploreListingsData_getMostViewedListing_results_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GgetExploreListingsData_getMostViewedListing_results_carFeatures._();

  factory GgetExploreListingsData_getMostViewedListing_results_carFeatures(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_carFeatures;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetExploreListingsData_getMostViewedListing_results_carFeatures>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName
    implements
        Built<
            GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName,
            GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName._();

  factory GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemNameBuilder
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
          GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_listPhotos
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_listPhotos,
            GgetExploreListingsData_getMostViewedListing_results_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GgetExploreListingsData_getMostViewedListing_results_listPhotos._();

  factory GgetExploreListingsData_getMostViewedListing_results_listPhotos(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_listPhotosBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_listPhotos;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_listPhotosBuilder
              b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<
          GgetExploreListingsData_getMostViewedListing_results_listPhotos>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_listPhotos
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getMostViewedListing_results_listingData
    implements
        Built<GgetExploreListingsData_getMostViewedListing_results_listingData,
            GgetExploreListingsData_getMostViewedListing_results_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GgetExploreListingsData_getMostViewedListing_results_listingData._();

  factory GgetExploreListingsData_getMostViewedListing_results_listingData(
          [void Function(
                  GgetExploreListingsData_getMostViewedListing_results_listingDataBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getMostViewedListing_results_listingData;

  static void _initializeBuilder(
          GgetExploreListingsData_getMostViewedListing_results_listingDataBuilder
              b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get basePrice;
  @override
  String? get currency;
  @override
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  static Serializer<
          GgetExploreListingsData_getMostViewedListing_results_listingData>
      get serializer =>
          _$ggetExploreListingsDataGetMostViewedListingResultsListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getMostViewedListing_results_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getMostViewedListing_results_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getMostViewedListing_results_listingData
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend
    implements
        Built<GgetExploreListingsData_getRecommend,
            GgetExploreListingsData_getRecommendBuilder> {
  GgetExploreListingsData_getRecommend._();

  factory GgetExploreListingsData_getRecommend(
      [void Function(GgetExploreListingsData_getRecommendBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommendBuilder b) =>
      b..G__typename = 'AllList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetExploreListingsData_getRecommend_results?>? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetExploreListingsData_getRecommend> get serializer =>
      _$ggetExploreListingsDataGetRecommendSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results
    implements
        Built<GgetExploreListingsData_getRecommend_results,
            GgetExploreListingsData_getRecommend_resultsBuilder>,
        _i2.GviewListingShortFragment {
  GgetExploreListingsData_getRecommend_results._();

  factory GgetExploreListingsData_getRecommend_results(
      [void Function(GgetExploreListingsData_getRecommend_resultsBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_resultsBuilder b) =>
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
  BuiltList<GgetExploreListingsData_getRecommend_results_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetExploreListingsData_getRecommend_results_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicCarType?
      get dynamicCarType;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicmake? get dynamicmake;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicModel? get dynamicModel;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicYear? get dynamicYear;
  @override
  GgetExploreListingsData_getRecommend_results_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GgetExploreListingsData_getRecommend_results_carRules?>?
      get carRules;
  @override
  BuiltList<GgetExploreListingsData_getRecommend_results_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GgetExploreListingsData_getRecommend_results_listPhotos?>?
      get listPhotos;
  @override
  GgetExploreListingsData_getRecommend_results_listingData? get listingData;
  static Serializer<GgetExploreListingsData_getRecommend_results>
      get serializer => _$ggetExploreListingsDataGetRecommendResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicListingTitle
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicListingTitle,
            GgetExploreListingsData_getRecommend_results_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GgetExploreListingsData_getRecommend_results_dynamicListingTitle._();

  factory GgetExploreListingsData_getRecommend_results_dynamicListingTitle(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_dynamicListingTitle;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicListingTitleBuilder
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
          GgetExploreListingsData_getRecommend_results_dynamicListingTitle>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getRecommend_results_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicListingDescription
    implements
        Built<
            GgetExploreListingsData_getRecommend_results_dynamicListingDescription,
            GgetExploreListingsData_getRecommend_results_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GgetExploreListingsData_getRecommend_results_dynamicListingDescription._();

  factory GgetExploreListingsData_getRecommend_results_dynamicListingDescription(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_dynamicListingDescription;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicListingDescriptionBuilder
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
          GgetExploreListingsData_getRecommend_results_dynamicListingDescription>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getRecommend_results_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicListTitle
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicListTitle,
            GgetExploreListingsData_getRecommend_results_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GgetExploreListingsData_getRecommend_results_dynamicListTitle._();

  factory GgetExploreListingsData_getRecommend_results_dynamicListTitle(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_dynamicListTitle;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicListTitleBuilder
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
          GgetExploreListingsData_getRecommend_results_dynamicListTitle>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getRecommend_results_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicListDescription
    implements
        Built<
            GgetExploreListingsData_getRecommend_results_dynamicListDescription,
            GgetExploreListingsData_getRecommend_results_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GgetExploreListingsData_getRecommend_results_dynamicListDescription._();

  factory GgetExploreListingsData_getRecommend_results_dynamicListDescription(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_dynamicListDescription;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicListDescriptionBuilder
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
          GgetExploreListingsData_getRecommend_results_dynamicListDescription>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getRecommend_results_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicCarType
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicCarType,
            GgetExploreListingsData_getRecommend_results_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GgetExploreListingsData_getRecommend_results_dynamicCarType._();

  factory GgetExploreListingsData_getRecommend_results_dynamicCarType(
      [void Function(
              GgetExploreListingsData_getRecommend_results_dynamicCarTypeBuilder
                  b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_dynamicCarType;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicCarTypeBuilder
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
  static Serializer<GgetExploreListingsData_getRecommend_results_dynamicCarType>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicCarType.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicmake
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicmake,
            GgetExploreListingsData_getRecommend_results_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GgetExploreListingsData_getRecommend_results_dynamicmake._();

  factory GgetExploreListingsData_getRecommend_results_dynamicmake(
      [void Function(
              GgetExploreListingsData_getRecommend_results_dynamicmakeBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_dynamicmake;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicmakeBuilder b) =>
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
  static Serializer<GgetExploreListingsData_getRecommend_results_dynamicmake>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicmake.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicModel
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicModel,
            GgetExploreListingsData_getRecommend_results_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GgetExploreListingsData_getRecommend_results_dynamicModel._();

  factory GgetExploreListingsData_getRecommend_results_dynamicModel(
      [void Function(
              GgetExploreListingsData_getRecommend_results_dynamicModelBuilder
                  b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_dynamicModel;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicModelBuilder b) =>
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
  static Serializer<GgetExploreListingsData_getRecommend_results_dynamicModel>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicModel.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicYear
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicYear,
            GgetExploreListingsData_getRecommend_results_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GgetExploreListingsData_getRecommend_results_dynamicYear._();

  factory GgetExploreListingsData_getRecommend_results_dynamicYear(
      [void Function(
              GgetExploreListingsData_getRecommend_results_dynamicYearBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_dynamicYear;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicYearBuilder b) =>
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
  static Serializer<GgetExploreListingsData_getRecommend_results_dynamicYear>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicYear.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_dynamicOdometer
    implements
        Built<GgetExploreListingsData_getRecommend_results_dynamicOdometer,
            GgetExploreListingsData_getRecommend_results_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GgetExploreListingsData_getRecommend_results_dynamicOdometer._();

  factory GgetExploreListingsData_getRecommend_results_dynamicOdometer(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_dynamicOdometer;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_dynamicOdometerBuilder
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
          GgetExploreListingsData_getRecommend_results_dynamicOdometer>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_dynamicOdometer.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_carRules
    implements
        Built<GgetExploreListingsData_getRecommend_results_carRules,
            GgetExploreListingsData_getRecommend_results_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GgetExploreListingsData_getRecommend_results_carRules._();

  factory GgetExploreListingsData_getRecommend_results_carRules(
      [void Function(
              GgetExploreListingsData_getRecommend_results_carRulesBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_carRules;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GgetExploreListingsData_getRecommend_results_carRules>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_carRules.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName
    implements
        Built<
            GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName,
            GgetExploreListingsData_getRecommend_results_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName._();

  factory GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_carRules_dynamicItemNameBuilder
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
          GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getRecommend_results_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend_results_carFeatures
    implements
        Built<GgetExploreListingsData_getRecommend_results_carFeatures,
            GgetExploreListingsData_getRecommend_results_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GgetExploreListingsData_getRecommend_results_carFeatures._();

  factory GgetExploreListingsData_getRecommend_results_carFeatures(
      [void Function(
              GgetExploreListingsData_getRecommend_results_carFeaturesBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_carFeatures;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GgetExploreListingsData_getRecommend_results_carFeatures>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_carFeatures.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName
    implements
        Built<
            GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName,
            GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName._();

  factory GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName(
          [void Function(
                  GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemNameBuilder
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
          GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetExploreListingsData_getRecommend_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetExploreListingsData_getRecommend_results_listPhotos
    implements
        Built<GgetExploreListingsData_getRecommend_results_listPhotos,
            GgetExploreListingsData_getRecommend_results_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GgetExploreListingsData_getRecommend_results_listPhotos._();

  factory GgetExploreListingsData_getRecommend_results_listPhotos(
      [void Function(
              GgetExploreListingsData_getRecommend_results_listPhotosBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_listPhotos;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GgetExploreListingsData_getRecommend_results_listPhotos>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_listPhotos.serializer,
        json,
      );
}

abstract class GgetExploreListingsData_getRecommend_results_listingData
    implements
        Built<GgetExploreListingsData_getRecommend_results_listingData,
            GgetExploreListingsData_getRecommend_results_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GgetExploreListingsData_getRecommend_results_listingData._();

  factory GgetExploreListingsData_getRecommend_results_listingData(
      [void Function(
              GgetExploreListingsData_getRecommend_results_listingDataBuilder b)
          updates]) = _$GgetExploreListingsData_getRecommend_results_listingData;

  static void _initializeBuilder(
          GgetExploreListingsData_getRecommend_results_listingDataBuilder b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get basePrice;
  @override
  String? get currency;
  @override
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  static Serializer<GgetExploreListingsData_getRecommend_results_listingData>
      get serializer =>
          _$ggetExploreListingsDataGetRecommendResultsListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExploreListingsData_getRecommend_results_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExploreListingsData_getRecommend_results_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExploreListingsData_getRecommend_results_listingData.serializer,
        json,
      );
}
