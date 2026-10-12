import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/resources/app_lang.dart';
import 'package:gozy/utils/duration_discount.dart';

String _percentageLabel(double value) => value == value.roundToDouble()
    ? value.toInt().toString()
    : value.toStringAsFixed(1);

class DurationDiscountBadge extends StatelessWidget {
  const DurationDiscountBadge({
    super.key,
    required this.weeklyDiscount,
    required this.monthlyDiscount,
  });

  final num? weeklyDiscount;
  final num? monthlyDiscount;

  @override
  Widget build(BuildContext context) {
    // Teaser only: the biggest discount, whatever the dates, to push the tap.
    final offer = DurationDiscountPresentation.highlightedOffer(
      weeklyDiscount: weeklyDiscount,
      monthlyDiscount: monthlyDiscount,
    );
    if (offer == null) return const SizedBox.shrink();
    return Container(
      constraints: const BoxConstraints(maxWidth: 220),
      padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 14, 5),
      decoration: BoxDecoration(
        color: const Color(0xff16794f),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _DiscountSeal(size: 26, color: Color(0xff16794f)),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              duration_discount_up_to
                  .trParams({'percent': _percentageLabel(offer.percentage)}),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textScaler:
                  MediaQuery.textScalerOf(context).clamp(maxScaleFactor: 1.4),
              style: const TextStyle(
                  fontFamily: AppFont.font,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}

const String _sealPath =
    'M23.60 12.00 L23.46 12.60 L23.09 13.17 L22.57 13.67 L22.03 14.13 L21.58 14.57 L21.32 15.03 L21.26 15.56 L21.36 16.17 L21.53 16.86 L21.66 17.57 L21.63 18.25 L21.38 18.82 L20.92 19.22 L20.29 19.46 L19.57 19.57 L18.86 19.62 L18.24 19.71 L17.76 19.93 L17.40 20.32 L17.12 20.88 L16.86 21.53 L16.54 22.19 L16.11 22.72 L15.58 23.03 L14.97 23.09 L14.32 22.91 L13.67 22.57 L13.07 22.19 L12.52 21.91 L12.00 21.80 L11.48 21.91 L10.93 22.19 L10.33 22.57 L9.68 22.91 L9.03 23.09 L8.42 23.03 L7.89 22.72 L7.46 22.19 L7.14 21.53 L6.88 20.88 L6.60 20.32 L6.24 19.93 L5.76 19.71 L5.14 19.62 L4.43 19.57 L3.71 19.46 L3.08 19.22 L2.62 18.82 L2.37 18.25 L2.34 17.57 L2.47 16.86 L2.64 16.17 L2.74 15.56 L2.68 15.03 L2.42 14.57 L1.97 14.13 L1.43 13.67 L0.91 13.17 L0.54 12.60 L0.40 12.00 L0.54 11.40 L0.91 10.83 L1.43 10.33 L1.97 9.87 L2.42 9.43 L2.68 8.97 L2.74 8.44 L2.64 7.83 L2.47 7.14 L2.34 6.43 L2.37 5.75 L2.62 5.18 L3.08 4.78 L3.71 4.54 L4.43 4.43 L5.14 4.38 L5.76 4.29 L6.24 4.07 L6.60 3.68 L6.87 3.12 L7.14 2.47 L7.46 1.81 L7.89 1.28 L8.42 0.97 L9.03 0.91 L9.68 1.09 L10.33 1.43 L10.93 1.81 L11.48 2.09 L12.00 2.20 L12.52 2.09 L13.07 1.81 L13.67 1.43 L14.32 1.09 L14.97 0.91 L15.58 0.97 L16.11 1.28 L16.54 1.81 L16.86 2.47 L17.12 3.12 L17.40 3.68 L17.76 4.07 L18.24 4.29 L18.86 4.38 L19.57 4.43 L20.29 4.54 L20.92 4.78 L21.38 5.18 L21.63 5.75 L21.66 6.43 L21.53 7.14 L21.36 7.83 L21.26 8.44 L21.32 8.97 L21.58 9.43 L22.03 9.87 L22.57 10.33 L23.09 10.83 L23.46 11.40Z';

/// White scalloped seal with a percent sign, as in the badge mockup.
class _DiscountSeal extends StatelessWidget {
  const _DiscountSeal(
      {required this.size, required this.color, this.sealColor = Colors.white});

  final double size;
  final Color color;
  final Color sealColor;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.string(
              '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="$_sealPath"/></svg>',
              width: size,
              height: size,
              colorFilter: ColorFilter.mode(sealColor, BlendMode.srcIn),
            ),
            Text('%',
                style: TextStyle(
                    color: color,
                    fontSize: size * 0.56,
                    fontWeight: FontWeight.w700,
                    height: 1)),
          ],
        ),
      );
}

