import 'package:flutter/material.dart';

class TimeLinePainter extends CustomPainter {
  static double lineLength = 400;
  final double indicatorSize = 7;
  final bool drawLine;
  TimeLinePainter({this.drawLine = true});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.strokeWidth = 1.0;

    double centerWidth = size.width / 2;

    var start = Offset(centerWidth, 0);
    var end = Offset(centerWidth, lineLength);
    if (drawLine) {
      canvas.drawLine(start, end, paint);
    }

    // canvas.drawLine(Offset(centerWidth - lineLength, 0),
    //     Offset(centerWidth + lineLength, 0), paint);
    canvas.drawCircle(Offset(centerWidth, 0), indicatorSize, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // Return true if this instance represents different information
    return true;
  }
}
