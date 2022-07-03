import 'package:dop_case/core/core_shelf.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as provider;

void main() {
  Locator.instance.setupLocator();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return provider.MultiProvider(
      providers: ApplicationProvider.instance!.dependItems,
      builder: (context, widget) => MaterialApp(
        title: '',
        navigatorKey: GlobalVars.navigatorService.navigatorKey,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: NavigationRoute().generateRoute,
        theme: provider.Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
