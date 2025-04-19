import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightmode = ThemeData(
  
  scaffoldBackgroundColor: Colors.blue[300],
  colorScheme: ColorScheme.light(
    primary: Colors.blue[200]!,
    secondary: Colors.blue[100]!,
    
  ),
  textTheme: GoogleFonts.almaraiTextTheme(
    TextTheme(displayLarge: TextStyle(color: Colors.black)),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.black)),
  ),
);
ThemeData darkmode = ThemeData(
  scaffoldBackgroundColor: Colors.grey[800],
  colorScheme: ColorScheme.light(
    primary: Colors.grey[700]!,
    secondary: Colors.grey[600]!,
  ),
  textTheme: GoogleFonts.almaraiTextTheme(
    TextTheme(displayLarge: TextStyle(color: Colors.white)),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white
    )),
  ),
);
