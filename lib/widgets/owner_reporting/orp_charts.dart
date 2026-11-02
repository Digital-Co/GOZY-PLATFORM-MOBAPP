import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gozy/resources/app_font.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_logic.dart';
import 'package:gozy/utils/owner_reporting/owner_reporting_models.dart';
import 'package:gozy/utils/owner_reporting_i18n.dart';
import 'package:gozy/widgets/owner_reporting/orp_common.dart';
import 'package:intl/intl.dart' show DateFormat, NumberFormat;

String _compact(double value) {
  try {
    return NumberFormat.compact(locale: orpLocale()).format(value);
  } catch (_) {
    return NumberFormat.compact().format(value);
  }
}

/// Evolution of the net revenue: area + points + readable axes. The touched
/// point is highlighted and its value is written above the chart. The values
/// are those of the API; the chart only draws them.
class OrpLineChart extends StatefulWidget {
  const OrpLineChart({
    super.key,
    required this.series,
    required this.currency,
    this.title,
    this.height = 190,
  });

  final OwnerSeries series;
  final String? currency;
  final String? title;
  final double height;

  @override
  State<OrpLineChart> createState() => _OrpLineChartState();
}

class _OrpLineChartState extends State<OrpLineChart> {
  int? _selected;

  List<OwnerSeriesPoint> get _points => widget.series.points;
  String get _granularity => widget.series.granularity ?? 'month';

  String _pointName(OwnerSeriesPoint point) {
    switch (_granularity) {
      case 'year':
        return point.key ?? '';
      case 'month':
        final date = parseApiDay(point.start);
        if (date == null) return point.key ?? '';
        return DateFormat.yMMM(_safeLocale()).format(date);
      default:
        return formatApiDay(point.start, orpLocale());
    }
  }

  String _safeLocale() {
    try {
      DateFormat.yMMM(orpLocale());
      return orpLocale();
    } catch (_) {
      return 'en';
    }
  }

  String _pointText(OwnerSeriesPoint point) {
    final bookings = point.bookings;
    final amount = orpMoney(point.netRevenue, widget.currency);
    final extra = bookings == null ? '' : ' · ${orpText('orp_bookings_count', {'count': '$bookings'})}';
    return '${_pointName(point)} : $amount$extra';
  }

  String get _semanticsLabel {
    final points = _points;
    final head = widget.title ?? orpText('orp_evolution_title');
    if (points.isEmpty) return head;
    if (points.length <= 31) {
      return '$head. ${points.map((p) => _pointText(p)).join('; ')}';
    }
    final last = points.last;
    final best = points.reduce((a, b) => (a.netRevenue ?? 0) >= (b.netRevenue ?? 0) ? a : b);
    return '$head. ${orpText('orp_chart_points', {'count': '${points.length}'})}. '
        '${orpText('orp_chart_last')} ${_pointText(last)}. ${orpText('orp_chart_best')} ${_pointText(best)}';
  }

  void _select(Offset local, double width) {
    final count = _points.length;
    if (count == 0) return;
    const left = _OrpLinePainter.leftPad;
    final usable = math.max(1.0, width - left - _OrpLinePainter.rightPad);
    final ratio = ((local.dx - left) / usable).clamp(0.0, 1.0);
    final index = count == 1 ? 0 : (ratio * (count - 1)).round();
    if (index != _selected) setState(() => _selected = index);
  }

