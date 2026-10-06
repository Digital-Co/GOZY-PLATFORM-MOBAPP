// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'wishlist.data.gql.g.dart';

abstract class GCreateWishListGroupData
    implements
        Built<GCreateWishListGroupData, GCreateWishListGroupDataBuilder> {
  GCreateWishListGroupData._();

  factory GCreateWishListGroupData(
          [void Function(GCreateWishListGroupDataBuilder b) updates]) =
      _$GCreateWishListGroupData;

  static void _initializeBuilder(GCreateWishListGroupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateWishListGroupData_CreateWishListGroup? get CreateWishListGroup;
  static Serializer<GCreateWishListGroupData> get serializer =>
      _$gCreateWishListGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListGroupData.serializer,
        json,
      );
}

abstract class GCreateWishListGroupData_CreateWishListGroup
    implements
        Built<GCreateWishListGroupData_CreateWishListGroup,
            GCreateWishListGroupData_CreateWishListGroupBuilder> {
  GCreateWishListGroupData_CreateWishListGroup._();

  factory GCreateWishListGroupData_CreateWishListGroup(
      [void Function(GCreateWishListGroupData_CreateWishListGroupBuilder b)
          updates]) = _$GCreateWishListGroupData_CreateWishListGroup;

  static void _initializeBuilder(
          GCreateWishListGroupData_CreateWishListGroupBuilder b) =>
      b..G__typename = 'GetWishListType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GCreateWishListGroupData_CreateWishListGroup_results? get results;
  static Serializer<GCreateWishListGroupData_CreateWishListGroup>
      get serializer => _$gCreateWishListGroupDataCreateWishListGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListGroupData_CreateWishListGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListGroupData_CreateWishListGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListGroupData_CreateWishListGroup.serializer,
        json,
      );
}

abstract class GCreateWishListGroupData_CreateWishListGroup_results
    implements
        Built<GCreateWishListGroupData_CreateWishListGroup_results,
            GCreateWishListGroupData_CreateWishListGroup_resultsBuilder> {
  GCreateWishListGroupData_CreateWishListGroup_results._();

  factory GCreateWishListGroupData_CreateWishListGroup_results(
      [void Function(
              GCreateWishListGroupData_CreateWishListGroup_resultsBuilder b)
          updates]) = _$GCreateWishListGroupData_CreateWishListGroup_results;

  static void _initializeBuilder(
          GCreateWishListGroupData_CreateWishListGroup_resultsBuilder b) =>
      b..G__typename = 'WishListGroup';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get isPublic;
  int? get id;
  static Serializer<GCreateWishListGroupData_CreateWishListGroup_results>
      get serializer =>
          _$gCreateWishListGroupDataCreateWishListGroupResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListGroupData_CreateWishListGroup_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListGroupData_CreateWishListGroup_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListGroupData_CreateWishListGroup_results.serializer,
        json,
      );
}

