import 'package:flutter/material.dart';
import 'package:portfolio/UI/main_page/widgets/painters/header_line_painter.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';

class TitleHeader extends StatelessWidget {
  final String titleHeader;
  final double titleHeight = 30;
  const TitleHeader({required this.titleHeader});

  @override
  Widget build(BuildContext context) {
    // final lineLength = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
    //     ? AppDimensions.fw() * 0.38
    //     : AppDimensions.fw() * 0.3;

    final lineLength = AppDimensions.fw() * 0.38;

    return Column(
      children: [
        CustomPaint(
          painter: HeaderLinePainter(lineLength: lineLength),
          size: Size(AppDimensions.fw(), 0),
        ),
        SizedBox(
          height: titleHeight,
        ),
        Text(
          titleHeader,
          style: CustomTextStyles.bold_20_white(context).copyWith(
            letterSpacing: 2.2,
          ),
        ),
        SizedBox(
          height: titleHeight - 10,
        ),
        CustomPaint(
          painter: HeaderLinePainter(lineLength: lineLength),
          size: Size(AppDimensions.fw(), 0),
        ),
      ],
    );
  }
}
