import 'package:flutter/material.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/owner_reporting/orp_charts.dart';
import 'package:gozy/widgets/owner_reporting/orp_common.dart';
import 'package:gozy/widgets/owner_reporting/orp_filters.dart';
import 'package:gozy/widgets/owner_reporting/orp_revenue.dart';
import 'package:intl/intl.dart' show NumberFormat;

String orpCount(num? value) {
  if (value == null) return '—';
  try {
    return NumberFormat.decimalPattern(orpLocale()).format(value);
  } catch (_) {
    return NumberFormat.decimalPattern('en').format(value);
  }
}

String orpDays(num? value) {
  if (value == null) return '—';
  final key = value == 1 ? 'orp_days_one' : 'orp_days_other';
  return orpText(key, {'count': orpCount(value)});
}

/// Dashboard content, independent of GetX so it can be tested with plain data.
class OwnerDashboardView extends StatelessWidget {
  const OwnerDashboardView({
    super.key,
    required this.filters,
    required this.data,
    required this.vehicleOptions,
    required this.isFetching,
    required this.errorMessage,
    required this.onFiltersChanged,
    required this.onRetry,
    required this.onSeeEarnings,
    required this.onAddVehicle,
  });

  final OwnerReportingFilters filters;
  final OwnerDashboardData? data;
  final List<OwnerVehicleOption> vehicleOptions;
  final bool isFetching;
  final String? errorMessage;
  final ValueChanged<OwnerReportingFilters> onFiltersChanged;
  final VoidCallback onRetry;
  final VoidCallback onSeeEarnings;
  final VoidCallback onAddVehicle;

  bool get _noVehicle => data != null && vehicleOptions.isEmpty && filters.listId == null;

  bool get _noActivity {
    final d = data;
    if (d == null) return false;
    final split = d.split;
    final total = (split?.completed ?? 0) + (split?.upcoming ?? 0) + (split?.cancelled ?? 0);
    return total == 0 && d.recentActivity.isEmpty && (d.netRevenue?.value ?? 0) == 0 && (d.volume?.value ?? 0) == 0;
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      Text(orpText('orp_odb_subtitle'), style: orpStyle(13.5, AppFont.regular, color: OrpColors.muted)),
      const SizedBox(height: 12),
      OrpFilterBar(filters: filters, vehicles: vehicleOptions, onChanged: onFiltersChanged),
      const SizedBox(height: 6),
      if (isFetching && data != null) const LinearProgressIndicator(minHeight: 3),
      if (filters.isCustom && !filters.canRequest)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(orpText('orp_choose_dates'), textAlign: TextAlign.center, style: orpStyle(14, AppFont.regular, color: OrpColors.muted)),
        )
      else if (data == null && errorMessage != null)
        OrpErrorView(message: errorMessage!, onRetry: onRetry)
      else if (data == null)
        const _DashboardSkeleton()
      else ...[
        if (errorMessage != null) _ErrorBanner(message: errorMessage!, onRetry: onRetry),
        if (_noVehicle)
          _MessageCard(
            title: orpText('orp_empty_no_vehicle_title'),
            text: orpText('orp_empty_no_vehicle_text'),
            actionLabel: orpText('orp_add_vehicle'),
            onAction: onAddVehicle,
          )
        else if (_noActivity)
          _MessageCard(
            title: orpText(filters.listId == null ? 'orp_odb_empty_title' : 'orp_odb_no_results_title'),
            text: orpText(filters.listId == null ? 'orp_odb_empty_text' : 'orp_odb_no_results_text'),
          )
        else
          ..._content(context, data!),
      ],
    ];
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: children,
    );
  }

  List<Widget> _content(BuildContext context, OwnerDashboardData d) {
    final currency = d.currency;
    final comparison = orpText(comparisonTextKey(d.period), {'days': '${d.period?.previousDays ?? ''}'});
    return [
      _IndicatorCard(label: orpText('orp_kpi_net_revenue'), value: orpMoney(d.netRevenue?.value, currency), indicator: d.netRevenue, comparison: comparison),
      _IndicatorCard(label: orpText('orp_kpi_volume'), value: orpMoney(d.volume?.value, currency), indicator: d.volume, comparison: comparison),
      _IndicatorCard(label: orpText('orp_odb_kpi_bookings'), value: orpCount(d.bookings?.value), indicator: d.bookings, comparison: comparison),
      _IndicatorCard(label: orpText('orp_odb_kpi_rented_days'), value: orpDays(d.rentedDays?.value), indicator: d.rentedDays, comparison: comparison),
      _IndicatorCard(
        label: orpText('orp_odb_kpi_occupancy'),
        value: d.occupancy?.value == null ? '—' : formatPercent(d.occupancy!.value!, orpLocale()),
        indicator: d.occupancy,
        comparison: comparison,
      ),
      _IndicatorCard(label: orpText('orp_odb_kpi_cancellations'), value: orpCount(d.cancellations?.value), indicator: d.cancellations, comparison: comparison),
      _RevenueSection(data: d, onSeeEarnings: onSeeEarnings),
      OrpSectionTitle(orpText('orp_evolution_title')),
      _GranularityBar(
        value: d.series?.granularity ?? filters.granularity,
        onChanged: (g) => onFiltersChanged(filters.copyWith(granularity: g)),
      ),
      const SizedBox(height: 8),
      OrpCard(
        child: d.series == null
            ? Text(orpText('orp_chart_no_data'), style: orpStyle(13, AppFont.regular, color: OrpColors.muted))
            : OrpLineChart(series: d.series!, currency: currency),
      ),
      _VehiclesSection(data: d),
      if (d.split != null) _SplitSection(split: d.split!),
      _ActivitySection(data: d),
      if (d.operational != null) _OperationalSection(data: d),
    ];
  }
}

