// Light Theme
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohitashwa_singh_assignment/utils/color_schemes.dart';

class AppThemes{
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    shadowColor: const Color(0xFFf0f0e8) ,
    scaffoldBackgroundColor:Colors.white,
    colorScheme: const LightScheme(),
    fontFamily: GoogleFonts.sniglet().fontFamily,
    fontFamilyFallback: [GoogleFonts.sniglet().fontFamily!],
    focusColor: Colors.black,
    textTheme: GoogleFonts.snigletTextTheme().copyWith(
      displayLarge: const TextStyle(fontSize: 96, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black),
      displaySmall: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
      titleSmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
      bodyLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
      bodyMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
      bodySmall: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
      labelLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      labelSmall: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
    ),
  );

// Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.orange,
    shadowColor: Colors.black12,
    scaffoldBackgroundColor:Colors.black12,
    focusColor: Colors.white,
    colorScheme: const DarkScheme(),
    fontFamily: GoogleFonts.sniglet().fontFamily,
    textTheme: GoogleFonts.snigletTextTheme().copyWith(
      displayLarge: const TextStyle(fontSize: 96, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
      displaySmall: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
      headlineSmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
      titleSmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
      bodyLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
      bodyMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
      bodySmall: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
      labelLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      labelSmall: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
    ),
  );

}












