import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.ussualcolor,
    required this.iconColor,
    required this.boxColor,
  });
  final Color? ussualcolor;
  final Color? iconColor;
  final Color? boxColor;
  @override
  CustomColors copyWith({
    Color? ussualcolor,
    Color? iconColor,
    Color? boxColor,
  }) {
    return CustomColors(
      ussualcolor: ussualcolor ?? this.ussualcolor,
      iconColor: iconColor ?? this.iconColor,
      boxColor: boxColor ?? this.boxColor,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      ussualcolor: Color.lerp(ussualcolor, other.ussualcolor, t),
      iconColor: Color.lerp(iconColor, other.iconColor, t),
      boxColor: Color.lerp(boxColor, other.boxColor, t),
    );
  }

  static const light = CustomColors(
    ussualcolor: Color.fromRGBO(0, 35, 89, 1),
    iconColor: Color.fromRGBO(0, 35, 89, 1),
    boxColor: Colors.white,
  );
  // the dark theme
  static const dark = CustomColors(
    ussualcolor: Color.fromRGBO(0, 35, 89, 1),
    iconColor: Colors.white,
    boxColor: Color.fromRGBO(2, 50, 125, 1),
  );
}