class _MessageCard extends StatelessWidget {
  const _MessageCard({required this.title, required this.text, this.actionLabel, this.onAction});

  final String title;
  final String text;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OrpCard(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.info_outline, size: 36, color: OrpColors.muted),
            const SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: orpStyle(16, AppFont.bold)),
            const SizedBox(height: 6),
            Text(text, textAlign: TextAlign.center, style: orpStyle(13.5, AppFont.regular, color: OrpColors.muted)),
            if (actionLabel != null) ...[
              const SizedBox(height: 14),
              OrpButton(label: actionLabel!, filled: true, onTap: onAction),
            ],
          ],
        ),
      ),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  const _ErrorBanner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: OrpCard(
        child: Row(
          children: [
            Icon(Icons.error_outline, color: OrpColors.bad),
            const SizedBox(width: 10),
            Expanded(child: Text(message, style: orpStyle(13, AppFont.regular))),
            const SizedBox(width: 8),
            OrpButton(label: orpText('orp_retry'), onTap: onRetry),
          ],
        ),
      ),
    );
  }
}

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: orpText('orp_odb_loading'),
      child: ExcludeSemantics(
        child: Column(
          children: [
            for (var i = 0; i < 4; i++)
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: OrpCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OrpSkeleton(height: 12, width: 110),
                      SizedBox(height: 10),
                      OrpSkeleton(height: 24, width: 170),
                      SizedBox(height: 10),
                      OrpSkeleton(height: 12, width: 140),
                    ],
                  ),
                ),
              ),
            const OrpSkeleton(height: 160, radius: 14),
          ],
        ),
      ),
    );
  }
}

class _IndicatorCard extends StatelessWidget {
  const _IndicatorCard({required this.label, required this.value, required this.indicator, required this.comparison});

  final String label;
  final String value;
  final OwnerIndicator? indicator;
  final String comparison;

