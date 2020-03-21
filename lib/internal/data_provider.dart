import 'package:flutter/material.dart';

// Internal methods
import 'package:fukayomi/internal/preferences.dart';

class AppDataProvider extends ChangeNotifier {

  Preferences preferences;

  AppDataProvider() {
    initProvider();
  }

  void initProvider() async {
    preferences = await Preferences().init();
    loadSavedData();
  }

  Color _accentColor = Colors.blueAccent;
  bool _useSystemTheme = true;
  bool _useDarkTheme = false;
  bool _useBlackTheme = true;

  Color get accentColor => _accentColor;
  bool get useSystemTheme => _useSystemTheme;
  bool get useDarkTheme => _useDarkTheme;
  bool get useBlackTheme => _useBlackTheme;

  set accentColor(Color value){
    _accentColor = value;
    preferences.saveAccentColor(value);
    notifyListeners();
  }

  set useSystemTheme(bool value){
    _useSystemTheme = value;
    preferences.saveUseSystemTheme(value);
    notifyListeners();
  }

  set useDarkTheme(bool value){
    _useDarkTheme = value;
    preferences.saveUseDarkTheme(value);
    notifyListeners();
  }

  set useBlackTheme(bool value){
    _useBlackTheme = value;
    preferences.saveUseBlackTheme(value);
    notifyListeners();
  }

  Future<void> loadSavedData() async {
    accentColor = preferences.getAccentColor();
    useSystemTheme = preferences.getUseSystemTheme();
    useDarkTheme = preferences.getUseDarkTheme();
    useBlackTheme = preferences.getUseBlackTheme();
  }
}