import 'package:flutter/material.dart';

import '../core_shelf.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData themeData = getDarkTheme();

  void changeTheme() {
    themeData = isDark() ? getLightTheme() : getDarkTheme();
    notifyListeners();
  }

  bool isDark() {
    return themeData == getDarkTheme();
  }
}
