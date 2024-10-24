import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/more_button.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/project_header_description.dart';
import 'package:portfolio/gen/assets.gen.dart';

import 'common_widgets/social_icon.dart';

class ProjectCardItem extends StatelessWidget {
  final double horizontalPadding = 30;
  final String title;
  final String description;
  final String image;
  final String? route;
  final String? googlePlayLink;
  final String? appStoreLink;
  ProjectCardItem({
    required this.title,
    required this.description,
    required this.image,
    this.googlePlayLink,
    this.appStoreLink,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              bottom: 5,
              left: 10,
              child: Container(
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
              )),
          Positioned(
              top: 5,
              bottom: 5,
              right: 10,
              child: Container(
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
              )),
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: buildMainWidget(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column buildMainWidget(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 100, height: 200, child: SvgPicture.asset(image)),
        Padding(
          padding: EdgeInsets.only(
            left: 30.0,
            right: 30,
            top: 0,
          ),
          child:
              ProjectHeaderDescription(title: title, description: description),
        ),
        // top padding for social icons
        (googlePlayLink == null && appStoreLink == null)
            ? SizedBox()
            : SizedBox(
                height: 20,
              ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                googlePlayLink == null
                    ? SizedBox()
                    : SocialIcon(
                        image: Assets.icons.icGooglePlay,
                        iconSize: 30,
                      ),
                appStoreLink == null
                    ? SizedBox()
                    : SizedBox(
                        width: 10,
                      ),
                appStoreLink == null
                    ? SizedBox()
                    : SocialIcon(
                        image: Assets.icons.icAppstore,
                        iconSize: 30,
                      ),
              ],
            ),
            route == null
                ? SizedBox()
                : SizedBox(
                    height: 20,
                  ),
            route == null ? SizedBox() : MoreButton(route: route!),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
