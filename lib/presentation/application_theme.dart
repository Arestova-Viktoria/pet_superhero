import 'package:flutter/material.dart';
import 'package:test_superhero/domain/model/enum/theme_type.dart';

class ApplicationTheme {
  static const dark_08 = Color(0xFF343434);

  static ThemeMode appThemeMode(ThemeType type) {
    switch (type) {
      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
    }
  }

  static final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),
    useMaterial3: true,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );

  static final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    cardColor: dark_08,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );
}
