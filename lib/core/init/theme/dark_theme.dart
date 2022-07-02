import 'package:flutter/material.dart';

ThemeData getDarkTheme() => _darkTheme;

var _darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(0, 35, 89, 1),
  backgroundColor: const Color.fromRGBO(2, 50, 125, 1),
  inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300, fontFamily: 'Montserrat'),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
  textTheme: const TextTheme(
      //main screen
      headlineLarge:
          TextStyle(fontSize: 32, fontWeight: FontWeight.w600, fontFamily: 'Montserrat', color: Colors.white),
      headlineMedium:
          TextStyle(fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Montserrat', color: Colors.white),
      headlineSmall:
          TextStyle(fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'Montserrat', color: Colors.white),
      //secondary screen
      displayLarge: TextStyle(
        fontSize: 79,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: Colors.white,
      )),
);
