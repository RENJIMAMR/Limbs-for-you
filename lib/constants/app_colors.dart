import 'dart:math';

import 'package:flutter/material.dart';

abstract class Palette {
  static const Color primary = Color(0xffFCE900);
  static const Color transparent = Colors.transparent;

  static const Color scaffoldBackgroundColor = Color(0xff317773);
  static Color whiteMain = Colors.white;
  static Color blackMain = Colors.black;
  static Color greyMain = Colors.grey;
  static Color blueMain = const Color.fromARGB(255, 7, 50, 77);
  static Color redMain = Colors.red;
  static Color themeClr = const Color.fromARGB(255, 33, 104, 84);
  static Color blueShadow = Color.fromARGB(125, 0, 0, 255);
  static Color fontColor = const Color.fromARGB(255, 117, 80, 230);

  static var greyShade1;
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) {
  return max(0, min((value + ((255 - value) * factor)).round(), 255));
}

Color tintColor(Color color, double factor) {
  return Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1,
  );
}

int shadeValue(int value, double factor) {
  return max(0, min(value - (value * factor).round(), 255));
}

Color shadeColor(Color color, double factor) {
  return Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1,
  );
}
