import 'package:flutter/material.dart';

class ColorUtils {
  //#region Color Schemes
  ///Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF00639A),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFCEE5FF),
    onPrimaryContainer: Color(0xFF001D32),
    secondary: Color(0xFF006C46),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF8FF7C0),
    onSecondaryContainer: Color(0xFF002112),
    tertiary: Color(0xFF006783),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFBDE9FF),
    onTertiaryContainer: Color(0xFF001F2A),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF2A1700),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF2A1700),
    surfaceVariant: Color(0xFFDEE3EB),
    onSurfaceVariant: Color(0xFF42474E),
    outline: Color(0xFF72777F),
    onInverseSurface: Color(0xFFFFEEDE),
    inverseSurface: Color(0xFF472A00),
    inversePrimary: Color(0xFF96CCFF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF00639A),
  );

  ///Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF96CCFF),
    onPrimary: Color(0xFF003353),
    primaryContainer: Color(0xFF004A76),
    onPrimaryContainer: Color(0xFFCEE5FF),
    secondary: Color(0xFF72DAA5),
    onSecondary: Color(0xFF003822),
    secondaryContainer: Color(0xFF005234),
    onSecondaryContainer: Color(0xFF8FF7C0),
    tertiary: Color(0xFF65D3FF),
    onTertiary: Color(0xFF003546),
    tertiaryContainer: Color(0xFF004D64),
    onTertiaryContainer: Color(0xFFBDE9FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF2A1700),
    onBackground: Color(0xFFFFDDB8),
    surface: Color(0xFF2A1700),
    onSurface: Color(0xFFFFDDB8),
    surfaceVariant: Color(0xFF42474E),
    onSurfaceVariant: Color(0xFFC2C7CF),
    outline: Color(0xFF8C9198),
    onInverseSurface: Color(0xFF2A1700),
    inverseSurface: Color(0xFFFFDDB8),
    inversePrimary: Color(0xFF00639A),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF96CCFF),
  );
  //#endregion
}
