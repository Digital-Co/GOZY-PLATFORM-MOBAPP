// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i1;

part 'get_billing_calculation.data.gql.g.dart';

abstract class GgetBillingCalculationData
    implements
        Built<GgetBillingCalculationData, GgetBillingCalculationDataBuilder> {
  GgetBillingCalculationData._();

  factory GgetBillingCalculationData(
          [void Function(GgetBillingCalculationDataBuilder b) updates]) =
      _$GgetBillingCalculationData;

  static void _initializeBuilder(GgetBillingCalculationDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetBillingCalculationData_getBillingCalculation? get getBillingCalculation;
  static Serializer<GgetBillingCalculationData> get serializer =>
      _$ggetBillingCalculationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetBillingCalculationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetBillingCalculationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetBillingCalculationData.serializer,
        json,
      );
}

abstract class GgetBillingCalculationData_getBillingCalculation
    implements
        Built<GgetBillingCalculationData_getBillingCalculation,
            GgetBillingCalculationData_getBillingCalculationBuilder> {
  GgetBillingCalculationData_getBillingCalculation._();

  factory GgetBillingCalculationData_getBillingCalculation(
      [void Function(GgetBillingCalculationData_getBillingCalculationBuilder b)
          updates]) = _$GgetBillingCalculationData_getBillingCalculation;

  static void _initializeBuilder(
          GgetBillingCalculationData_getBillingCalculationBuilder b) =>
      b..G__typename = 'AllBillingType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get status;
  String? get errorMessage;
  GgetBillingCalculationData_getBillingCalculation_result? get result;
  static Serializer<GgetBillingCalculationData_getBillingCalculation>
      get serializer =>
          _$ggetBillingCalculationDataGetBillingCalculationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetBillingCalculationData_getBillingCalculation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetBillingCalculationData_getBillingCalculation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetBillingCalculationData_getBillingCalculation.serializer,
        json,
      );
}

abstract class GgetBillingCalculationData_getBillingCalculation_result
    implements
        Built<GgetBillingCalculationData_getBillingCalculation_result,
            GgetBillingCalculationData_getBillingCalculation_resultBuilder> {
  GgetBillingCalculationData_getBillingCalculation_result._();

  factory GgetBillingCalculationData_getBillingCalculation_result(
      [void Function(
              GgetBillingCalculationData_getBillingCalculation_resultBuilder b)
          updates]) = _$GgetBillingCalculationData_getBillingCalculation_result;

  static void _initializeBuilder(
          GgetBillingCalculationData_getBillingCalculation_resultBuilder b) =>
      b..G__typename = 'BillingType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get checkIn;
  String? get checkOut;
  double? get startTime;
  double? get endTime;
  int? get days;
  double? get basePrice;
  double? get delivery;
  int? get guests;
  BuiltList<
          GgetBillingCalculationData_getBillingCalculation_result_specialPricing?>?
      get specialPricing;
  String? get currency;
  double? get guestServiceFeePercentage;
  double? get hostServiceFeePercentage;
  double? get weeklyDiscountPercentage;
  double? get monthlyDiscountPercentage;
  double? get guestServiceFee;
  double? get hostServiceFee;
  double? get promoDiscount;
  int? get promoId;
  String? get promoCodeDescription;
  String? get discountLabel;
  double? get discount;
  double? get subtotal;
  double? get total;
  String? get availableStatus;
  double? get averagePrice;
  double? get priceForDays;
  bool? get isSpecialPriceAssigned;
  double? get securityDeposit;
  static Serializer<GgetBillingCalculationData_getBillingCalculation_result>
      get serializer =>
          _$ggetBillingCalculationDataGetBillingCalculationResultSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetBillingCalculationData_getBillingCalculation_result.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetBillingCalculationData_getBillingCalculation_result? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetBillingCalculationData_getBillingCalculation_result.serializer,
        json,
      );
}

abstract class GgetBillingCalculationData_getBillingCalculation_result_specialPricing
    implements
        Built<
            GgetBillingCalculationData_getBillingCalculation_result_specialPricing,
            GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder> {
  GgetBillingCalculationData_getBillingCalculation_result_specialPricing._();

  factory GgetBillingCalculationData_getBillingCalculation_result_specialPricing(
          [void Function(
                  GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder
                      b)
              updates]) =
      _$GgetBillingCalculationData_getBillingCalculation_result_specialPricing;

  static void _initializeBuilder(
          GgetBillingCalculationData_getBillingCalculation_result_specialPricingBuilder
              b) =>
      b..G__typename = 'SpecialPricingType';

  String? get blockedDates;
  double? get isSpecialPrice;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<
          GgetBillingCalculationData_getBillingCalculation_result_specialPricing>
      get serializer =>
          _$ggetBillingCalculationDataGetBillingCalculationResultSpecialPricingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetBillingCalculationData_getBillingCalculation_result_specialPricing
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetBillingCalculationData_getBillingCalculation_result_specialPricing?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetBillingCalculationData_getBillingCalculation_result_specialPricing
                .serializer,
            json,
          );
}
