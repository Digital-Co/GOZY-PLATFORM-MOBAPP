// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_option_fragment.data.gql.g.dart';

abstract class GlistingOptionFragment {
  String get G__typename;
  int? get id;
  int? get listId;
  String? get slot;
  String? get code;
  bool? get isFixed;
  String? get label;
  String? get description;
  double? get price;
  String? get billingMode;
  bool? get isActive;
  bool? get adminDisabled;
  String? get icon;
  int? get sortOrder;
  Map<String, dynamic> toJson();
}

abstract class GlistingOptionFragmentData
    implements
        Built<GlistingOptionFragmentData, GlistingOptionFragmentDataBuilder>,
        GlistingOptionFragment {
  GlistingOptionFragmentData._();

  factory GlistingOptionFragmentData(
          [void Function(GlistingOptionFragmentDataBuilder b) updates]) =
      _$GlistingOptionFragmentData;

  static void _initializeBuilder(GlistingOptionFragmentDataBuilder b) =>
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
  static Serializer<GlistingOptionFragmentData> get serializer =>
      _$glistingOptionFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionFragmentData.serializer,
        json,
      );
}

abstract class GbookingOptionLineFragment {
  String get G__typename;
  int? get listingOptionId;
  String? get code;
  bool? get isFixed;
  String? get label;
  String? get labelKey;
  String? get description;
  String? get billingMode;
  double? get unitPrice;
  int? get quantity;
  double? get amount;
  String? get currency;
  String? get userInput;
  Map<String, dynamic> toJson();
}

abstract class GbookingOptionLineFragmentData
    implements
        Built<GbookingOptionLineFragmentData,
            GbookingOptionLineFragmentDataBuilder>,
        GbookingOptionLineFragment {
  GbookingOptionLineFragmentData._();

  factory GbookingOptionLineFragmentData(
          [void Function(GbookingOptionLineFragmentDataBuilder b) updates]) =
      _$GbookingOptionLineFragmentData;

  static void _initializeBuilder(GbookingOptionLineFragmentDataBuilder b) =>
      b..G__typename = 'BookingOptionLineType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get listingOptionId;
  @override
  String? get code;
  @override
  bool? get isFixed;
  @override
  String? get label;
  @override
  String? get labelKey;
  @override
  String? get description;
  @override
  String? get billingMode;
  @override
  double? get unitPrice;
  @override
  int? get quantity;
  @override
  double? get amount;
  @override
  String? get currency;
  @override
  String? get userInput;
  static Serializer<GbookingOptionLineFragmentData> get serializer =>
      _$gbookingOptionLineFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GbookingOptionLineFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GbookingOptionLineFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GbookingOptionLineFragmentData.serializer,
        json,
      );
}

abstract class GreservationOptionSnapshotFragment {
  String get G__typename;
  int? get id;
  String? get code;
  bool? get isFixed;
  String? get label;
  String? get labelKey;
  String? get description;
  String? get billingMode;
  double? get unitPrice;
  int? get quantity;
  double? get amount;
  String? get currency;
  String? get userInput;
  Map<String, dynamic> toJson();
}

abstract class GreservationOptionSnapshotFragmentData
    implements
        Built<GreservationOptionSnapshotFragmentData,
            GreservationOptionSnapshotFragmentDataBuilder>,
        GreservationOptionSnapshotFragment {
  GreservationOptionSnapshotFragmentData._();

  factory GreservationOptionSnapshotFragmentData(
      [void Function(GreservationOptionSnapshotFragmentDataBuilder b)
          updates]) = _$GreservationOptionSnapshotFragmentData;

  static void _initializeBuilder(
          GreservationOptionSnapshotFragmentDataBuilder b) =>
      b..G__typename = 'ReservationOptionSnapshot';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get code;
  @override
  bool? get isFixed;
  @override
  String? get label;
  @override
  String? get labelKey;
  @override
  String? get description;
  @override
  String? get billingMode;
  @override
  double? get unitPrice;
  @override
  int? get quantity;
  @override
  double? get amount;
  @override
  String? get currency;
  @override
  String? get userInput;
  static Serializer<GreservationOptionSnapshotFragmentData> get serializer =>
      _$greservationOptionSnapshotFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GreservationOptionSnapshotFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GreservationOptionSnapshotFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GreservationOptionSnapshotFragmentData.serializer,
        json,
      );
}

abstract class GlistingOptionsResultFragment {
  String get G__typename;
  int? get status;
  String? get errorMessage;
  int? get maxCustom;
  int? get customCount;
  BuiltList<GlistingOptionsResultFragment_results?>? get results;
  Map<String, dynamic> toJson();
}

abstract class GlistingOptionsResultFragment_results
    implements GlistingOptionFragment {
  @override
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
  @override
  Map<String, dynamic> toJson();
}

abstract class GlistingOptionsResultFragmentData
    implements
        Built<GlistingOptionsResultFragmentData,
            GlistingOptionsResultFragmentDataBuilder>,
        GlistingOptionsResultFragment {
  GlistingOptionsResultFragmentData._();

  factory GlistingOptionsResultFragmentData(
          [void Function(GlistingOptionsResultFragmentDataBuilder b) updates]) =
      _$GlistingOptionsResultFragmentData;

  static void _initializeBuilder(GlistingOptionsResultFragmentDataBuilder b) =>
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
  BuiltList<GlistingOptionsResultFragmentData_results?>? get results;
  static Serializer<GlistingOptionsResultFragmentData> get serializer =>
      _$glistingOptionsResultFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionsResultFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionsResultFragmentData.serializer,
        json,
      );
}

abstract class GlistingOptionsResultFragmentData_results
    implements
        Built<GlistingOptionsResultFragmentData_results,
            GlistingOptionsResultFragmentData_resultsBuilder>,
        GlistingOptionsResultFragment_results,
        GlistingOptionFragment {
  GlistingOptionsResultFragmentData_results._();

  factory GlistingOptionsResultFragmentData_results(
      [void Function(GlistingOptionsResultFragmentData_resultsBuilder b)
          updates]) = _$GlistingOptionsResultFragmentData_results;

  static void _initializeBuilder(
          GlistingOptionsResultFragmentData_resultsBuilder b) =>
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
  static Serializer<GlistingOptionsResultFragmentData_results> get serializer =>
      _$glistingOptionsResultFragmentDataResultsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingOptionsResultFragmentData_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingOptionsResultFragmentData_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingOptionsResultFragmentData_results.serializer,
        json,
      );
}
