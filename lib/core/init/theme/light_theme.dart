import 'package:flutter/material.dart';

ThemeData getLightTheme() => _lightTheme;
var _mainColor = const Color.fromRGBO(0, 35, 89, 1);

var _lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
  backgroundColor: const Color.fromRGBO(227, 238, 255, 1),
  inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300, fontFamily: 'Montserrat'),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
  textTheme: TextTheme(
      //main screen
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, fontFamily: 'Montserrat', color: _mainColor),
      headlineMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Montserrat', color: _mainColor),
      headlineSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'Montserrat', color: _mainColor),
      //secondary screen
      displayLarge: TextStyle(
        fontSize: 79,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: _mainColor,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: _mainColor,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: _mainColor,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: _mainColor,
      )),
);
