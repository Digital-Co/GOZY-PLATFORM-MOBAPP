// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gozy/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:gozy/graphql/__generated__/serializers.gql.dart' as _i2;

part 'get_billing_calculation.var.gql.g.dart';

abstract class GgetBillingCalculationVars
    implements
        Built<GgetBillingCalculationVars, GgetBillingCalculationVarsBuilder> {
  GgetBillingCalculationVars._();

  factory GgetBillingCalculationVars(
          [void Function(GgetBillingCalculationVarsBuilder b) updates]) =
      _$GgetBillingCalculationVars;

  int get listId;
  String get startDate;
  String get endDate;
  int get guests;
  String get convertCurrency;
  double? get startTime;
  double? get endTime;
  bool? get isDeliveryIncluded;
  String? get userId;
  String? get promoCode;
  BuiltList<_i1.GReservationOptionInput?>? get options;
  static Serializer<GgetBillingCalculationVars> get serializer =>
      _$ggetBillingCalculationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GgetBillingCalculationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetBillingCalculationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GgetBillingCalculationVars.serializer,
        json,
      );
}
