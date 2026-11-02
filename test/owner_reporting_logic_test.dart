import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('en');
    await initializeDateFormatting('fr');
  });

  group('indicator and trend', () {
    test('up favorable: green arrow up with a percentage', () {
      final i = OwnerIndicator.fromJson({'value': 10, 'previous': 5, 'change': 100.0, 'trend': 'up', 'favorable': true});
      final view = trendView(i);
      expect(view.arrow, OwnerTrendArrow.up);
      expect(view.tone, OwnerTrendTone.good);
      expect(view.label, OwnerTrendLabel.percent);
    });

    test('cancellations going down are favorable: arrow down, green', () {
      final i = OwnerIndicator.fromJson({'value': 1, 'previous': 3, 'change': -66.7, 'trend': 'down', 'favorable': true});
      final view = trendView(i);
      expect(view.arrow, OwnerTrendArrow.down);
      expect(view.tone, OwnerTrendTone.good);
    });

    test('cancellations going up are unfavorable: red', () {
      final i = OwnerIndicator.fromJson({'value': 3, 'previous': 1, 'change': 200, 'trend': 'up', 'favorable': false});
      expect(trendView(i).tone, OwnerTrendTone.bad);
    });

    test('new shows the word "new" and never a percentage', () {
      final i = OwnerIndicator.fromJson({'value': 4, 'previous': 0, 'change': null, 'trend': 'new', 'favorable': true});
      expect(trendView(i).label, OwnerTrendLabel.newItem);
    });

    test('none shows a dash, neutral', () {
      final i = OwnerIndicator.fromJson({'value': 0, 'previous': 0, 'change': null, 'trend': 'none', 'favorable': null});
      final view = trendView(i);
      expect(view.label, OwnerTrendLabel.dash);
      expect(view.tone, OwnerTrendTone.neutral);
      expect(view.arrow, OwnerTrendArrow.none);
    });

    test('flat is neutral, null change gives a dash, null indicator is tolerated', () {
      final flat = OwnerIndicator.fromJson({'trend': 'flat', 'change': 0.0, 'favorable': null});
      expect(trendView(flat).arrow, OwnerTrendArrow.flat);
      expect(trendView(flat).tone, OwnerTrendTone.neutral);
      final noChange = OwnerIndicator.fromJson({'trend': 'up', 'favorable': true});
      expect(trendView(noChange).label, OwnerTrendLabel.dash);
      expect(trendView(null).label, OwnerTrendLabel.dash);
      expect(OwnerIndicator.fromJson(null), isNull);
    });

    test('percent formatting uses the API value, with sign', () {
      expect(formatChangePercent(12.5, 'en'), '+12.5 %');
      expect(formatChangePercent(-66.7, 'en'), '-66.7 %');
      expect(formatPercent(52.2, 'en'), '52.2 %');
    });
  });

  group('comparison text', () {
    OwnerReportingPeriod p(String preset, [int? prev]) =>
        OwnerReportingPeriod(preset: preset, previousDays: prev);
    test('chosen from preset and previousDays', () {
      expect(comparisonTextKey(p('today', 1)), 'orp_vs_yesterday');
      expect(comparisonTextKey(p('7d', 7)), 'orp_vs_prev_7');
      expect(comparisonTextKey(p('30d', 30)), 'orp_vs_prev_30');
      expect(comparisonTextKey(p('year', 365)), 'orp_vs_last_year');
      expect(comparisonTextKey(p('custom', 12)), 'orp_vs_prev_n');
      expect(comparisonTextKey(p('custom')), 'orp_vs_previous');
      expect(comparisonTextKey(null), 'orp_vs_previous');
    });
  });

  group('largest remainder', () {
    test('sums to exactly 100', () {
      for (final values in <List<double?>>[
        [1, 1, 1],
        [540000, 40000, 45000],
        [33.3, 33.3, 33.4],
        [1, 2, 3, 4, 5, 6, 7],
        [0.1, 0.2],
      ]) {
        expect(largestRemainderPercentages(values).fold<int>(0, (a, b) => a + b), 100, reason: '$values');
      }
    });
    test('1/1/1 gives 34/33/33 (first index wins ties)', () {
      expect(largestRemainderPercentages([1, 1, 1]), [34, 33, 33]);
    });
    test('zero, null and negative values stay at 0; nothing positive gives zeros', () {
      expect(largestRemainderPercentages([10, 0, null, -5]), [100, 0, 0, 0]);
      expect(largestRemainderPercentages([0, null]), [0, 0]);
      expect(largestRemainderPercentages([]), isEmpty);
    });
  });

  group('filters', () {
    test('default is 30 days, no dates sent', () {
      const f = OwnerReportingFilters();
      expect(f.preset, '30d');
      expect(f.startArgument, isNull);
      expect(f.canRequest, isTrue);
    });
    test('dates are sent only with the custom preset', () {
      final f = OwnerReportingFilters(preset: '7d', startDate: DateTime(2026, 1, 2), endDate: DateTime(2026, 1, 9));
      expect(f.startArgument, isNull);
      expect(f.endArgument, isNull);
      final c = f.copyWith(preset: 'custom');
      expect(c.startArgument, '2026-01-02');
      expect(c.endArgument, '2026-01-09');
    });
    test('custom without both dates cannot be requested', () {
      expect(const OwnerReportingFilters(preset: 'custom').canRequest, isFalse);
      expect(OwnerReportingFilters(preset: 'custom', startDate: DateTime(2026, 1, 2)).canRequest, isFalse);
    });
    test('end before start is flagged locally', () {
      final f = OwnerReportingFilters(preset: 'custom', startDate: DateTime(2026, 3, 2), endDate: DateTime(2026, 3, 1));
      expect(f.hasEndBeforeStart, isTrue);
    });
    test('search is trimmed, empty becomes null, cut at 100 characters, kept as text', () {
      expect(const OwnerReportingFilters(search: '   ').searchArgument, isNull);
      expect(OwnerReportingFilters(search: 'a' * 150).searchArgument!.length, 100);
      expect(const OwnerReportingFilters(search: "' OR 1=1 --").searchArgument, "' OR 1=1 --");
      expect(const OwnerReportingFilters(search: '%').searchArgument, '%');
    });
    test('listId can be cleared and page returns to 1', () {
      const f = OwnerReportingFilters(listId: 5, page: 3);
      expect(f.copyWith(clearListId: true).listId, isNull);
      expect(f.copyWith(search: 'x').firstPage().page, 1);
    });
  });

  group('dates and labels', () {
    test('API day parsed with no time zone, invalid refused', () {
      final d = parseApiDay('2026-11-02')!;
      expect([d.year, d.month, d.day, d.hour], [2026, 11, 2, 0]);
      expect(parseApiDay('2026-02-30'), isNull);
      expect(parseApiDay(null), isNull);
      expect(parseApiDay('abc'), isNull);
      expect(formatApiDay(null, 'en'), '');
    });
    test('series labels', () {
      const month = OwnerSeriesPoint(key: '2026-08', start: '2026-08-01');
      expect(seriesPointLabel(month, 'month', 'en'), 'Aug');
      const year = OwnerSeriesPoint(key: '2026', start: '2026-01-01');
      expect(seriesPointLabel(year, 'year', 'en'), '2026');
    });
    test('row components and status keys', () {
      expect(rowComponentKinds(const OwnerComponents(rental: 10, options: 0, delivery: 5)), ['rental', 'delivery']);
      expect(rowComponentKinds(null), isEmpty);
      expect(rowComponentKinds(const OwnerComponents(rental: 0)), isEmpty);
      expect(revenueStatusKey('paid'), 'orp_status_paid');
      expect(revenueStatusKey('weird'), isNull);
      expect(reservationStateKey('cancelled'), 'orp_state_cancelled');
      expect(vehicleTitleOrNull('  '), isNull);
    });
  });

  group('models tolerate nulls and errors', () {
    test('status 400: only the message, no data', () {
      final o = OwnerDashboardOutcome.fromJson({'status': 400, 'errorMessage': 'Période invalide.', 'indicators': null});
      expect(o.isOk, isFalse);
      expect(o.errorMessage, 'Période invalide.');
      expect(o.data, isNull);
      final e = OwnerEarningsOutcome.fromJson({'status': 400, 'errorMessage': 'x'});
      expect(e.isOk, isFalse);
    });
    test('status 500 and null json', () {
      expect(OwnerDashboardOutcome.fromJson({'status': 500, 'errorMessage': 'login'}).isOk, isFalse);
      expect(OwnerDashboardOutcome.fromJson(null).status, isNull);
      expect(OwnerEarningsOutcome.fromJson(null).isOk, isFalse);
    });
    test('status 200 with every field null does not crash', () {
      final o = OwnerDashboardOutcome.fromJson({'status': 200});
      expect(o.isOk, isTrue);
      expect(o.data!.vehicles, isEmpty);
      expect(o.data!.netRevenue, isNull);
      final e = OwnerEarningsOutcome.fromJson({'status': 200, 'rows': null, 'summary': null});
      expect(e.isOk, isTrue);
      expect(e.data!.rows, isEmpty);
    });
    test('earnings row without payment keeps payment null; amounts untouched', () {
      final e = OwnerEarningsOutcome.fromJson({
        'status': 200,
        'convertCurrency': 'XAF',
        'rows': [
          {
            'reservationId': 1,
            'confirmationCode': 9004,
            'title': null,
            'grossAmount': 80000,
            'commission': 16000,
            'promoAdjustment': 5000,
            'netRevenue': 69000,
            'payment': null,
            'components': {'rental': 80000, 'options': 0, 'delivery': 0, 'other': 0},
          }
        ],
      });
      final r = e.data!.rows.single;
      expect(r.payment, isNull);
      expect(r.title, isNull);
      expect([r.grossAmount, r.commission, r.promoAdjustment, r.netRevenue], [80000, 16000, 5000, 69000]);
      expect(e.data!.currency, 'XAF');
    });
    test('dashboard fields are read as sent', () {
      final o = OwnerDashboardOutcome.fromJson({
        'status': 200,
        'convertCurrency': 'XAF',
        'indicators': {
          'netRevenue': {'value': 259200.0, 'previous': 0.0, 'change': null, 'trend': 'new', 'favorable': true},
        },
        'revenue': {'netRevenue': 259200, 'upcoming': 0, 'pendingPayout': 116200, 'paid': 143000, 'paidAmount': 143000},
        'vehicleOptions': [
          {'listId': 7, 'title': null, 'isOnline': false}
        ],
      });
      expect(o.data!.netRevenue!.value, 259200);
      expect(o.data!.revenue!.pendingPayout, 116200);
      expect(o.data!.vehicleOptions.single.title, isNull);
    });
  });
}
