import 'package:dop_case/screen/main/main_screen.dart';
import 'package:dop_case/screen/secondary/secondary_screen.dart';
import 'package:flutter/material.dart';

import '../../../component/component_shelf.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.main:
        return normalNavigate(const MainScreen());
      case NavigationConstants.secondary:
        return normalNavigate(const SecondaryScreen());
      default:
        return normalNavigate(const MainScreen());
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
