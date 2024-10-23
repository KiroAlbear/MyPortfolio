import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/UI/main_page/widgets/common_widgets/project_header_description.dart';

class ProjectCartItem extends StatelessWidget {
  final double horizontalPadding = 30;
  final String title;
  final String description;
  final String image;
  final String? route;
  ProjectCartItem({
    required this.title,
    required this.description,
    required this.image,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 120.0),
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
              width: 100,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(image),
              )),
          ProjectHeaderDescription(title: title, description: description)
        ],
      ),
    );
  }
}
