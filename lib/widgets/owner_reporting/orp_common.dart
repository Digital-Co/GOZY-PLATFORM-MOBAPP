import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gozy/config/client.dart';
import 'package:gozy/constant.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/screens/views/base_controller.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/common_extension_functions.dart';

/// Minimum touch target (points) of every tappable element.
const double orpMinTouch = 44;

bool orpIsDark() => basecontroller.isDarkMode();

/// Colors of the reporting screens. They follow the app theme (appColors) and
/// use fixed light/dark pairs where a status color must stay readable: the
/// `appColors.black` / `white` pair is inverted in dark mode, so it is not
/// used for text on a fixed background.
class OrpColors {
  const OrpColors._();

  static Color get text => appColors.customTextColor;
  static Color get muted => orpIsDark() ? const Color(0xFFB4BDD0) : const Color(0xFF5F6670);
  static Color get card => orpIsDark() ? const Color(0xFF1F2747) : const Color(0xFFF7F7FA);
  static Color get border => orpIsDark() ? const Color(0xFF39426A) : const Color(0xFFDDDDE3);
  static Color get accent => appColors.secondaryColor;
  static Color get good => orpIsDark() ? const Color(0xFF5BE08A) : const Color(0xFF0B7A3B);
  static Color get bad => orpIsDark() ? const Color(0xFFFF8A8A) : const Color(0xFFC62828);
  static Color get upcoming => orpIsDark() ? const Color(0xFF8DB8FF) : const Color(0xFF0B57B0);
  static Color get pending => orpIsDark() ? const Color(0xFFFFC266) : const Color(0xFF8A5200);
  static Color get paid => good;
  static Color get neutral => muted;

  static Color revenueStatus(String? status) {
    switch (status) {
      case 'upcoming':
        return upcoming;
      case 'pendingPayout':
        return pending;
      case 'paid':
        return paid;
      default:
        return muted;
    }
  }

  static Color tone(OwnerTrendTone tone) {
    switch (tone) {
      case OwnerTrendTone.good:
        return good;
      case OwnerTrendTone.bad:
        return bad;
      case OwnerTrendTone.neutral:
        return muted;
    }
  }

  /// Colors of the donut slices (also repeated by the legend, with the text).
  static List<Color> get donut => orpIsDark()
      ? const [Color(0xFF8DB8FF), Color(0xFF5BE08A), Color(0xFFFFC266), Color(0xFFC9A0FF)]
      : const [Color(0xFF0B57B0), Color(0xFF0B7A3B), Color(0xFFB36B00), Color(0xFF7A3FCB)];
}

TextStyle orpStyle(double size, FontWeight weight, {Color? color, double height = 1.25}) => TextStyle(
      fontSize: size,
      fontWeight: weight,
      fontFamily: AppFont.font,
      fontFamilyFallback: const ['Roboto'],
      color: color ?? OrpColors.text,
      height: height,
    );

String orpLocale() => Get.locale?.toString() ?? 'en';

/// An amount with the currency of the RESPONSE (never the profile currency
/// unless the response sent none). "—" when the value is missing: a missing
/// amount is shown, not recomputed.
String orpMoney(double? value, String? currency) {
  if (value == null) return '—';
  final code = (currency == null || currency.isEmpty) ? appPreference.preferredCurrency : currency;
  return value.toNumberFormat(symbol: basecontroller.getCurrencySymbol(currency: code));
}

String orpVehicleTitle(String? title, int? listId) {
  final clean = vehicleTitleOrNull(title);
  if (clean != null) return clean;
  return orpText('orp_vehicle_fallback', {'id': '${listId ?? ''}'});
}

/// Text of an amount that never breaks in the middle of the currency: it
/// stays on one line and shrinks when the width is short.
class OrpMoneyText extends StatelessWidget {
  const OrpMoneyText(this.text, {super.key, required this.style, this.alignment});

  final String text;
  final TextStyle style;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: alignment ?? AlignmentDirectional.centerStart,
      child: Text(text, style: style, maxLines: 1, softWrap: false),
    );
  }
}

class OrpCard extends StatelessWidget {
  const OrpCard({super.key, required this.child, this.padding = const EdgeInsets.all(14), this.onTap, this.semanticLabel});

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final box = Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: OrpColors.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: OrpColors.border),
      ),
      child: child,
    );
    if (onTap == null) return box;
    return Semantics(
      button: true,
      label: semanticLabel,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: box,
      ),
    );
  }
}

class OrpSectionTitle extends StatelessWidget {
  const OrpSectionTitle(this.title, {super.key, this.trailing, this.subtitle});

  final String title;
  final String? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(header: true, child: Text(title, style: orpStyle(17, AppFont.bold))),
                if (subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(subtitle!, style: orpStyle(12.5, AppFont.regular, color: OrpColors.muted)),
                  ),
              ],
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

