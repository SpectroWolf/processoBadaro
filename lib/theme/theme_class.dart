import 'package:flutter/material.dart';
import 'package:processo_badaro/utils/app_colors.dart';

import '../extensions/hexcolor.dart';

class ThemeClass {

  static ThemeData pinkTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
        color: AppColor.pink,
        iconTheme: IconThemeData(color: AppColor.white),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.pink)
  );

  static ThemeData orangeTheme = ThemeData(
    useMaterial3: true,
      primaryColor: AppColor.offWhite,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColor.orange,
    ),
  );
}

ThemeClass _themeClass = ThemeClass();