  String get _trendWords {
    final view = trendView(indicator);
    switch (view.label) {
      case OwnerTrendLabel.percent:
        return '${formatChangePercent(indicator?.change ?? 0, orpLocale())} $comparison';
      case OwnerTrendLabel.newItem:
        return orpText('orp_new');
      case OwnerTrendLabel.dash:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Semantics(
        container: true,
        label: '$label : $value. $_trendWords',
        child: ExcludeSemantics(
          child: OrpCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: orpStyle(13, AppFont.medium, color: OrpColors.muted)),
                const SizedBox(height: 4),
                OrpMoneyText(value, style: orpStyle(24, AppFont.bold)),
                const SizedBox(height: 6),
                OrpTrend(indicator: indicator, comparison: comparison),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RevenueSection extends StatelessWidget {
  const _RevenueSection({required this.data, required this.onSeeEarnings});

  final OwnerDashboardData data;
  final VoidCallback onSeeEarnings;

  @override
  Widget build(BuildContext context) {
    final revenue = data.revenue;
    final currency = data.currency;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpSectionTitle(orpText('orp_odb_revenue_title')),
        OrpCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(orpText('orp_odb_revenue_caption'), style: orpStyle(13, AppFont.medium, color: OrpColors.muted)),
              const SizedBox(height: 4),
              OrpMoneyText(orpMoney(revenue?.netRevenue, currency), style: orpStyle(26, AppFont.bold)),
              const SizedBox(height: 12),
              OrpRevenueTiles(revenue: revenue, currency: currency),
              const SizedBox(height: 8),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: OrpButton(label: orpText('orp_odb_see_payouts'), icon: Icons.arrow_forward, onTap: onSeeEarnings),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GranularityBar extends StatelessWidget {
  const _GranularityBar({required this.value, required this.onChanged});

  final String value;
  final ValueChanged<String> onChanged;

  String _label(String g) => orpText({'day': 'orp_gran_day', 'week': 'orp_gran_week', 'month': 'orp_gran_month', 'year': 'orp_gran_year'}[g]!);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final g in orpGranularities)
          Expanded(
            child: Semantics(
              button: true,
              selected: value == g,
              label: _label(g),
              child: ExcludeSemantics(
                child: InkWell(
                  onTap: () {
                    if (value != g) onChanged(g);
                  },
                  child: Container(
                    constraints: const BoxConstraints(minHeight: orpMinTouch),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: value == g ? OrpColors.accent.withValues(alpha: 0.14) : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: value == g ? OrpColors.accent : OrpColors.border),
                    ),
                    child: Text(_label(g), maxLines: 1, overflow: TextOverflow.ellipsis, style: orpStyle(13, value == g ? AppFont.bold : AppFont.medium, color: value == g ? OrpColors.accent : OrpColors.text)),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _VehiclesSection extends StatelessWidget {
  const _VehiclesSection({required this.data});

  final OwnerDashboardData data;

  @override
  Widget build(BuildContext context) {
    final vehicles = data.vehicles;
    final total = data.vehicleCount;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpSectionTitle(orpText('orp_odb_vehicles_title')),
        if (vehicles.isEmpty)
          OrpCard(child: Text(orpText('orp_odb_no_results_text'), style: orpStyle(13, AppFont.regular, color: OrpColors.muted)))
        else
          for (final v in vehicles)
            Padding(padding: const EdgeInsets.only(bottom: 10), child: _VehicleCard(vehicle: v, currency: data.currency)),
        if (total != null && total > vehicles.length)
          Text(orpText('orp_odb_vehicles_shown', {'shown': '${vehicles.length}', 'total': '$total'}), style: orpStyle(12, AppFont.regular, color: OrpColors.muted)),
      ],
    );
  }
}

class _VehicleCard extends StatelessWidget {
  const _VehicleCard({required this.vehicle, required this.currency});

  final OwnerVehiclePerformance vehicle;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    final title = orpVehicleTitle(vehicle.title, vehicle.listId);
    final occupancy = vehicle.occupancy == null ? '—' : formatPercent(vehicle.occupancy!, orpLocale());
    final net = orpMoney(vehicle.netRevenue, currency);
    return Semantics(
      container: true,
      label: '$title. ${vehicle.isOnline == false ? '${orpText('orp_paused')}. ' : ''}'
          '${orpText('orp_odb_col_bookings')} ${orpCount(vehicle.bookings)}, ${orpText('orp_odb_col_rented_days')} ${orpCount(vehicle.rentedDays)}, '
          '${orpText('orp_odb_col_occupancy')} $occupancy, ${orpText('orp_col_net')} $net',
      child: ExcludeSemantics(
        child: OrpCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OrpVehiclePhoto(photo: vehicle.photo),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, maxLines: 2, overflow: TextOverflow.ellipsis, style: orpStyle(14.5, AppFont.semiBold)),
                        if (vehicle.isOnline == false)
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.pause_circle_outline, size: 14, color: OrpColors.pending),
                                const SizedBox(width: 4),
                                Text(orpText('orp_paused'), style: orpStyle(12, AppFont.semiBold, color: OrpColors.pending)),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              OrpMoneyText(net, style: orpStyle(19, AppFont.bold)),
              const SizedBox(height: 6),
              Wrap(
                spacing: 14,
                runSpacing: 2,
                children: [
                  Text('${orpText('orp_odb_col_bookings')} : ${orpCount(vehicle.bookings)}', style: orpStyle(12.5, AppFont.regular, color: OrpColors.muted)),
                  Text('${orpText('orp_odb_col_rented_days')} : ${orpCount(vehicle.rentedDays)}', style: orpStyle(12.5, AppFont.regular, color: OrpColors.muted)),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: OrpOccupancyBar(percent: vehicle.occupancy)),
                  const SizedBox(width: 10),
                  Text('${orpText('orp_odb_col_occupancy')} $occupancy', style: orpStyle(12.5, AppFont.semiBold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SplitSection extends StatelessWidget {
  const _SplitSection({required this.split});

  final OwnerReservationsSplit split;

  @override
  Widget build(BuildContext context) {
    final colors = OrpColors.donut;
    final items = [
      (orpText('orp_odb_split_completed'), split.completed ?? 0),
      (orpText('orp_odb_split_upcoming'), split.upcoming ?? 0),
      (orpText('orp_odb_split_cancelled'), split.cancelled ?? 0),
    ];
    final total = items.fold<int>(0, (sum, item) => sum + item.$2);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpSectionTitle(orpText('orp_odb_split_title')),
        OrpCard(
          child: OrpDonut(
            semanticsTitle: orpText('orp_odb_split_title'),
            centerTitle: orpText('orp_odb_split_total'),
            centerValue: orpCount(total),
            slices: [
              for (var i = 0; i < items.length; i++)
                OrpDonutSlice(label: items[i].$1, value: items[i].$2.toDouble(), valueText: orpCount(items[i].$2), color: colors[i]),
            ],
          ),
        ),
      ],
    );
  }
}

class _ActivitySection extends StatelessWidget {
  const _ActivitySection({required this.data});

  final OwnerDashboardData data;

  @override
  Widget build(BuildContext context) {
    final rows = data.recentActivity;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpSectionTitle(orpText('orp_odb_activity_title')),
        if (rows.isEmpty)
          OrpCard(child: Text(orpText('orp_odb_empty_title'), style: orpStyle(13, AppFont.regular, color: OrpColors.muted)))
        else
          for (final row in rows)
            Padding(padding: const EdgeInsets.only(bottom: 10), child: _ActivityRow(row: row, currency: data.currency)),
      ],
    );
  }
}

class _ActivityRow extends StatelessWidget {
  const _ActivityRow({required this.row, required this.currency});

  final OwnerRecentActivity row;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    final title = orpVehicleTitle(row.title, row.listId);
    final dates = '${formatApiDay(row.checkIn, orpLocale())} – ${formatApiDay(row.checkOut, orpLocale())}';
    final amount = orpMoney(row.netRevenue, currency);
    final stateKey = reservationStateKey(row.state);
    return Semantics(
      container: true,
      label: '$title. ${row.guestName ?? ''}. $dates. ${stateKey == null ? '' : orpText(stateKey)}. '
          '${revenueStatusKey(row.revenueStatus) == null ? '' : orpText(revenueStatusKey(row.revenueStatus)!)}. $amount',
      child: ExcludeSemantics(
        child: OrpCard(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrpVehiclePhoto(photo: row.photo, size: 44),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, maxLines: 2, overflow: TextOverflow.ellipsis, style: orpStyle(14, AppFont.semiBold)),
                    if (row.guestName != null) Text(row.guestName!, style: orpStyle(12.5, AppFont.regular, color: OrpColors.muted)),
                    Text(dates, style: orpStyle(12, AppFont.regular, color: OrpColors.muted)),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      children: [
                        if (stateKey != null) Text(orpText(stateKey), style: orpStyle(12, AppFont.medium)),
                        OrpStatusBadge(status: row.revenueStatus),
                      ],
                    ),
                    const SizedBox(height: 6),
                    OrpMoneyText(amount, style: orpStyle(16, AppFont.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OperationalSection extends StatelessWidget {
  const _OperationalSection({required this.data});

  final OwnerDashboardData data;

  @override
  Widget build(BuildContext context) {
    final op = data.operational!;
    final average = op.averageDuration == null
        ? '—'
        : orpText('orp_days_other', {'count': NumberFormat('0.0', orpSafeNumberLocale()).format(op.averageDuration)});
    final rows = <(String, String)>[
      (orpText('orp_odb_op_online'), orpCount(op.onlineVehicles)),
      (orpText('orp_odb_op_paused'), orpCount(op.pausedVehicles)),
      (orpText('orp_odb_op_bookings'), orpCount(data.bookings?.value)),
      (orpText('orp_odb_op_total_duration'), orpDays(op.totalDuration)),
      (orpText('orp_odb_op_average_duration'), average),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpSectionTitle(orpText('orp_odb_operational_title')),
        OrpCard(
          child: Column(
            children: [
              for (var i = 0; i < rows.length; i++) ...[
                if (i > 0) Divider(height: 1, color: OrpColors.border),
                Semantics(
                  container: true,
                  label: '${rows[i].$1} : ${rows[i].$2}',
                  child: ExcludeSemantics(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 3, child: Text(rows[i].$1, style: orpStyle(13.5, AppFont.regular, color: OrpColors.muted))),
                          const SizedBox(width: 10),
                          Expanded(flex: 2, child: Align(alignment: AlignmentDirectional.centerEnd, child: Text(rows[i].$2, textAlign: TextAlign.end, style: orpStyle(14, AppFont.bold)))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

String orpSafeNumberLocale() {
  try {
    NumberFormat.decimalPattern(orpLocale());
    return orpLocale();
  } catch (_) {
    return 'en';
  }
}
