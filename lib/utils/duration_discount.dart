class DurationDiscountOffer {
  const DurationDiscountOffer({
    required this.thresholdDays,
    required this.percentage,
  });

  final int thresholdDays;
  final double percentage;

  int daysToReach(int days) => thresholdDays > days ? thresholdDays - days : 0;
}

class DurationDiscountPresentation {
  const DurationDiscountPresentation._();

  static List<DurationDiscountOffer> validOffers({
    required num? weeklyDiscount,
    required num? monthlyDiscount,
  }) {
    final offers = <DurationDiscountOffer>[];
    final weekly = _validPercentage(weeklyDiscount);
    final monthly = _validPercentage(monthlyDiscount);
    if (weekly != null) {
      offers.add(DurationDiscountOffer(thresholdDays: 7, percentage: weekly));
    }
    if (monthly != null) {
      offers.add(DurationDiscountOffer(thresholdDays: 28, percentage: monthly));
    }
    return offers;
  }

  static DurationDiscountOffer? highlightedOffer({
    required num? weeklyDiscount,
    required num? monthlyDiscount,
    int? days,
  }) {
    final offers = validOffers(
      weeklyDiscount: weeklyDiscount,
      monthlyDiscount: monthlyDiscount,
    );
    if (offers.isEmpty) return null;
    if (days == null) {
      offers.sort((a, b) {
        final byPercentage = b.percentage.compareTo(a.percentage);
        return byPercentage != 0
            ? byPercentage
            : a.thresholdDays.compareTo(b.thresholdDays);
      });
      return offers.first;
    }
    for (final offer in offers) {
      if (days < offer.thresholdDays) return offer;
    }
    return offers.last;
  }

  static DurationDiscountOffer? nextOffer({
    required num? weeklyDiscount,
    required num? monthlyDiscount,
    required int days,
  }) {
    for (final offer in validOffers(
      weeklyDiscount: weeklyDiscount,
      monthlyDiscount: monthlyDiscount,
    )) {
      if (days < offer.thresholdDays) return offer;
    }
    return null;
  }

  static double? _validPercentage(num? value) {
    if (value == null) return null;
    final percentage = value.toDouble();
    if (!percentage.isFinite || percentage <= 0 || percentage > 100)
      return null;
    return percentage;
  }
}
