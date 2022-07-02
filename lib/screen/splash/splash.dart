import 'package:dop_case/core/core_shelf.dart';
import 'package:dop_case/screen/main/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(),
            ),
            (route) => false),
        child: Center(
          child: Image.asset('dop_lg'.imgPngPath),
        ),
      ),
    );
  }
}