class DurationDiscountOffersPanel extends StatelessWidget {
  const DurationDiscountOffersPanel({
    super.key,
    required this.weeklyDiscount,
    required this.monthlyDiscount,
  });

  final num? weeklyDiscount;
  final num? monthlyDiscount;

  @override
  Widget build(BuildContext context) {
    final offers = DurationDiscountPresentation.validOffers(
      weeklyDiscount: weeklyDiscount,
      monthlyDiscount: monthlyDiscount,
    );
    if (offers.isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffeaf7f0),
        borderRadius: BorderRadius.circular(18),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        // Sizes are designed for a ~304 dp content width (a 360 dp phone) and
        // scale with the available width. Header | divider | tiles stay on one
        // row; on very small widths the seal moves above the title and
        // everything shrinks further. System text scale is capped.
        final width = constraints.maxWidth;
        final compact = width < 262;
        final k = (width / 304).clamp(compact ? 0.72 : 0.85, 1.15).toDouble();
        return DefaultTextStyle.merge(
          style: const TextStyle(fontFamily: AppFont.font),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(
                textScaler: MediaQuery.textScalerOf(context)
                    .clamp(maxScaleFactor: 1.15)),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: compact ? 40 : 45,
                      child: _OffersHeader(k: k, compact: compact)),
                  SizedBox(width: 8 * k),
                  const VerticalDivider(
                      width: 1, thickness: 1, color: Color(0xffcce5d8)),
                  SizedBox(width: 8 * k),
                  Expanded(
                    flex: compact ? 60 : 55,
                    child: Row(
                      children: [
                        for (var i = 0; i < offers.length; i++) ...[
                          if (i > 0) SizedBox(width: 6 * k),
                          Expanded(child: _OfferTile(offer: offers[i], k: k)),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _OffersHeader extends StatelessWidget {
  const _OffersHeader({required this.k, required this.compact});

  final double k;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xff125e40);
    // The title is "<small line>\n<emphasised line>".
    final lines = duration_discount_title.tr.split('\n');
    final top = lines.length > 1 ? lines.first : null;
    final main = lines.length > 1 ? lines.sublist(1).join(' ') : lines.first;
    final seal = _DiscountSeal(
        size: 24 * k, color: Colors.white, sealColor: const Color(0xff16794f));
    final texts = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (top != null)
          _FitLine(top,
              style: TextStyle(
                  fontSize: 12.5 * k,
                  height: 1.15,
                  fontWeight: FontWeight.w500,
                  color: dark)),
        _FitLine(main,
            style: TextStyle(
                fontSize: 16 * k,
                height: 1.15,
                fontWeight: FontWeight.w700,
                color: dark)),
        SizedBox(height: 4 * k),
        Text(duration_discount_subtitle.tr,
            style: TextStyle(
                fontSize: 11 * k,
                fontWeight: FontWeight.w400,
                height: 1.25,
                color: const Color(0xff365b48))),
      ],
    );
    if (compact) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [seal, SizedBox(height: 4 * k), texts],
      );
    }
    return Row(
      children: [
        seal,
        SizedBox(width: 6 * k),
        Expanded(child: texts),
      ],
    );
  }
}

