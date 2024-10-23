import 'package:flutter/material.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';

class ProjectHeaderDescription extends StatelessWidget {
  final String title;
  final String description;
  const ProjectHeaderDescription(
      {required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bold_20_white(context)),
        Text(description,
            textAlign: TextAlign.center,
            style: CustomTextStyles.regular_18_white(context)),
      ],
    );
  }
}
