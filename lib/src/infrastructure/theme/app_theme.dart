import 'package:flutter/material.dart';

import 'app_theme_data.dart';

class AppTheme {
  ///Comma's Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: AppThemeData.fontFamily,
    textTheme: AppThemeData.textTheme,
    colorScheme: AppThemeData.lightColorScheme,
  );

  ///Comma's Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: AppThemeData.fontFamily,
    textTheme: AppThemeData.textTheme,
    colorScheme: AppThemeData.darkColorScheme,
  );
}
