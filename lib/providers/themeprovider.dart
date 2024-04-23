import 'package:flutter/material.dart';
import 'package:light_dark_mode/theme/darktheme.dart';
import 'package:light_dark_mode/theme/lighttheme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lighttheme;

  // ignore: unnecessary_getters_setters
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
  }

  void togglethemes() {
    /*This ternary operator checks if _themeData is equal to lighttheme.
    If it is, themeData is assigned darktheme; otherwise, it is assigned lighttheme.*/
    themeData = (_themeData == lighttheme) ? darktheme : lighttheme;
    notifyListeners();
  }
}
