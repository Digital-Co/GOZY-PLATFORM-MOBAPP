// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/base_listing_info_fragment.data.gql.dart'
    as _i2;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'cancelReservations.data.gql.g.dart';

abstract class GCancellationDataData
    implements Built<GCancellationDataData, GCancellationDataDataBuilder> {
  GCancellationDataData._();

  factory GCancellationDataData(
          [void Function(GCancellationDataDataBuilder b) updates]) =
      _$GCancellationDataData;

  static void _initializeBuilder(GCancellationDataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCancellationDataData_cancelReservationData? get cancelReservationData;
  static Serializer<GCancellationDataData> get serializer =>
      _$gCancellationDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancellationDataData.serializer,
        json,
      );
}

abstract class GCancellationDataData_cancelReservationData
    implements
        Built<GCancellationDataData_cancelReservationData,
            GCancellationDataData_cancelReservationDataBuilder> {
  GCancellationDataData_cancelReservationData._();

  factory GCancellationDataData_cancelReservationData(
      [void Function(GCancellationDataData_cancelReservationDataBuilder b)
          updates]) = _$GCancellationDataData_cancelReservationData;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationDataBuilder b) =>
      b..G__typename = 'CancellationResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCancellationDataData_cancelReservationData_results? get results;
  int? get status;
  String? get errorMessage;
  static Serializer<GCancellationDataData_cancelReservationData>
      get serializer => _$gCancellationDataDataCancelReservationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancellationDataData_cancelReservationData.serializer,
        json,
      );
}

abstract class GCancellationDataData_cancelReservationData_results
    implements
        Built<GCancellationDataData_cancelReservationData_results,
            GCancellationDataData_cancelReservationData_resultsBuilder> {
  GCancellationDataData_cancelReservationData_results._();

  factory GCancellationDataData_cancelReservationData_results(
      [void Function(
              GCancellationDataData_cancelReservationData_resultsBuilder b)
          updates]) = _$GCancellationDataData_cancelReservationData_results;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_resultsBuilder b) =>
      b..G__typename = 'ReservationCancel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get reservationId;
  String? get cancellationPolicy;
  double? get refundToGuest;
  double? get payoutToHost;
  int? get threadId;
  String? get checkIn;
  String? get checkOut;
  double? get startTime;
  double? get endTime;
  int? get guests;
  String? get cancelledBy;
  int? get startedIn;
  double? get rentingFor;
  String? get currency;
  String? get hostEmail;
  int? get listId;
  double? get guestServiceFee;
  double? get hostServiceFee;
  double? get total;
  int? get confirmationCode;
  String? get listTitle;
  double? get nonRefundableDayPrice;
  String? get guestEmail;
  String? get hostName;
  String? get status;
  String? get guestName;
  String? get errorMessage;
  String? get hostProfilePicture;
  String? get guestProfilePicture;
  GCancellationDataData_cancelReservationData_results_listData? get listData;
  double? get isSpecialPriceAverage;
  String? get guestCreatedAt;
  String? get hostCreatedAt;
  static Serializer<GCancellationDataData_cancelReservationData_results>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancellationDataData_cancelReservationData_results.serializer,
        json,
      );
}

