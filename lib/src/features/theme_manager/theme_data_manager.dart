import 'package:bugarin/src/features/theme_manager/color_manager.dart';
import 'package:bugarin/src/features/theme_manager/font_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.pink,
    primarySwatch: Colors.teal,
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: ColorManager.primary,
    //   elevation: 0,
    // ),
    fontFamily: FontFamilyConstant.fontFamily,
  );
}
