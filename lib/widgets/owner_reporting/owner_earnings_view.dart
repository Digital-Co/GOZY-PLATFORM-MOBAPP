import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/owner_reporting/orp_charts.dart';
import 'package:gozy/widgets/owner_reporting/orp_common.dart';
import 'package:gozy/widgets/owner_reporting/orp_filters.dart';
import 'package:gozy/widgets/owner_reporting/orp_revenue.dart';
import 'package:gozy/widgets/owner_reporting/owner_dashboard_view.dart' show orpCount;

const Map<String, String> _tabKeys = {
  'all': 'orp_tab_all',
  'upcoming': 'orp_tab_upcoming',
  'pendingPayout': 'orp_tab_pending',
  'paid': 'orp_tab_paid',
};

const Map<String, String> _sortKeys = {
  'checkIn': 'orp_sort_check_in',
  'confirmationCode': 'orp_sort_code',
  'vehicle': 'orp_sort_vehicle',
  'grossAmount': 'orp_sort_gross',
  'netRevenue': 'orp_sort_net',
  'status': 'orp_sort_status',
};

String _kindLabel(String kind) => orpText({'rental': 'orp_type_rental', 'options': 'orp_type_options', 'delivery': 'orp_type_delivery'}[kind]!);

/// "Revenues & payouts" content, independent of GetX so it can be tested with plain data.
class OwnerEarningsView extends StatelessWidget {
  const OwnerEarningsView({
    super.key,
    required this.filters,
    required this.data,
    required this.vehicleOptions,
    required this.isFetching,
    required this.errorMessage,
    required this.onFiltersChanged,
    required this.onPageChanged,
    required this.onResetFilters,
    required this.onRetry,
    required this.onAddVehicle,
    required this.onSeeTransactions,
  });

  final OwnerReportingFilters filters;
  final OwnerEarningsData? data;
  final List<OwnerVehicleOption> vehicleOptions;
  final bool isFetching;
  final String? errorMessage;
  final ValueChanged<OwnerReportingFilters> onFiltersChanged;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onResetFilters;
  final VoidCallback onRetry;
  final VoidCallback onAddVehicle;
  final VoidCallback onSeeTransactions;

  bool get _noVehicle => data != null && vehicleOptions.isEmpty && filters.listId == null;

  bool get _hasListFilters => filters.tab != 'all' || filters.searchArgument != null;

