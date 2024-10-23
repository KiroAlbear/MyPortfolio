import 'package:flutter/material.dart';
import 'package:portfolio/UI/main_page/widgets/painters/header_line_painter.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';

class TimelineHeader extends StatelessWidget {
  const TimelineHeader({super.key});
  final double titleHeight = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPaint(
          painter: HeaderLinePainter(),
          size: Size(AppDimensions.fw(), 0),
        ),
        SizedBox(
          height: titleHeight,
        ),
        Text(
          "MY CONTRIBUTIONS",
          style: CustomTextStyles.bold_20_white(context).copyWith(
            letterSpacing: 2.2,
          ),
        ),
        SizedBox(
          height: titleHeight - 10,
        ),
        CustomPaint(
          painter: HeaderLinePainter(),
          size: Size(AppDimensions.fw(), 0),
        ),
      ],
    );
  }
}
