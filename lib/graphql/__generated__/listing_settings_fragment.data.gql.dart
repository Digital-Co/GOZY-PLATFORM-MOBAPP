// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_settings_fragment.data.gql.g.dart';

abstract class GlistingSettingsFragment {
  String get G__typename;
  int? get id;
  int? get typeId;
  String? get itemName;
  String? get otherItemName;
  int? get maximum;
  int? get minimum;
  int? get startValue;
  int? get endValue;
  String? get isEnable;
  int? get makeType;
  GlistingSettingsFragment_dynamicItemName? get dynamicItemName;
  Map<String, dynamic> toJson();
}

abstract class GlistingSettingsFragment_dynamicItemName {
  String get G__typename;
  String? get ar;
  String? get en;
  String? get es;
  String? get fr;
  String? get it;
  String? get pt;
  Map<String, dynamic> toJson();
}

abstract class GlistingSettingsFragmentData
    implements
        Built<GlistingSettingsFragmentData,
            GlistingSettingsFragmentDataBuilder>,
        GlistingSettingsFragment {
  GlistingSettingsFragmentData._();

  factory GlistingSettingsFragmentData(
          [void Function(GlistingSettingsFragmentDataBuilder b) updates]) =
      _$GlistingSettingsFragmentData;

  static void _initializeBuilder(GlistingSettingsFragmentDataBuilder b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GlistingSettingsFragmentData_dynamicItemName? get dynamicItemName;
  static Serializer<GlistingSettingsFragmentData> get serializer =>
      _$glistingSettingsFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingSettingsFragmentData.serializer,
        json,
      );
}

abstract class GlistingSettingsFragmentData_dynamicItemName
    implements
        Built<GlistingSettingsFragmentData_dynamicItemName,
            GlistingSettingsFragmentData_dynamicItemNameBuilder>,
        GlistingSettingsFragment_dynamicItemName {
  GlistingSettingsFragmentData_dynamicItemName._();

  factory GlistingSettingsFragmentData_dynamicItemName(
      [void Function(GlistingSettingsFragmentData_dynamicItemNameBuilder b)
          updates]) = _$GlistingSettingsFragmentData_dynamicItemName;

  static void _initializeBuilder(
          GlistingSettingsFragmentData_dynamicItemNameBuilder b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<GlistingSettingsFragmentData_dynamicItemName>
      get serializer => _$glistingSettingsFragmentDataDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsFragmentData_dynamicItemName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsFragmentData_dynamicItemName? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingSettingsFragmentData_dynamicItemName.serializer,
        json,
      );
}

abstract class GcancellationFragment {
  String get G__typename;
  int? get id;
  String? get policyName;
  String? get policyContent;
  int? get priorDays;
  double? get accommodationPriorCheckIn;
  double? get accommodationBeforeCheckIn;
  double? get accommodationDuringCheckIn;
  double? get guestFeePriorCheckIn;
  double? get guestFeeBeforeCheckIn;
  double? get guestFeeDuringCheckIn;
  double? get hostFeePriorCheckIn;
  double? get hostFeeBeforeCheckIn;
  double? get hostFeeDuringCheckIn;
  bool? get isEnable;
  String? get status;
  Map<String, dynamic> toJson();
}

abstract class GcancellationFragmentData
    implements
        Built<GcancellationFragmentData, GcancellationFragmentDataBuilder>,
        GcancellationFragment {
  GcancellationFragmentData._();

  factory GcancellationFragmentData(
          [void Function(GcancellationFragmentDataBuilder b) updates]) =
      _$GcancellationFragmentData;

  static void _initializeBuilder(GcancellationFragmentDataBuilder b) =>
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
  static Serializer<GcancellationFragmentData> get serializer =>
      _$gcancellationFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancellationFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancellationFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancellationFragmentData.serializer,
        json,
      );
}

abstract class GavailabilityFragment {
  String get G__typename;
  String? get itemValue;
  String? get itemName;
  Map<String, dynamic> toJson();
}

abstract class GavailabilityFragmentData
    implements
        Built<GavailabilityFragmentData, GavailabilityFragmentDataBuilder>,
        GavailabilityFragment {
  GavailabilityFragmentData._();

  factory GavailabilityFragmentData(
          [void Function(GavailabilityFragmentDataBuilder b) updates]) =
      _$GavailabilityFragmentData;

  static void _initializeBuilder(GavailabilityFragmentDataBuilder b) =>
      b..G__typename = 'availabilityWindowType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get itemValue;
  @override
  String? get itemName;
  static Serializer<GavailabilityFragmentData> get serializer =>
      _$gavailabilityFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GavailabilityFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GavailabilityFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GavailabilityFragmentData.serializer,
        json,
      );
}

