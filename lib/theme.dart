import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildAppTheme() {
  final baseTheme = ThemeData.light();

  return baseTheme.copyWith(
    primaryColor: const Color.fromRGBO(226, 76, 76, 1),
    cardColor: const Color.fromRGBO(246, 246, 246, 1),
    textTheme: _buildTextTheme(baseTheme.textTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return GoogleFonts.interTextTheme(base).copyWith(
    titleMedium: GoogleFonts.kavoon(
      textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 40,
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    ),
    headlineLarge: GoogleFonts.kavoon(
      textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 40,
        color: Color.fromRGBO(226, 76, 76, 1),
      ),
    ),
    headlineMedium: GoogleFonts.kavoon(
      textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
    ),
    titleLarge: GoogleFonts.karla(
      textStyle: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
    bodyMedium: GoogleFonts.karma(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    labelSmall: GoogleFonts.inter(
      textStyle: const TextStyle(
          color: Color.fromRGBO(148, 148, 148, 1),
          fontSize: 12,
          fontWeight: FontWeight.w400),
    ),
    labelLarge: GoogleFonts.inter(
      textStyle: const TextStyle(
          color: Color.fromRGBO(148, 148, 148, 1),
          fontSize: 20,
          fontWeight: FontWeight.w400),
    ),
    displayLarge: GoogleFonts.inter(
      textStyle: const TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    displayMedium: GoogleFonts.inter(
      textStyle: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 16,
          fontWeight: FontWeight.w400),
    ),
    labelMedium: GoogleFonts.inter(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 148, 148, 148),
          fontSize: 16,
          fontWeight: FontWeight.w400),
    ),
    titleSmall: GoogleFonts.inter(
      textStyle: const TextStyle(
          color: Color.fromRGBO(226,76,76,1),
          fontSize: 16,
          fontWeight: FontWeight.w400),
    ),
  );
}
