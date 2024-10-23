import 'package:flutter/material.dart';
import 'package:portfolio/UI/main_page/models/project_model.dart';
import 'package:portfolio/UI/main_page/widgets/painters/timeline_painter.dart';
import 'package:portfolio/UI/main_page/widgets/project_card_item.dart';
import 'package:portfolio/UI/main_page/widgets/time_line/timeline_header.dart';
import 'package:portfolio/UI/main_page/widgets/time_line/timeline_item.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';
import 'package:portfolio/config/extensions/extensions.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final double profileImageRadious = 100;
  final double profileImageSize = 200;
  final double blurredImageHeight = 700;
  // final double projectContainerHeight = 3000;
  // final Color projectContainerColor = Colors.black;

  final List<ProjectModel> projects = [
    ProjectModel(
      title: Constants.poeTitle,
      description: Constants.poeDescription,
      image: Assets.images.poe.poe,
      route: "examplePage",
    ),
    ProjectModel(
      title: Constants.egyptPostTitle,
      description: Constants.egyptPostDescription,
      image: Assets.images.egypost.egyptPost,
      isReversed: true,
      route: "examplePage",
    ),
    ProjectModel(
      title: Constants.quraanTitle,
      description: Constants.quraanDescription,
      image: Assets.images.quraan.quraan,
      route: "examplePage",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Container(
          // color: Colors.black,
          child: Column(
            children: [
              _buildPageTop(context),
              TimelineHeader(),
              ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? _buildTimeLine(context)
                  : _buildProjectCardItems()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageTop(BuildContext context) {
    return Container(
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
                Container(
                  width: profileImageSize,
                  height: profileImageSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(profileImageRadious),
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
                ),
                40.ph,
                Text(
                  "KIROLOS FOUAD",
                  style: CustomTextStyles.bold_20_white(context).copyWith(
                    letterSpacing: 2.2,
                  ),
                ),
                30.ph,
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppDimensions.w(20)),
                  child: Column(
                    children: [
                      Text(
                        "Senior Mobile Engineer",
                        style: CustomTextStyles.regular_20_white(context),
                        textAlign: TextAlign.center,
                      ),
                      10.ph,
                      Text(
                        "Developing cross platform mobile applications with Flutter",
                        style: CustomTextStyles.regular_20_white(context),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
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
          )
        ],
      ),
    );
  }

  Widget _buildProjectCardItems() {
    return Container(
      // height: projectContainerHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
        child: Column(
          children: [
            ...projects
                .map((e) => Padding(
                      padding:
                          const EdgeInsets.only(top: 80.0, left: 70, right: 70),
                      child: ProjectCartItem(
                        title: e.title,
                        description: e.description,
                        image: e.image,
                        route: e.route,
                      ),
                    ))
                .toList()
          ],
        ),
      ),
    );
  }

  Widget _buildTimeLine(BuildContext context) {
    return Container(
      // height: projectContainerHeight,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomPaint(
                    painter: TimeLinePainter(),
                  ),
                  SizedBox(
                    height: TimeLinePainter.lineLength,
                  ),
                  CustomPaint(
                    painter: TimeLinePainter(),
                  ),
                  SizedBox(
                    height: TimeLinePainter.lineLength,
                  ),
                  CustomPaint(
                    painter: TimeLinePainter(),
                  ),
                  SizedBox(
                    height: TimeLinePainter.lineLength,
                  ),
                  CustomPaint(
                    painter: TimeLinePainter(drawLine: false),
                  ),
                ],
              ),
              Column(
                children: [
                  ...projects
                      .map((e) => TimeLineItem(
                            title: e.title,
                            description: e.description,
                            isReversed: e.isReversed,
                            image: e.image,
                            route: e.route,
                          ))
                      .toList(),
                  // TimeLineItem(
                  //   title: Constants.poeTitle,
                  //   description: Constants.poeDescription,
                  //   image: Assets.images.poe.poe,
                  //   route: "examplePage",
                  // ),
                  // TimeLineItem(
                  //   title: Constants.egyptPostTitle,
                  //   description: Constants.egyptPostDescription,
                  //   image: Assets.images.egypost.egyptPost,
                  //   isReversed: true,
                  //   route: "examplePage",
                  // ),
                  // TimeLineItem(
                  //   title: Constants.quraanTitle,
                  //   description: Constants.quraanDescription,
                  //   image: Assets.images.quraan.quraan,
                  // )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
