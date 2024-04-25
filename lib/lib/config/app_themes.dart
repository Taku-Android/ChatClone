import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppThemes {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    if (isDarkTheme) {
      return ThemeData(
        scaffoldBackgroundColor: AppColor.scaffoldColor,
      );
    } else {
      return ThemeData(
        scaffoldBackgroundColor: Colors.white,
      );
    }
  }
}
