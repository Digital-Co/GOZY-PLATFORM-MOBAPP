import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/graphql/inspection/__generated__/reservation_inspection_fragment.data.gql.dart';
import 'package:gozy/graphql/inspection/__generated__/reservation_inspection_fragment.req.gql.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/screens/views/inspection/inspection_api.dart';
import 'package:gozy/screens/views/inspection/inspection_checkin_screen.dart';
import 'package:gozy/screens/views/inspection/inspection_checkout_screen.dart';
import 'package:gozy/screens/views/inspection/inspection_context.dart';
import 'package:gozy/screens/views/inspection/inspection_services.dart';
import 'package:gozy/screens/views/inspection/inspection_widgets.dart';
import 'package:gozy/utils/inspection/inspection_i18n.dart';
import 'package:gozy/utils/inspection/inspection_models.dart';
import 'package:gozy/utils/inspection/inspection_rules.dart';

/// Opens the check-in or the check-out of a reservation, then refreshes the
/// derived status shown by the lists.
Future<void> openInspection(InspectionContext ctx, String type, {bool viewOnly = false}) async {
  await Get.to(() => type == inspectionTypeCheckin
      ? InspectionCheckinScreen(ctx: ctx, viewOnly: viewOnly)
      : InspectionCheckoutScreen(ctx: ctx, viewOnly: viewOnly));
  final comparison = await InspectionApi(basecontroller).getComparison(ctx.reservationId);
  final status = comparison?.globalStatus;
  if (status != null) InspectionServices.instance.statuses[ctx.reservationId] = status;
}

/// Derived inspection status of a reservation: the one refreshed after a
/// screen closed, else the one sent with the trips list.
String? inspectionStatusOf(dynamic item) {
  final id = _idOf(item);
  if (id == null) return null;
  final fresh = InspectionServices.instance.statuses[id];
  if (fresh != null) return fresh;
  try {
    final direct = item.inspectionStatus;
    if (direct is String) return direct;
  } catch (_) {}
  try {
    final GreservationInspectionFragmentData? data = FerryLoggerClient.client
        ?.cache
        .readFragment(GreservationInspectionFragmentReq((b) => b..idFields = {'id': id}));
    return data?.inspectionStatus;
  } catch (_) {
    return null;
  }
}

/// False only when the server says the feature is switched off (null or
/// missing = unknown: the buttons stay, as before).
bool inspectionEnabledOf(dynamic item) {
  try {
    final direct = item.inspectionEnabled;
    if (direct is bool) return isInspectionEnabled(direct);
  } catch (_) {}
  final id = _idOf(item);
  if (id == null) return true;
  try {
    final GreservationInspectionFragmentData? data = FerryLoggerClient.client
        ?.cache
        .readFragment(GreservationInspectionFragmentReq((b) => b..idFields = {'id': id}));
    return isInspectionEnabled(data?.inspectionEnabled);
  } catch (_) {
    return true;
  }
}

InspectionStepInfo? _stepFrom(dynamic step) {
  if (step == null) return null;
  try {
    return InspectionStepInfo(
      status: step.status as String?,
      open: step.open == true,
      awaitingViewer: step.awaitingViewer == true,
    );
  } catch (_) {
    return null;
  }
}

/// Steps sent by the API for the viewer (`inspectionSteps`): null when the
/// server does not send them (old server, not a party).
({InspectionStepInfo? checkin, InspectionStepInfo? checkout})? inspectionStepsOf(dynamic item) {
  dynamic steps;
  try {
    steps = item.inspectionSteps;
  } catch (_) {}
  if (steps == null) {
    final id = _idOf(item);
    if (id != null) {
      try {
        final GreservationInspectionFragmentData? data = FerryLoggerClient.client
            ?.cache
            .readFragment(GreservationInspectionFragmentReq((b) => b..idFields = {'id': id}));
        steps = data?.inspectionSteps;
      } catch (_) {}
    }
  }
  if (steps == null) return null;
  dynamic checkin, checkout;
  try {
    checkin = steps.checkin;
    checkout = steps.checkout;
  } catch (_) {}
  final a = _stepFrom(checkin);
  final b = _stepFrom(checkout);
  if (a == null && b == null) return null;
  return (checkin: a, checkout: b);
}