abstract class GgetAllWishListGroupData
    implements
        Built<GgetAllWishListGroupData, GgetAllWishListGroupDataBuilder> {
  GgetAllWishListGroupData._();

  factory GgetAllWishListGroupData(
          [void Function(GgetAllWishListGroupDataBuilder b) updates]) =
      _$GgetAllWishListGroupData;

  static void _initializeBuilder(GgetAllWishListGroupDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAllWishListGroupData_getAllWishListGroup? get getAllWishListGroup;
  static Serializer<GgetAllWishListGroupData> get serializer =>
      _$ggetAllWishListGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllWishListGroupData.serializer,
        json,
      );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup
    implements
        Built<GgetAllWishListGroupData_getAllWishListGroup,
            GgetAllWishListGroupData_getAllWishListGroupBuilder> {
  GgetAllWishListGroupData_getAllWishListGroup._();

  factory GgetAllWishListGroupData_getAllWishListGroup(
      [void Function(GgetAllWishListGroupData_getAllWishListGroupBuilder b)
          updates]) = _$GgetAllWishListGroupData_getAllWishListGroup;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroupBuilder b) =>
      b..G__typename = 'AllWishListGroup';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  int? get count;
  String? get errorMessage;
  BuiltList<GgetAllWishListGroupData_getAllWishListGroup_results?>? get results;
  static Serializer<GgetAllWishListGroupData_getAllWishListGroup>
      get serializer => _$ggetAllWishListGroupDataGetAllWishListGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllWishListGroupData_getAllWishListGroup.serializer,
        json,
      );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results
    implements
        Built<GgetAllWishListGroupData_getAllWishListGroup_results,
            GgetAllWishListGroupData_getAllWishListGroup_resultsBuilder> {
  GgetAllWishListGroupData_getAllWishListGroup_results._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results(
      [void Function(
              GgetAllWishListGroupData_getAllWishListGroup_resultsBuilder b)
          updates]) = _$GgetAllWishListGroupData_getAllWishListGroup_results;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_resultsBuilder b) =>
      b..G__typename = 'WishListGroup';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  String? get isPublic;
  int? get wishListCount;
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover?
      get wishListCover;
  BuiltList<GgetAllWishListGroupData_getAllWishListGroup_results_wishLists?>?
      get wishLists;
  static Serializer<GgetAllWishListGroupData_getAllWishListGroup_results>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results.serializer,
        json,
      );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCoverBuilder> {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCoverBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCoverBuilder
              b) =>
      b..G__typename = 'WishList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get listId;
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData?
      get listData;
  static Serializer<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listDataBuilder>,
        _i2.GviewListingShortFragment {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listDataBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listDataBuilder
              b) =>
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake?
      get dynamicmake;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel?
      get dynamicModel;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear?
      get dynamicYear;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules?>?
      get carRules;
  @override
  BuiltList<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos?>?
      get listPhotos;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData?
      get listingData;
  static Serializer<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitleBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescriptionBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitleBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescriptionBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarTypeBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmakeBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicmake
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModelBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYearBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicYear
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometerBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRulesBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemNameBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemNameBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotosBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listPhotos
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingDataBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingDataBuilder
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
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListCoverListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListCover_listData_listingData
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishLists
    implements
        Built<GgetAllWishListGroupData_getAllWishListGroup_results_wishLists,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishListsBuilder> {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishLists._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishLists(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishListsBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishLists;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishListsBuilder
              b) =>
      b..G__typename = 'WishList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get listId;
  GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData?
      get listData;
  static Serializer<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishLists>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishLists
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishLists?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishLists
                .serializer,
            json,
          );
}

abstract class GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData
    implements
        Built<
            GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData,
            GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listDataBuilder> {
  GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData._();

  factory GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData(
          [void Function(
                  GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listDataBuilder
                      b)
              updates]) =
      _$GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData;

  static void _initializeBuilder(
          GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listDataBuilder
              b) =>
      b..G__typename = 'ShowListing';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get listPhotoName;
  static Serializer<
          GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData>
      get serializer =>
          _$ggetAllWishListGroupDataGetAllWishListGroupResultsWishListsListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllWishListGroupData_getAllWishListGroup_results_wishLists_listData
                .serializer,
            json,
          );
}

abstract class GCreateWishListData
    implements Built<GCreateWishListData, GCreateWishListDataBuilder> {
  GCreateWishListData._();

  factory GCreateWishListData(
          [void Function(GCreateWishListDataBuilder b) updates]) =
      _$GCreateWishListData;

  static void _initializeBuilder(GCreateWishListDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateWishListData_CreateWishList? get CreateWishList;
  static Serializer<GCreateWishListData> get serializer =>
      _$gCreateWishListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListData.serializer,
        json,
      );
}

