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
Future<void> openInspection(InspectionContext ctx, String type) async {
  await Get.to(() => type == inspectionTypeCheckin
      ? InspectionCheckinScreen(ctx: ctx)
      : InspectionCheckoutScreen(ctx: ctx));
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
      if (!inspectionEnabledOf(item)) return const SizedBox.shrink();
      final entry = inspectionEntryFor(
        reservationState: ctx.reservationState,
        globalStatus: inspectionStatusOf(item),
      );
      if (!entry.isVisible) return const SizedBox.shrink();
      return inspScale(
        context,
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (entry.badgeKey != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: InspBadge(text: inspText(entry.badgeKey!), tone: entry.badgeTone),
              ),
            Row(children: [
              if (entry.showCheckin)
                Expanded(child: _EntryButton(label: inspText('insp_checkin'), icon: Icons.login, onTap: () => openInspection(ctx, inspectionTypeCheckin))),
              if (entry.showCheckin && entry.showCheckout) const SizedBox(width: 8),
              if (entry.showCheckout)
                Expanded(child: _EntryButton(label: inspText('insp_checkout'), icon: Icons.logout, onTap: () => openInspection(ctx, inspectionTypeCheckout))),
            ]),
          ]),
        ),
      );
    });
  }
}

class _EntryButton extends StatelessWidget {
  const _EntryButton({required this.label, required this.icon, required this.onTap});
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
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
  }
}
