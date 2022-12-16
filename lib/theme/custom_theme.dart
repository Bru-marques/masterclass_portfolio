import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final setLightTheme = _buildLightTheme();
final setDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  return ThemeData(
    primaryColor: const Color(0xff055AA3),
    brightness: Brightness.light,
    backgroundColor: const Color(0xffD6DFE4),
    highlightColor: const Color(0xffEDF4F8), //card
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
      headline2: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      bodyText1: GoogleFonts.montserrat(fontSize: 14),
      bodyText2: GoogleFonts.montserrat(fontSize: 12),
    ),
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
    primaryColor: const Color(0xff055AA3),
    brightness: Brightness.dark,
    backgroundColor: const Color(0xff121517),
    highlightColor: const Color(0xff172026), //card
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
      headline2: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      bodyText1: GoogleFonts.montserrat(fontSize: 14),
      bodyText2: GoogleFonts.montserrat(fontSize: 12),
    ),
  );
}
