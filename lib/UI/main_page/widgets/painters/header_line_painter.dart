import 'package:flutter/material.dart';

class HeaderLinePainter extends CustomPainter {
  final double lineLength = 180;
  final double lineSpacing = 7;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.strokeWidth = 1.0;

    double centerWidth = size.width / 2;

    var start = Offset(centerWidth - lineLength, 0);
    var start2 = Offset(centerWidth - lineLength, lineSpacing);
    var end = Offset(centerWidth + lineLength, 0);
    var end2 = Offset(centerWidth + lineLength, lineSpacing);
    canvas.drawLine(start, end, paint);
    canvas.drawLine(start2, end2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // Return true if this instance represents different information
    return false;
  }
}
