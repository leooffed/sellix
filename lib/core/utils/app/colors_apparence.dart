import 'package:flutter/material.dart';

class AppApparence {
  AppApparence._();

  static ThemeData get lightApp {
    return ThemeData.light().copyWith(
      primaryColor: const Color(0xFF4B39EF),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData get darkApp {
    return ThemeData.dark().copyWith(
      primaryColor: const Color(0xFF4B39EF),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF121212),
    );
  }

  static ThemeMode get themeMode {
    return ThemeMode.system;
  }
}
