import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final setLightTheme = _buildLightTheme();
final setDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xffD6DFE4),
    ),
    //
    primaryColor: const Color(0xff055AA3),
    brightness: Brightness.light,
    backgroundColor: const Color(0xffD6DFE4),
    highlightColor: const Color(0xffEDF4F8),
    //
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xff121517)),
      headline2: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xff121517)),
      bodyText1:
          GoogleFonts.montserrat(fontSize: 14, color: const Color(0xff121517)),
      bodyText2:
          GoogleFonts.montserrat(fontSize: 12, color: const Color(0xff121517)),
      subtitle1: GoogleFonts.montserrat(fontSize: 12, color: Color(0xffF85D29)),
    ),
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xff121517),
    ),
    //
    primaryColor: const Color(0xff055AA3),
    brightness: Brightness.dark,
    backgroundColor: const Color(0xff121517),
    highlightColor: const Color(0xff172026),
    //
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xffD6DFE4)),
      headline2: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xffD6DFE4)),
      bodyText1:
          GoogleFonts.montserrat(fontSize: 14, color: const Color(0xffD6DFE4)),
      bodyText2:
          GoogleFonts.montserrat(fontSize: 12, color: const Color(0xffD6DFE4)),
      subtitle1: GoogleFonts.montserrat(fontSize: 12, color: Color(0xffE77442)),
    ),
  );
}
