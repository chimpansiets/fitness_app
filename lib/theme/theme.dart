import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessTheme {
  static LinearGradient blueLinear = const LinearGradient(colors: [
    Color(0xFF92A3FD),
    Color(0xFF9DCEFF),
  ]);
  static LinearGradient purpleLinear = const LinearGradient(colors: [
    Color(0xFFC58BF2),
    Color(0xFFEEA4CE),
  ]);
  static LinearGradient logoLinear = const LinearGradient(colors: [
    Color(0xFFCC8FED),
    Color(0xFF9DCEFF),
  ]);

  static Color black = const Color(0xFF1D1617);
  static Color white = const Color(0xFFFFFFFF);
  static Color gray1 = const Color(0xFF7B6F72);
  static Color gray2 = const Color(0xFFADA4A5);
  static Color gray3 = const Color(0xFFDDDADA);
  static Color borderColor = const Color(0xFFF7F8F8);

  static TextTheme poppins = GoogleFonts.poppinsTextTheme(
    TextTheme(
      headline1: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