/// Small colored badge: icon AND text, never color alone.
class OrpStatusBadge extends StatelessWidget {
  const OrpStatusBadge({super.key, required this.status});

  /// upcoming | pendingPayout | paid
  final String? status;

  @override
  Widget build(BuildContext context) {
    final key = revenueStatusKey(status);
    if (key == null) return const SizedBox.shrink();
    final color = OrpColors.revenueStatus(status);
    final icon = status == 'paid'
        ? Icons.check_circle_outline
        : status == 'pendingPayout'
            ? Icons.hourglass_empty
            : Icons.schedule;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.55)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: color),
          const SizedBox(width: 4),
          Flexible(
            child: Text(orpText(key), style: orpStyle(11.5, AppFont.semiBold, color: color), maxLines: 2),
          ),
        ],
      ),
    );
  }
}

/// Arrow + percentage (or "New" / dash) of an indicator and its comparison text.
class OrpTrend extends StatelessWidget {
  const OrpTrend({super.key, required this.indicator, required this.comparison, this.showComparison = true});

  final OwnerIndicator? indicator;
  final String comparison;
  final bool showComparison;

  @override
  Widget build(BuildContext context) {
    final view = trendView(indicator);
    final color = OrpColors.tone(view.tone);
    final IconData? icon = switch (view.arrow) {
      OwnerTrendArrow.up => Icons.arrow_upward,
      OwnerTrendArrow.down => Icons.arrow_downward,
      OwnerTrendArrow.flat => Icons.arrow_forward,
      OwnerTrendArrow.none => null,
    };
    final String label = switch (view.label) {
      OwnerTrendLabel.percent => formatChangePercent(indicator?.change ?? 0, orpLocale()),
      OwnerTrendLabel.newItem => orpText('orp_new'),
      OwnerTrendLabel.dash => '—',
    };
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 4,
      children: [
        if (icon != null) Icon(icon, size: 14, color: color),
        Text(label, style: orpStyle(12.5, AppFont.semiBold, color: color)),
        if (showComparison && comparison.isNotEmpty)
          Text(comparison, style: orpStyle(11.5, AppFont.regular, color: OrpColors.muted)),
      ],
    );
  }
}

/// Grey animated block used while data is loading (no full screen loader).
class OrpSkeleton extends StatefulWidget {
  const OrpSkeleton({super.key, this.height = 16, this.width, this.radius = 8});

  final double height;
  final double? width;
  final double radius;

  @override
  State<OrpSkeleton> createState() => _OrpSkeletonState();
}

class _OrpSkeletonState extends State<OrpSkeleton> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 1000))..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final base = orpIsDark() ? const Color(0xFF2B3358) : const Color(0xFFE6E6EC);
    final light = orpIsDark() ? const Color(0xFF3A4472) : const Color(0xFFF3F3F7);
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) => Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: Color.lerp(base, light, _controller.value),
          borderRadius: BorderRadius.circular(widget.radius),
        ),
      ),
    );
  }
}

/// Error message from the server (400) or the network with a retry button.
class OrpErrorView extends StatelessWidget {
  const OrpErrorView({super.key, required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 8),
      child: Column(
        children: [
          Icon(Icons.error_outline, size: 40, color: OrpColors.bad),
          const SizedBox(height: 10),
          Text(message, textAlign: TextAlign.center, style: orpStyle(14, AppFont.regular)),
          const SizedBox(height: 14),
          OrpButton(label: orpText('orp_retry'), icon: Icons.refresh, onTap: onRetry),
        ],
      ),
    );
  }
}

class OrpButton extends StatelessWidget {
  const OrpButton({super.key, required this.label, required this.onTap, this.icon, this.filled = false});

  final String label;
  final VoidCallback? onTap;
  final IconData? icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final fg = filled ? appColors.buttonTextColor : OrpColors.accent;
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: orpMinTouch, minWidth: orpMinTouch),
      child: Material(
        color: filled ? OrpColors.accent : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: OrpColors.accent),
        ),
        child: InkWell(
          customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[Icon(icon, size: 18, color: fg), const SizedBox(width: 6)],
                Flexible(child: Text(label, textAlign: TextAlign.center, style: orpStyle(14, AppFont.semiBold, color: fg))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Vehicle photo thumbnail with a default visual when the photo is missing or fails.
class OrpVehiclePhoto extends StatelessWidget {
  const OrpVehiclePhoto({super.key, this.photo, this.size = 48});

  final String? photo;
  final double size;

  @override
  Widget build(BuildContext context) {
    final fallback = Container(
      width: size,
      height: size,
      color: OrpColors.border,
      child: Icon(Icons.directions_car_filled_outlined, size: size * 0.5, color: OrpColors.muted),
    );
    return ExcludeSemantics(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: photo == null
            ? fallback
            : Image.network(
                '$imgListingSmall$photo',
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => fallback,
              ),
      ),
    );
  }
}