abstract class GCreateWishListData_CreateWishList
    implements
        Built<GCreateWishListData_CreateWishList,
            GCreateWishListData_CreateWishListBuilder> {
  GCreateWishListData_CreateWishList._();

  factory GCreateWishListData_CreateWishList(
      [void Function(GCreateWishListData_CreateWishListBuilder b)
          updates]) = _$GCreateWishListData_CreateWishList;

  static void _initializeBuilder(GCreateWishListData_CreateWishListBuilder b) =>
      b..G__typename = 'WishList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GCreateWishListData_CreateWishList> get serializer =>
      _$gCreateWishListDataCreateWishListSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateWishListData_CreateWishList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateWishListData_CreateWishList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateWishListData_CreateWishList.serializer,
        json,
      );
}

abstract class GgetWishListGroupData
    implements Built<GgetWishListGroupData, GgetWishListGroupDataBuilder> {
  GgetWishListGroupData._();

  factory GgetWishListGroupData(
          [void Function(GgetWishListGroupDataBuilder b) updates]) =
      _$GgetWishListGroupData;

  static void _initializeBuilder(GgetWishListGroupDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetWishListGroupData_getWishListGroup? get getWishListGroup;
  static Serializer<GgetWishListGroupData> get serializer =>
      _$ggetWishListGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWishListGroupData.serializer,
        json,
      );
}

abstract class GgetWishListGroupData_getWishListGroup
    implements
        Built<GgetWishListGroupData_getWishListGroup,
            GgetWishListGroupData_getWishListGroupBuilder> {
  GgetWishListGroupData_getWishListGroup._();

  factory GgetWishListGroupData_getWishListGroup(
      [void Function(GgetWishListGroupData_getWishListGroupBuilder b)
          updates]) = _$GgetWishListGroupData_getWishListGroup;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroupBuilder b) =>
      b..G__typename = 'GetWishListType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetWishListGroupData_getWishListGroup_results? get results;
  static Serializer<GgetWishListGroupData_getWishListGroup> get serializer =>
      _$ggetWishListGroupDataGetWishListGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWishListGroupData_getWishListGroup.serializer,
        json,
      );
}

abstract class GgetWishListGroupData_getWishListGroup_results
    implements
        Built<GgetWishListGroupData_getWishListGroup_results,
            GgetWishListGroupData_getWishListGroup_resultsBuilder> {
  GgetWishListGroupData_getWishListGroup_results._();

  factory GgetWishListGroupData_getWishListGroup_results(
      [void Function(GgetWishListGroupData_getWishListGroup_resultsBuilder b)
          updates]) = _$GgetWishListGroupData_getWishListGroup_results;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_resultsBuilder b) =>
      b..G__typename = 'WishListGroup';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get name;
  String get userId;
  String? get isPublic;
  String? get updatedAt;
  BuiltList<int?>? get wishListIds;
  int? get wishListCount;
  BuiltList<GgetWishListGroupData_getWishListGroup_results_wishLists?>?
      get wishLists;
  static Serializer<GgetWishListGroupData_getWishListGroup_results>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWishListGroupData_getWishListGroup_results.serializer,
        json,
      );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists
    implements
        Built<GgetWishListGroupData_getWishListGroup_results_wishLists,
            GgetWishListGroupData_getWishListGroup_results_wishListsBuilder> {
  GgetWishListGroupData_getWishListGroup_results_wishLists._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists(
      [void Function(
              GgetWishListGroupData_getWishListGroup_results_wishListsBuilder b)
          updates]) = _$GgetWishListGroupData_getWishListGroup_results_wishLists;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishListsBuilder b) =>
      b..G__typename = 'WishList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get listId;
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData?
      get listData;
  static Serializer<GgetWishListGroupData_getWishListGroup_results_wishLists>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists.serializer,
        json,
      );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData
    implements
        Built<GgetWishListGroupData_getWishListGroup_results_wishLists_listData,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listDataBuilder>,
        _i2.GviewListingShortFragment {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listDataBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listDataBuilder
              b) =>
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake?
      get dynamicmake;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel?
      get dynamicModel;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear?
      get dynamicYear;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules?>?
      get carRules;
  @override
  BuiltList<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos?>?
      get listPhotos;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData?
      get listingData;
  static Serializer<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitleBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescriptionBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitleBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescriptionBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarTypeBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmakeBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicmake
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModelBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYearBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicYear
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometerBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRulesBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemNameBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemNameBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotosBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listPhotos
                .serializer,
            json,
          );
}