  @override
  Widget build(BuildContext context) {
    final d = data;
    final children = <Widget>[
      Text(orpText('orp_earnings_subtitle'), style: orpStyle(13.5, AppFont.regular, color: OrpColors.muted)),
      const SizedBox(height: 12),
      OrpFilterBar(filters: filters, vehicles: vehicleOptions, onChanged: onFiltersChanged),
      const SizedBox(height: 6),
      if (isFetching && d != null) const LinearProgressIndicator(minHeight: 3),
      if (filters.isCustom && !filters.canRequest)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(orpText('orp_choose_dates'), textAlign: TextAlign.center, style: orpStyle(14, AppFont.regular, color: OrpColors.muted)),
        )
      else if (d == null && errorMessage != null)
        OrpErrorView(message: errorMessage!, onRetry: onRetry)
      else if (d == null)
        const _EarningsSkeleton()
      else ...[
        if (errorMessage != null) _Banner(message: errorMessage!, onRetry: onRetry),
        if (_noVehicle)
          _Message(
            title: orpText('orp_empty_no_vehicle_title'),
            text: orpText('orp_empty_no_vehicle_text'),
            actionLabel: orpText('orp_add_vehicle'),
            onAction: onAddVehicle,
          )
        else
          ..._content(context, d),
      ],
    ];
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: children,
    );
  }

  List<Widget> _content(BuildContext context, OwnerEarningsData d) {
    final currency = d.currency;
    final comparison = orpText(comparisonTextKey(d.period), {'days': '${d.period?.previousDays ?? ''}'});
    final noRevenueInPeriod = (d.count ?? 0) == 0 && !_hasListFilters && (d.revenue?.netRevenue ?? 0) == 0 && (d.volume?.value ?? 0) == 0;
    return [
      _SummaryCard(label: orpText('orp_kpi_net_revenue'), value: orpMoney(d.netRevenue?.value, currency), indicator: d.netRevenue, comparison: comparison),
      _SummaryCard(label: orpText('orp_kpi_volume'), value: orpMoney(d.volume?.value, currency), indicator: d.volume, comparison: comparison),
      _SummaryCard(label: orpText('orp_kpi_options'), value: orpMoney(d.optionsAmount?.value, currency), indicator: d.optionsAmount, comparison: comparison),
      OrpSectionTitle(orpText('orp_odb_revenue_title')),
      OrpCard(child: OrpRevenueTiles(revenue: d.revenue, currency: currency)),
      if (noRevenueInPeriod)
        _Message(
          title: orpText('orp_empty_title'),
          text: orpText('orp_empty_text'),
        )
      else ...[
        if (d.breakdown != null) _BreakdownSection(data: d),
        OrpSectionTitle(orpText('orp_evolution_title')),
        _GranularityRow(
          value: d.series?.granularity ?? filters.granularity,
          onChanged: (g) => onFiltersChanged(filters.copyWith(granularity: g)),
        ),
        const SizedBox(height: 8),
        OrpCard(
          child: d.series == null
              ? Text(orpText('orp_chart_no_data'), style: orpStyle(13, AppFont.regular, color: OrpColors.muted))
              : OrpLineChart(series: d.series!, currency: currency),
        ),
        OrpSectionTitle(orpText('orp_table_title')),
        _Tabs(value: filters.tab, onChanged: (tab) => onFiltersChanged(filters.copyWith(tab: tab))),
        const SizedBox(height: 10),
        OrpSearchField(
          value: filters.search,
          onChanged: (text) => onFiltersChanged(filters.copyWith(search: text)),
        ),
        const SizedBox(height: 8),
        _SortButton(filters: filters, onChanged: onFiltersChanged),
        const SizedBox(height: 10),
        if (d.rows.isEmpty)
          _Message(
            title: orpText('orp_no_results_title'),
            text: orpText('orp_no_results_text'),
            actionLabel: orpText('orp_reset_filters'),
            onAction: onResetFilters,
          )
        else ...[
          for (final row in d.rows)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: OrpEarningRowCard(
                row: row,
                currency: currency,
                onTap: () => showOrpEarningDetail(context, row: row, currency: currency, onSeeTransactions: onSeeTransactions),
              ),
            ),
          _Pager(data: d, onPageChanged: onPageChanged),
        ],
      ],
    ];
  }
}

