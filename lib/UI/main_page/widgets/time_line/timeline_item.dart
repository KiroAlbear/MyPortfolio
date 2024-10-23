import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/config/extensions/extensions.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';
import 'package:portfolio/gen/assets.gen.dart';

class TimeLineItem extends StatelessWidget {
  final double horizontalPadding = 20;
  final isReversed;
  const TimeLineItem({this.isReversed = false});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isReversed ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Container(
                  child: SizedBox(
                      width: 60,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(Assets.images.poe.poe),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  children: [
                    Text("Presidency of Egypt",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bold_20_white(context)),
                    Text(
                        "The Official Application for Presidency of Arab Republic of Egypt serves as primary channel for the dissemination of important updates, presidential announcements, urgent news, and notifications by the Egyptian government.",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.regular_18_white(context)),
                    20.ph,
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View Project",
                          style: CustomTextStyles.regular_18_black(context),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
