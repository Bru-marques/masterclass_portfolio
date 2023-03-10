import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemeProvider extends ChangeNotifier {
  final SharedPreferences sharedPreferences;

  DarkThemeProvider(this.sharedPreferences);

  bool get isDarkMode => sharedPreferences?.getBool("isDarkMode") ?? true;

  void setDarkMode(bool val) {
    sharedPreferences?.setBool("isDarkMode", val);
    notifyListeners();
  }
}
