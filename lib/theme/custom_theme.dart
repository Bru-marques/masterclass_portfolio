import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primaryColor: const Color(0xff055AA3),
      // cardColor:
      //     isDarkTheme ? const Color(0xff172026) : const Color(0xffEDF4F8),
      backgroundColor:
          isDarkTheme ? const Color(0xff121517) : const Color(0xffD6DFE4),
      highlightColor:
          isDarkTheme ? const Color(0xff172026) : const Color(0xffEDF4F8),
      textTheme: TextTheme(
        headline1:
            GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
        headline2:
            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        bodyText1: GoogleFonts.montserrat(fontSize: 14),
        bodyText2: GoogleFonts.montserrat(fontSize: 12),
      ),
    );
  }
}
