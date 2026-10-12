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
        'en': {'duration_discount_up_to': 'Up to -@percent%'},
      },
      locale: const Locale('en'),
      home: const Scaffold(
        body: DurationDiscountBadge(weeklyDiscount: 10, monthlyDiscount: 20),
      ),
    ));
    expect(find.text('Up to -20%'), findsOneWidget);
  });

  testWidgets('offers panel shows the week and month tiles', (tester) async {
    await tester.pumpWidget(GetMaterialApp(
      translationsKeys: const {
        'en': {
          'duration_discount_title': 'Long-stay\ndiscounts',
          'duration_discount_week': 'Week',
          'duration_discount_month': 'Month',
          'duration_discount_from_days_short': 'From @days days',
        },
      },
      locale: const Locale('en'),
      home: const Scaffold(
        body: DurationDiscountOffersPanel(
            weeklyDiscount: 10, monthlyDiscount: 20),
      ),
    ));
    expect(find.text('Long-stay'), findsOneWidget);
    expect(find.text('discounts'), findsOneWidget);
    expect(find.text('Week'), findsOneWidget);
    expect(find.text('−10 %'), findsOneWidget);
    expect(find.text('From 7 days'), findsOneWidget);
    expect(find.text('Month'), findsOneWidget);
    expect(find.text('−20 %'), findsOneWidget);
    expect(find.text('From 28 days'), findsOneWidget);
  });

  testWidgets('offers panel never overflows across widths and text scales',
      (tester) async {
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    for (final width in [240.0, 300.0, 360.0, 412.0, 800.0]) {
      for (final scale in [1.0, 1.5]) {
        tester.view.physicalSize = Size(width, 900);
        await tester.pumpWidget(GetMaterialApp(
          translationsKeys: const {
            'fr': {
              'duration_discount_title': 'Réductions\nlongue durée',
              'duration_discount_subtitle': 'Louez plus longtemps, payez moins !',
              'duration_discount_week': 'Semaine',
              'duration_discount_month': 'Mois',
              'duration_discount_from_days_short': 'Dès @days jours',
            },
          },
          locale: const Locale('fr'),
          home: MediaQuery(
            data: MediaQueryData(
                size: Size(width, 900), textScaler: TextScaler.linear(scale)),
            child: const Scaffold(
              body: Padding(
                padding: EdgeInsets.all(16),
                child: DurationDiscountOffersPanel(
                    weeklyDiscount: 10, monthlyDiscount: 20),
              ),
            ),
          ),
        ));
        expect(tester.takeException(), isNull, reason: '$width x$scale');
        expect(find.text('longue durée'), findsOneWidget);
      }
    }
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