/// One-line text that shrinks (never wraps) when the column is too narrow.
class _FitLine extends StatelessWidget {
  const _FitLine(this.text, {required this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) => FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(text, maxLines: 1, style: style),
      );
}

class _OfferTile extends StatelessWidget {
  const _OfferTile({required this.offer, this.k = 1});

  final DurationDiscountOffer offer;
  final double k;

  @override
  Widget build(BuildContext context) {
    const green = Color(0xff16794f);
    const muted = Color(0xff365b48);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3 * k, vertical: 8 * k),
      decoration: BoxDecoration(
        color: const Color(0xfff7fcf9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_month_outlined, size: 14 * k, color: green),
              SizedBox(width: 3 * k),
              Flexible(
                child: Text(
                  (offer.thresholdDays >= 28
                          ? duration_discount_month
                          : duration_discount_week)
                      .tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 11.5 * k, color: muted),
                ),
              ),
            ],
          ),
          SizedBox(height: 2 * k),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('−${_percentageLabel(offer.percentage)} %',
                maxLines: 1,
                style: TextStyle(
                    fontSize: 22 * k,
                    fontWeight: FontWeight.w700,
                    color: green)),
          ),
          SizedBox(height: 2 * k),
          Text(
            duration_discount_from_days_short
                .trParams({'days': offer.thresholdDays.toString()}),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 11.5 * k, color: muted),
          ),
        ],
      ),
    );
  }
}

class DurationDiscountSavingsPanel extends StatelessWidget {
  const DurationDiscountSavingsPanel(
      {super.key, required this.formattedSavings});

  final String formattedSavings;

  @override
  Widget build(BuildContext context) {
    if (formattedSavings.trim().isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffeaf7f0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        duration_discount_you_save.trParams({'amount': formattedSavings}),
        style: const TextStyle(
            color: Color(0xff125e40), fontWeight: FontWeight.w700),
      ),
    );
  }
}

/// Nudge proposing to extend the booking to the next discount tier.
///
/// The guest can close it with the cross. Closing only hides this instance:
/// nothing is remembered, so it can show again for another selection.
class DurationDiscountExtensionPanel extends StatefulWidget {
  const DurationDiscountExtensionPanel({
    super.key,
    required this.offer,
    required this.currentDays,
    required this.onAddDays,
    this.margin = const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 12),
  });

  final DurationDiscountOffer offer;
  final int currentDays;
  final VoidCallback onAddDays;
  final EdgeInsetsGeometry margin;

  @override
  State<DurationDiscountExtensionPanel> createState() =>
      _DurationDiscountExtensionPanelState();
}

class _DurationDiscountExtensionPanelState
    extends State<DurationDiscountExtensionPanel> {
  bool _closed = false;

  void _close() => setState(() => _closed = true);

  @override
  Widget build(BuildContext context) {
    if (_closed) return const SizedBox.shrink();
    final daysToAdd = widget.offer.daysToReach(widget.currentDays);
    if (daysToAdd <= 0) return const SizedBox.shrink();
    const green = Color(0xff125e40);
    return Padding(
      padding: widget.margin,
      child: Material(
        color: const Color(0xffeaf7f0),
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Expanded(
              child: Semantics(
                button: true,
                label: duration_discount_add_days
                    .trParams({'days': daysToAdd.toString()}),
                child: InkWell(
                  onTap: widget.onAddDays,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12, 10, 4, 10),
                    child: Row(
                      children: [
                        const Icon(Icons.local_offer_outlined,
                            size: 16, color: green),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            duration_discount_unlock.trParams({
                              'days': daysToAdd.toString(),
                              'percent':
                                  _percentageLabel(widget.offer.percentage),
                            }),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: green,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xff16794f),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.add,
                                  size: 14, color: Colors.white),
                              Text(daysToAdd.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: _close,
              tooltip: label_close.tr,
              visualDensity: VisualDensity.compact,
              constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.close_rounded, size: 18, color: green),
            ),
          ],
        ),
      ),
    );
  }
}