int? _idOf(dynamic item) {
  try {
    final id = item?.id;
    return id is int ? id : null;
  } catch (_) {
    return null;
  }
}

/// Buttons "Check-in" and "Check-out" (and the badge of the derived status)
/// shown in the trips / bookings lists. Nothing is shown for a reservation
/// that is not confirmed.
class InspectionEntryRow extends StatelessWidget {
  const InspectionEntryRow({super.key, required this.item, required this.isOwner});
  final dynamic item;
  final bool isOwner;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      InspectionServices.instance.statuses.length;
      final ctx = InspectionContext.fromReservation(item, isOwner: isOwner);
      if (ctx.reservationId == 0) return const SizedBox.shrink();
      final steps = inspectionStepsOf(item);
      final settled = ctx.reservationState == 'approved' || ctx.reservationState == 'completed';
      final InspectionStepEntry checkin;
      final InspectionStepEntry checkout;
      final String? damageBadgeKey;
      final BadgeTone damageTone;
      if (steps == null) {
        // Old server: former behaviour.
        if (!inspectionEnabledOf(item)) return const SizedBox.shrink();
        final entry = inspectionEntryFor(
          reservationState: ctx.reservationState,
          globalStatus: inspectionStatusOf(item),
        );
        checkin = InspectionStepEntry(visible: entry.showCheckin);
        checkout = InspectionStepEntry(visible: entry.showCheckout);
        damageBadgeKey = entry.badgeKey;
        damageTone = entry.badgeTone;
      } else {
        checkin = inspectionStepEntryFor(step: steps.checkin, isOwner: ctx.isOwner, legacyVisible: settled);
        checkout = inspectionStepEntryFor(step: steps.checkout, isOwner: ctx.isOwner, legacyVisible: settled);
        final entry = inspectionEntryFor(
            reservationState: 'approved', globalStatus: inspectionStatusOf(item));
        damageBadgeKey = entry.badgeKey;
        damageTone = entry.badgeTone;
      }
      if (!checkin.visible && !checkout.visible) return const SizedBox.shrink();
      return inspScale(
        context,
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (damageBadgeKey != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: InspBadge(text: inspText(damageBadgeKey), tone: damageTone),
              ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (checkin.visible)
                Expanded(
                    child: _EntryButton(
                  label: inspText(checkin.readOnly ? 'insp_view_checkin' : 'insp_checkin'),
                  icon: checkin.readOnly ? Icons.visibility_outlined : Icons.login,
                  status: checkin,
                  onTap: () => openInspection(ctx, inspectionTypeCheckin, viewOnly: checkin.readOnly),
                )),
              if (checkin.visible && checkout.visible) const SizedBox(width: 8),
              if (checkout.visible)
                Expanded(
                    child: _EntryButton(
                  label: inspText(checkout.readOnly ? 'insp_view_checkout' : 'insp_checkout'),
                  icon: checkout.readOnly ? Icons.visibility_outlined : Icons.logout,
                  status: checkout,
                  onTap: () => openInspection(ctx, inspectionTypeCheckout, viewOnly: checkout.readOnly),
                )),
            ]),
          ]),
        ),
      );
    });
  }
}

class _EntryButton extends StatelessWidget {
  const _EntryButton({required this.label, required this.icon, required this.onTap, this.status});
  final InspectionStepEntry? status;
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final statusKey = status?.statusKey;
    final button = Semantics(
      button: true,
      label: label,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 44),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: appColors.primaryColor),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(icon, size: 16, color: appColors.primaryColor),
            const SizedBox(width: 6),
            Flexible(
              child: Text(label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: inspStyle(13, AppFont.medium, color: appColors.primaryColor)),
            ),
          ]),
        ),
      ),
    );
    if (statusKey == null) return button;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      button,
      const SizedBox(height: 4),
      Align(
        alignment: AlignmentDirectional.centerStart,
        child: InspBadge(text: inspText(statusKey), tone: status!.statusTone),
      ),
    ]);
  }
}
