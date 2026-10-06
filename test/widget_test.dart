import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:gozy/widgets/duration_discount_widgets.dart';
import 'package:gozy/utils/duration_discount.dart';

void main() {
  testWidgets('duration discount badge is hidden without a valid offer',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: DurationDiscountBadge(weeklyDiscount: 0, monthlyDiscount: 101),
    ));
    expect(find.byType(Text), findsNothing);
  });

  testWidgets('duration discount badge renders the selected offer',
      (tester) async {
    await tester.pumpWidget(GetMaterialApp(
      translationsKeys: const {
        'en': {'duration_discount_from_days': '-@percent% from @days days'},
      },
      locale: const Locale('en'),
      home: const Scaffold(
        body: DurationDiscountBadge(weeklyDiscount: 10, monthlyDiscount: 20),
      ),
    ));
    expect(find.text('-20% from 28 days'), findsOneWidget);
  });

  testWidgets('extension panel stays bounded on small screens',
      (tester) async {
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    for (final width in [360.0, 412.0]) {
      tester.view.physicalSize = Size(width, 800);
      await tester.pumpWidget(GetMaterialApp(
        translationsKeys: const {
          'fr': {
            'duration_discount_unlock':
                'Ajoutez @days jours, profitez de −@percent %.',
            'duration_discount_add_days': 'Ajouter @days jours',
          },
        },
        locale: const Locale('fr'),
        home: MediaQuery(
          data: MediaQueryData(
              size: Size(width, 800),
              textScaler: const TextScaler.linear(1.5)),
          child: Scaffold(
            body: Column(
              children: [
                const Spacer(),
                DurationDiscountExtensionPanel(
                  offer: const DurationDiscountOffer(
                      thresholdDays: 7, percentage: 15),
                  currentDays: 4,
                  onAddDays: () {},
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ));
      expect(tester.takeException(), isNull);
      expect(find.text('Ajouter 3 jours'), findsOneWidget);
    }
  });
}