abstract class GlistingSettingsTypesFragment {
  String get G__typename;
  int? get id;
  String? get typeName;
  String? get typeLabel;
  String? get step;
  String? get fieldType;
  bool? get isMultiValue;
  String? get isEnable;
  String? get status;
  BuiltList<GlistingSettingsTypesFragment_listSettings?>? get listSettings;
  Map<String, dynamic> toJson();
}

abstract class GlistingSettingsTypesFragment_listSettings
    implements GlistingSettingsFragment {
  @override
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GlistingSettingsTypesFragment_listSettings_dynamicItemName?
      get dynamicItemName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GlistingSettingsTypesFragment_listSettings_dynamicItemName
    implements GlistingSettingsFragment_dynamicItemName {
  @override
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GlistingSettingsTypesFragmentData
    implements
        Built<GlistingSettingsTypesFragmentData,
            GlistingSettingsTypesFragmentDataBuilder>,
        GlistingSettingsTypesFragment {
  GlistingSettingsTypesFragmentData._();

  factory GlistingSettingsTypesFragmentData(
          [void Function(GlistingSettingsTypesFragmentDataBuilder b) updates]) =
      _$GlistingSettingsTypesFragmentData;

  static void _initializeBuilder(GlistingSettingsTypesFragmentDataBuilder b) =>
      b..G__typename = 'listingSettingsTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  String? get typeName;
  @override
  String? get typeLabel;
  @override
  String? get step;
  @override
  String? get fieldType;
  @override
  bool? get isMultiValue;
  @override
  String? get isEnable;
  @override
  String? get status;
  @override
  BuiltList<GlistingSettingsTypesFragmentData_listSettings?>? get listSettings;
  static Serializer<GlistingSettingsTypesFragmentData> get serializer =>
      _$glistingSettingsTypesFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsTypesFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsTypesFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingSettingsTypesFragmentData.serializer,
        json,
      );
}

abstract class GlistingSettingsTypesFragmentData_listSettings
    implements
        Built<GlistingSettingsTypesFragmentData_listSettings,
            GlistingSettingsTypesFragmentData_listSettingsBuilder>,
        GlistingSettingsTypesFragment_listSettings,
        GlistingSettingsFragment {
  GlistingSettingsTypesFragmentData_listSettings._();

  factory GlistingSettingsTypesFragmentData_listSettings(
      [void Function(GlistingSettingsTypesFragmentData_listSettingsBuilder b)
          updates]) = _$GlistingSettingsTypesFragmentData_listSettings;

  static void _initializeBuilder(
          GlistingSettingsTypesFragmentData_listSettingsBuilder b) =>
      b..G__typename = 'listingSettings';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get id;
  @override
  int? get typeId;
  @override
  String? get itemName;
  @override
  String? get otherItemName;
  @override
  int? get maximum;
  @override
  int? get minimum;
  @override
  int? get startValue;
  @override
  int? get endValue;
  @override
  String? get isEnable;
  @override
  int? get makeType;
  @override
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemName?
      get dynamicItemName;
  static Serializer<GlistingSettingsTypesFragmentData_listSettings>
      get serializer =>
          _$glistingSettingsTypesFragmentDataListSettingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsTypesFragmentData_listSettings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsTypesFragmentData_listSettings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingSettingsTypesFragmentData_listSettings.serializer,
        json,
      );
}

abstract class GlistingSettingsTypesFragmentData_listSettings_dynamicItemName
    implements
        Built<GlistingSettingsTypesFragmentData_listSettings_dynamicItemName,
            GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder>,
        GlistingSettingsTypesFragment_listSettings_dynamicItemName,
        GlistingSettingsFragment_dynamicItemName {
  GlistingSettingsTypesFragmentData_listSettings_dynamicItemName._();

  factory GlistingSettingsTypesFragmentData_listSettings_dynamicItemName(
          [void Function(
                  GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder
                      b)
              updates]) =
      _$GlistingSettingsTypesFragmentData_listSettings_dynamicItemName;

  static void _initializeBuilder(
          GlistingSettingsTypesFragmentData_listSettings_dynamicItemNameBuilder
              b) =>
      b..G__typename = 'DynamicListTitleObjectType';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get ar;
  @override
  String? get en;
  @override
  String? get es;
  @override
  String? get fr;
  @override
  String? get it;
  @override
  String? get pt;
  static Serializer<
          GlistingSettingsTypesFragmentData_listSettings_dynamicItemName>
      get serializer =>
          _$glistingSettingsTypesFragmentDataListSettingsDynamicItemNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingSettingsTypesFragmentData_listSettings_dynamicItemName
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingSettingsTypesFragmentData_listSettings_dynamicItemName?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GlistingSettingsTypesFragmentData_listSettings_dynamicItemName
                .serializer,
            json,
          );
}
