import 'package:flutter/material.dart';
import 'package:portfolio/UI/main_page/widgets/time_line/timeline_item.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';
import 'package:portfolio/config/extensions/extensions.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:timelines_plus/timelines_plus.dart';

import 'widgets/time_line/timeline_header.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final double profileImageRadious = 100;
  final double profileImageSize = 200;
  final double blurredImageHeight = 700;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: blurredImageHeight,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    Assets.images.backgrounds.header.path,
                    // Assets.images.profile.path,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: AppDimensions.h(200)),
                    child: Column(
                      children: [
                        Center(
                            child: Container(
                          width: profileImageSize,
                          height: profileImageSize,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(profileImageRadious),
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
                        40.ph,
                        Text(
                          "KIROLOS FOUAD",
                          style:
                              CustomTextStyles.bold_20_white(context).copyWith(
                            letterSpacing: 2.2,
                          ),
                        ),
                        30.ph,
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimensions.w(20)),
                          child: Column(
                            children: [
                              Text(
                                "Senior Mobile Engineer",
                                style:
                                    CustomTextStyles.regular_20_white(context),
                                textAlign: TextAlign.center,
                              ),
                              10.ph,
                              Text(
                                "Developing cross platform mobile applications with Flutter",
                                style:
                                    CustomTextStyles.regular_20_white(context),
                                textAlign: TextAlign.center,
                              ),
                            ],
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
                      offset: Offset(0, 250),
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            _buildTimeLine(context)
          ],
        ),
      ),
    );
  }

  Widget _buildTimeLine(BuildContext context) {
    return Container(
      height: 1000,
      color: Colors.black,
      child: Column(
        children: [
          TimelineHeader(),
          70.ph,
          SizedBox(
            height: 700,
            child: FixedTimeline.tileBuilder(
              theme: TimelineTheme.of(context).copyWith(
                connectorTheme: ConnectorThemeData(
                    color: Colors.white, thickness: 1, space: 30),
                indicatorTheme: IndicatorThemeData(color: Colors.white),
              ),
              builder: TimelineTileBuilder.connectedFromStyle(
                firstConnectorStyle: ConnectorStyle.transparent,
                lastConnectorStyle: ConnectorStyle.transparent,
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                contentsAlign: ContentsAlign.alternating,
                itemExtentBuilder: (context, index) => 100,
                contentsBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: TimeLineItem(),
                ),
                itemCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}