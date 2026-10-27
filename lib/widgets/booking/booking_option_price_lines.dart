import 'package:flutter/material.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/booking/getBillingCalculation/__generated__/get_billing_calculation.data.gql.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/utils/booking_options_i18n.dart';
import 'package:gozy/widgets/common/custom_text/custom_price_breakdown_text.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

/// Option lines of a billing preview and their subtotal, exactly as returned
/// by the API (amounts are never recomputed here). An older API answering
/// without `options` but with a `delivery` amount shows one flat delivery line
/// (that amount is already part of the total: nothing is counted twice).
List<Widget> buildBookingOptionPriceLines(
  GgetBillingCalculationData_getBillingCalculation_result receiptItem, {
  required double fontSize,
  double horizontalPadding = 0,
}) {
  final lines = billingOptionLines(
    lines: receiptItem.options
        ?.where((line) => line != null)
        .map((line) => BookingOptionLine.fromJson(
            Map<String, dynamic>.from(line!.toJson())))
        .toList(),
    delivery: receiptItem.delivery,
    currency: receiptItem.currency,
  );
  if (lines.isEmpty) return const [];
  final currency = receiptItem.currency ?? defaultCurrency;
  final hasSubtotal =
      !lines.first.isLegacy && (receiptItem.optionsTotal ?? 0) > 0;
  return [
    for (final line in lines)
      CustomPriceBreakdownText(
        label: bookingOptionLineTitle(line),
        amount: line.amount
            .currencyConverted(convertedCurrency: line.currency ?? currency),
        amountFontSize: fontSize,
      ).toPad(horizontal: horizontalPadding),
    if (hasSubtotal)
      CustomPriceBreakdownText(
        label: boText('bo_subtotal_options'),
        amount: receiptItem.optionsTotal!
            .currencyConverted(convertedCurrency: currency),
        amountFontSize: fontSize,
      ).toPad(horizontal: horizontalPadding),
  ];
}
