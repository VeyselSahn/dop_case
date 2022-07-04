import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../core_shelf.dart';

class ThemeProvider with ChangeNotifier {
  ThemeProvider() {
    // detecting device theme
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    themeData = isDarkMode ? getDarkTheme() : getLightTheme();
  }
  ThemeData themeData = getDarkTheme();

  void changeTheme() {
    themeData = isDark() ? getLightTheme() : getDarkTheme();
    notifyListeners();
  }

  bool isDark() {
    return themeData == getDarkTheme();
  }
}
