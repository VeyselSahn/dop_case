import 'package:flutter/material.dart';

class NavigationService {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  // ignore: prefer_function_declarations_over_variables
  final removeAllOldRoutes = (route) => false;

  Future<void> navigateToPage({String path = '/', Object data = const {}}) async {
    await navigatorKey.currentState?.pushNamed(path, arguments: data);
  }

  Future<void> navigateToPageClear({String path = '/', Object data = const {}}) async {
    await navigatorKey.currentState?.pushNamedAndRemoveUntil(path, removeAllOldRoutes, arguments: data);
  }
}
