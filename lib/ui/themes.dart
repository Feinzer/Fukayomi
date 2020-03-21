import 'package:flutter/material.dart';

import 'package:fukayomi/internal/data_provider.dart';

class AppTheme {
  static ThemeData white(AppDataProvider appData) {
    return ThemeData.light().copyWith(
      accentColor: appData.accentColor,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Color.fromARGB(255, 247, 247, 247),
      cardColor: Color.fromARGB(255, 255, 255, 255)
    );
  }

  static ThemeData dark(AppDataProvider appData) {
    return ThemeData.dark().copyWith(
      accentColor: appData.accentColor,
      cardColor: Color.fromARGB(255, 60, 60, 60),
    );
  }

  static ThemeData black(AppDataProvider appData) {
    return ThemeData.dark().copyWith(
      accentColor: appData.accentColor,
      scaffoldBackgroundColor: Colors.black,
      cardColor: Color.fromARGB(255, 20, 20, 20),
      primaryColor: Colors.black,
      primaryColorLight: Colors.black,
    );
  }
}