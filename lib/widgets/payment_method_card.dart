import 'package:flutter/material.dart';
import 'package:gozy/resources/app_dimen.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/widgets/custom_text.dart';
import 'package:gozy/widgets/payment_type_selection_view.dart';

/// Selectable card for one payment method. Meant to be laid out in a [Wrap]
/// so that two cards share a row on phones.
class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    required this.title,
    required this.fallbackIcon,
    required this.isSelected,
    required this.onTap,
    this.imageUrl,
    this.borderRadius = 12,
  });

  final String title;
  final String fallbackIcon;
  final String? imageUrl;
  final bool isSelected;
  final VoidCallback onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final accent = appColors.secondaryColor;
    final radius = BorderRadius.circular(borderRadius);
    return Semantics(
      button: true,
      selected: isSelected,
      label: title,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          constraints: const BoxConstraints(minHeight: 96),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: isSelected ? appColors.stepChipSelectionColor : appColors.white,
            borderRadius: radius,
            border: Border.all(
              color: isSelected ? accent : appColors.customBorderColor,
              width: isSelected ? 1.5 : 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: paymentMethodIcon(
                          fallbackAsset: fallbackIcon,
                          imageUrl: imageUrl,
                          size: 32),
                    ),
                  ),
                  _SelectionDot(isSelected: isSelected, accent: accent),
                ],
              ),
              const SizedBox(height: 12),
              CustomText(
                text: title,
                size: AppDimen.textSize_14,
                fontWeight: AppFont.semiBold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SelectionDot extends StatelessWidget {
  const _SelectionDot({required this.isSelected, required this.accent});

  final bool isSelected;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? accent : Colors.transparent,
        border: Border.all(
          color: isSelected ? accent : appColors.customBorderColor,
          width: 1.5,
        ),
      ),
      child: isSelected
          ? const Icon(Icons.check, size: 14, color: Colors.white)
          : null,
    );
  }
}
