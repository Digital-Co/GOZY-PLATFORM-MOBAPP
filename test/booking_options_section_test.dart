import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/utils/booking_options.dart';
import 'package:gozy/widgets/booking/booking_options_section.dart';

BookingOption _opt(int id,
        {String? code, bool fixed = false, String? label, String? description, double price = 10000, String mode = 'flat'}) =>
    BookingOption(
      id: id,
      slot: code ?? 'custom_$id',
      code: code ?? 'custom',
      isFixed: fixed,
      label: label,
      description: description,
      price: price,
      billingMode: mode,
      isActive: true,
    );

void main() {
  setUpAll(() {
    // The shared controller of the app needs the preferences to be registered.
    Get.put<AppPreference>(_FakeAppPreference());
  });

  testWidgets('shows compact rows, none ticked, description only in the tooltip',
      (tester) async {
    final selected = <int>{};
    final location = TextEditingController();
    final options = [
      _opt(1, code: 'delivery', fixed: true),
      _opt(2,
          label: 'Baby seat',
          description: 'ISOFIX baby seat for children up to 4 years',
          price: 5000,
          mode: 'per_day'),
    ];
    await tester.pumpWidget(GetMaterialApp(
      locale: const Locale('en'),
      home: Scaffold(
        body: StatefulBuilder(
          builder: (context, setState) => SingleChildScrollView(
            child: BookingOptionsSection(
              options: options,
              isSelected: selected.contains,
              onToggle: (option, value) => setState(() {
                value ? selected.add(option.id) : selected.remove(option.id);
              }),
              locationController: location,
              onLocationChanged: (_) => setState(() {}),
            ),
          ),
        ),
      ),
    ));

    expect(find.text('Options and services'), findsOneWidget);
    expect(find.text('Vehicle delivery'), findsOneWidget);
    expect(find.text('Baby seat'), findsOneWidget);
    // Nothing ticked: no location field yet.
    expect(find.byType(TextField), findsNothing);
    // The description is not displayed inline.
    expect(find.text('ISOFIX baby seat for children up to 4 years'), findsNothing);
    expect(find.byIcon(Icons.info_outline), findsWidgets);

    // Ticking the delivery shows the required location field.
    await tester.tap(find.text('Vehicle delivery'));
    await tester.pump();
    expect(selected, {1});
    expect(find.byType(TextField), findsOneWidget);
    expect(find.textContaining('Desired delivery location', findRichText: true),
        findsOneWidget);

    // Typing 4 characters shows the error, 5 removes it.
    await tester.enterText(find.byType(TextField), 'abcd');
    await tester.pump();
    expect(find.text('Enter the delivery location (5 to 255 characters).'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'abcde');
    await tester.pump();
    expect(find.text('Enter the delivery location (5 to 255 characters).'), findsNothing);

    // Unticking hides the field again.
    await tester.tap(find.text('Vehicle delivery'));
    await tester.pump();
    expect(selected, isEmpty);
    expect(find.byType(TextField), findsNothing);
  });

  testWidgets('hides itself when no option is bookable', (tester) async {
    await tester.pumpWidget(GetMaterialApp(
      home: Scaffold(
        body: BookingOptionsSection(
          options: [
            BookingOption(id: 1, code: 'custom', label: 'Off', price: 10, isActive: false),
          ],
          isSelected: (_) => false,
          onToggle: (_, __) {},
          locationController: TextEditingController(),
          onLocationChanged: (_) {},
        ),
      ),
    ));
    expect(find.text('Options and services'), findsNothing);
  });
}

/// Stands for the preferences (secure storage is not available in tests).
class _FakeAppPreference implements AppPreference {
  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}
