import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }
}