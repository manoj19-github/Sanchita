import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:vector_math/vector_math.dart';

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
    var gradientColor = LinearGradient(
        colors: [TColor.secondary, TColor.secondary50, TColor.secondary],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter);
    Paint activePaint = Paint()
      ..shader = gradientColor.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round;
    Paint backgroundPaint = Paint()
      // ..shader = gradientColor.createShader(rect)
      ..color = TColor.gray60.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(rect, radians(135), radians(270), false, backgroundPaint);
    canvas.drawArc(rect, radians(135), radians(156.25), false, activePaint);
  }

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