class _Message extends StatelessWidget {
  const _Message({required this.title, required this.text, this.actionLabel, this.onAction});

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

class _Banner extends StatelessWidget {
  const _Banner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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

class _EarningsSkeleton extends StatelessWidget {
  const _EarningsSkeleton();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: orpText('orp_loading'),
      child: ExcludeSemantics(
        child: Column(
          children: [
            for (var i = 0; i < 3; i++)
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

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({required this.label, required this.value, required this.indicator, required this.comparison});

  final String label;
  final String value;
  final OwnerIndicator? indicator;
  final String comparison;

  @override
  Widget build(BuildContext context) {
    final view = trendView(indicator);
    final words = switch (view.label) {
      OwnerTrendLabel.percent => '${formatChangePercent(indicator?.change ?? 0, orpLocale())} $comparison',
      OwnerTrendLabel.newItem => orpText('orp_new'),
      OwnerTrendLabel.dash => '',
    };
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Semantics(
        container: true,
        label: '$label : $value. $words',
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

class _BreakdownSection extends StatelessWidget {
  const _BreakdownSection({required this.data});

  final OwnerEarningsData data;

  @override
  Widget build(BuildContext context) {
    final b = data.breakdown!;
    final colors = OrpColors.donut;
    final currency = data.currency;
    final items = <(String, double?)>[
      (orpText('orp_breakdown_rental'), b.rental),
      (orpText('orp_breakdown_options'), b.options),
      (orpText('orp_breakdown_delivery'), b.delivery),
      // "Other" only when the API sends a non-zero amount.
      if ((b.other ?? 0) != 0) (orpText('orp_breakdown_other'), b.other),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpSectionTitle(orpText('orp_breakdown_title')),
        OrpCard(
          child: OrpDonut(
            semanticsTitle: orpText('orp_breakdown_title'),
            centerTitle: orpText('orp_breakdown_total'),
            centerValue: orpMoney(data.volume?.value, currency),
            slices: [
              for (var i = 0; i < items.length; i++)
                OrpDonutSlice(label: items[i].$1, value: items[i].$2 ?? 0, valueText: orpMoney(items[i].$2, currency), color: colors[i % colors.length]),
            ],
          ),
        ),
      ],
    );
  }
}

class _GranularityRow extends StatelessWidget {
  const _GranularityRow({required this.value, required this.onChanged});

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

class _Tabs extends StatelessWidget {
  const _Tabs({required this.value, required this.onChanged});

  final String value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final tab in orpTabs)
          Semantics(
            button: true,
            selected: value == tab,
            label: orpText(_tabKeys[tab]!),
            child: ExcludeSemantics(
              child: Material(
                color: value == tab ? OrpColors.accent : Colors.transparent,
                shape: StadiumBorder(side: BorderSide(color: value == tab ? OrpColors.accent : OrpColors.border)),
                child: InkWell(
                  customBorder: const StadiumBorder(),
                  onTap: () {
                    if (value != tab) onChanged(tab);
                  },
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(minHeight: orpMinTouch),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(orpText(_tabKeys[tab]!),
                              style: orpStyle(13.5, value == tab ? AppFont.semiBold : AppFont.medium, color: value == tab ? appColors.buttonTextColor : OrpColors.text)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// Search box: 100 characters at most, sent to the server after a short pause
/// (the server filters; nothing is interpreted by the app).
class OrpSearchField extends StatefulWidget {
  const OrpSearchField({super.key, required this.value, required this.onChanged, this.debounce = const Duration(milliseconds: 450)});

  final String value;
  final ValueChanged<String> onChanged;
  final Duration debounce;

  @override
  State<OrpSearchField> createState() => _OrpSearchFieldState();
}

class _OrpSearchFieldState extends State<OrpSearchField> {
  late final TextEditingController _controller = TextEditingController(text: widget.value);
  Timer? _timer;

  @override
  void didUpdateWidget(covariant OrpSearchField old) {
    super.didUpdateWidget(old);
    if (widget.value != old.value && widget.value != _controller.text) {
      _controller.text = widget.value;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _changed(String text) {
    _timer?.cancel();
    _timer = Timer(widget.debounce, () => widget.onChanged(text));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: 1,
      inputFormatters: [LengthLimitingTextInputFormatter(orpSearchMaxLength)],
      textInputAction: TextInputAction.search,
      onChanged: _changed,
      onSubmitted: (text) {
        _timer?.cancel();
        widget.onChanged(text);
      },
      style: orpStyle(14, AppFont.regular),
      decoration: InputDecoration(
        hintText: orpText('orp_search_placeholder'),
        hintStyle: orpStyle(14, AppFont.regular, color: OrpColors.muted),
        prefixIcon: Icon(Icons.search, color: OrpColors.muted),
        suffixIcon: _controller.text.isEmpty
            ? null
            : IconButton(
                tooltip: orpText('orp_search_clear'),
                constraints: const BoxConstraints(minWidth: orpMinTouch, minHeight: orpMinTouch),
                icon: Icon(Icons.close, color: OrpColors.muted),
                onPressed: () {
                  _timer?.cancel();
                  _controller.clear();
                  setState(() {});
                  widget.onChanged('');
                },
              ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: OrpColors.border)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: OrpColors.accent, width: 1.6)),
      ),
    );
  }
}

class _SortButton extends StatelessWidget {
  const _SortButton({required this.filters, required this.onChanged});

  final OwnerReportingFilters filters;
  final ValueChanged<OwnerReportingFilters> onChanged;

  @override
  Widget build(BuildContext context) {
    final field = orpText(_sortKeys[filters.sortBy] ?? 'orp_sort_check_in');
    final dir = orpText(filters.sortDir == 'asc' ? 'orp_sort_asc' : 'orp_sort_desc');
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Semantics(
        button: true,
        label: '${orpText('orp_sort_label')}: $field, $dir',
        child: ExcludeSemantics(
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () async {
              final result = await showModalBottomSheet<(String, String)>(
                context: context,
                backgroundColor: appColors.white,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                builder: (_) => _SortSheet(sortBy: filters.sortBy, sortDir: filters.sortDir),
              );
              if (result != null) onChanged(filters.copyWith(sortBy: result.$1, sortDir: result.$2));
            },
            child: Container(
              constraints: const BoxConstraints(minHeight: orpMinTouch),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.swap_vert, size: 20, color: OrpColors.accent),
                  const SizedBox(width: 6),
                  Flexible(child: Text('${orpText('orp_sort_label')} : $field ($dir)', style: orpStyle(13.5, AppFont.medium, color: OrpColors.accent))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SortSheet extends StatefulWidget {
  const _SortSheet({required this.sortBy, required this.sortDir});

  final String sortBy;
  final String sortDir;

  @override
  State<_SortSheet> createState() => _SortSheetState();
}

class _SortSheetState extends State<_SortSheet> {
  late String _dir = widget.sortDir == 'asc' ? 'asc' : 'desc';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(orpText('orp_sort_label'), style: orpStyle(17, AppFont.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                for (final dir in const ['asc', 'desc'])
                  Expanded(
                    child: Semantics(
                      button: true,
                      selected: _dir == dir,
                      child: InkWell(
                        onTap: () => setState(() => _dir = dir),
                        child: Container(
                          constraints: const BoxConstraints(minHeight: orpMinTouch),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color: _dir == dir ? OrpColors.accent.withValues(alpha: 0.14) : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: _dir == dir ? OrpColors.accent : OrpColors.border),
                          ),
                          child: Text(orpText(dir == 'asc' ? 'orp_sort_asc' : 'orp_sort_desc'), style: orpStyle(13.5, _dir == dir ? AppFont.bold : AppFont.medium)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            for (final field in orpSortFields)
              Semantics(
                button: true,
                selected: widget.sortBy == field,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop((field, _dir)),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(minHeight: orpMinTouch),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                      child: Row(
                        children: [
                          Expanded(child: Text(orpText(_sortKeys[field]!), style: orpStyle(15, widget.sortBy == field ? AppFont.bold : AppFont.regular))),
                          if (widget.sortBy == field) Icon(Icons.check, color: OrpColors.accent),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _Pager extends StatelessWidget {
  const _Pager({required this.data, required this.onPageChanged});

  final OwnerEarningsData data;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    final page = data.page ?? 1;
    final pageCount = data.pageCount ?? 1;
    final summary = orpText('orp_result_count', {'count': orpCount(data.count), 'current': '$page', 'total': '$pageCount'});
    return Column(
      children: [
        Text(summary, textAlign: TextAlign.center, style: orpStyle(12.5, AppFont.regular, color: OrpColors.muted)),
        if (pageCount > 1)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              children: [
                Expanded(child: OrpButton(label: orpText('orp_prev'), icon: Icons.chevron_left, onTap: page > 1 ? () => onPageChanged(page - 1) : null)),
                const SizedBox(width: 10),
                Expanded(child: OrpButton(label: orpText('orp_next'), icon: Icons.chevron_right, onTap: page < pageCount ? () => onPageChanged(page + 1) : null)),
              ],
            ),
          ),
      ],
    );
  }
}

/// One reservation line: start date, #code, vehicle, types, gross, net, status.
class OrpEarningRowCard extends StatelessWidget {
  const OrpEarningRowCard({super.key, required this.row, required this.currency, required this.onTap});

  final OwnerEarningsRow row;
  final String? currency;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final title = orpVehicleTitle(row.title, row.listId);
    final date = formatApiDay(row.checkIn, orpLocale());
    final code = row.confirmationCode == null ? '' : '#${row.confirmationCode}';
    final kinds = rowComponentKinds(row.components).map(_kindLabel).toList();
    final gross = orpMoney(row.grossAmount, currency);
    final net = orpMoney(row.netRevenue, currency);
    final stateKey = reservationStateKey(row.state);
    final cancelled = row.state == 'cancelled';
    return OrpCard(
      onTap: onTap,
      semanticLabel: '$code $title. $date. ${kinds.join(', ')}. ${orpText('orp_col_gross')} $gross. ${orpText('orp_col_net')} $net. '
          '${revenueStatusKey(row.revenueStatus) == null ? '' : orpText(revenueStatusKey(row.revenueStatus)!)}. ${orpText('orp_view_details')}',
      child: ExcludeSemantics(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text('$date  ·  $code', style: orpStyle(13, AppFont.semiBold))),
                OrpStatusBadge(status: row.revenueStatus),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrpVehiclePhoto(photo: row.photo, size: 40),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, maxLines: 2, overflow: TextOverflow.ellipsis, style: orpStyle(14, AppFont.semiBold)),
                      if (row.guestName != null) Text(row.guestName!, style: orpStyle(12.5, AppFont.regular, color: OrpColors.muted)),
                    ],
                  ),
                ),
              ],
            ),
            if (kinds.isNotEmpty || (cancelled && stateKey != null))
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: [
                    for (final kind in kinds) _TypeTag(kind),
                    if (cancelled && stateKey != null) _TypeTag(orpText(stateKey), color: OrpColors.bad),
                  ],
                ),
              ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _Amount(label: orpText('orp_col_gross'), value: gross)),
                const SizedBox(width: 10),
                Expanded(child: _Amount(label: orpText('orp_col_net'), value: net, strong: true)),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Text(orpText('orp_view_details'), style: orpStyle(12.5, AppFont.semiBold, color: OrpColors.accent)),
                Icon(Icons.chevron_right, size: 18, color: OrpColors.accent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TypeTag extends StatelessWidget {
  const _TypeTag(this.label, {this.color});

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final c = color ?? OrpColors.muted;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: c.withValues(alpha: 0.6))),
      child: Text(label, style: orpStyle(11.5, AppFont.medium, color: c)),
    );
  }
}

class _Amount extends StatelessWidget {
  const _Amount({required this.label, required this.value, this.strong = false});

  final String label;
  final String value;
  final bool strong;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: orpStyle(11.5, AppFont.regular, color: OrpColors.muted)),
        OrpMoneyText(value, style: orpStyle(strong ? 16 : 14.5, strong ? AppFont.bold : AppFont.medium)),
      ],
    );
  }
}

Future<void> showOrpEarningDetail(
  BuildContext context, {
  required OwnerEarningsRow row,
  required String? currency,
  required VoidCallback onSeeTransactions,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: appColors.white,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    builder: (sheetContext) => OrpEarningDetail(
      row: row,
      currency: currency,
      onSeeTransactions: () {
        Navigator.of(sheetContext).pop();
        onSeeTransactions();
      },
    ),
  );
}

/// Detail of one reservation: dates, renter, breakdown, commission, promotion
/// adjustment, net revenue and the payout block (only what really exists).
class OrpEarningDetail extends StatelessWidget {
  const OrpEarningDetail({super.key, required this.row, required this.currency, required this.onSeeTransactions});

  final OwnerEarningsRow row;
  final String? currency;
  final VoidCallback onSeeTransactions;

  Widget _line(String label, String value, {bool strong = false, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: Text(label, style: orpStyle(13.5, strong ? AppFont.bold : AppFont.regular, color: strong ? OrpColors.text : OrpColors.muted))),
          const SizedBox(width: 10),
          Expanded(flex: 4, child: Align(alignment: AlignmentDirectional.centerEnd, child: Text(value, textAlign: TextAlign.end, style: orpStyle(strong ? 16 : 14, strong ? AppFont.bold : AppFont.semiBold, color: color)))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final c = row.components;
    final promo = row.promoAdjustment ?? 0;
    final commission = row.commission;
    final payment = row.payment;
    final dates = '${formatApiDay(row.checkIn, orpLocale())} – ${formatApiDay(row.checkOut, orpLocale())}';
    final stateKey = reservationStateKey(row.state);
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.9),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(18, 16, 18, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Semantics(
                      header: true,
                      child: Text(orpText('orp_detail_title', {'code': '${row.confirmationCode ?? ''}'}), style: orpStyle(19, AppFont.bold)),
                    ),
                  ),
                  IconButton(
                    tooltip: orpText('orp_detail_close'),
                    constraints: const BoxConstraints(minWidth: orpMinTouch, minHeight: orpMinTouch),
                    icon: Icon(Icons.close, color: OrpColors.text),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              Text(orpVehicleTitle(row.title, row.listId), style: orpStyle(14.5, AppFont.semiBold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 6,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  OrpStatusBadge(status: row.revenueStatus),
                  if (row.state == 'cancelled' && stateKey != null) Text(orpText(stateKey), style: orpStyle(12.5, AppFont.semiBold, color: OrpColors.bad)),
                ],
              ),
              OrpSectionTitle(orpText('orp_detail_dates')),
              Text(dates, style: orpStyle(14, AppFont.medium)),
              if (row.guestName != null) ...[
                OrpSectionTitle(orpText('orp_detail_guest')),
                Text(row.guestName!, style: orpStyle(14, AppFont.medium)),
              ],
              OrpSectionTitle(orpText('orp_detail_breakdown')),
              OrpCard(
                child: Column(
                  children: [
                    _line(orpText('orp_type_rental'), orpMoney(c?.rental, currency)),
                    _line(orpText('orp_type_options'), orpMoney(c?.options, currency)),
                    _line(orpText('orp_type_delivery'), orpMoney(c?.delivery, currency)),
                    if ((c?.other ?? 0) != 0) _line(orpText('orp_type_other'), orpMoney(c?.other, currency)),
                    Divider(color: OrpColors.border),
                    _line(orpText('orp_detail_gross'), orpMoney(row.grossAmount, currency), strong: true),
                    _line(orpText('orp_detail_commission'), commission == null ? '—' : '− ${orpMoney(commission, currency)}'),
                    if (promo != 0) _line(orpText('orp_detail_promo'), '+ ${orpMoney(promo, currency)}', color: OrpColors.good),
                    Divider(color: OrpColors.border),
                    _line(orpText('orp_detail_net'), orpMoney(row.netRevenue, currency), strong: true),
                  ],
                ),
              ),
              OrpSectionTitle(orpText('orp_detail_payment')),
              OrpCard(
                child: payment == null
                    ? Text(orpText('orp_detail_no_payment'), style: orpStyle(13.5, AppFont.regular, color: OrpColors.muted))
                    : Column(
                        children: [
                          if (payment.method != null) _line(orpText('orp_col_method'), payment.method!),
                          if (payment.reference != null) _line(orpText('orp_col_reference'), payment.reference!),
                          if (payment.providerStatus != null) _line(orpText('orp_detail_provider_status'), payment.providerStatus!),
                          _line(orpText('orp_detail_paid_amount'), orpMoney(payment.paidAmount, currency), strong: true),
                        ],
                      ),
              ),
              const SizedBox(height: 14),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: OrpButton(label: orpText('orp_detail_see_transactions'), icon: Icons.receipt_long_outlined, onTap: onSeeTransactions),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
