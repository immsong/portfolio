import 'package:flutter/material.dart';

class AppTheme {
  // 색상
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF9C27B0);
  static const Color darkBackground = Color(0xFF212121);
  static const Color darkSurface = Color(0xFF303030);
  
  // 테마
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );
  
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}