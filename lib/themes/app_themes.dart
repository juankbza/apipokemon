import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppThemes {


  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFBEC8D1),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF272555),
      onPrimary: Colors.white,
      secondary: Color(0xFFdc0b0a),
      onSecondary: Color(0xFF914a72),
      tertiary: Color.fromARGB(255, 0, 0, 0),
      onTertiary: Color.fromARGB(255, 150, 157, 162),
      surface: Colors.white,
      onSurface: Color.fromARGB(255, 170, 177, 182),
      error: Colors.red,
      onError: Colors.white,
      

    ),
      fontFamily: GoogleFonts.pixelifySans().fontFamily,
      textTheme: GoogleFonts.pixelifySansTextTheme(),
  );

  
 static ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xFFFF0045), 
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF06053B), 
    onPrimary: Color(0xFFEDA7BA), 
    secondary: Color(0xFFD924D5), 
    onSecondary: Color(0xFF06053B),
    tertiary: Color(0xFFEDA7BA),
    onTertiary: Color(0xFF06053B),
    surface: Color(0xFF3F4750), 
    onSurface: Color(0xFFEDA7BA), 
    error: Color(0xFFD924D5),
    onError: Color(0xFF06053B),
  ),
);


}