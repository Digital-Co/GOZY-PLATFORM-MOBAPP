import 'package:flutter_test/flutter_test.dart';
import 'package:gozy/utils/duration_discount.dart';

void main() {
  group('DurationDiscountPresentation', () {
    test('ignores absent and invalid discounts', () {
      expect(
          DurationDiscountPresentation.validOffers(
              weeklyDiscount: 0, monthlyDiscount: -2),
          isEmpty);
      expect(
          DurationDiscountPresentation.validOffers(
              weeklyDiscount: 101, monthlyDiscount: double.nan),
          isEmpty);
    });

    test('without dates highlights greatest percentage and weekly on equality',
        () {
      expect(
          DurationDiscountPresentation.highlightedOffer(
                  weeklyDiscount: 10, monthlyDiscount: 20)
              ?.thresholdDays,
          28);
      expect(
          DurationDiscountPresentation.highlightedOffer(
                  weeklyDiscount: 20, monthlyDiscount: 20)
              ?.thresholdDays,
          7);
    });

    test('selects the next threshold for representative durations', () {
      const expected = {0: 7, 4: 7, 7: 28, 8: 28, 27: 28, 28: 28};
      for (final entry in expected.entries) {
        expect(
          DurationDiscountPresentation.highlightedOffer(
            weeklyDiscount: 20,
            monthlyDiscount: 10,
            days: entry.key,
          )?.thresholdDays,
          entry.value,
        );
      }
    });

    test('next offer stops after the last threshold', () {
      expect(
          DurationDiscountPresentation.nextOffer(
                  weeklyDiscount: 20, monthlyDiscount: 10, days: 7)
              ?.thresholdDays,
          28);
      expect(
          DurationDiscountPresentation.nextOffer(
              weeklyDiscount: 20, monthlyDiscount: 10, days: 28),
          isNull);
    });
  });
}
