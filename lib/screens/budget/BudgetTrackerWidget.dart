import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:vector_math/vector_math.dart';

class ArcValueModel {
  final Color color;
  final double value;
  ArcValueModel({required this.color, required this.value});
}

class BudgetTrackerWidget extends CustomPainter {
  final double start;
  final double end;
  final double width;
  final double blurWidth;
  final double bgWidth;
  final double space;
  final List<ArcValueModel> drawArcs;

  BudgetTrackerWidget(
      {this.start = 0,
      this.end = 180,
      this.width = 12,
      this.blurWidth = 3,
      required this.drawArcs,
      this.space = 5,
      this.bgWidth = 10});

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
    // var gradientColor = LinearGradient(
    //     colors: [TColor.secondary, TColor.secondary50, TColor.secondary],
    //     begin: Alignment.topCenter,
    //     end: Alignment.bottomCenter);

    Paint backgroundPaint = Paint()
      // ..shader = gradientColor.createShader(rect)
      ..color = TColor.gray60.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = bgWidth
      ..strokeCap = StrokeCap.round;
    var startVal = 180.0 + start;
    var drawStart = startVal;

    canvas.drawArc(
        rect, radians(startVal), radians(180), false, backgroundPaint);
    for (var arc in drawArcs) {
      Paint activePaint = Paint()
        ..color = arc.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = width
        ..strokeCap = StrokeCap.round;

      Paint shadowPaint = Paint()
        ..color = arc.color.withOpacity(0.3)
        ..style = PaintingStyle.stroke
        ..strokeWidth = width + blurWidth
        ..strokeCap = StrokeCap.round
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, 5.0);

      var gap = space - 3;

      Path path = Path()
        ..addArc(rect, radians(drawStart), radians(arc.value - gap));
      canvas.drawPath(path, shadowPaint);
      canvas.drawArc(rect, radians(drawStart), radians(arc.value - gap), false,
          activePaint);
      drawStart += space + arc.value;
    }
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