  @override
  Widget build(BuildContext context) {
    final points = _points;
    if (points.isEmpty) {
      return SizedBox(
        height: 60,
        child: Center(child: Text(orpText('orp_chart_no_data'), style: orpStyle(13, AppFont.regular, color: OrpColors.muted))),
      );
    }
    final selected = (_selected != null && _selected! < points.length) ? points[_selected!] : null;
    return Semantics(
      container: true,
      label: _semanticsLabel,
      child: ExcludeSemantics(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 36,
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  selected == null ? orpText('orp_chart_hint') : _pointText(selected),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: orpStyle(12.5, selected == null ? AppFont.regular : AppFont.semiBold,
                      color: selected == null ? OrpColors.muted : OrpColors.text),
                ),
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTapDown: (d) => _select(d.localPosition, constraints.maxWidth),
                onHorizontalDragUpdate: (d) => _select(d.localPosition, constraints.maxWidth),
                child: CustomPaint(
                  size: Size(constraints.maxWidth, widget.height),
                  painter: _OrpLinePainter(
                    points: points,
                    labels: [for (final p in points) seriesPointLabel(p, _granularity, orpLocale())],
                    selected: _selected,
                    line: OrpColors.accent,
                    text: OrpColors.muted,
                    grid: OrpColors.border,
                    surface: OrpColors.card,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _OrpLinePainter extends CustomPainter {
  _OrpLinePainter({
    required this.points,
    required this.labels,
    required this.selected,
    required this.line,
    required this.text,
    required this.grid,
    required this.surface,
  });

  static const double leftPad = 44;
  static const double rightPad = 10;
  static const double topPad = 8;
  static const double bottomPad = 24;

  final List<OwnerSeriesPoint> points;
  final List<String> labels;
  final int? selected;
  final Color line;
  final Color text;
  final Color grid;
  final Color surface;

  @override
  void paint(Canvas canvas, Size size) {
    final values = points.map((p) => math.max(0.0, p.netRevenue ?? 0)).toList();
    final maxValue = values.fold<double>(0, math.max);
    final top = maxValue <= 0 ? 1.0 : maxValue;
    final plot = Rect.fromLTRB(leftPad, topPad, size.width - rightPad, size.height - bottomPad);

    final gridPaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (var i = 0; i <= 2; i++) {
      final y = plot.bottom - plot.height * i / 2;
      canvas.drawLine(Offset(plot.left, y), Offset(plot.right, y), gridPaint);
      _drawText(canvas, _compact(top * i / 2), Offset(plot.left - 6, y), alignRight: true, middle: true);
    }

    final n = points.length;
    Offset at(int i) {
      final x = n == 1 ? plot.center.dx : plot.left + plot.width * i / (n - 1);
      final y = plot.bottom - plot.height * (values[i] / top);
      return Offset(x, y);
    }

    final path = Path()..moveTo(at(0).dx, at(0).dy);
    for (var i = 1; i < n; i++) {
      path.lineTo(at(i).dx, at(i).dy);
    }
    final area = Path.from(path)
      ..lineTo(at(n - 1).dx, plot.bottom)
      ..lineTo(at(0).dx, plot.bottom)
      ..close();
    canvas.drawPath(area, Paint()..color = line.withValues(alpha: 0.14));
    canvas.drawPath(
      path,
      Paint()
        ..color = line
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.4
        ..strokeJoin = StrokeJoin.round,
    );

    final showDots = n <= 31;
    for (var i = 0; i < n; i++) {
      final isSelected = i == selected;
      if (!showDots && !isSelected) continue;
      final center = at(i);
      canvas.drawCircle(center, isSelected ? 6.5 : 4, Paint()..color = surface);
      canvas.drawCircle(center, isSelected ? 4.5 : 2.8, Paint()..color = line);
    }

    final step = math.max(1, (n / 6).ceil());
    for (var i = 0; i < n; i += step) {
      _drawText(canvas, labels[i], Offset(at(i).dx, plot.bottom + 6), centered: true);
    }
    if (selected != null && selected! < n && selected! % step != 0) {
      _drawText(canvas, labels[selected!], Offset(at(selected!).dx, plot.bottom + 6), centered: true, bold: true);
    }
  }

  void _drawText(Canvas canvas, String value, Offset anchor,
      {bool alignRight = false, bool middle = false, bool centered = false, bool bold = false}) {
    final painter = TextPainter(
      text: TextSpan(
        text: value,
        style: TextStyle(fontSize: 10.5, color: text, fontFamily: AppFont.font, fontWeight: bold ? FontWeight.w700 : FontWeight.w400),
      ),
      textDirection: TextDirection.ltr,
      maxLines: 1,
    )..layout();
    var dx = anchor.dx;
    var dy = anchor.dy;
    if (alignRight) dx -= painter.width;
    if (centered) dx -= painter.width / 2;
    if (middle) dy -= painter.height / 2;
    painter.paint(canvas, Offset(dx, dy));
  }

  @override
  bool shouldRepaint(covariant _OrpLinePainter old) =>
      old.points != points || old.selected != selected || old.line != line || old.text != text;
}

class OrpDonutSlice {
  const OrpDonutSlice({required this.label, required this.value, required this.valueText, required this.color});

  final String label;
  final double value;

  /// Value as displayed in the legend (amount with currency, or a count).
  final String valueText;
  final Color color;
}

/// Donut with a legend. The percentages of the legend are the only figures
/// computed by the app, with the largest remainder so they add up to 100.
class OrpDonut extends StatelessWidget {
  const OrpDonut({
    super.key,
    required this.slices,
    required this.centerTitle,
    required this.centerValue,
    required this.semanticsTitle,
  });

  final List<OrpDonutSlice> slices;
  final String centerTitle;
  final String centerValue;
  final String semanticsTitle;

  @override
  Widget build(BuildContext context) {
    final percentages = largestRemainderPercentages(slices.map((s) => s.value).toList());
    final legend = [
      for (var i = 0; i < slices.length; i++) '${slices[i].label}, ${slices[i].valueText}, ${percentages[i]} %',
    ];
    return Semantics(
      container: true,
      label: '$semanticsTitle. $centerTitle: $centerValue. ${legend.join('; ')}',
      child: ExcludeSemantics(
        child: Column(
          children: [
            SizedBox(
              width: 170,
              height: 170,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(170, 170),
                    painter: _OrpDonutPainter(
                      values: slices.map((s) => s.value).toList(),
                      colors: slices.map((s) => s.color).toList(),
                      track: OrpColors.border,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(centerTitle, maxLines: 2, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, style: orpStyle(10.5, AppFont.regular, color: OrpColors.muted, height: 1.1)),
                        OrpMoneyText(centerValue, style: orpStyle(15, AppFont.bold), alignment: Alignment.center),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            for (var i = 0; i < slices.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Container(width: 12, height: 12, decoration: BoxDecoration(color: slices[i].color, borderRadius: BorderRadius.circular(3))),
                    const SizedBox(width: 8),
                    Expanded(flex: 2, child: Text(slices[i].label, style: orpStyle(13, AppFont.regular))),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text('${slices[i].valueText} · ${percentages[i]} %',
                            textAlign: TextAlign.end, style: orpStyle(13, AppFont.semiBold)),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _OrpDonutPainter extends CustomPainter {
  _OrpDonutPainter({required this.values, required this.colors, required this.track});

  final List<double> values;
  final List<Color> colors;
  final Color track;

  @override
  void paint(Canvas canvas, Size size) {
    const stroke = 24.0;
    final rect = Rect.fromLTWH(stroke / 2, stroke / 2, size.width - stroke, size.height - stroke);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke;
    canvas.drawArc(rect, 0, math.pi * 2, false, paint..color = track);
    final total = values.fold<double>(0, (sum, v) => sum + (v > 0 ? v : 0));
    if (total <= 0) return;
    var start = -math.pi / 2;
    for (var i = 0; i < values.length; i++) {
      if (values[i] <= 0) continue;
      final sweep = math.pi * 2 * values[i] / total;
      canvas.drawArc(rect, start, math.max(0.001, sweep - (values.length > 1 ? 0.02 : 0)), false, paint..color = colors[i % colors.length]);
      start += sweep;
    }
  }

  @override
  bool shouldRepaint(covariant _OrpDonutPainter old) => old.values != values || old.colors != colors || old.track != track;
}

/// Occupancy bar (0 to 100, value from the API).
class OrpOccupancyBar extends StatelessWidget {
  const OrpOccupancyBar({super.key, required this.percent, this.height = 8});

  final double? percent;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: _OrpBarPainter(fraction: ((percent ?? 0) / 100).clamp(0.0, 1.0), color: OrpColors.accent, track: OrpColors.border),
    );
  }
}

class _OrpBarPainter extends CustomPainter {
  _OrpBarPainter({required this.fraction, required this.color, required this.track});

  final double fraction;
  final Color color;
  final Color track;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = Radius.circular(size.height / 2);
    canvas.drawRRect(RRect.fromRectAndRadius(Offset.zero & size, radius), Paint()..color = track);
    if (fraction > 0) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, math.max(size.height, size.width * fraction), size.height), radius),
        Paint()..color = color,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _OrpBarPainter old) => old.fraction != fraction || old.color != color || old.track != track;
}
