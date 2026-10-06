// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'base_listing_info_fragment.data.gql.g.dart';

abstract class GviewListingShortFragment {
  String get G__typename;
  int? get id;
  String? get userId;
  String? get title;
  String? get transmission;
  bool? get wishListStatus;
  String? get carType;
  int? get reviewsStarRating;
  int? get reviewsCount;
  String? get bookingType;
  bool? get isListOwner;
  int? get coverPhoto;
  double? get lat;
  BuiltList<GviewListingShortFragment_dynamicListingTitle?>?
      get dynamicListingTitle;
  BuiltList<GviewListingShortFragment_dynamicListingDescription?>?
      get dynamicListingDescription;
  GviewListingShortFragment_dynamicListTitle? get dynamicListTitle;
  GviewListingShortFragment_dynamicListDescription? get dynamicListDescription;
  GviewListingShortFragment_dynamicCarType? get dynamicCarType;
  GviewListingShortFragment_dynamicmake? get dynamicmake;
  GviewListingShortFragment_dynamicModel? get dynamicModel;
  GviewListingShortFragment_dynamicYear? get dynamicYear;
  GviewListingShortFragment_dynamicOdometer? get dynamicOdometer;
  BuiltList<GviewListingShortFragment_carRules?>? get carRules;
  BuiltList<GviewListingShortFragment_carFeatures?>? get carFeatures;
  double? get lng;
  String? get listPhotoName;
  BuiltList<GviewListingShortFragment_listPhotos?>? get listPhotos;
  GviewListingShortFragment_listingData? get listingData;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicListingTitle {
  String get G__typename;
  String? get language;
  String? get listTitle;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicListingDescription {
  String get G__typename;
  String? get language;
  String? get listDescription;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicListTitle {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicListDescription {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicCarType {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicmake {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicModel {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicYear {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_dynamicOdometer {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_carRules {
  String get G__typename;
  GviewListingShortFragment_carRules_dynamicItemName? get dynamicItemName;
  int? get id;
  String? get itemName;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_carRules_dynamicItemName {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_carFeatures {
  String get G__typename;
  GviewListingShortFragment_carFeatures_dynamicItemName? get dynamicItemName;
  int? get id;
  String? get itemName;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_carFeatures_dynamicItemName {
  String get G__typename;
  String? get en;
  String? get ar;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_listPhotos {
  String get G__typename;
  int? get id;
  String? get name;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragment_listingData {
  String get G__typename;
  double? get basePrice;
  String? get currency;
  double? get weeklyDiscount;
  double? get monthlyDiscount;
  Map<String, dynamic> toJson();
}

abstract class GviewListingShortFragmentData
    implements
        Built<GviewListingShortFragmentData,
            GviewListingShortFragmentDataBuilder>,
        GviewListingShortFragment {
  GviewListingShortFragmentData._();

  factory GviewListingShortFragmentData(
          [void Function(GviewListingShortFragmentDataBuilder b) updates]) =
      _$GviewListingShortFragmentData;

  static void _initializeBuilder(GviewListingShortFragmentDataBuilder b) =>
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
  BuiltList<GviewListingShortFragmentData_dynamicListingTitle?>?
      get dynamicListingTitle;
  @override
  BuiltList<GviewListingShortFragmentData_dynamicListingDescription?>?
      get dynamicListingDescription;
  @override
  GviewListingShortFragmentData_dynamicListTitle? get dynamicListTitle;
  @override
  GviewListingShortFragmentData_dynamicListDescription?
      get dynamicListDescription;
  @override
  GviewListingShortFragmentData_dynamicCarType? get dynamicCarType;
  @override
  GviewListingShortFragmentData_dynamicmake? get dynamicmake;
  @override
  GviewListingShortFragmentData_dynamicModel? get dynamicModel;
  @override
  GviewListingShortFragmentData_dynamicYear? get dynamicYear;
  @override
  GviewListingShortFragmentData_dynamicOdometer? get dynamicOdometer;
  @override
  BuiltList<GviewListingShortFragmentData_carRules?>? get carRules;
  @override
  BuiltList<GviewListingShortFragmentData_carFeatures?>? get carFeatures;
  @override
  double? get lng;
  @override
  String? get listPhotoName;
  @override
  BuiltList<GviewListingShortFragmentData_listPhotos?>? get listPhotos;
  @override
  GviewListingShortFragmentData_listingData? get listingData;
  static Serializer<GviewListingShortFragmentData> get serializer =>
      _$gviewListingShortFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicListingTitle
    implements
        Built<GviewListingShortFragmentData_dynamicListingTitle,
            GviewListingShortFragmentData_dynamicListingTitleBuilder>,
        GviewListingShortFragment_dynamicListingTitle {
  GviewListingShortFragmentData_dynamicListingTitle._();

  factory GviewListingShortFragmentData_dynamicListingTitle(
      [void Function(GviewListingShortFragmentData_dynamicListingTitleBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicListingTitle;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicListingTitleBuilder b) =>
      b..G__typename = 'DynamicListTitleType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listTitle;
  static Serializer<GviewListingShortFragmentData_dynamicListingTitle>
      get serializer =>
          _$gviewListingShortFragmentDataDynamicListingTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicListingTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicListingTitle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicListingTitle.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicListingDescription
    implements
        Built<GviewListingShortFragmentData_dynamicListingDescription,
            GviewListingShortFragmentData_dynamicListingDescriptionBuilder>,
        GviewListingShortFragment_dynamicListingDescription {
  GviewListingShortFragmentData_dynamicListingDescription._();

  factory GviewListingShortFragmentData_dynamicListingDescription(
      [void Function(
              GviewListingShortFragmentData_dynamicListingDescriptionBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicListingDescription;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicListingDescriptionBuilder b) =>
      b..G__typename = 'DynamicListDescriptionType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get language;
  @override
  String? get listDescription;
  static Serializer<GviewListingShortFragmentData_dynamicListingDescription>
      get serializer =>
          _$gviewListingShortFragmentDataDynamicListingDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicListingDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicListingDescription? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicListingDescription.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicListTitle
    implements
        Built<GviewListingShortFragmentData_dynamicListTitle,
            GviewListingShortFragmentData_dynamicListTitleBuilder>,
        GviewListingShortFragment_dynamicListTitle {
  GviewListingShortFragmentData_dynamicListTitle._();

  factory GviewListingShortFragmentData_dynamicListTitle(
      [void Function(GviewListingShortFragmentData_dynamicListTitleBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicListTitle;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicListTitleBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicListTitle>
      get serializer =>
          _$gviewListingShortFragmentDataDynamicListTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicListTitle.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicListTitle? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicListTitle.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicListDescription
    implements
        Built<GviewListingShortFragmentData_dynamicListDescription,
            GviewListingShortFragmentData_dynamicListDescriptionBuilder>,
        GviewListingShortFragment_dynamicListDescription {
  GviewListingShortFragmentData_dynamicListDescription._();

  factory GviewListingShortFragmentData_dynamicListDescription(
      [void Function(
              GviewListingShortFragmentData_dynamicListDescriptionBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicListDescription;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicListDescriptionBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicListDescription>
      get serializer =>
          _$gviewListingShortFragmentDataDynamicListDescriptionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicListDescription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicListDescription? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicListDescription.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicCarType
    implements
        Built<GviewListingShortFragmentData_dynamicCarType,
            GviewListingShortFragmentData_dynamicCarTypeBuilder>,
        GviewListingShortFragment_dynamicCarType {
  GviewListingShortFragmentData_dynamicCarType._();

  factory GviewListingShortFragmentData_dynamicCarType(
      [void Function(GviewListingShortFragmentData_dynamicCarTypeBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicCarType;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicCarTypeBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicCarType>
      get serializer => _$gviewListingShortFragmentDataDynamicCarTypeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicCarType.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicCarType? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicCarType.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicmake
    implements
        Built<GviewListingShortFragmentData_dynamicmake,
            GviewListingShortFragmentData_dynamicmakeBuilder>,
        GviewListingShortFragment_dynamicmake {
  GviewListingShortFragmentData_dynamicmake._();

  factory GviewListingShortFragmentData_dynamicmake(
      [void Function(GviewListingShortFragmentData_dynamicmakeBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicmake;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicmakeBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicmake> get serializer =>
      _$gviewListingShortFragmentDataDynamicmakeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicmake.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicmake? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicmake.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicModel
    implements
        Built<GviewListingShortFragmentData_dynamicModel,
            GviewListingShortFragmentData_dynamicModelBuilder>,
        GviewListingShortFragment_dynamicModel {
  GviewListingShortFragmentData_dynamicModel._();

  factory GviewListingShortFragmentData_dynamicModel(
      [void Function(GviewListingShortFragmentData_dynamicModelBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicModel;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicModelBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicModel>
      get serializer => _$gviewListingShortFragmentDataDynamicModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicModel.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicYear
    implements
        Built<GviewListingShortFragmentData_dynamicYear,
            GviewListingShortFragmentData_dynamicYearBuilder>,
        GviewListingShortFragment_dynamicYear {
  GviewListingShortFragmentData_dynamicYear._();

  factory GviewListingShortFragmentData_dynamicYear(
      [void Function(GviewListingShortFragmentData_dynamicYearBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicYear;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicYearBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicYear> get serializer =>
      _$gviewListingShortFragmentDataDynamicYearSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicYear.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicYear? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicYear.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_dynamicOdometer
    implements
        Built<GviewListingShortFragmentData_dynamicOdometer,
            GviewListingShortFragmentData_dynamicOdometerBuilder>,
        GviewListingShortFragment_dynamicOdometer {
  GviewListingShortFragmentData_dynamicOdometer._();

  factory GviewListingShortFragmentData_dynamicOdometer(
      [void Function(GviewListingShortFragmentData_dynamicOdometerBuilder b)
          updates]) = _$GviewListingShortFragmentData_dynamicOdometer;

  static void _initializeBuilder(
          GviewListingShortFragmentData_dynamicOdometerBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_dynamicOdometer>
      get serializer =>
          _$gviewListingShortFragmentDataDynamicOdometerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_dynamicOdometer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_dynamicOdometer? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_dynamicOdometer.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_carRules
    implements
        Built<GviewListingShortFragmentData_carRules,
            GviewListingShortFragmentData_carRulesBuilder>,
        GviewListingShortFragment_carRules {
  GviewListingShortFragmentData_carRules._();

  factory GviewListingShortFragmentData_carRules(
      [void Function(GviewListingShortFragmentData_carRulesBuilder b)
          updates]) = _$GviewListingShortFragmentData_carRules;

  static void _initializeBuilder(
          GviewListingShortFragmentData_carRulesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GviewListingShortFragmentData_carRules_dynamicItemName? get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GviewListingShortFragmentData_carRules> get serializer =>
      _$gviewListingShortFragmentDataCarRulesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_carRules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_carRules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_carRules.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_carRules_dynamicItemName
    implements
        Built<GviewListingShortFragmentData_carRules_dynamicItemName,
            GviewListingShortFragmentData_carRules_dynamicItemNameBuilder>,
        GviewListingShortFragment_carRules_dynamicItemName {
  GviewListingShortFragmentData_carRules_dynamicItemName._();

  factory GviewListingShortFragmentData_carRules_dynamicItemName(
      [void Function(
              GviewListingShortFragmentData_carRules_dynamicItemNameBuilder b)
          updates]) = _$GviewListingShortFragmentData_carRules_dynamicItemName;

  static void _initializeBuilder(
          GviewListingShortFragmentData_carRules_dynamicItemNameBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_carRules_dynamicItemName>
      get serializer =>
          _$gviewListingShortFragmentDataCarRulesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_carRules_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_carRules_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_carRules_dynamicItemName.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_carFeatures
    implements
        Built<GviewListingShortFragmentData_carFeatures,
            GviewListingShortFragmentData_carFeaturesBuilder>,
        GviewListingShortFragment_carFeatures {
  GviewListingShortFragmentData_carFeatures._();

  factory GviewListingShortFragmentData_carFeatures(
      [void Function(GviewListingShortFragmentData_carFeaturesBuilder b)
          updates]) = _$GviewListingShortFragmentData_carFeatures;

  static void _initializeBuilder(
          GviewListingShortFragmentData_carFeaturesBuilder b) =>
      b..G__typename = 'allListSettingTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GviewListingShortFragmentData_carFeatures_dynamicItemName?
      get dynamicItemName;
  @override
  int? get id;
  @override
  String? get itemName;
  static Serializer<GviewListingShortFragmentData_carFeatures> get serializer =>
      _$gviewListingShortFragmentDataCarFeaturesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_carFeatures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_carFeatures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_carFeatures.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_carFeatures_dynamicItemName
    implements
        Built<GviewListingShortFragmentData_carFeatures_dynamicItemName,
            GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder>,
        GviewListingShortFragment_carFeatures_dynamicItemName {
  GviewListingShortFragmentData_carFeatures_dynamicItemName._();

  factory GviewListingShortFragmentData_carFeatures_dynamicItemName(
      [void Function(
              GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder
                  b)
          updates]) = _$GviewListingShortFragmentData_carFeatures_dynamicItemName;

  static void _initializeBuilder(
          GviewListingShortFragmentData_carFeatures_dynamicItemNameBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_carFeatures_dynamicItemName>
      get serializer =>
          _$gviewListingShortFragmentDataCarFeaturesDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_carFeatures_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_carFeatures_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_carFeatures_dynamicItemName.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_listPhotos
    implements
        Built<GviewListingShortFragmentData_listPhotos,
            GviewListingShortFragmentData_listPhotosBuilder>,
        GviewListingShortFragment_listPhotos {
  GviewListingShortFragmentData_listPhotos._();

  factory GviewListingShortFragmentData_listPhotos(
      [void Function(GviewListingShortFragmentData_listPhotosBuilder b)
          updates]) = _$GviewListingShortFragmentData_listPhotos;

  static void _initializeBuilder(
          GviewListingShortFragmentData_listPhotosBuilder b) =>
      b..G__typename = 'listPhotosData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get name;
  static Serializer<GviewListingShortFragmentData_listPhotos> get serializer =>
      _$gviewListingShortFragmentDataListPhotosSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_listPhotos.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_listPhotos? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_listPhotos.serializer,
        json,
      );
}

abstract class GviewListingShortFragmentData_listingData
    implements
        Built<GviewListingShortFragmentData_listingData,
            GviewListingShortFragmentData_listingDataBuilder>,
        GviewListingShortFragment_listingData {
  GviewListingShortFragmentData_listingData._();

  factory GviewListingShortFragmentData_listingData(
      [void Function(GviewListingShortFragmentData_listingDataBuilder b)
          updates]) = _$GviewListingShortFragmentData_listingData;

  static void _initializeBuilder(
          GviewListingShortFragmentData_listingDataBuilder b) =>
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
  static Serializer<GviewListingShortFragmentData_listingData> get serializer =>
      _$gviewListingShortFragmentDataListingDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GviewListingShortFragmentData_listingData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GviewListingShortFragmentData_listingData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GviewListingShortFragmentData_listingData.serializer,
        json,
      );
}
