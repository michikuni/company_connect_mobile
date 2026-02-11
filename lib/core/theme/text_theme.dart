import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends TextTheme {
  static TextTheme textTheme (){
    return GoogleFonts.gabaritoTextTheme().copyWith(
      // displayLarge: ,
      // displayMedium: ,
      // displaySmall: ,

      // headlineLarge: ,
      // headlineMedium: ,
      // headlineSmall: ,

      titleLarge: GoogleFonts.gabarito(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      // titleMedium: ,
      // titleSmall: ,

      // bodyLarge: ,
      bodyMedium: GoogleFonts.gabarito(
        fontSize: 14,
        fontWeight: FontWeight.w400
      ),
      // bodySmall: ,

      // labelLarge: ,
      // labelMedium: ,
      // labelSmall: 
    );
  }
}