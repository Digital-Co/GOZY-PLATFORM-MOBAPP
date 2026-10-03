// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listing_data_fragment.data.gql.g.dart';

abstract class GlistingDataFragment {
  String get G__typename;
  String? get bookingNoticeTime;
  String? get checkInStart;
  String? get checkInEnd;
  String? get maxDaysNotice;
  int? get minDay;
  int? get maxDay;
  String? get maxDayItemLabel;
  String? get maxDayOtherItemLabel;
  String? get minDayItemLabel;
  String? get minDayOtherItemLabel;
  double? get basePrice;
  double? get delivery;
  String? get currency;
  double? get weeklyDiscount;
  double? get monthlyDiscount;
  int? get cancellationPolicy;
  double? get securityDeposit;
  GlistingDataFragment_cancellation? get cancellation;
  Map<String, dynamic> toJson();
}

abstract class GlistingDataFragment_cancellation
    implements GcancellationDataFragment {
  @override
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
  @override
  Map<String, dynamic> toJson();
}

abstract class GlistingDataFragmentData
    implements
        Built<GlistingDataFragmentData, GlistingDataFragmentDataBuilder>,
        GlistingDataFragment {
  GlistingDataFragmentData._();

  factory GlistingDataFragmentData(
          [void Function(GlistingDataFragmentDataBuilder b) updates]) =
      _$GlistingDataFragmentData;

  static void _initializeBuilder(GlistingDataFragmentDataBuilder b) =>
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
  GlistingDataFragmentData_cancellation? get cancellation;
  static Serializer<GlistingDataFragmentData> get serializer =>
      _$glistingDataFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingDataFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingDataFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingDataFragmentData.serializer,
        json,
      );
}

abstract class GlistingDataFragmentData_cancellation
    implements
        Built<GlistingDataFragmentData_cancellation,
            GlistingDataFragmentData_cancellationBuilder>,
        GlistingDataFragment_cancellation,
        GcancellationDataFragment {
  GlistingDataFragmentData_cancellation._();

  factory GlistingDataFragmentData_cancellation(
      [void Function(GlistingDataFragmentData_cancellationBuilder b)
          updates]) = _$GlistingDataFragmentData_cancellation;

  static void _initializeBuilder(
          GlistingDataFragmentData_cancellationBuilder b) =>
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
  static Serializer<GlistingDataFragmentData_cancellation> get serializer =>
      _$glistingDataFragmentDataCancellationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GlistingDataFragmentData_cancellation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlistingDataFragmentData_cancellation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GlistingDataFragmentData_cancellation.serializer,
        json,
      );
}

abstract class GcancellationDataFragment {
  String get G__typename;
  int? get id;
  String? get policyName;
  String? get policyContent;
  int? get priorDays;
  String? get subTitle;
  String? get subContent;
  String? get content1;
  String? get content2;
  String? get content3;
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

abstract class GcancellationDataFragmentData
    implements
        Built<GcancellationDataFragmentData,
            GcancellationDataFragmentDataBuilder>,
        GcancellationDataFragment {
  GcancellationDataFragmentData._();

  factory GcancellationDataFragmentData(
          [void Function(GcancellationDataFragmentDataBuilder b) updates]) =
      _$GcancellationDataFragmentData;

  static void _initializeBuilder(GcancellationDataFragmentDataBuilder b) =>
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
  static Serializer<GcancellationDataFragmentData> get serializer =>
      _$gcancellationDataFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcancellationDataFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcancellationDataFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcancellationDataFragmentData.serializer,
        json,
      );
}
