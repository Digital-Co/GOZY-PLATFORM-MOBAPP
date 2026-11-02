import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:gozy/pref/app_preference.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/widgets/owner_reporting/orp_common.dart';
import 'package:gozy/widgets/owner_reporting/owner_dashboard_view.dart';
import 'package:gozy/widgets/owner_reporting/owner_earnings_view.dart';
import 'package:intl/date_symbol_data_local.dart';

class _FakeAppPreference implements AppPreference {
  @override
  String? get preferredCurrency => 'XAF';

  @override
  dynamic noSuchMethod(Invocation invocation) => null;
}

Widget _host(Widget child, {double textScale = 1.0, double width = 375}) => GetMaterialApp(
      locale: const Locale('fr'),
      home: MediaQuery(
        data: MediaQueryData(size: Size(width, 800), textScaler: TextScaler.linear(textScale)),
        child: Scaffold(body: child),
      ),
    );

OwnerDashboardData _dashboard({OwnerIndicator? cancellations}) => OwnerDashboardData(
      currency: 'XAF',
      period: const OwnerReportingPeriod(preset: '30d', previousDays: 30),
      netRevenue: const OwnerIndicator(value: 259200, previous: 0, trend: 'new', favorable: true),
      volume: const OwnerIndicator(value: 299000, previous: 0, trend: 'new', favorable: true),
      bookings: const OwnerIndicator(value: 5, previous: 5, change: 0, trend: 'flat'),
      rentedDays: const OwnerIndicator(value: 12, previous: 6, change: 100, trend: 'up', favorable: true),
      occupancy: const OwnerIndicator(value: 52.2, previous: 22.2, change: 135.1, trend: 'up', favorable: true),
      cancellations: cancellations ?? const OwnerIndicator(value: 1, previous: 3, change: -66.7, trend: 'down', favorable: true),
      revenue: const OwnerRevenue(netRevenue: 259200, upcoming: 0, pendingPayout: 116200, paid: 143000),
      series: const OwnerSeries(granularity: 'month', points: [
        OwnerSeriesPoint(key: '2026-09', start: '2026-09-01', netRevenue: 0, bookings: 0),
        OwnerSeriesPoint(key: '2026-10', start: '2026-10-01', netRevenue: 259200, bookings: 5),
      ]),
      vehicleCount: 2,
      vehicles: const [OwnerVehiclePerformance(listId: 1, title: null, isOnline: false, bookings: 3, rentedDays: 9, occupancy: 30, netRevenue: 100000)],
      vehicleOptions: const [OwnerVehicleOption(listId: 1, title: null, isOnline: false)],
      split: const OwnerReservationsSplit(completed: 3, upcoming: 2, cancelled: 1),
      recentActivity: const [OwnerRecentActivity(reservationId: 1, confirmationCode: 9001, title: 'Kia', guestName: 'Jean M.', checkIn: '2026-10-01', checkOut: '2026-10-03', state: 'completed', revenueStatus: 'paid', netRevenue: 80000)],
      operational: const OwnerOperational(onlineVehicles: 1, pausedVehicles: 1, totalDuration: 12, averageDuration: 3.5),
    );

Widget _dashboardView({OwnerDashboardData? data, bool fetching = false, String? error, VoidCallback? onRetry, double scale = 1.0}) => _host(
      OwnerDashboardView(
        filters: const OwnerReportingFilters(),
        data: data,
        vehicleOptions: data?.vehicleOptions ?? const [],
        isFetching: fetching,
        errorMessage: error,
        onFiltersChanged: (_) {},
        onRetry: onRetry ?? () {},
        onSeeEarnings: () {},
        onAddVehicle: () {},
      ),
      textScale: scale,
    );

