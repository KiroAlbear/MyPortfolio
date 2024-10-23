import 'package:flutter/material.dart';
import 'package:portfolio/config/colors/static_colors.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';

import 'text_style_blueprint.dart';

class CustomTextStyles {
  CustomTextStyles._();

  static TextStyle bold_20_black(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: AppDimensions.getFonTSize20,
        fontWeight: TextStyleBlueprint.boldFontWeight,
        height: 1,
        color: StaticColors.black)!;
  }

  static TextStyle bold_20_white(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: AppDimensions.getFonTSize28,
        fontWeight: TextStyleBlueprint.boldFontWeight,
        color: StaticColors.white)!;
  }

  static TextStyle bold_40_white(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: AppDimensions.getFonTSize40,
        fontWeight: TextStyleBlueprint.boldFontWeight,
        color: StaticColors.white)!;
  }

  static TextStyle regular_20_white(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: AppDimensions.getFonTSize24,
        fontWeight: TextStyleBlueprint.regularFontWeight,
        color: StaticColors.white)!;
  }

  static TextStyle regular_18_white(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: AppDimensions.getFonTSize18,
        fontWeight: TextStyleBlueprint.regularFontWeight,
        color: StaticColors.white)!;
  }

  static TextStyle regular_18_black(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: AppDimensions.getFonTSize18,
        fontWeight: TextStyleBlueprint.regularFontWeight,
        color: StaticColors.black)!;
  }
}
