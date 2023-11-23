import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.purple;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,
      // App bar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      // Text btn theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.pink)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: primary,
    // App bar theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    scaffoldBackgroundColor: Colors.black,
  );
}