void main() {
  setUpAll(() async {
    Get.put<AppPreference>(_FakeAppPreference());
    await initializeDateFormatting('fr');
    await initializeDateFormatting('en');
  });

  testWidgets('loading: skeletons, no data and no full screen loader', (tester) async {
    await tester.pumpWidget(_dashboardView(fetching: true));
    expect(find.byType(OrpSkeleton), findsWidgets);
    expect(find.byType(CircularProgressIndicator), findsNothing);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('error without data: the server message and a working retry button', (tester) async {
    var retried = 0;
    await tester.pumpWidget(_dashboardView(error: 'Période invalide.', onRetry: () => retried++));
    expect(find.text('Période invalide.'), findsOneWidget);
    await tester.tap(find.text('Réessayer'));
    expect(retried, 1);
  });

  testWidgets('error with data keeps the figures and shows a banner', (tester) async {
    await tester.pumpWidget(_dashboardView(data: _dashboard(), error: 'Erreur réseau'));
    expect(find.text('Erreur réseau'), findsOneWidget);
    expect(find.textContaining('259'), findsWidgets);
  });

  testWidgets('cards: amounts of the response, "Nouveau" without percentage, cancellations down in green', (tester) async {
    await tester.pumpWidget(_dashboardView(data: _dashboard()));
    expect(find.text('Nouveau'), findsWidgets);
    expect(find.textContaining('FCFA'), findsWidgets);
    expect(find.textContaining('66,7 %', skipOffstage: false), findsOneWidget);
    final percent = tester.widget<Text>(find.textContaining('66,7 %', skipOffstage: false));
    expect(percent.style!.color, OrpColors.good);
    expect(find.text('52,2 %', skipOffstage: false), findsWidgets);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('no vehicle: message and add button', (tester) async {
    var added = 0;
    await tester.pumpWidget(_host(OwnerDashboardView(
      filters: const OwnerReportingFilters(),
      data: _dashboard(),
      vehicleOptions: const [],
      isFetching: false,
      errorMessage: null,
      onFiltersChanged: (_) {},
      onRetry: () {},
      onSeeEarnings: () {},
      onAddVehicle: () => added++,
    )));
    expect(find.text('Ajouter un véhicule'), findsOneWidget);
    await tester.tap(find.text('Ajouter un véhicule'));
    expect(added, 1);
  });

  testWidgets('large text on a narrow screen: no overflow error', (tester) async {
    await tester.pumpWidget(_dashboardView(data: _dashboard(), scale: 1.3));
    await tester.drag(find.byType(ListView).first, const Offset(0, -3000));
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('earnings detail without payout says so and never invents one', (tester) async {
    const row = OwnerEarningsRow(
      confirmationCode: 9002,
      title: null,
      listId: 4,
      checkIn: '2026-03-01',
      checkOut: '2026-03-03',
      state: 'completed',
      revenueStatus: 'pendingPayout',
      grossAmount: 40000,
      netRevenue: 36000,
      commission: 4000,
      promoAdjustment: 0,
      components: OwnerComponents(rental: 40000, options: 0, delivery: 0, other: 0),
      payment: null,
    );
    await tester.pumpWidget(_host(const SingleChildScrollView(child: OrpEarningDetail(row: row, currency: 'XAF', onSeeTransactions: _noop))));
    expect(find.text('Aucun versement n\'est encore enregistré pour cette réservation.'), findsOneWidget);
    expect(find.text('Véhicule #4'), findsOneWidget);
    expect(find.text('Montant réellement envoyé'), findsNothing);
    expect(find.textContaining('Ajustement promotion'), findsNothing);
  });

  testWidgets('earnings detail with payout and promotion adjustment', (tester) async {
    const row = OwnerEarningsRow(
      confirmationCode: 9004,
      title: 'Kia',
      checkIn: '2026-03-01',
      checkOut: '2026-03-03',
      state: 'completed',
      revenueStatus: 'paid',
      grossAmount: 80000,
      netRevenue: 69000,
      commission: 16000,
      promoAdjustment: 5000,
      components: OwnerComponents(rental: 80000, options: 0, delivery: 0, other: 0),
      payment: OwnerPayment(method: 'PawaPay', reference: 'abc-123', providerStatus: 'COMPLETED', paidAmount: 69000),
    );
    await tester.pumpWidget(_host(const SingleChildScrollView(child: OrpEarningDetail(row: row, currency: 'XAF', onSeeTransactions: _noop))));
    expect(find.text('Ajustement promotion'), findsOneWidget);
    expect(find.text('Montant réellement envoyé'), findsOneWidget);
    expect(find.text('PawaPay'), findsOneWidget);
    expect(find.text('abc-123'), findsOneWidget);
  });

  testWidgets('earnings row card: reference, types and status badge', (tester) async {
    const row = OwnerEarningsRow(
      confirmationCode: 9001,
      title: 'Kia',
      checkIn: '2026-03-01',
      state: 'completed',
      revenueStatus: 'paid',
      grossAmount: 80000,
      netRevenue: 64000,
      components: OwnerComponents(rental: 70000, options: 10000, delivery: 0),
    );
    await tester.pumpWidget(_host(OrpEarningRowCard(row: row, currency: 'XAF', onTap: () {})));
    expect(find.textContaining('#9001'), findsOneWidget);
    expect(find.text('Location'), findsOneWidget);
    expect(find.text('Options'), findsOneWidget);
    expect(find.text('Livraison'), findsNothing);
    expect(find.text('Versé'), findsOneWidget);
  });

  testWidgets('search field: 100 characters at most and debounced', (tester) async {
    final received = <String>[];
    await tester.pumpWidget(_host(OrpSearchField(value: '', onChanged: received.add)));
    await tester.enterText(find.byType(TextField), 'a' * 150);
    expect((tester.widget<TextField>(find.byType(TextField)).controller!.text).length, 100);
    expect(received, isEmpty);
    await tester.pump(const Duration(milliseconds: 600));
    expect(received.length, 1);
    await tester.enterText(find.byType(TextField), "' OR 1=1 --");
    await tester.pump(const Duration(milliseconds: 600));
    expect(received.last, "' OR 1=1 --");
  });
}

void _noop() {}
