

import 'package:flutter/material.dart';

class LightScheme extends ColorScheme {
  const LightScheme()
      : super(
    primary: Colors.blue,
    secondary: Colors.blue,
    background: Colors.white,
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onBackground: Colors.black,
    onSurface: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );
  static const List <Color> orangeGradient = [
    Color(0xFFFB9932),
    Color(0xFFFFC281),
    Color(0xFFFCD2A7),
    Color(0xFFFCEBD9),
  ];
  static const List <Color> pinkGradient = [
    Color(0xFFF159FF),
    Color(0xFFF47BFF),
    Color(0xFFF8A7FF),
    Color(0xffFCDBFF),
  ];
  static const List <Color> blueGradient = [
    Color(0xFF267CFE),
    Color(0xFF408CFF),
    Color(0xFF6DA7FF),
    Color(0xff84B4FD),
  ];
  static const List <Color> purpleGradient = [
    Color(0xFF9035F0),
    Color(0xFF9F50F1),
    Color(0xFFB784ED),
    Color(0xFFC4A3E8),
  ];
  static const List <Color> greenGradient = [
    Color(0xFF4EF324),
    Color(0xFF63F040),
    Color(0xFF86ED6C),
    Color(0xFF99ED84),
  ];
}

class DarkScheme extends ColorScheme {
  const DarkScheme()
      : super(
    primary: Colors.orange,
    secondary: Colors.orange,
    background: Colors.black,
    surface: Colors.black,
    error: Colors.red,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onBackground: Colors.white,
    onSurface: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  );
  static const List <Color> orangeGradient = [
    Color(0xFFFB9932),
    Color(0xFFFFC281),
    Color(0xFFFCD2A7),
    Color(0xFFFCEBD9),
  ];
  static const List <Color> pinkGradient = [
    Color(0xFFF159FF),
    Color(0xFFF47BFF),
    Color(0xFFF8A7FF),
    Color(0xffFCDBFF),
  ];
  static const List <Color> blueGradient = [
    Color(0xFF267CFE),
    Color(0xFF408CFF),
    Color(0xFF6DA7FF),
    Color(0xff84B4FD),
  ];
  static const List <Color> purpleGradient = [
    Color(0xFF9035F0),
    Color(0xFF9F50F1),
    Color(0xFFB784ED),
    Color(0xFFC4A3E8),
  ];
  static const List <Color> greenGradient = [
    Color(0xFF4EF324),
    Color(0xFF63F040),
    Color(0xFF86ED6C),
    Color(0xFF99ED84),
  ];
}