abstract class GCancellationDataData_cancelReservationData_results_listData
    implements
        Built<GCancellationDataData_cancelReservationData_results_listData,
            GCancellationDataData_cancelReservationData_results_listDataBuilder>,
        _i2.GviewListingShortFragment {
  GCancellationDataData_cancelReservationData_results_listData._();

  factory GCancellationDataData_cancelReservationData_results_listData(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listDataBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listDataBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<
          GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle?
      get dynamicListTitle;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicCarType?
      get dynamicCarType;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicmake?
      get dynamicmake;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicModel?
      get dynamicModel;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicYear?
      get dynamicYear;
  @override
  GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer?
      get dynamicOdometer;
  @override
  BuiltList<
          GCancellationDataData_cancelReservationData_results_listData_carRules?>?
      get carRules;
  @override
  BuiltList<
          GCancellationDataData_cancelReservationData_results_listData_carFeatures?>?
      get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<
          GCancellationDataData_cancelReservationData_results_listData_listPhotos?>?
      get listPhotos;
  @override
  GCancellationDataData_cancelReservationData_results_listData_listingData?
      get listingData;
  GCancellationDataData_cancelReservationData_results_listData_user? get user;
  static Serializer<
          GCancellationDataData_cancelReservationData_results_listData>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancellationDataData_cancelReservationData_results_listData.serializer,
        json,
      );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle,
            GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListingTitle {
  GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitleBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitleBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicListingTitle
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription,
            GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListingDescription {
  GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescriptionBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescriptionBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicListingDescription
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle,
            GCancellationDataData_cancelReservationData_results_listData_dynamicListTitleBuilder>,
        _i2.GviewListingShortFragment_dynamicListTitle {
  GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicListTitleBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicListTitleBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicListTitle
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription,
            GCancellationDataData_cancelReservationData_results_listData_dynamicListDescriptionBuilder>,
        _i2.GviewListingShortFragment_dynamicListDescription {
  GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicListDescriptionBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicListDescriptionBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicListDescription
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicCarType
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicCarType,
            GCancellationDataData_cancelReservationData_results_listData_dynamicCarTypeBuilder>,
        _i2.GviewListingShortFragment_dynamicCarType {
  GCancellationDataData_cancelReservationData_results_listData_dynamicCarType._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicCarType(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicCarTypeBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicCarType;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicCarTypeBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicCarType>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicCarType
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicCarType?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicCarType
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicmake
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicmake,
            GCancellationDataData_cancelReservationData_results_listData_dynamicmakeBuilder>,
        _i2.GviewListingShortFragment_dynamicmake {
  GCancellationDataData_cancelReservationData_results_listData_dynamicmake._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicmake(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicmakeBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicmake;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicmakeBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicmake>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicmake
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicmake?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicmake
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicModel
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicModel,
            GCancellationDataData_cancelReservationData_results_listData_dynamicModelBuilder>,
        _i2.GviewListingShortFragment_dynamicModel {
  GCancellationDataData_cancelReservationData_results_listData_dynamicModel._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicModel(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicModelBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicModel;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicModelBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicModel>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicModel
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicYear
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicYear,
            GCancellationDataData_cancelReservationData_results_listData_dynamicYearBuilder>,
        _i2.GviewListingShortFragment_dynamicYear {
  GCancellationDataData_cancelReservationData_results_listData_dynamicYear._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicYear(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicYearBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicYear;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicYearBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicYear>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicYear
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicYear?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicYear
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer,
            GCancellationDataData_cancelReservationData_results_listData_dynamicOdometerBuilder>,
        _i2.GviewListingShortFragment_dynamicOdometer {
  GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer._();

  factory GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_dynamicOdometerBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_dynamicOdometerBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_dynamicOdometer
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_carRules
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_carRules,
            GCancellationDataData_cancelReservationData_results_listData_carRulesBuilder>,
        _i2.GviewListingShortFragment_carRules {
  GCancellationDataData_cancelReservationData_results_listData_carRules._();

  factory GCancellationDataData_cancelReservationData_results_listData_carRules(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_carRulesBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_carRules;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_carRulesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GCancellationDataData_cancelReservationData_results_listData_carRules>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_carRules
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_carRules?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_carRules
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName,
            GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carRules_dynamicItemName {
  GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName._();

  factory GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemNameBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_carRules_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_carFeatures
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_carFeatures,
            GCancellationDataData_cancelReservationData_results_listData_carFeaturesBuilder>,
        _i2.GviewListingShortFragment_carFeatures {
  GCancellationDataData_cancelReservationData_results_listData_carFeatures._();

  factory GCancellationDataData_cancelReservationData_results_listData_carFeatures(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_carFeaturesBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_carFeatures;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_carFeaturesBuilder
              b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<
          GCancellationDataData_cancelReservationData_results_listData_carFeatures>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_carFeatures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_carFeatures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_carFeatures
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName,
            GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemNameBuilder>,
        _i2.GviewListingShortFragment_carFeatures_dynamicItemName {
  GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName._();

  factory GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemNameBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_carFeatures_dynamicItemName
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_listPhotos
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_listPhotos,
            GCancellationDataData_cancelReservationData_results_listData_listPhotosBuilder>,
        _i2.GviewListingShortFragment_listPhotos {
  GCancellationDataData_cancelReservationData_results_listData_listPhotos._();

  factory GCancellationDataData_cancelReservationData_results_listData_listPhotos(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_listPhotosBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_listPhotos;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_listPhotosBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_listPhotos>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_listPhotos
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_listPhotos?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_listPhotos
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_listingData
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_listingData,
            GCancellationDataData_cancelReservationData_results_listData_listingDataBuilder>,
        _i2.GviewListingShortFragment_listingData {
  GCancellationDataData_cancelReservationData_results_listData_listingData._();

  factory GCancellationDataData_cancelReservationData_results_listData_listingData(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_listingDataBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_listingData;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_listingDataBuilder
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
          GCancellationDataData_cancelReservationData_results_listData_listingData>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_listingData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_listingData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_listingData
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_user
    implements
        Built<GCancellationDataData_cancelReservationData_results_listData_user,
            GCancellationDataData_cancelReservationData_results_listData_userBuilder> {
  GCancellationDataData_cancelReservationData_results_listData_user._();

  factory GCancellationDataData_cancelReservationData_results_listData_user(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_userBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_user;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_userBuilder
              b) =>
      b..G__typename = 'user';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get email;
  GCancellationDataData_cancelReservationData_results_listData_user_profile?
      get profile;
  GCancellationDataData_cancelReservationData_results_listData_user_verification?
      get verification;
  int? get userBanStatus;
  static Serializer<
          GCancellationDataData_cancelReservationData_results_listData_user>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_user
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_user_profile
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_user_profile,
            GCancellationDataData_cancelReservationData_results_listData_user_profileBuilder> {
  GCancellationDataData_cancelReservationData_results_listData_user_profile._();

  factory GCancellationDataData_cancelReservationData_results_listData_user_profile(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_user_profileBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_user_profile;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_user_profileBuilder
              b) =>
      b..G__typename = 'profile';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get profileId;
  String? get firstName;
  String? get lastName;
  String? get displayName;
  String? get dateOfBirth;
  String? get picture;
  String? get location;
  String? get info;
  String? get createdAt;
  static Serializer<
          GCancellationDataData_cancelReservationData_results_listData_user_profile>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataUserProfileSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_user_profile
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_user_profile?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_user_profile
                .serializer,
            json,
          );
}

abstract class GCancellationDataData_cancelReservationData_results_listData_user_verification
    implements
        Built<
            GCancellationDataData_cancelReservationData_results_listData_user_verification,
            GCancellationDataData_cancelReservationData_results_listData_user_verificationBuilder> {
  GCancellationDataData_cancelReservationData_results_listData_user_verification._();

  factory GCancellationDataData_cancelReservationData_results_listData_user_verification(
          [void Function(
                  GCancellationDataData_cancelReservationData_results_listData_user_verificationBuilder
                      b)
              updates]) =
      _$GCancellationDataData_cancelReservationData_results_listData_user_verification;

  static void _initializeBuilder(
          GCancellationDataData_cancelReservationData_results_listData_user_verificationBuilder
              b) =>
      b..G__typename = 'UserVerifiedInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  String get userId;
  bool? get isEmailConfirmed;
  bool? get isFacebookConnected;
  bool? get isGoogleConnected;
  bool? get isIdVerification;
  bool? get isPhoneVerified;
  String? get status;
  static Serializer<
          GCancellationDataData_cancelReservationData_results_listData_user_verification>
      get serializer =>
          _$gCancellationDataDataCancelReservationDataResultsListDataUserVerificationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancellationDataData_cancelReservationData_results_listData_user_verification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancellationDataData_cancelReservationData_results_listData_user_verification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCancellationDataData_cancelReservationData_results_listData_user_verification
                .serializer,
            json,
          );
}

abstract class GCancelReservationData
    implements Built<GCancelReservationData, GCancelReservationDataBuilder> {
  GCancelReservationData._();

  factory GCancelReservationData(
          [void Function(GCancelReservationDataBuilder b) updates]) =
      _$GCancelReservationData;

  static void _initializeBuilder(GCancelReservationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCancelReservationData_cancelReservation? get cancelReservation;
  static Serializer<GCancelReservationData> get serializer =>
      _$gCancelReservationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancelReservationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancelReservationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancelReservationData.serializer,
        json,
      );
}

abstract class GCancelReservationData_cancelReservation
    implements
        Built<GCancelReservationData_cancelReservation,
            GCancelReservationData_cancelReservationBuilder> {
  GCancelReservationData_cancelReservation._();

  factory GCancelReservationData_cancelReservation(
      [void Function(GCancelReservationData_cancelReservationBuilder b)
          updates]) = _$GCancelReservationData_cancelReservation;

  static void _initializeBuilder(
          GCancelReservationData_cancelReservationBuilder b) =>
      b..G__typename = 'Reservationlist';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  static Serializer<GCancelReservationData_cancelReservation> get serializer =>
      _$gCancelReservationDataCancelReservationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCancelReservationData_cancelReservation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCancelReservationData_cancelReservation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCancelReservationData_cancelReservation.serializer,
        json,
      );
}
