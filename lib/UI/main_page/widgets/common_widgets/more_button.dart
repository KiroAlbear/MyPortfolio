import 'package:flutter/material.dart';
import 'package:portfolio/config/font/custom_text_styles.dart';

class MoreButton extends StatelessWidget {
  final String route;
  const MoreButton({required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          "More",
          style: CustomTextStyles.regular_18_black(context),
        ));
  }
}
