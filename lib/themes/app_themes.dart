import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {

  static const primario = Color(0xFF272555);
  static const secundario1 = Color(0xFFdc0b0a);
  static const secundario2 = Color(0xFFFFFFFF);
  static const secundario3 = Color(0xFF914a72);



  static ThemeData light() {

    final colorScheme = ColorScheme.fromSeed(
      
      seedColor: const Color(0xFF272555),
      brightness: Brightness.light,

      
      );

      return ThemeData(

        colorScheme: colorScheme,

        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),

      );



  }

}