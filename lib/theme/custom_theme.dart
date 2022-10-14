import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knight_and_day_2/theme/colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFF6002EE, <int, Color>{
        50: Color(0xFFF3E5F5),
        100: Color(0xFFE1BEE7),
        200: Color(0xFFCE93D8),
        300: Color(0xFFBA68C8),
        400: Color(0xFFAB47BC),
        500: Color(0xFF6002EE),
        600: Color(0xFF8E24AA),
        700: Color(0xFF7B1FA2),
        800: Color(0xFF6A1B9A),
        900: Color(0xFF4A148C),
      }),
      textTheme: TextTheme(
        headline2: GoogleFonts.montserrat(
            color: CustomColors.darkGrey,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.lightPurple,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      )));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );

  //       buttonTheme: ButtonThemeData(
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
  //         buttonColor: CustomColors.lightPurple,
  //       ));
  //}
}
