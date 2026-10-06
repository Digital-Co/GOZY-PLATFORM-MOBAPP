import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:gozy/widgets/duration_discount_widgets.dart';

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
}
