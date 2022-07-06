import 'package:comma/src/infrastructure/utils/color_utils.dart';
import 'package:comma/src/infrastructure/utils/font_utils.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static const String fontFamily = FontUtils.fontFamily;
  static const TextTheme textTheme = FontUtils.textTheme;
  static const ColorScheme lightColorScheme = ColorUtils.lightColorScheme;
  static const ColorScheme darkColorScheme = ColorUtils.darkColorScheme;
}
