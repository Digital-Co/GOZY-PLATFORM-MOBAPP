// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/listing_data_fragment.data.gql.dart'
    as _i6;
import 'package:gozy/graphql/__generated__/listing_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/listing_user_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i5;

part 'ListingDetails.data.gql.g.dart';

abstract class GgetSimilarListingData
    implements Built<GgetSimilarListingData, GgetSimilarListingDataBuilder> {
  GgetSimilarListingData._();

  factory GgetSimilarListingData(
          [void Function(GgetSimilarListingDataBuilder b) updates]) =
      _$GgetSimilarListingData;

  static void _initializeBuilder(GgetSimilarListingDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetSimilarListingData_getSimilarListing? get getSimilarListing;
  static Serializer<GgetSimilarListingData> get serializer =>
      _$ggetSimilarListingDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing
    implements
        Built<GgetSimilarListingData_getSimilarListing,
            GgetSimilarListingData_getSimilarListingBuilder> {
  GgetSimilarListingData_getSimilarListing._();

  factory GgetSimilarListingData_getSimilarListing(
      [void Function(GgetSimilarListingData_getSimilarListingBuilder b)
          updates]) = _$GgetSimilarListingData_getSimilarListing;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListingBuilder b) =>
      b..G__typename = 'AllList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetSimilarListingData_getSimilarListing_results?>? get results;
  int? get status;
  static Serializer<GgetSimilarListingData_getSimilarListing> get serializer =>
      _$ggetSimilarListingDataGetSimilarListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results
    implements
        Built<GgetSimilarListingData_getSimilarListing_results,
            GgetSimilarListingData_getSimilarListing_resultsBuilder>,
        _i2.GviewListingShortFragment {
  GgetSimilarListingData_getSimilarListing_results._();

  factory GgetSimilarListingData_getSimilarListing_results(
      [void Function(GgetSimilarListingData_getSimilarListing_resultsBuilder b)
          updates]) = _$GgetSimilarListingData_getSimilarListing_results;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_resultsBuilder b) =>
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
          GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicCarType?
      get dynamicCarType;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicmake? get dynamicmake;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicModel?
      get dynamicModel;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicYear? get dynamicYear;
  @override
  GgetSimilarListingData_getSimilarListing_results_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GgetSimilarListingData_getSimilarListing_results_carRules?>?
      get carRules;
  @override
  BuiltList<GgetSimilarListingData_getSimilarListing_results_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GgetSimilarListingData_getSimilarListing_results_listPhotos?>?
      get listPhotos;
  @override
  GgetSimilarListingData_getSimilarListing_results_listingData? get listingData;
  static Serializer<GgetSimilarListingData_getSimilarListing_results>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle
    implements
        Built<
            GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle,
            GgetSimilarListingData_getSimilarListing_results_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicListingTitleBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription
    implements
        Built<
            GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription,
            GgetSimilarListingData_getSimilarListing_results_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicListingDescriptionBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicListTitle
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_dynamicListTitle,
            GgetSimilarListingData_getSimilarListing_results_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GgetSimilarListingData_getSimilarListing_results_dynamicListTitle._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicListTitle(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicListTitle;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicListTitleBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicListTitle>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicListDescription
    implements
        Built<
            GgetSimilarListingData_getSimilarListing_results_dynamicListDescription,
            GgetSimilarListingData_getSimilarListing_results_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GgetSimilarListingData_getSimilarListing_results_dynamicListDescription._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicListDescription(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicListDescription;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicListDescriptionBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicListDescription>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicCarType
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_dynamicCarType,
            GgetSimilarListingData_getSimilarListing_results_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GgetSimilarListingData_getSimilarListing_results_dynamicCarType._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicCarType(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicCarType;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicCarTypeBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicCarType>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicmake
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_dynamicmake,
            GgetSimilarListingData_getSimilarListing_results_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GgetSimilarListingData_getSimilarListing_results_dynamicmake._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicmake(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicmake;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicmakeBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicmake>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicmake.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicModel
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_dynamicModel,
            GgetSimilarListingData_getSimilarListing_results_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GgetSimilarListingData_getSimilarListing_results_dynamicModel._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicModel(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicModel;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicModelBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicModel>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicYear
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_dynamicYear,
            GgetSimilarListingData_getSimilarListing_results_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GgetSimilarListingData_getSimilarListing_results_dynamicYear._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicYear(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicYear;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicYearBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicYear>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicYear.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results_dynamicOdometer
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_dynamicOdometer,
            GgetSimilarListingData_getSimilarListing_results_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GgetSimilarListingData_getSimilarListing_results_dynamicOdometer._();

  factory GgetSimilarListingData_getSimilarListing_results_dynamicOdometer(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_dynamicOdometer;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_dynamicOdometerBuilder
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
          GgetSimilarListingData_getSimilarListing_results_dynamicOdometer>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_carRules
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_carRules,
            GgetSimilarListingData_getSimilarListing_results_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GgetSimilarListingData_getSimilarListing_results_carRules._();

  factory GgetSimilarListingData_getSimilarListing_results_carRules(
      [void Function(
              GgetSimilarListingData_getSimilarListing_results_carRulesBuilder
                  b)
          updates]) = _$GgetSimilarListingData_getSimilarListing_results_carRules;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GgetSimilarListingData_getSimilarListing_results_carRules>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results_carRules.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName
    implements
        Built<
            GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName,
            GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName._();

  factory GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemNameBuilder
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
          GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_carFeatures
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_carFeatures,
            GgetSimilarListingData_getSimilarListing_results_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GgetSimilarListingData_getSimilarListing_results_carFeatures._();

  factory GgetSimilarListingData_getSimilarListing_results_carFeatures(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_carFeatures;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetSimilarListingData_getSimilarListing_results_carFeatures>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results_carFeatures.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName
    implements
        Built<
            GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName,
            GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName._();

  factory GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemNameBuilder
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
          GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetSimilarListingData_getSimilarListing_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetSimilarListingData_getSimilarListing_results_listPhotos
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_listPhotos,
            GgetSimilarListingData_getSimilarListing_results_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GgetSimilarListingData_getSimilarListing_results_listPhotos._();

  factory GgetSimilarListingData_getSimilarListing_results_listPhotos(
      [void Function(
              GgetSimilarListingData_getSimilarListing_results_listPhotosBuilder
                  b)
          updates]) = _$GgetSimilarListingData_getSimilarListing_results_listPhotos;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_listPhotosBuilder
              b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GgetSimilarListingData_getSimilarListing_results_listPhotos>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results_listPhotos.serializer,
        json,
      );
}

abstract class GgetSimilarListingData_getSimilarListing_results_listingData
    implements
        Built<GgetSimilarListingData_getSimilarListing_results_listingData,
            GgetSimilarListingData_getSimilarListing_results_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GgetSimilarListingData_getSimilarListing_results_listingData._();

  factory GgetSimilarListingData_getSimilarListing_results_listingData(
          [void Function(
                  GgetSimilarListingData_getSimilarListing_results_listingDataBuilder
                      b)
              updates]) =
      _$GgetSimilarListingData_getSimilarListing_results_listingData;

  static void _initializeBuilder(
          GgetSimilarListingData_getSimilarListing_results_listingDataBuilder
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
          GgetSimilarListingData_getSimilarListing_results_listingData>
      get serializer =>
          _$ggetSimilarListingDataGetSimilarListingResultsListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetSimilarListingData_getSimilarListing_results_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetSimilarListingData_getSimilarListing_results_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetSimilarListingData_getSimilarListing_results_listingData.serializer,
        json,
      );
}

abstract class GviewListingDetailsData
    implements Built<GviewListingDetailsData, GviewListingDetailsDataBuilder> {
  GviewListingDetailsData._();

  factory GviewListingDetailsData(
          [void Function(GviewListingDetailsDataBuilder b) updates]) =
      _$GviewListingDetailsData;

  static void _initializeBuilder(GviewListingDetailsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GviewListingDetailsData_viewListing? get viewListing;
  static Serializer<GviewListingDetailsData> get serializer =>
      _$gviewListingDetailsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing
    implements
        Built<GviewListingDetailsData_viewListing,
            GviewListingDetailsData_viewListingBuilder> {
  GviewListingDetailsData_viewListing._();

  factory GviewListingDetailsData_viewListing(
      [void Function(GviewListingDetailsData_viewListingBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListingBuilder b) =>
      b..G__typename = 'AllListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GviewListingDetailsData_viewListing_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GviewListingDetailsData_viewListing> get serializer =>
      _$gviewListingDetailsDataViewListingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results
    implements
        Built<GviewListingDetailsData_viewListing_results,
            GviewListingDetailsData_viewListing_resultsBuilder>,
        _i3.GviewListingDetailsFragment {
  GviewListingDetailsData_viewListing_results._();

  factory GviewListingDetailsData_viewListing_results(
      [void Function(GviewListingDetailsData_viewListing_resultsBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_resultsBuilder b) =>
      b..G__typename = 'ShowListing';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get description;
  @override
  String? get country;
  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipcode;
  @override
  GviewListingDetailsData_viewListing_results_user? get user;
  @override
  String? get make;
  @override
  String? get makeId;
  @override
  String? get model;
  @override
  String? get buildingName;
  @override
  String? get year;
  @override
  String? get odometer;
  GviewListingDetailsData_viewListing_results_listingData? get listingData;
  @override
  BuiltList<GviewListingDetailsData_viewListing_results_blockedDates?>?
      get blockedDates;
  @override
  String? get carType;
  @override
  bool? get isPublished;
  @override
  bool? get isReady;
  @override
  String? get lastUpdatedAt;
  @override
  String? get createdAt;
  @override
  GviewListingDetailsData_viewListing_results_listingSteps? get listingSteps;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get transmission;
  @override
  bool? get wishListStatus;
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
  BuiltList<GviewListingDetailsData_viewListing_results_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GviewListingDetailsData_viewListing_results_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GviewListingDetailsData_viewListing_results_dynamicListTitle?
      get dynamicListTitle;
  @override
  GviewListingDetailsData_viewListing_results_dynamicListDescription?
      get dynamicListDescription;
  @override
  GviewListingDetailsData_viewListing_results_dynamicCarType?
      get dynamicCarType;
  @override
  GviewListingDetailsData_viewListing_results_dynamicmake? get dynamicmake;
  @override
  GviewListingDetailsData_viewListing_results_dynamicModel? get dynamicModel;
  @override
  GviewListingDetailsData_viewListing_results_dynamicYear? get dynamicYear;
  @override
  GviewListingDetailsData_viewListing_results_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GviewListingDetailsData_viewListing_results_carRules?>?
      get carRules;
  @override
  BuiltList<GviewListingDetailsData_viewListing_results_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GviewListingDetailsData_viewListing_results_listPhotos?>?
      get listPhotos;
  static Serializer<GviewListingDetailsData_viewListing_results>
      get serializer => _$gviewListingDetailsDataViewListingResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_user
    implements
        Built<GviewListingDetailsData_viewListing_results_user,
            GviewListingDetailsData_viewListing_results_userBuilder>,
        _i3.GviewListingDetailsFragment_user,
        _i4.GlistingUserFragment {
  GviewListingDetailsData_viewListing_results_user._();

  factory GviewListingDetailsData_viewListing_results_user(
      [void Function(GviewListingDetailsData_viewListing_results_userBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_user;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_userBuilder b) =>
      b..G__typename = 'user';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get email;
  @override
  GviewListingDetailsData_viewListing_results_user_profile? get profile;
  @override
  GviewListingDetailsData_viewListing_results_user_verification?
      get verification;
  @override
  int? get userBanStatus;
  static Serializer<GviewListingDetailsData_viewListing_results_user>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_user.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_user_profile
    implements
        Built<GviewListingDetailsData_viewListing_results_user_profile,
            GviewListingDetailsData_viewListing_results_user_profileBuilder>,
        _i3.GviewListingDetailsFragment_user_profile,
        _i4.GlistingUserFragment_profile {
  GviewListingDetailsData_viewListing_results_user_profile._();

  factory GviewListingDetailsData_viewListing_results_user_profile(
      [void Function(
              GviewListingDetailsData_viewListing_results_user_profileBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_user_profile;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_user_profileBuilder b) =>
      b..G__typename = 'profile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GviewListingDetailsData_viewListing_results_user_profile>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsUserProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_user_profile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_user_profile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_user_profile.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_user_verification
    implements
        Built<GviewListingDetailsData_viewListing_results_user_verification,
            GviewListingDetailsData_viewListing_results_user_verificationBuilder>,
        _i3.GviewListingDetailsFragment_user_verification,
        _i4.GlistingUserFragment_verification,
        _i5.GuserVerifiedInfoFragment {
  GviewListingDetailsData_viewListing_results_user_verification._();

  factory GviewListingDetailsData_viewListing_results_user_verification(
          [void Function(
                  GviewListingDetailsData_viewListing_results_user_verificationBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_user_verification;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_user_verificationBuilder
              b) =>
      b..G__typename = 'UserVerifiedInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userId;
  @override
  bool? get isEmailConfirmed;
  @override
  bool? get isFacebookConnected;
  @override
  bool? get isGoogleConnected;
  @override
  bool? get isIdVerification;
  @override
  bool? get isPhoneVerified;
  static Serializer<
          GviewListingDetailsData_viewListing_results_user_verification>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_user_verification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_user_verification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_user_verification
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_listingData
    implements
        Built<GviewListingDetailsData_viewListing_results_listingData,
            GviewListingDetailsData_viewListing_results_listingDataBuilder>,
        _i3.GviewListingDetailsFragment_listingData,
        _i6.GlistingDataFragment {
  GviewListingDetailsData_viewListing_results_listingData._();

  factory GviewListingDetailsData_viewListing_results_listingData(
      [void Function(
              GviewListingDetailsData_viewListing_results_listingDataBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_listingData;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_listingDataBuilder b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get bookingNoticeTime;
  @override
  String? get checkInStart;
  @override
  String? get checkInEnd;
  @override
  String? get maxDaysNotice;
  @override
  int? get minDay;
  @override
  int? get maxDay;
  @override
  String? get maxDayItemLabel;
  @override
  String? get maxDayOtherItemLabel;
  @override
  String? get minDayItemLabel;
  @override
  String? get minDayOtherItemLabel;
  @override
  double? get basePrice;
  @override
  double? get delivery;
  @override
  String? get currency;
  @override
  double? get weeklyDiscount;
  @override
  double? get monthlyDiscount;
  @override
  int? get cancellationPolicy;
  @override
  double? get securityDeposit;
  @override
  GviewListingDetailsData_viewListing_results_listingData_cancellation?
      get cancellation;
  static Serializer<GviewListingDetailsData_viewListing_results_listingData>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_listingData.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_listingData_cancellation
    implements
        Built<
            GviewListingDetailsData_viewListing_results_listingData_cancellation,
            GviewListingDetailsData_viewListing_results_listingData_cancellationBuilder>,
        _i3.GviewListingDetailsFragment_listingData_cancellation,
        _i6.GlistingDataFragment_cancellation,
        _i6.GcancellationDataFragment {
  GviewListingDetailsData_viewListing_results_listingData_cancellation._();

  factory GviewListingDetailsData_viewListing_results_listingData_cancellation(
          [void Function(
                  GviewListingDetailsData_viewListing_results_listingData_cancellationBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_listingData_cancellation;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_listingData_cancellationBuilder
              b) =>
      b..G__typename = 'Cancellation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get policyName;
  @override
  String? get policyContent;
  @override
  int? get priorDays;
  @override
  String? get subTitle;
  @override
  String? get subContent;
  @override
  String? get content1;
  @override
  String? get content2;
  @override
  String? get content3;
  @override
  double? get accommodationPriorCheckIn;
  @override
  double? get accommodationBeforeCheckIn;
  @override
  double? get accommodationDuringCheckIn;
  @override
  double? get guestFeePriorCheckIn;
  @override
  double? get guestFeeBeforeCheckIn;
  @override
  double? get guestFeeDuringCheckIn;
  @override
  double? get hostFeePriorCheckIn;
  @override
  double? get hostFeeBeforeCheckIn;
  @override
  double? get hostFeeDuringCheckIn;
  @override
  bool? get isEnable;
  @override
  String? get status;
  static Serializer<
          GviewListingDetailsData_viewListing_results_listingData_cancellation>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsListingDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_listingData_cancellation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_listingData_cancellation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_listingData_cancellation
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_blockedDates
    implements
        Built<GviewListingDetailsData_viewListing_results_blockedDates,
            GviewListingDetailsData_viewListing_results_blockedDatesBuilder>,
        _i3.GviewListingDetailsFragment_blockedDates {
  GviewListingDetailsData_viewListing_results_blockedDates._();

  factory GviewListingDetailsData_viewListing_results_blockedDates(
      [void Function(
              GviewListingDetailsData_viewListing_results_blockedDatesBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_blockedDates;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_blockedDatesBuilder b) =>
      b..G__typename = 'listBlockedDates';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get blockedDates;
  @override
  int? get reservationId;
  @override
  int? get listId;
  @override
  String? get calendarStatus;
  @override
  double? get isSpecialPrice;
  static Serializer<GviewListingDetailsData_viewListing_results_blockedDates>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsBlockedDatesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_blockedDates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_blockedDates? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_blockedDates.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_listingSteps
    implements
        Built<GviewListingDetailsData_viewListing_results_listingSteps,
            GviewListingDetailsData_viewListing_results_listingStepsBuilder>,
        _i3.GviewListingDetailsFragment_listingSteps {
  GviewListingDetailsData_viewListing_results_listingSteps._();

  factory GviewListingDetailsData_viewListing_results_listingSteps(
      [void Function(
              GviewListingDetailsData_viewListing_results_listingStepsBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_listingSteps;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_listingStepsBuilder b) =>
      b..G__typename = 'userListingSteps';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get step1;
  @override
  String? get step2;
  @override
  String? get step3;
  static Serializer<GviewListingDetailsData_viewListing_results_listingSteps>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsListingStepsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_listingSteps.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_listingSteps? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_listingSteps.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicListingTitle
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicListingTitle,
            GviewListingDetailsData_viewListing_results_dynamicListingTitleBuilder>,
        _i3.GviewListingDetailsFragment_dynamicListingTitle {
  GviewListingDetailsData_viewListing_results_dynamicListingTitle._();

  factory GviewListingDetailsData_viewListing_results_dynamicListingTitle(
          [void Function(
                  GviewListingDetailsData_viewListing_results_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_dynamicListingTitle;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicListingTitleBuilder
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
          GviewListingDetailsData_viewListing_results_dynamicListingTitle>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicListingDescription
    implements
        Built<
            GviewListingDetailsData_viewListing_results_dynamicListingDescription,
            GviewListingDetailsData_viewListing_results_dynamicListingDescriptionBuilder>,
        _i3.GviewListingDetailsFragment_dynamicListingDescription {
  GviewListingDetailsData_viewListing_results_dynamicListingDescription._();

  factory GviewListingDetailsData_viewListing_results_dynamicListingDescription(
          [void Function(
                  GviewListingDetailsData_viewListing_results_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_dynamicListingDescription;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicListingDescriptionBuilder
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
          GviewListingDetailsData_viewListing_results_dynamicListingDescription>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicListTitle
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicListTitle,
            GviewListingDetailsData_viewListing_results_dynamicListTitleBuilder>,
        _i3.GviewListingDetailsFragment_dynamicListTitle {
  GviewListingDetailsData_viewListing_results_dynamicListTitle._();

  factory GviewListingDetailsData_viewListing_results_dynamicListTitle(
          [void Function(
                  GviewListingDetailsData_viewListing_results_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_dynamicListTitle;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicListTitleBuilder
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
          GviewListingDetailsData_viewListing_results_dynamicListTitle>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_dynamicListTitle.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicListDescription
    implements
        Built<
            GviewListingDetailsData_viewListing_results_dynamicListDescription,
            GviewListingDetailsData_viewListing_results_dynamicListDescriptionBuilder>,
        _i3.GviewListingDetailsFragment_dynamicListDescription {
  GviewListingDetailsData_viewListing_results_dynamicListDescription._();

  factory GviewListingDetailsData_viewListing_results_dynamicListDescription(
          [void Function(
                  GviewListingDetailsData_viewListing_results_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_dynamicListDescription;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicListDescriptionBuilder
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
          GviewListingDetailsData_viewListing_results_dynamicListDescription>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicCarType
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicCarType,
            GviewListingDetailsData_viewListing_results_dynamicCarTypeBuilder>,
        _i3.GviewListingDetailsFragment_dynamicCarType {
  GviewListingDetailsData_viewListing_results_dynamicCarType._();

  factory GviewListingDetailsData_viewListing_results_dynamicCarType(
      [void Function(
              GviewListingDetailsData_viewListing_results_dynamicCarTypeBuilder
                  b)
          updates]) = _$GviewListingDetailsData_viewListing_results_dynamicCarType;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicCarTypeBuilder
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
  static Serializer<GviewListingDetailsData_viewListing_results_dynamicCarType>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_dynamicCarType.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicmake
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicmake,
            GviewListingDetailsData_viewListing_results_dynamicmakeBuilder>,
        _i3.GviewListingDetailsFragment_dynamicmake {
  GviewListingDetailsData_viewListing_results_dynamicmake._();

  factory GviewListingDetailsData_viewListing_results_dynamicmake(
      [void Function(
              GviewListingDetailsData_viewListing_results_dynamicmakeBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_dynamicmake;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicmakeBuilder b) =>
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
  static Serializer<GviewListingDetailsData_viewListing_results_dynamicmake>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_dynamicmake.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicModel
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicModel,
            GviewListingDetailsData_viewListing_results_dynamicModelBuilder>,
        _i3.GviewListingDetailsFragment_dynamicModel {
  GviewListingDetailsData_viewListing_results_dynamicModel._();

  factory GviewListingDetailsData_viewListing_results_dynamicModel(
      [void Function(
              GviewListingDetailsData_viewListing_results_dynamicModelBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_dynamicModel;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicModelBuilder b) =>
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
  static Serializer<GviewListingDetailsData_viewListing_results_dynamicModel>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_dynamicModel.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicYear
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicYear,
            GviewListingDetailsData_viewListing_results_dynamicYearBuilder>,
        _i3.GviewListingDetailsFragment_dynamicYear {
  GviewListingDetailsData_viewListing_results_dynamicYear._();

  factory GviewListingDetailsData_viewListing_results_dynamicYear(
      [void Function(
              GviewListingDetailsData_viewListing_results_dynamicYearBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_dynamicYear;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicYearBuilder b) =>
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
  static Serializer<GviewListingDetailsData_viewListing_results_dynamicYear>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_dynamicYear.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_dynamicOdometer
    implements
        Built<GviewListingDetailsData_viewListing_results_dynamicOdometer,
            GviewListingDetailsData_viewListing_results_dynamicOdometerBuilder>,
        _i3.GviewListingDetailsFragment_dynamicOdometer {
  GviewListingDetailsData_viewListing_results_dynamicOdometer._();

  factory GviewListingDetailsData_viewListing_results_dynamicOdometer(
      [void Function(
              GviewListingDetailsData_viewListing_results_dynamicOdometerBuilder
                  b)
          updates]) = _$GviewListingDetailsData_viewListing_results_dynamicOdometer;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_dynamicOdometerBuilder
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
  static Serializer<GviewListingDetailsData_viewListing_results_dynamicOdometer>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_dynamicOdometer.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_carRules
    implements
        Built<GviewListingDetailsData_viewListing_results_carRules,
            GviewListingDetailsData_viewListing_results_carRulesBuilder>,
        _i3.GviewListingDetailsFragment_carRules {
  GviewListingDetailsData_viewListing_results_carRules._();

  factory GviewListingDetailsData_viewListing_results_carRules(
      [void Function(
              GviewListingDetailsData_viewListing_results_carRulesBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_carRules;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GviewListingDetailsData_viewListing_results_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GviewListingDetailsData_viewListing_results_carRules>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_carRules.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_carRules_dynamicItemName
    implements
        Built<
            GviewListingDetailsData_viewListing_results_carRules_dynamicItemName,
            GviewListingDetailsData_viewListing_results_carRules_dynamicItemNameBuilder>,
        _i3.GviewListingDetailsFragment_carRules_dynamicItemName {
  GviewListingDetailsData_viewListing_results_carRules_dynamicItemName._();

  factory GviewListingDetailsData_viewListing_results_carRules_dynamicItemName(
          [void Function(
                  GviewListingDetailsData_viewListing_results_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_carRules_dynamicItemName;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_carRules_dynamicItemNameBuilder
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
          GviewListingDetailsData_viewListing_results_carRules_dynamicItemName>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_carFeatures
    implements
        Built<GviewListingDetailsData_viewListing_results_carFeatures,
            GviewListingDetailsData_viewListing_results_carFeaturesBuilder>,
        _i3.GviewListingDetailsFragment_carFeatures {
  GviewListingDetailsData_viewListing_results_carFeatures._();

  factory GviewListingDetailsData_viewListing_results_carFeatures(
      [void Function(
              GviewListingDetailsData_viewListing_results_carFeaturesBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_carFeatures;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GviewListingDetailsData_viewListing_results_carFeatures>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_carFeatures.serializer,
        json,
      );
}

abstract class GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName
    implements
        Built<
            GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName,
            GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemNameBuilder>,
        _i3.GviewListingDetailsFragment_carFeatures_dynamicItemName {
  GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName._();

  factory GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName(
          [void Function(
                  GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemNameBuilder
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
          GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GviewListingDetailsData_viewListing_results_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GviewListingDetailsData_viewListing_results_listPhotos
    implements
        Built<GviewListingDetailsData_viewListing_results_listPhotos,
            GviewListingDetailsData_viewListing_results_listPhotosBuilder>,
        _i3.GviewListingDetailsFragment_listPhotos {
  GviewListingDetailsData_viewListing_results_listPhotos._();

  factory GviewListingDetailsData_viewListing_results_listPhotos(
      [void Function(
              GviewListingDetailsData_viewListing_results_listPhotosBuilder b)
          updates]) = _$GviewListingDetailsData_viewListing_results_listPhotos;

  static void _initializeBuilder(
          GviewListingDetailsData_viewListing_results_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GviewListingDetailsData_viewListing_results_listPhotos>
      get serializer =>
          _$gviewListingDetailsDataViewListingResultsListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingDetailsData_viewListing_results_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingDetailsData_viewListing_results_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingDetailsData_viewListing_results_listPhotos.serializer,
        json,
      );
}

abstract class GgetReviewsListData
    implements Built<GgetReviewsListData, GgetReviewsListDataBuilder> {
  GgetReviewsListData._();

  factory GgetReviewsListData(
          [void Function(GgetReviewsListDataBuilder b) updates]) =
      _$GgetReviewsListData;

  static void _initializeBuilder(GgetReviewsListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetReviewsListData_getReviews? get getReviews;
  static Serializer<GgetReviewsListData> get serializer =>
      _$ggetReviewsListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReviewsListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReviewsListData.serializer,
        json,
      );
}

abstract class GgetReviewsListData_getReviews
    implements
        Built<GgetReviewsListData_getReviews,
            GgetReviewsListData_getReviewsBuilder> {
  GgetReviewsListData_getReviews._();

  factory GgetReviewsListData_getReviews(
          [void Function(GgetReviewsListData_getReviewsBuilder b) updates]) =
      _$GgetReviewsListData_getReviews;

  static void _initializeBuilder(GgetReviewsListData_getReviewsBuilder b) =>
      b..G__typename = 'AllReview';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetReviewsListData_getReviews_results?>? get results;
  int? get status;
  int? get count;
  static Serializer<GgetReviewsListData_getReviews> get serializer =>
      _$ggetReviewsListDataGetReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReviewsListData_getReviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListData_getReviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReviewsListData_getReviews.serializer,
        json,
      );
}

abstract class GgetReviewsListData_getReviews_results
    implements
        Built<GgetReviewsListData_getReviews_results,
            GgetReviewsListData_getReviews_resultsBuilder> {
  GgetReviewsListData_getReviews_results._();

  factory GgetReviewsListData_getReviews_results(
      [void Function(GgetReviewsListData_getReviews_resultsBuilder b)
          updates]) = _$GgetReviewsListData_getReviews_results;

  static void _initializeBuilder(
          GgetReviewsListData_getReviews_resultsBuilder b) =>
      b..G__typename = 'Reviews';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  bool? get isAdmin;
  int? get reservationId;
  int? get listId;
  String? get authorId;
  String? get userId;
  String? get reviewContent;
  double? get rating;
  int? get parentId;
  bool? get automated;
  String? get createdAt;
  GgetReviewsListData_getReviews_results_authorData? get authorData;
  GgetReviewsListData_getReviews_results_userData? get userData;
  static Serializer<GgetReviewsListData_getReviews_results> get serializer =>
      _$ggetReviewsListDataGetReviewsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReviewsListData_getReviews_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListData_getReviews_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReviewsListData_getReviews_results.serializer,
        json,
      );
}

abstract class GgetReviewsListData_getReviews_results_authorData
    implements
        Built<GgetReviewsListData_getReviews_results_authorData,
            GgetReviewsListData_getReviews_results_authorDataBuilder> {
  GgetReviewsListData_getReviews_results_authorData._();

  factory GgetReviewsListData_getReviews_results_authorData(
      [void Function(GgetReviewsListData_getReviews_results_authorDataBuilder b)
          updates]) = _$GgetReviewsListData_getReviews_results_authorData;

  static void _initializeBuilder(
          GgetReviewsListData_getReviews_results_authorDataBuilder b) =>
      b..G__typename = 'userProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get picture;
  static Serializer<GgetReviewsListData_getReviews_results_authorData>
      get serializer =>
          _$ggetReviewsListDataGetReviewsResultsAuthorDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReviewsListData_getReviews_results_authorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListData_getReviews_results_authorData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReviewsListData_getReviews_results_authorData.serializer,
        json,
      );
}

abstract class GgetReviewsListData_getReviews_results_userData
    implements
        Built<GgetReviewsListData_getReviews_results_userData,
            GgetReviewsListData_getReviews_results_userDataBuilder> {
  GgetReviewsListData_getReviews_results_userData._();

  factory GgetReviewsListData_getReviews_results_userData(
      [void Function(GgetReviewsListData_getReviews_results_userDataBuilder b)
          updates]) = _$GgetReviewsListData_getReviews_results_userData;

  static void _initializeBuilder(
          GgetReviewsListData_getReviews_results_userDataBuilder b) =>
      b..G__typename = 'userProfile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userId;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get picture;
  static Serializer<GgetReviewsListData_getReviews_results_userData>
      get serializer =>
          _$ggetReviewsListDataGetReviewsResultsUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetReviewsListData_getReviews_results_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetReviewsListData_getReviews_results_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetReviewsListData_getReviews_results_userData.serializer,
        json,
      );
}

abstract class GdateAvailabilityData
    implements Built<GdateAvailabilityData, GdateAvailabilityDataBuilder> {
  GdateAvailabilityData._();

  factory GdateAvailabilityData(
          [void Function(GdateAvailabilityDataBuilder b) updates]) =
      _$GdateAvailabilityData;

  static void _initializeBuilder(GdateAvailabilityDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GdateAvailabilityData_dateAvailability? get dateAvailability;
  static Serializer<GdateAvailabilityData> get serializer =>
      _$gdateAvailabilityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdateAvailabilityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdateAvailabilityData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdateAvailabilityData.serializer,
        json,
      );
}

abstract class GdateAvailabilityData_dateAvailability
    implements
        Built<GdateAvailabilityData_dateAvailability,
            GdateAvailabilityData_dateAvailabilityBuilder> {
  GdateAvailabilityData_dateAvailability._();

  factory GdateAvailabilityData_dateAvailability(
      [void Function(GdateAvailabilityData_dateAvailabilityBuilder b)
          updates]) = _$GdateAvailabilityData_dateAvailability;

  static void _initializeBuilder(
          GdateAvailabilityData_dateAvailabilityBuilder b) =>
      b..G__typename = 'DateAvailabilityType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GdateAvailabilityData_dateAvailability_results?>? get results;
  int? get status;
  static Serializer<GdateAvailabilityData_dateAvailability> get serializer =>
      _$gdateAvailabilityDataDateAvailabilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdateAvailabilityData_dateAvailability.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdateAvailabilityData_dateAvailability? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdateAvailabilityData_dateAvailability.serializer,
        json,
      );
}

abstract class GdateAvailabilityData_dateAvailability_results
    implements
        Built<GdateAvailabilityData_dateAvailability_results,
            GdateAvailabilityData_dateAvailability_resultsBuilder> {
  GdateAvailabilityData_dateAvailability_results._();

  factory GdateAvailabilityData_dateAvailability_results(
      [void Function(GdateAvailabilityData_dateAvailability_resultsBuilder b)
          updates]) = _$GdateAvailabilityData_dateAvailability_results;

  static void _initializeBuilder(
          GdateAvailabilityData_dateAvailability_resultsBuilder b) =>
      b..G__typename = 'DateAvailability';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<String?>? get blockedDates;
  static Serializer<GdateAvailabilityData_dateAvailability_results>
      get serializer =>
          _$gdateAvailabilityDataDateAvailabilityResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdateAvailabilityData_dateAvailability_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdateAvailabilityData_dateAvailability_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdateAvailabilityData_dateAvailability_results.serializer,
        json,
      );
}

abstract class GContactHostData
    implements Built<GContactHostData, GContactHostDataBuilder> {
  GContactHostData._();

  factory GContactHostData([void Function(GContactHostDataBuilder b) updates]) =
      _$GContactHostData;

  static void _initializeBuilder(GContactHostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GContactHostData_createEnquiry? get createEnquiry;
  static Serializer<GContactHostData> get serializer =>
      _$gContactHostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GContactHostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactHostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GContactHostData.serializer,
        json,
      );
}

abstract class GContactHostData_createEnquiry
    implements
        Built<GContactHostData_createEnquiry,
            GContactHostData_createEnquiryBuilder> {
  GContactHostData_createEnquiry._();

  factory GContactHostData_createEnquiry(
          [void Function(GContactHostData_createEnquiryBuilder b) updates]) =
      _$GContactHostData_createEnquiry;

  static void _initializeBuilder(GContactHostData_createEnquiryBuilder b) =>
      b..G__typename = 'Enquiry';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GContactHostData_createEnquiry_result? get result;
  static Serializer<GContactHostData_createEnquiry> get serializer =>
      _$gContactHostDataCreateEnquirySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GContactHostData_createEnquiry.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactHostData_createEnquiry? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GContactHostData_createEnquiry.serializer,
        json,
      );
}

abstract class GContactHostData_createEnquiry_result
    implements
        Built<GContactHostData_createEnquiry_result,
            GContactHostData_createEnquiry_resultBuilder> {
  GContactHostData_createEnquiry_result._();

  factory GContactHostData_createEnquiry_result(
      [void Function(GContactHostData_createEnquiry_resultBuilder b)
          updates]) = _$GContactHostData_createEnquiry_result;

  static void _initializeBuilder(
          GContactHostData_createEnquiry_resultBuilder b) =>
      b..G__typename = 'ThreadItems';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get sentBy;
  String? get content;
  String? get type;
  String? get startDate;
  String? get endDate;
  double? get startTime;
  double? get endTime;
  int? get personCapacity;
  String? get createdAt;
  static Serializer<GContactHostData_createEnquiry_result> get serializer =>
      _$gContactHostDataCreateEnquiryResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GContactHostData_createEnquiry_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactHostData_createEnquiry_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GContactHostData_createEnquiry_result.serializer,
        json,
      );
}

abstract class GCreateReportUserData
    implements Built<GCreateReportUserData, GCreateReportUserDataBuilder> {
  GCreateReportUserData._();

  factory GCreateReportUserData(
          [void Function(GCreateReportUserDataBuilder b) updates]) =
      _$GCreateReportUserData;

  static void _initializeBuilder(GCreateReportUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateReportUserData_createReportUser? get createReportUser;
  static Serializer<GCreateReportUserData> get serializer =>
      _$gCreateReportUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateReportUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateReportUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateReportUserData.serializer,
        json,
      );
}

abstract class GCreateReportUserData_createReportUser
    implements
        Built<GCreateReportUserData_createReportUser,
            GCreateReportUserData_createReportUserBuilder> {
  GCreateReportUserData_createReportUser._();

  factory GCreateReportUserData_createReportUser(
      [void Function(GCreateReportUserData_createReportUserBuilder b)
          updates]) = _$GCreateReportUserData_createReportUser;

  static void _initializeBuilder(
          GCreateReportUserData_createReportUserBuilder b) =>
      b..G__typename = 'ReportUserResult';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GCreateReportUserData_createReportUser> get serializer =>
      _$gCreateReportUserDataCreateReportUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateReportUserData_createReportUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateReportUserData_createReportUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateReportUserData_createReportUser.serializer,
        json,
      );
}

abstract class GgetAllReportTypeData
    implements Built<GgetAllReportTypeData, GgetAllReportTypeDataBuilder> {
  GgetAllReportTypeData._();

  factory GgetAllReportTypeData(
          [void Function(GgetAllReportTypeDataBuilder b) updates]) =
      _$GgetAllReportTypeData;

  static void _initializeBuilder(GgetAllReportTypeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAllReportTypeData_getAllReportType? get getAllReportType;
  static Serializer<GgetAllReportTypeData> get serializer =>
      _$ggetAllReportTypeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllReportTypeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReportTypeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllReportTypeData.serializer,
        json,
      );
}

abstract class GgetAllReportTypeData_getAllReportType
    implements
        Built<GgetAllReportTypeData_getAllReportType,
            GgetAllReportTypeData_getAllReportTypeBuilder> {
  GgetAllReportTypeData_getAllReportType._();

  factory GgetAllReportTypeData_getAllReportType(
      [void Function(GgetAllReportTypeData_getAllReportTypeBuilder b)
          updates]) = _$GgetAllReportTypeData_getAllReportType;

  static void _initializeBuilder(
          GgetAllReportTypeData_getAllReportTypeBuilder b) =>
      b..G__typename = 'ReportCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  BuiltList<GgetAllReportTypeData_getAllReportType_results?>? get results;
  static Serializer<GgetAllReportTypeData_getAllReportType> get serializer =>
      _$ggetAllReportTypeDataGetAllReportTypeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllReportTypeData_getAllReportType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReportTypeData_getAllReportType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllReportTypeData_getAllReportType.serializer,
        json,
      );
}

abstract class GgetAllReportTypeData_getAllReportType_results
    implements
        Built<GgetAllReportTypeData_getAllReportType_results,
            GgetAllReportTypeData_getAllReportType_resultsBuilder> {
  GgetAllReportTypeData_getAllReportType_results._();

  factory GgetAllReportTypeData_getAllReportType_results(
      [void Function(GgetAllReportTypeData_getAllReportType_resultsBuilder b)
          updates]) = _$GgetAllReportTypeData_getAllReportType_results;

  static void _initializeBuilder(
          GgetAllReportTypeData_getAllReportType_resultsBuilder b) =>
      b..G__typename = 'ReportType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get reportType;
  String? get reportContent;
  static Serializer<GgetAllReportTypeData_getAllReportType_results>
      get serializer =>
          _$ggetAllReportTypeDataGetAllReportTypeResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllReportTypeData_getAllReportType_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllReportTypeData_getAllReportType_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllReportTypeData_getAllReportType_results.serializer,
        json,
      );
}
