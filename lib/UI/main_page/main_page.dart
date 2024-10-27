import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:portfolio/UI/main_page/models/project_model.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/social_icon.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/title_header.dart';
import 'package:portfolio/UI/main_page/widgets/painters/timeline_painter.dart';
import 'package:portfolio/UI/main_page/widgets/project_card_item.dart';
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
      googlePlayLink: "sdf",
      appstorePlayLink: "sdf",
    ),
    ProjectModel(
      title: Constants.egyptPostTitle,
      description: Constants.egyptPostDescription,
      image: Assets.images.egypost.egyptPost,
      isReversed: true,
      googlePlayLink: Constants.egyptPostGooglePlayLink,
      appstorePlayLink: Constants.egyptPostAppstoreLink,
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
      child: Stack(
        fit: StackFit.expand,
        children: [
          _buildGifBackground(context),
          SingleChildScrollView(
            child: Container(
              // color: Colors.black,
              child: Column(
                children: [
                  _buildPageTop(context),
                  TitleHeader(
                    titleHeader: "MY CONTRIBUTIONS",
                  ),
                  ResponsiveBreakpoints.of(context).largerThan(TABLET)
                      ? _buildTimeLine(context)
                      : _buildProjectCardItems(context),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    // color: Colors.black,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [0.1, 0.5],
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        TitleHeader(
                          titleHeader: "MY IFORMATION",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(
                            image: Assets.icons.icLinkedin,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SocialIcon(
                            image: Assets.icons.icGithub,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SocialIcon(
                            image: Assets.icons.icPhone,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SocialIcon(
                            image: Assets.icons.icEmail,
                          ),
                        ],
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 200,
                  ),
                      ],
                    ),
                  ),
                  
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildGifBackground(BuildContext context) {
    return Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
             
              Gif(image: Assets.gifs.bgBlue.provider(),
              fit:ResponsiveBreakpoints.of(context).largerThan(TABLET)?BoxFit.fill:BoxFit.cover,
              autostart: Autostart.loop,
              ),
               Container(
                color: Colors.black.withOpacity(0.85),
            
          ),
            ],
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
           Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Transform.translate(
            offset: Offset(0, 120),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.5, 0.9,1],
                colors: [Colors.transparent, Colors.black,Colors.transparent,],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProjectCardItems(BuildContext context) {
    return Container(
      // height: projectContainerHeight,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                ? AppDimensions.w(50)
                : AppDimensions.w(30),
            vertical: 30),
        child: Column(
          children: [
            ...projects
                .map((e) => Padding(
                      padding: EdgeInsets.only(
                        top: 80.0,
                      ),
                      child: ProjectCardItem(
                        title: e.title,
                        description: e.description,
                        image: e.image,
                        route: e.route,
                        googlePlayLink: e.googlePlayLink,
                        appStoreLink: e.appstorePlayLink,
                      ),
                    ))
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
                            googlePlayLink: e.googlePlayLink,
                            appStoreLink: e.appstorePlayLink,
                          )),
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
