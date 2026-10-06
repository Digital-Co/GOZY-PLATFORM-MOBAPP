import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/utils/duration_discount.dart';

String _percentageLabel(double value) => value == value.roundToDouble()
    ? value.toInt().toString()
    : value.toStringAsFixed(1);

class DurationDiscountBadge extends StatelessWidget {
  const DurationDiscountBadge({
    super.key,
    required this.weeklyDiscount,
    required this.monthlyDiscount,
    this.days,
  });

  final num? weeklyDiscount;
  final num? monthlyDiscount;
  final int? days;

  @override
  Widget build(BuildContext context) {
    final offer = DurationDiscountPresentation.highlightedOffer(
      weeklyDiscount: weeklyDiscount,
      monthlyDiscount: monthlyDiscount,
      days: days,
    );
    if (offer == null) return const SizedBox.shrink();
    return Container(
      constraints: const BoxConstraints(maxWidth: 190),
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xff16794f),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        duration_discount_from_days.trParams({
          'percent': _percentageLabel(offer.percentage),
          'days': offer.thresholdDays.toString(),
        }),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textScaler: MediaQuery.textScalerOf(context).clamp(maxScaleFactor: 1.4),
        style: const TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class DurationDiscountOffersPanel extends StatelessWidget {
  const DurationDiscountOffersPanel({
    super.key,
    required this.weeklyDiscount,
    required this.monthlyDiscount,
  });

  final num? weeklyDiscount;
  final num? monthlyDiscount;

  @override
  Widget build(BuildContext context) {
    final offers = DurationDiscountPresentation.validOffers(
      weeklyDiscount: weeklyDiscount,
      monthlyDiscount: monthlyDiscount,
    );
    if (offers.isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffeaf7f0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(duration_discount_offers.tr,
              style: const TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xff125e40))),
          const SizedBox(height: 6),
          for (final offer in offers)
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(duration_discount_from_days.trParams({
                'percent': _percentageLabel(offer.percentage),
                'days': offer.thresholdDays.toString(),
              })),
            ),
        ],
      ),
    );
  }
}

class DurationDiscountSavingsPanel extends StatelessWidget {
  const DurationDiscountSavingsPanel(
      {super.key, required this.formattedSavings});

  final String formattedSavings;

  @override
  Widget build(BuildContext context) {
    if (formattedSavings.trim().isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffeaf7f0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        duration_discount_you_save.trParams({'amount': formattedSavings}),
        style: const TextStyle(
            color: Color(0xff125e40), fontWeight: FontWeight.w700),
      ),
    );
  }
}

class DurationDiscountExtensionPanel extends StatelessWidget {
  const DurationDiscountExtensionPanel({
    super.key,
    required this.offer,
    required this.currentDays,
    required this.onAddDays,
  });

  final DurationDiscountOffer offer;
  final int currentDays;
  final VoidCallback onAddDays;

  @override
  Widget build(BuildContext context) {
    final daysToAdd = offer.daysToReach(currentDays);
    if (daysToAdd <= 0) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffeaf7f0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(duration_discount_unlock.trParams({
              'days': daysToAdd.toString(),
              'percent': _percentageLabel(offer.percentage),
            })),
          ),
          const SizedBox(width: 8),
          TextButton(
            onPressed: onAddDays,
            child: Text(duration_discount_add_days
                .trParams({'days': daysToAdd.toString()})),
          ),
        ],
      ),
    );
  }
}
