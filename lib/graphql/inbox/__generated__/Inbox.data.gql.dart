// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/all_thread_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i3;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/thread_item_fragment.data.gql.dart'
    as _i4;
import 'package:gozy/graphql/__generated__/user_profile_fragment.data.gql.dart'
    as _i5;
import 'package:gozy/graphql/__generated__/user_verified_info_fragment.data.gql.dart'
    as _i6;

part 'Inbox.data.gql.g.dart';

abstract class GgetAllThreadsData
    implements Built<GgetAllThreadsData, GgetAllThreadsDataBuilder> {
  GgetAllThreadsData._();

  factory GgetAllThreadsData(
          [void Function(GgetAllThreadsDataBuilder b) updates]) =
      _$GgetAllThreadsData;

  static void _initializeBuilder(GgetAllThreadsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetAllThreadsData_getAllThreads? get getAllThreads;
  static Serializer<GgetAllThreadsData> get serializer =>
      _$ggetAllThreadsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads
    implements
        Built<GgetAllThreadsData_getAllThreads,
            GgetAllThreadsData_getAllThreadsBuilder> {
  GgetAllThreadsData_getAllThreads._();

  factory GgetAllThreadsData_getAllThreads(
          [void Function(GgetAllThreadsData_getAllThreadsBuilder b) updates]) =
      _$GgetAllThreadsData_getAllThreads;

  static void _initializeBuilder(GgetAllThreadsData_getAllThreadsBuilder b) =>
      b..G__typename = 'AllThreads';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetAllThreadsData_getAllThreads_results?>? get results;
  int? get count;
  int? get status;
  static Serializer<GgetAllThreadsData_getAllThreads> get serializer =>
      _$ggetAllThreadsDataGetAllThreadsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results
    implements
        Built<GgetAllThreadsData_getAllThreads_results,
            GgetAllThreadsData_getAllThreads_resultsBuilder>,
        _i2.GallThreadsFragment {
  GgetAllThreadsData_getAllThreads_results._();

  factory GgetAllThreadsData_getAllThreads_results(
      [void Function(GgetAllThreadsData_getAllThreads_resultsBuilder b)
          updates]) = _$GgetAllThreadsData_getAllThreads_results;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_resultsBuilder b) =>
      b..G__typename = 'Threads';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadItemsCount;
  @override
  int? get hostUnreadCount;
  @override
  int? get listId;
  @override
  int? get userBanStatus;
  @override
  String? get host;
  @override
  String? get guest;
  @override
  String? get createdAt;
  @override
  String? get status;
  @override
  bool? get isRead;
  @override
  GgetAllThreadsData_getAllThreads_results_listData? get listData;
  @override
  GgetAllThreadsData_getAllThreads_results_threadItem? get threadItem;
  @override
  GgetAllThreadsData_getAllThreads_results_guestProfile? get guestProfile;
  @override
  GgetAllThreadsData_getAllThreads_results_hostProfile? get hostProfile;
  static Serializer<GgetAllThreadsData_getAllThreads_results> get serializer =>
      _$ggetAllThreadsDataGetAllThreadsResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData,
            GgetAllThreadsData_getAllThreads_results_listDataBuilder>,
        _i2.GallThreadsFragment_listData,
        _i3.GviewListingShortFragment {
  GgetAllThreadsData_getAllThreads_results_listData._();

  factory GgetAllThreadsData_getAllThreads_results_listData(
      [void Function(GgetAllThreadsData_getAllThreads_results_listDataBuilder b)
          updates]) = _$GgetAllThreadsData_getAllThreads_results_listData;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listDataBuilder b) =>
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicmake?
      get dynamicmake;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicModel?
      get dynamicModel;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicYear?
      get dynamicYear;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<GgetAllThreadsData_getAllThreads_results_listData_carRules?>?
      get carRules;
  @override
  BuiltList<GgetAllThreadsData_getAllThreads_results_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GgetAllThreadsData_getAllThreads_results_listData_listPhotos?>?
      get listPhotos;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_listingData?
      get listingData;
  static Serializer<GgetAllThreadsData_getAllThreads_results_listData>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results_listData.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitleBuilder>,
        _i2.GallThreadsFragment_listData_dynamicListingTitle,
        _i3.GviewListingShortFragment_dynamicListingTitle {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitleBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescriptionBuilder>,
        _i2.GallThreadsFragment_listData_dynamicListingDescription,
        _i3.GviewListingShortFragment_dynamicListingDescription {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescriptionBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitleBuilder>,
        _i2.GallThreadsFragment_listData_dynamicListTitle,
        _i3.GviewListingShortFragment_dynamicListTitle {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitleBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescriptionBuilder>,
        _i2.GallThreadsFragment_listData_dynamicListDescription,
        _i3.GviewListingShortFragment_dynamicListDescription {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescriptionBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicCarTypeBuilder>,
        _i2.GallThreadsFragment_listData_dynamicCarType,
        _i3.GviewListingShortFragment_dynamicCarType {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicCarTypeBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicmake
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_dynamicmake,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicmakeBuilder>,
        _i2.GallThreadsFragment_listData_dynamicmake,
        _i3.GviewListingShortFragment_dynamicmake {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicmake._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicmake(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicmake;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicmakeBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicmake>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicmake
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicModel
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_dynamicModel,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicModelBuilder>,
        _i2.GallThreadsFragment_listData_dynamicModel,
        _i3.GviewListingShortFragment_dynamicModel {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicModel._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicModel(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicModel;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicModelBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicModel>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicYear
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_dynamicYear,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicYearBuilder>,
        _i2.GallThreadsFragment_listData_dynamicYear,
        _i3.GviewListingShortFragment_dynamicYear {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicYear._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicYear(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicYear;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicYearBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicYear>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicYear
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer,
            GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometerBuilder>,
        _i2.GallThreadsFragment_listData_dynamicOdometer,
        _i3.GviewListingShortFragment_dynamicOdometer {
  GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer._();

  factory GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometerBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_carRules
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_carRules,
            GgetAllThreadsData_getAllThreads_results_listData_carRulesBuilder>,
        _i2.GallThreadsFragment_listData_carRules,
        _i3.GviewListingShortFragment_carRules {
  GgetAllThreadsData_getAllThreads_results_listData_carRules._();

  factory GgetAllThreadsData_getAllThreads_results_listData_carRules(
      [void Function(
              GgetAllThreadsData_getAllThreads_results_listData_carRulesBuilder
                  b)
          updates]) = _$GgetAllThreadsData_getAllThreads_results_listData_carRules;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GgetAllThreadsData_getAllThreads_results_listData_carRules>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_carRules.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName,
            GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemNameBuilder>,
        _i2.GallThreadsFragment_listData_carRules_dynamicItemName,
        _i3.GviewListingShortFragment_carRules_dynamicItemName {
  GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName._();

  factory GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemNameBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_carFeatures
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_carFeatures,
            GgetAllThreadsData_getAllThreads_results_listData_carFeaturesBuilder>,
        _i2.GallThreadsFragment_listData_carFeatures,
        _i3.GviewListingShortFragment_carFeatures {
  GgetAllThreadsData_getAllThreads_results_listData_carFeatures._();

  factory GgetAllThreadsData_getAllThreads_results_listData_carFeatures(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_carFeatures;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GgetAllThreadsData_getAllThreads_results_listData_carFeatures>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_carFeatures
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName,
            GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemNameBuilder>,
        _i2.GallThreadsFragment_listData_carFeatures_dynamicItemName,
        _i3.GviewListingShortFragment_carFeatures_dynamicItemName {
  GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName._();

  factory GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemNameBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_listPhotos
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_listPhotos,
            GgetAllThreadsData_getAllThreads_results_listData_listPhotosBuilder>,
        _i2.GallThreadsFragment_listData_listPhotos,
        _i3.GviewListingShortFragment_listPhotos {
  GgetAllThreadsData_getAllThreads_results_listData_listPhotos._();

  factory GgetAllThreadsData_getAllThreads_results_listData_listPhotos(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_listPhotos;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_listPhotosBuilder
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
          GgetAllThreadsData_getAllThreads_results_listData_listPhotos>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_listPhotos.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_listData_listingData
    implements
        Built<GgetAllThreadsData_getAllThreads_results_listData_listingData,
            GgetAllThreadsData_getAllThreads_results_listData_listingDataBuilder>,
        _i2.GallThreadsFragment_listData_listingData,
        _i3.GviewListingShortFragment_listingData {
  GgetAllThreadsData_getAllThreads_results_listData_listingData._();

  factory GgetAllThreadsData_getAllThreads_results_listData_listingData(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_listData_listingDataBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_listData_listingData;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_listData_listingDataBuilder
              b) =>
      b..G__typename = 'listingData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get basePrice;
  @override
  String? get currency;
  static Serializer<
          GgetAllThreadsData_getAllThreads_results_listData_listingData>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_listData_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_listData_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_listData_listingData
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_threadItem
    implements
        Built<GgetAllThreadsData_getAllThreads_results_threadItem,
            GgetAllThreadsData_getAllThreads_results_threadItemBuilder>,
        _i2.GallThreadsFragment_threadItem,
        _i4.GthreadItemsFragment {
  GgetAllThreadsData_getAllThreads_results_threadItem._();

  factory GgetAllThreadsData_getAllThreads_results_threadItem(
      [void Function(
              GgetAllThreadsData_getAllThreads_results_threadItemBuilder b)
          updates]) = _$GgetAllThreadsData_getAllThreads_results_threadItem;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_threadItemBuilder b) =>
      b..G__typename = 'ThreadItems';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadId;
  @override
  int? get reservationId;
  @override
  String? get sentBy;
  @override
  String? get content;
  @override
  String? get type;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  int? get personCapacity;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  int? get status;
  @override
  int? get userBanStatus;
  static Serializer<GgetAllThreadsData_getAllThreads_results_threadItem>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsThreadItemSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_threadItem.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_threadItem? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results_threadItem.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_guestProfile
    implements
        Built<GgetAllThreadsData_getAllThreads_results_guestProfile,
            GgetAllThreadsData_getAllThreads_results_guestProfileBuilder>,
        _i2.GallThreadsFragment_guestProfile,
        _i5.GuserProfileFragment {
  GgetAllThreadsData_getAllThreads_results_guestProfile._();

  factory GgetAllThreadsData_getAllThreads_results_guestProfile(
      [void Function(
              GgetAllThreadsData_getAllThreads_results_guestProfileBuilder b)
          updates]) = _$GgetAllThreadsData_getAllThreads_results_guestProfile;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_guestProfileBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetAllThreadsData_getAllThreads_results_guestProfile_userData? get userData;
  @override
  GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification?
      get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GgetAllThreadsData_getAllThreads_results_guestProfile>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsGuestProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_guestProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_guestProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results_guestProfile.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_guestProfile_userData
    implements
        Built<GgetAllThreadsData_getAllThreads_results_guestProfile_userData,
            GgetAllThreadsData_getAllThreads_results_guestProfile_userDataBuilder>,
        _i2.GallThreadsFragment_guestProfile_userData,
        _i5.GuserProfileFragment_userData {
  GgetAllThreadsData_getAllThreads_results_guestProfile_userData._();

  factory GgetAllThreadsData_getAllThreads_results_guestProfile_userData(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_guestProfile_userDataBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_guestProfile_userData;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_guestProfile_userDataBuilder
              b) =>
      b..G__typename = 'UserType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  static Serializer<
          GgetAllThreadsData_getAllThreads_results_guestProfile_userData>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsGuestProfileUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_guestProfile_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_guestProfile_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_guestProfile_userData
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification,
            GgetAllThreadsData_getAllThreads_results_guestProfile_userVerificationBuilder>,
        _i2.GallThreadsFragment_guestProfile_userVerification,
        _i5.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification._();

  factory GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_guestProfile_userVerificationBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_guestProfile_userVerificationBuilder
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
          GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsGuestProfileUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_guestProfile_userVerification
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_hostProfile
    implements
        Built<GgetAllThreadsData_getAllThreads_results_hostProfile,
            GgetAllThreadsData_getAllThreads_results_hostProfileBuilder>,
        _i2.GallThreadsFragment_hostProfile,
        _i5.GuserProfileFragment {
  GgetAllThreadsData_getAllThreads_results_hostProfile._();

  factory GgetAllThreadsData_getAllThreads_results_hostProfile(
      [void Function(
              GgetAllThreadsData_getAllThreads_results_hostProfileBuilder b)
          updates]) = _$GgetAllThreadsData_getAllThreads_results_hostProfile;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_hostProfileBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetAllThreadsData_getAllThreads_results_hostProfile_userData? get userData;
  @override
  GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification?
      get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GgetAllThreadsData_getAllThreads_results_hostProfile>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsHostProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_hostProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_hostProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllThreadsData_getAllThreads_results_hostProfile.serializer,
        json,
      );
}

abstract class GgetAllThreadsData_getAllThreads_results_hostProfile_userData
    implements
        Built<GgetAllThreadsData_getAllThreads_results_hostProfile_userData,
            GgetAllThreadsData_getAllThreads_results_hostProfile_userDataBuilder>,
        _i2.GallThreadsFragment_hostProfile_userData,
        _i5.GuserProfileFragment_userData {
  GgetAllThreadsData_getAllThreads_results_hostProfile_userData._();

  factory GgetAllThreadsData_getAllThreads_results_hostProfile_userData(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_hostProfile_userDataBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_hostProfile_userData;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_hostProfile_userDataBuilder
              b) =>
      b..G__typename = 'UserType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  static Serializer<
          GgetAllThreadsData_getAllThreads_results_hostProfile_userData>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsHostProfileUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_hostProfile_userData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_hostProfile_userData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_hostProfile_userData
                .serializer,
            json,
          );
}

abstract class GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification
    implements
        Built<
            GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification,
            GgetAllThreadsData_getAllThreads_results_hostProfile_userVerificationBuilder>,
        _i2.GallThreadsFragment_hostProfile_userVerification,
        _i5.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification._();

  factory GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification(
          [void Function(
                  GgetAllThreadsData_getAllThreads_results_hostProfile_userVerificationBuilder
                      b)
              updates]) =
      _$GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification;

  static void _initializeBuilder(
          GgetAllThreadsData_getAllThreads_results_hostProfile_userVerificationBuilder
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
          GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification>
      get serializer =>
          _$ggetAllThreadsDataGetAllThreadsResultsHostProfileUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetAllThreadsData_getAllThreads_results_hostProfile_userVerification
                .serializer,
            json,
          );
}

abstract class GgetUnReadCountData
    implements Built<GgetUnReadCountData, GgetUnReadCountDataBuilder> {
  GgetUnReadCountData._();

  factory GgetUnReadCountData(
          [void Function(GgetUnReadCountDataBuilder b) updates]) =
      _$GgetUnReadCountData;

  static void _initializeBuilder(GgetUnReadCountDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUnReadCountData_getUnReadCount? get getUnReadCount;
  static Serializer<GgetUnReadCountData> get serializer =>
      _$ggetUnReadCountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadCountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadCountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadCountData.serializer,
        json,
      );
}

abstract class GgetUnReadCountData_getUnReadCount
    implements
        Built<GgetUnReadCountData_getUnReadCount,
            GgetUnReadCountData_getUnReadCountBuilder> {
  GgetUnReadCountData_getUnReadCount._();

  factory GgetUnReadCountData_getUnReadCount(
      [void Function(GgetUnReadCountData_getUnReadCountBuilder b)
          updates]) = _$GgetUnReadCountData_getUnReadCount;

  static void _initializeBuilder(GgetUnReadCountData_getUnReadCountBuilder b) =>
      b..G__typename = 'UnreadThreadsCount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUnReadCountData_getUnReadCount_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetUnReadCountData_getUnReadCount> get serializer =>
      _$ggetUnReadCountDataGetUnReadCountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadCountData_getUnReadCount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadCountData_getUnReadCount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadCountData_getUnReadCount.serializer,
        json,
      );
}

abstract class GgetUnReadCountData_getUnReadCount_results
    implements
        Built<GgetUnReadCountData_getUnReadCount_results,
            GgetUnReadCountData_getUnReadCount_resultsBuilder> {
  GgetUnReadCountData_getUnReadCount_results._();

  factory GgetUnReadCountData_getUnReadCount_results(
      [void Function(GgetUnReadCountData_getUnReadCount_resultsBuilder b)
          updates]) = _$GgetUnReadCountData_getUnReadCount_results;

  static void _initializeBuilder(
          GgetUnReadCountData_getUnReadCount_resultsBuilder b) =>
      b..G__typename = 'UnReadCount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get ownerCount;
  int? get renterCount;
  int? get total;
  int? get userBanStatus;
  bool? get isUnReadMessage;
  int? get messageCount;
  static Serializer<GgetUnReadCountData_getUnReadCount_results>
      get serializer => _$ggetUnReadCountDataGetUnReadCountResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadCountData_getUnReadCount_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadCountData_getUnReadCount_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadCountData_getUnReadCount_results.serializer,
        json,
      );
}

abstract class GgetThreadsData
    implements Built<GgetThreadsData, GgetThreadsDataBuilder> {
  GgetThreadsData._();

  factory GgetThreadsData([void Function(GgetThreadsDataBuilder b) updates]) =
      _$GgetThreadsData;

  static void _initializeBuilder(GgetThreadsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetThreadsData_getThreads? get getThreads;
  static Serializer<GgetThreadsData> get serializer =>
      _$ggetThreadsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads
    implements
        Built<GgetThreadsData_getThreads, GgetThreadsData_getThreadsBuilder> {
  GgetThreadsData_getThreads._();

  factory GgetThreadsData_getThreads(
          [void Function(GgetThreadsData_getThreadsBuilder b) updates]) =
      _$GgetThreadsData_getThreads;

  static void _initializeBuilder(GgetThreadsData_getThreadsBuilder b) =>
      b..G__typename = 'NewThreadsCommonType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetThreadsData_getThreads_results? get results;
  static Serializer<GgetThreadsData_getThreads> get serializer =>
      _$ggetThreadsDataGetThreadsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results
    implements
        Built<GgetThreadsData_getThreads_results,
            GgetThreadsData_getThreads_resultsBuilder> {
  GgetThreadsData_getThreads_results._();

  factory GgetThreadsData_getThreads_results(
      [void Function(GgetThreadsData_getThreads_resultsBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results;

  static void _initializeBuilder(GgetThreadsData_getThreads_resultsBuilder b) =>
      b..G__typename = 'NewThreadsType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get getThreadCount;
  int? get listId;
  BuiltList<GgetThreadsData_getThreads_results_threadItems?>? get threadItems;
  GgetThreadsData_getThreads_results_guestProfile? get guestProfile;
  GgetThreadsData_getThreads_results_hostProfile? get hostProfile;
  GgetThreadsData_getThreads_results_threadItemForType? get threadItemForType;
  static Serializer<GgetThreadsData_getThreads_results> get serializer =>
      _$ggetThreadsDataGetThreadsResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results_threadItems
    implements
        Built<GgetThreadsData_getThreads_results_threadItems,
            GgetThreadsData_getThreads_results_threadItemsBuilder>,
        _i4.GthreadItemsFragment {
  GgetThreadsData_getThreads_results_threadItems._();

  factory GgetThreadsData_getThreads_results_threadItems(
      [void Function(GgetThreadsData_getThreads_results_threadItemsBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results_threadItems;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_threadItemsBuilder b) =>
      b..G__typename = 'ThreadItems';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadId;
  @override
  int? get reservationId;
  @override
  String? get sentBy;
  @override
  String? get content;
  @override
  String? get type;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  int? get personCapacity;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  int? get status;
  @override
  int? get userBanStatus;
  static Serializer<GgetThreadsData_getThreads_results_threadItems>
      get serializer => _$ggetThreadsDataGetThreadsResultsThreadItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_threadItems.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_threadItems? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results_threadItems.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results_guestProfile
    implements
        Built<GgetThreadsData_getThreads_results_guestProfile,
            GgetThreadsData_getThreads_results_guestProfileBuilder>,
        _i5.GuserProfileFragment {
  GgetThreadsData_getThreads_results_guestProfile._();

  factory GgetThreadsData_getThreads_results_guestProfile(
      [void Function(GgetThreadsData_getThreads_results_guestProfileBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results_guestProfile;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_guestProfileBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetThreadsData_getThreads_results_guestProfile_userData? get userData;
  @override
  GgetThreadsData_getThreads_results_guestProfile_userVerification?
      get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GgetThreadsData_getThreads_results_guestProfile>
      get serializer =>
          _$ggetThreadsDataGetThreadsResultsGuestProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_guestProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_guestProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results_guestProfile.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results_guestProfile_userData
    implements
        Built<GgetThreadsData_getThreads_results_guestProfile_userData,
            GgetThreadsData_getThreads_results_guestProfile_userDataBuilder>,
        _i5.GuserProfileFragment_userData {
  GgetThreadsData_getThreads_results_guestProfile_userData._();

  factory GgetThreadsData_getThreads_results_guestProfile_userData(
      [void Function(
              GgetThreadsData_getThreads_results_guestProfile_userDataBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results_guestProfile_userData;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_guestProfile_userDataBuilder b) =>
      b..G__typename = 'UserType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  static Serializer<GgetThreadsData_getThreads_results_guestProfile_userData>
      get serializer =>
          _$ggetThreadsDataGetThreadsResultsGuestProfileUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_guestProfile_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_guestProfile_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results_guestProfile_userData.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results_guestProfile_userVerification
    implements
        Built<GgetThreadsData_getThreads_results_guestProfile_userVerification,
            GgetThreadsData_getThreads_results_guestProfile_userVerificationBuilder>,
        _i5.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetThreadsData_getThreads_results_guestProfile_userVerification._();

  factory GgetThreadsData_getThreads_results_guestProfile_userVerification(
          [void Function(
                  GgetThreadsData_getThreads_results_guestProfile_userVerificationBuilder
                      b)
              updates]) =
      _$GgetThreadsData_getThreads_results_guestProfile_userVerification;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_guestProfile_userVerificationBuilder
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
          GgetThreadsData_getThreads_results_guestProfile_userVerification>
      get serializer =>
          _$ggetThreadsDataGetThreadsResultsGuestProfileUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_guestProfile_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_guestProfile_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetThreadsData_getThreads_results_guestProfile_userVerification
                .serializer,
            json,
          );
}

abstract class GgetThreadsData_getThreads_results_hostProfile
    implements
        Built<GgetThreadsData_getThreads_results_hostProfile,
            GgetThreadsData_getThreads_results_hostProfileBuilder>,
        _i5.GuserProfileFragment {
  GgetThreadsData_getThreads_results_hostProfile._();

  factory GgetThreadsData_getThreads_results_hostProfile(
      [void Function(GgetThreadsData_getThreads_results_hostProfileBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results_hostProfile;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_hostProfileBuilder b) =>
      b..G__typename = 'userProfile';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  GgetThreadsData_getThreads_results_hostProfile_userData? get userData;
  @override
  GgetThreadsData_getThreads_results_hostProfile_userVerification?
      get userVerification;
  @override
  int? get reviewsCount;
  @override
  int? get profileId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get displayName;
  @override
  String? get dateOfBirth;
  @override
  String? get picture;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get fullPhoneNumber;
  @override
  String? get info;
  @override
  String? get createdAt;
  static Serializer<GgetThreadsData_getThreads_results_hostProfile>
      get serializer => _$ggetThreadsDataGetThreadsResultsHostProfileSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_hostProfile.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_hostProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results_hostProfile.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results_hostProfile_userData
    implements
        Built<GgetThreadsData_getThreads_results_hostProfile_userData,
            GgetThreadsData_getThreads_results_hostProfile_userDataBuilder>,
        _i5.GuserProfileFragment_userData {
  GgetThreadsData_getThreads_results_hostProfile_userData._();

  factory GgetThreadsData_getThreads_results_hostProfile_userData(
      [void Function(
              GgetThreadsData_getThreads_results_hostProfile_userDataBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results_hostProfile_userData;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_hostProfile_userDataBuilder b) =>
      b..G__typename = 'UserType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get email;
  @override
  int? get userBanStatus;
  @override
  String? get gender;
  static Serializer<GgetThreadsData_getThreads_results_hostProfile_userData>
      get serializer =>
          _$ggetThreadsDataGetThreadsResultsHostProfileUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_hostProfile_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_hostProfile_userData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results_hostProfile_userData.serializer,
        json,
      );
}

abstract class GgetThreadsData_getThreads_results_hostProfile_userVerification
    implements
        Built<GgetThreadsData_getThreads_results_hostProfile_userVerification,
            GgetThreadsData_getThreads_results_hostProfile_userVerificationBuilder>,
        _i5.GuserProfileFragment_userVerification,
        _i6.GuserVerifiedInfoFragment {
  GgetThreadsData_getThreads_results_hostProfile_userVerification._();

  factory GgetThreadsData_getThreads_results_hostProfile_userVerification(
          [void Function(
                  GgetThreadsData_getThreads_results_hostProfile_userVerificationBuilder
                      b)
              updates]) =
      _$GgetThreadsData_getThreads_results_hostProfile_userVerification;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_hostProfile_userVerificationBuilder
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
          GgetThreadsData_getThreads_results_hostProfile_userVerification>
      get serializer =>
          _$ggetThreadsDataGetThreadsResultsHostProfileUserVerificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_hostProfile_userVerification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_hostProfile_userVerification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetThreadsData_getThreads_results_hostProfile_userVerification
                .serializer,
            json,
          );
}

abstract class GgetThreadsData_getThreads_results_threadItemForType
    implements
        Built<GgetThreadsData_getThreads_results_threadItemForType,
            GgetThreadsData_getThreads_results_threadItemForTypeBuilder>,
        _i4.GthreadItemsFragment {
  GgetThreadsData_getThreads_results_threadItemForType._();

  factory GgetThreadsData_getThreads_results_threadItemForType(
      [void Function(
              GgetThreadsData_getThreads_results_threadItemForTypeBuilder b)
          updates]) = _$GgetThreadsData_getThreads_results_threadItemForType;

  static void _initializeBuilder(
          GgetThreadsData_getThreads_results_threadItemForTypeBuilder b) =>
      b..G__typename = 'ThreadItems';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get threadId;
  @override
  int? get reservationId;
  @override
  String? get sentBy;
  @override
  String? get content;
  @override
  String? get type;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  double? get startTime;
  @override
  double? get endTime;
  @override
  int? get personCapacity;
  @override
  bool? get isRead;
  @override
  String? get createdAt;
  @override
  int? get status;
  @override
  int? get userBanStatus;
  static Serializer<GgetThreadsData_getThreads_results_threadItemForType>
      get serializer =>
          _$ggetThreadsDataGetThreadsResultsThreadItemForTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetThreadsData_getThreads_results_threadItemForType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetThreadsData_getThreads_results_threadItemForType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetThreadsData_getThreads_results_threadItemForType.serializer,
        json,
      );
}

abstract class GsendMessageData
    implements Built<GsendMessageData, GsendMessageDataBuilder> {
  GsendMessageData._();

  factory GsendMessageData([void Function(GsendMessageDataBuilder b) updates]) =
      _$GsendMessageData;

  static void _initializeBuilder(GsendMessageDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsendMessageData_sendMessage? get sendMessage;
  static Serializer<GsendMessageData> get serializer =>
      _$gsendMessageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendMessageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendMessageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendMessageData.serializer,
        json,
      );
}

abstract class GsendMessageData_sendMessage
    implements
        Built<GsendMessageData_sendMessage,
            GsendMessageData_sendMessageBuilder> {
  GsendMessageData_sendMessage._();

  factory GsendMessageData_sendMessage(
          [void Function(GsendMessageData_sendMessageBuilder b) updates]) =
      _$GsendMessageData_sendMessage;

  static void _initializeBuilder(GsendMessageData_sendMessageBuilder b) =>
      b..G__typename = 'SendMessage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GsendMessageData_sendMessage_results? get results;
  static Serializer<GsendMessageData_sendMessage> get serializer =>
      _$gsendMessageDataSendMessageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendMessageData_sendMessage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendMessageData_sendMessage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendMessageData_sendMessage.serializer,
        json,
      );
}

abstract class GsendMessageData_sendMessage_results
    implements
        Built<GsendMessageData_sendMessage_results,
            GsendMessageData_sendMessage_resultsBuilder> {
  GsendMessageData_sendMessage_results._();

  factory GsendMessageData_sendMessage_results(
      [void Function(GsendMessageData_sendMessage_resultsBuilder b)
          updates]) = _$GsendMessageData_sendMessage_results;

  static void _initializeBuilder(
          GsendMessageData_sendMessage_resultsBuilder b) =>
      b..G__typename = 'ThreadItems';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String? get sentBy;
  String? get content;
  String? get type;
  int? get reservationId;
  String? get startDate;
  String? get endDate;
  double? get startTime;
  double? get endTime;
  int? get personCapacity;
  String? get createdAt;
  static Serializer<GsendMessageData_sendMessage_results> get serializer =>
      _$gsendMessageDataSendMessageResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsendMessageData_sendMessage_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsendMessageData_sendMessage_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsendMessageData_sendMessage_results.serializer,
        json,
      );
}

abstract class GreadMessageData
    implements Built<GreadMessageData, GreadMessageDataBuilder> {
  GreadMessageData._();

  factory GreadMessageData([void Function(GreadMessageDataBuilder b) updates]) =
      _$GreadMessageData;

  static void _initializeBuilder(GreadMessageDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GreadMessageData_readMessage? get readMessage;
  static Serializer<GreadMessageData> get serializer =>
      _$greadMessageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreadMessageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreadMessageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreadMessageData.serializer,
        json,
      );
}

abstract class GreadMessageData_readMessage
    implements
        Built<GreadMessageData_readMessage,
            GreadMessageData_readMessageBuilder> {
  GreadMessageData_readMessage._();

  factory GreadMessageData_readMessage(
          [void Function(GreadMessageData_readMessageBuilder b) updates]) =
      _$GreadMessageData_readMessage;

  static void _initializeBuilder(GreadMessageData_readMessageBuilder b) =>
      b..G__typename = 'SendMessage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get message;
  String? get errorMessage;
  static Serializer<GreadMessageData_readMessage> get serializer =>
      _$greadMessageDataReadMessageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreadMessageData_readMessage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreadMessageData_readMessage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreadMessageData_readMessage.serializer,
        json,
      );
}

abstract class GgetUnReadThreadCountData
    implements
        Built<GgetUnReadThreadCountData, GgetUnReadThreadCountDataBuilder> {
  GgetUnReadThreadCountData._();

  factory GgetUnReadThreadCountData(
          [void Function(GgetUnReadThreadCountDataBuilder b) updates]) =
      _$GgetUnReadThreadCountData;

  static void _initializeBuilder(GgetUnReadThreadCountDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUnReadThreadCountData_getUnReadThreadCount? get getUnReadThreadCount;
  static Serializer<GgetUnReadThreadCountData> get serializer =>
      _$ggetUnReadThreadCountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadThreadCountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadThreadCountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadThreadCountData.serializer,
        json,
      );
}

abstract class GgetUnReadThreadCountData_getUnReadThreadCount
    implements
        Built<GgetUnReadThreadCountData_getUnReadThreadCount,
            GgetUnReadThreadCountData_getUnReadThreadCountBuilder> {
  GgetUnReadThreadCountData_getUnReadThreadCount._();

  factory GgetUnReadThreadCountData_getUnReadThreadCount(
      [void Function(GgetUnReadThreadCountData_getUnReadThreadCountBuilder b)
          updates]) = _$GgetUnReadThreadCountData_getUnReadThreadCount;

  static void _initializeBuilder(
          GgetUnReadThreadCountData_getUnReadThreadCountBuilder b) =>
      b..G__typename = 'UnreadThreadsCount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetUnReadThreadCountData_getUnReadThreadCount_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GgetUnReadThreadCountData_getUnReadThreadCount>
      get serializer =>
          _$ggetUnReadThreadCountDataGetUnReadThreadCountSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadThreadCountData_getUnReadThreadCount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadThreadCountData_getUnReadThreadCount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadThreadCountData_getUnReadThreadCount.serializer,
        json,
      );
}

abstract class GgetUnReadThreadCountData_getUnReadThreadCount_results
    implements
        Built<GgetUnReadThreadCountData_getUnReadThreadCount_results,
            GgetUnReadThreadCountData_getUnReadThreadCount_resultsBuilder> {
  GgetUnReadThreadCountData_getUnReadThreadCount_results._();

  factory GgetUnReadThreadCountData_getUnReadThreadCount_results(
      [void Function(
              GgetUnReadThreadCountData_getUnReadThreadCount_resultsBuilder b)
          updates]) = _$GgetUnReadThreadCountData_getUnReadThreadCount_results;

  static void _initializeBuilder(
          GgetUnReadThreadCountData_getUnReadThreadCount_resultsBuilder b) =>
      b..G__typename = 'UnReadCount';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get isUnReadMessage;
  int? get messageCount;
  static Serializer<GgetUnReadThreadCountData_getUnReadThreadCount_results>
      get serializer =>
          _$ggetUnReadThreadCountDataGetUnReadThreadCountResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetUnReadThreadCountData_getUnReadThreadCount_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetUnReadThreadCountData_getUnReadThreadCount_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetUnReadThreadCountData_getUnReadThreadCount_results.serializer,
        json,
      );
}
