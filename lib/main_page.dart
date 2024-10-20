import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';
import 'package:portfolio/config/extensions/extensions.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';
import 'package:portfolio/gen/assets.gen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final double imageRadious = 100;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    child: Image.asset(
                      Assets.images.backgrounds.header.path,
                      // Assets.images.profile.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // BackdropFilter(
                  //   filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  //   child: Container(
                  //     color: Colors.black.withOpacity(0.1),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: AppDimensions.h(200)),
                    child: Column(
                      children: [
                        Center(
                            child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                Assets.images.profile.path,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                        80.ph,
                        Text(
                          "KIROLOS FOUAD",
                          style:
                              CustomTextStyles.bold_20_white(context).copyWith(
                            letterSpacing: 2.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Transform.translate(
                      offset: Offset(0, 10),
                      child: Transform.rotate(
                        angle: pi,
                        child: Container(
                          color: Colors.white,
                          height: 100,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
