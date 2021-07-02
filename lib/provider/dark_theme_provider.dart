import 'package:ecommerceapp/models/dark_theme_preferences.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefernces darkThemePrefernces = DarkThemePrefernces();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;
  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefernces.setDarkTheme(value);
    notifyListeners();
  }
}
