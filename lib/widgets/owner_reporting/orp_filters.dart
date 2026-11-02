import 'package:flutter/material.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/localized_date_time.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/owner_reporting/orp_common.dart';

String orpPeriodLabel(String preset) {
  switch (preset) {
    case orpPeriodToday:
      return orpText('orp_period_today');
    case orpPeriod7d:
      return orpText('orp_period_7d');
    case orpPeriodYear:
      return orpText('orp_period_year');
    case orpPeriodCustom:
      return orpText('orp_period_custom');
    default:
      return orpText('orp_period_30d');
  }
}

String _dateText(DateTime? date) {
  if (date == null) return '';
  try {
    return LocalizedDateTime.mediumDate(date, orpLocale());
  } catch (_) {
    return LocalizedDateTime.isoDate(date);
  }
}

class _OrpChip extends StatelessWidget {
  const _OrpChip({required this.label, required this.selected, required this.onTap, this.icon});

  final String label;
  final bool selected;
  final VoidCallback onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final fg = selected ? appColors.buttonTextColor : OrpColors.text;
    return Semantics(
      button: true,
      selected: selected,
      label: label,
      child: ExcludeSemantics(
        child: Material(
          color: selected ? OrpColors.accent : Colors.transparent,
          shape: StadiumBorder(side: BorderSide(color: selected ? OrpColors.accent : OrpColors.border)),
          child: InkWell(
            customBorder: const StadiumBorder(),
            onTap: onTap,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: orpMinTouch),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null) ...[Icon(icon, size: 16, color: fg), const SizedBox(width: 6)],
                    Text(label, style: orpStyle(13.5, selected ? AppFont.semiBold : AppFont.medium, color: fg)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Period chips (today, 7 days, 30 days, this year, custom) and the vehicle
/// selector. Dates are only kept for the custom period; the server computes
/// every real period.
class OrpFilterBar extends StatelessWidget {
  const OrpFilterBar({
    super.key,
    required this.filters,
    required this.vehicles,
    required this.onChanged,
  });

  final OwnerReportingFilters filters;
  final List<OwnerVehicleOption> vehicles;
  final ValueChanged<OwnerReportingFilters> onChanged;

  Future<void> _pickCustom(BuildContext context) async {
    final now = DateTime.now();
    final initial = (filters.startDate != null && filters.endDate != null)
        ? DateTimeRange(start: filters.startDate!, end: filters.endDate!)
        : null;
    final range = await showDateRangePicker(
      context: context,
      firstDate: DateTime(now.year - 6),
      lastDate: DateTime(now.year + 2, 12, 31),
      initialDateRange: initial,
      saveText: orpText('orp_apply'),
    );
    if (range == null) return;
    onChanged(filters.copyWith(
      preset: orpPeriodCustom,
      startDate: DateTime(range.start.year, range.start.month, range.start.day),
      endDate: DateTime(range.end.year, range.end.month, range.end.day),
    ));
  }

  Future<void> _pickVehicle(BuildContext context) async {
    final result = await showModalBottomSheet<_VehicleChoice>(
      context: context,
      backgroundColor: appColors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _VehicleSheet(vehicles: vehicles, selected: filters.listId),
    );
    if (result == null) return;
    onChanged(result.listId == null ? filters.copyWith(clearListId: true) : filters.copyWith(listId: result.listId));
  }

  String _vehicleLabel() {
    final id = filters.listId;
    if (id == null) return orpText('orp_all_vehicles');
    for (final vehicle in vehicles) {
      if (vehicle.listId == id) return orpVehicleTitle(vehicle.title, vehicle.listId);
    }
    return orpVehicleTitle(null, id);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final preset in orpPeriodPresets)
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8),
                  child: _OrpChip(
                    label: orpPeriodLabel(preset),
                    icon: preset == orpPeriodCustom ? Icons.date_range : null,
                    selected: filters.preset == preset,
                    onTap: () {
                      if (preset == orpPeriodCustom) {
                        _pickCustom(context);
                      } else if (filters.preset != preset) {
                        onChanged(filters.copyWith(preset: preset));
                      }
                    },
                  ),
                ),
            ],
          ),
        ),
        if (filters.isCustom)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Semantics(
              button: true,
              child: InkWell(
                onTap: () => _pickCustom(context),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: orpMinTouch),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      filters.startDate == null || filters.endDate == null
                          ? orpText('orp_choose_dates')
                          : '${_dateText(filters.startDate)} – ${_dateText(filters.endDate)}',
                      style: orpStyle(13, AppFont.medium, color: OrpColors.accent),
                    ),
                  ),
                ),
              ),
            ),
          ),
        const SizedBox(height: 8),
        Semantics(
          button: true,
          label: '${orpText('orp_vehicle_label')}: ${_vehicleLabel()}',
          child: ExcludeSemantics(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => _pickVehicle(context),
              child: Container(
                constraints: const BoxConstraints(minHeight: orpMinTouch),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: OrpColors.border),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.directions_car_outlined, size: 18, color: OrpColors.muted),
                    const SizedBox(width: 8),
                    Expanded(child: Text(_vehicleLabel(), maxLines: 2, overflow: TextOverflow.ellipsis, style: orpStyle(14, AppFont.medium))),
                    Icon(Icons.keyboard_arrow_down, color: OrpColors.muted),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _VehicleChoice {
  const _VehicleChoice(this.listId);
  final int? listId;
}

class _VehicleSheet extends StatelessWidget {
  const _VehicleSheet({required this.vehicles, required this.selected});

  final List<OwnerVehicleOption> vehicles;
  final int? selected;

  Widget _row(BuildContext context, {required String label, String? tag, required bool isSelected, required int? listId}) {
    return Semantics(
      button: true,
      selected: isSelected,
      child: InkWell(
        onTap: () => Navigator.of(context).pop(_VehicleChoice(listId)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: orpMinTouch),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            child: Row(
              children: [
                Expanded(child: Text(label, style: orpStyle(15, isSelected ? AppFont.bold : AppFont.regular))),
                if (tag != null) Text(tag, style: orpStyle(12, AppFont.medium, color: OrpColors.pending)),
                if (isSelected) Padding(padding: const EdgeInsets.only(left: 8), child: Icon(Icons.check, color: OrpColors.accent)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(orpText('orp_vehicle_label'), style: orpStyle(17, AppFont.bold)),
              const SizedBox(height: 8),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    _row(context, label: orpText('orp_all_vehicles'), isSelected: selected == null, listId: null),
                    for (final v in vehicles)
                      _row(
                        context,
                        label: orpVehicleTitle(v.title, v.listId),
                        tag: v.isOnline == false ? orpText('orp_paused') : null,
                        isSelected: selected == v.listId,
                        listId: v.listId,
                      ),
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
