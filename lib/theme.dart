import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  const ThemeText._();

  static final TextStyle normal = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
  );

  static final TextStyle medium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
  );

  static final TextStyle semibold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
  );
}

class ThemeColor {
  const ThemeColor._();
  static const Color black1 = Color(0xFF000000);
  static const Color black2 = Color(0xCC4A5656);
  static const Color grey1 = Color(0xFF9E9E9E);
  static const Color grey2 = Color(0xFFC2C2CA);
  static const Color grey3 = Color(0xFFF9F9F9);
  static const Color grey4 = Color(0xFFBDBDBD);
  static const Color grey5 = Color(0xFF979797);
  static const Color grey6 = Color(0xFFAAAAAA);
  static const Color grey7 = Color(0xFF8A8A8A);
  static const Color white1 = Color(0xFFFFFFFF);
  static const Color white2 = Color(0xFFFEFDFF);
  static const Color white3 = Color(0xFFF8F7FD);
  static const Color white4 = Color(0xFFFDFBF7);
  static const Color orange = Color(0xFFF08A52);
}