abstract class GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData
    implements
        Built<
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData,
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData._();

  factory GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData(
          [void Function(
                  GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingDataBuilder
                      b)
              updates]) =
      _$GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData;

  static void _initializeBuilder(
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingDataBuilder
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
          GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData>
      get serializer =>
          _$ggetWishListGroupDataGetWishListGroupResultsWishListsListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetWishListGroupData_getWishListGroup_results_wishLists_listData_listingData
                .serializer,
            json,
          );
}

abstract class GDeleteWishListGroupData
    implements
        Built<GDeleteWishListGroupData, GDeleteWishListGroupDataBuilder> {
  GDeleteWishListGroupData._();

  factory GDeleteWishListGroupData(
          [void Function(GDeleteWishListGroupDataBuilder b) updates]) =
      _$GDeleteWishListGroupData;

  static void _initializeBuilder(GDeleteWishListGroupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteWishListGroupData_DeleteWishListGroup? get DeleteWishListGroup;
  static Serializer<GDeleteWishListGroupData> get serializer =>
      _$gDeleteWishListGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteWishListGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteWishListGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteWishListGroupData.serializer,
        json,
      );
}

abstract class GDeleteWishListGroupData_DeleteWishListGroup
    implements
        Built<GDeleteWishListGroupData_DeleteWishListGroup,
            GDeleteWishListGroupData_DeleteWishListGroupBuilder> {
  GDeleteWishListGroupData_DeleteWishListGroup._();

  factory GDeleteWishListGroupData_DeleteWishListGroup(
      [void Function(GDeleteWishListGroupData_DeleteWishListGroupBuilder b)
          updates]) = _$GDeleteWishListGroupData_DeleteWishListGroup;

  static void _initializeBuilder(
          GDeleteWishListGroupData_DeleteWishListGroupBuilder b) =>
      b..G__typename = 'WishListGroup';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GDeleteWishListGroupData_DeleteWishListGroup>
      get serializer => _$gDeleteWishListGroupDataDeleteWishListGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteWishListGroupData_DeleteWishListGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteWishListGroupData_DeleteWishListGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteWishListGroupData_DeleteWishListGroup.serializer,
        json,
      );
}

abstract class GUpdateWishListGroupData
    implements
        Built<GUpdateWishListGroupData, GUpdateWishListGroupDataBuilder> {
  GUpdateWishListGroupData._();

  factory GUpdateWishListGroupData(
          [void Function(GUpdateWishListGroupDataBuilder b) updates]) =
      _$GUpdateWishListGroupData;

  static void _initializeBuilder(GUpdateWishListGroupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateWishListGroupData_UpdateWishListGroup? get UpdateWishListGroup;
  static Serializer<GUpdateWishListGroupData> get serializer =>
      _$gUpdateWishListGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateWishListGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateWishListGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateWishListGroupData.serializer,
        json,
      );
}

abstract class GUpdateWishListGroupData_UpdateWishListGroup
    implements
        Built<GUpdateWishListGroupData_UpdateWishListGroup,
            GUpdateWishListGroupData_UpdateWishListGroupBuilder> {
  GUpdateWishListGroupData_UpdateWishListGroup._();

  factory GUpdateWishListGroupData_UpdateWishListGroup(
      [void Function(GUpdateWishListGroupData_UpdateWishListGroupBuilder b)
          updates]) = _$GUpdateWishListGroupData_UpdateWishListGroup;

  static void _initializeBuilder(
          GUpdateWishListGroupData_UpdateWishListGroupBuilder b) =>
      b..G__typename = 'WishListGroup';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GUpdateWishListGroupData_UpdateWishListGroup>
      get serializer => _$gUpdateWishListGroupDataUpdateWishListGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateWishListGroupData_UpdateWishListGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateWishListGroupData_UpdateWishListGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateWishListGroupData_UpdateWishListGroup.serializer,
        json,
      );
}
