import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/more_button.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/project_header_description.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/social_icon.dart';
import 'package:portfolio/config/extensions/extensions.dart';
import 'package:portfolio/gen/assets.gen.dart';

class TimeLineItem extends StatelessWidget {
  final double horizontalPadding = 30;
  final String title;
  final String description;
  final String image;
  final isReversed;
  final String? route;
  final String? googlePlayLink;
  final String? appStoreLink;
  const TimeLineItem(
      {this.isReversed = false,
      this.route,
      required this.title,
      required this.description,
      required this.image,
      this.googlePlayLink,
      this.appStoreLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Directionality(
        textDirection: isReversed ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 120.0),
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
                          child: SvgPicture.asset(image),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    children: [
                      ProjectHeaderDescription(
                          title: title, description: description),
                      20.ph,
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            googlePlayLink == null
                                ? SizedBox()
                                : SocialIcon(
                                    image: Assets.icons.icGooglePlay,
                                    iconSize: 30,
                                  ),
                            googlePlayLink == null
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
                            appStoreLink == null
                                ? SizedBox()
                                : SizedBox(
                                    width: 10,
                                  ),
                            route == null
                                ? SizedBox()
                                : MoreButton(route: route!),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
