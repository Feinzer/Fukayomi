import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

// Key identifiers for variables saved in SharedPreferences.
String accentKey = "accent_color";
String systemThemeKey = "use_system_theme";
String darkThemeKey = "use_dark_theme";
String blackThemeKey = "use_black_theme";

class Preferences {
  SharedPreferences prefs;

  Future<Preferences> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }

  Color getAccentColor() {
    return Color(prefs.getInt(accentKey) ?? Colors.blueAccent.value);
  }

  void saveAccentColor(Color newColor){
    prefs.setInt(accentKey, newColor.value);
  }

  bool getUseSystemTheme() {
    return prefs.getBool(systemThemeKey) ?? true;
  }

  void saveUseSystemTheme(bool value) {
    prefs.setBool(systemThemeKey, value);
  }

  bool getUseDarkTheme() {
    return prefs.getBool(darkThemeKey) ?? false;
  }

  void saveUseDarkTheme(bool value) {
    prefs.setBool(darkThemeKey, value);
  }

  bool getUseBlackTheme() {
    return prefs.getBool(blackThemeKey) ?? true;
  }

  void saveUseBlackTheme(bool value) {
    prefs.setBool(blackThemeKey, value);
  }
}