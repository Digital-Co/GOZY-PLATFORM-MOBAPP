import 'package:flutter/material.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/owner_reporting/orp_common.dart';

/// The three buckets of the net revenue (upcoming, pending payout, paid) as
/// returned by the API; their sum is the net revenue shown above them.
class OrpRevenueTiles extends StatelessWidget {
  const OrpRevenueTiles({super.key, required this.revenue, required this.currency});

  final OwnerRevenue? revenue;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrpRevenueTile(status: 'upcoming', label: orpText('orp_card_upcoming'), hint: orpText('orp_card_upcoming_hint'), amount: orpMoney(revenue?.upcoming, currency)),
        OrpRevenueTile(status: 'pendingPayout', label: orpText('orp_card_pending'), hint: orpText('orp_card_pending_hint'), amount: orpMoney(revenue?.pendingPayout, currency)),
        OrpRevenueTile(status: 'paid', label: orpText('orp_card_paid'), hint: orpText('orp_card_paid_hint'), amount: orpMoney(revenue?.paid, currency)),
        const SizedBox(height: 4),
        Text(orpText('orp_revenue_invariant'), style: orpStyle(11.5, AppFont.regular, color: OrpColors.muted)),
      ],
    );
  }
}

class OrpRevenueTile extends StatelessWidget {
  const OrpRevenueTile({super.key, required this.status, required this.label, required this.hint, required this.amount});

  final String status;
  final String label;
  final String hint;
  final String amount;

  @override
  Widget build(BuildContext context) {
    final color = OrpColors.revenueStatus(status);
    return Semantics(
      container: true,
      label: '$label : $amount. $hint',
      child: ExcludeSemantics(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withValues(alpha: 0.45)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: orpStyle(13.5, AppFont.semiBold, color: color)),
              const SizedBox(height: 2),
              OrpMoneyText(amount, style: orpStyle(19, AppFont.bold)),
              const SizedBox(height: 2),
              Text(hint, style: orpStyle(11.5, AppFont.regular, color: OrpColors.muted)),
            ],
          ),
        ),
      ),
    );
  }
}

