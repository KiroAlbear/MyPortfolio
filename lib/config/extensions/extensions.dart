import 'package:flutter/material.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: AppDimensions.h(toDouble()),
      );
  SizedBox get pw => SizedBox(
        width: AppDimensions.h(toDouble()),
      );
}
