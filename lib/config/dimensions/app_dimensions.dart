import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimensions {
  static ScreenUtil screenUtil = ScreenUtil();

  static Size designSize = const Size(430, 932);
  static double? width;
  static double? height;
  static double textHeight = 1.8;
  static double tabletMinimumWidth = 800;
  // double closeIconSize = 16;
  static double get screenPadding => w(16.0);

  static double radius(double radius) {
    return screenUtil.radius(radius);
  }

  static double get getFonTSize14 {
    return h(14);
  }

  static double get getFonTSize40 {
    return h(40);
  }

  static double get getFonTSize45 {
    return h(45);
  }

  static double get getFonTSize35 {
    return h(35);
  }

  static double get getFonTSize33 {
    return h(33);
  }

  static double get getFonTSize49 {
    return h(49);
  }

  static double get getFonTSize13 {
    return h(13);
  }

  static double get getFonTSize12 {
    return h(12);
  }

  static double get getFonTSize10 {
    return h(10);
  }

  static double get getFonTSize11 {
    return h(11);
  }

  static double get getFonTSize15 {
    return h(15);
  }

  static double get getFonTSize16 {
    return h(16);
  }

  static double get getFonTSize17 {
    return h(16);
  }

  static double get getHelperFonTSize {
    return h(16);
  }

  static double get getFonTSize18 {
    return h(18);
  }

  static double get getFonTSize20 {
    return h(20);
  }

  static double get getFonTSize22 {
    return h(22);
  }

  static double get getFonTSize24 {
    return h(24);
  }

  static double get getFonTSize26 {
    return h(26);
  }

  static double get getFonTSize30 {
    return h(30);
  }

  static double get getFonTSize34 {
    return h(34);
  }

  static double get getFonTSize38 {
    return h(38);
  }

  static double get getFonTSize60 {
    return h(52);
  }

  static double get getFonTSize65 {
    return h(65);
  }

  static double get getFonTSize50 {
    return h(50);
  }

  static double textFieldHeight(double helperTextFontSize) {
    return h(58) + helperTextFontSize * textHeight;
  }

  static double h(double value) {
    return (value / designSize.height) * screenUtil.screenHeight;
  }

  static double w(double value) {
    return (value / designSize.width) * screenUtil.screenWidth;
  }

  static double fh() {
    return screenUtil.screenHeight;
  }

  static double fw() {
    return screenUtil.screenWidth;
  }
}
