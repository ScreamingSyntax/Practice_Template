// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static Color bluishColor = Color(0xff403b58);
  static Color creamishColor = Color(0xFF5F5F5F5);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
  static lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: creamishColor,
        canvasColor: Colors.white,
        colorScheme: ColorScheme.dark(
            primary: bluishColor,
            secondary: Colors.black54,
            onPrimary: bluishColor,
            onSecondary: creamishColor),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: bluishColor),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          color: Colors.white,
          centerTitle: true,
          elevation: 0.0,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        colorScheme: ColorScheme.dark(
            primary: Colors.white,
            secondary: Colors.white60,
            onPrimary: MyTheme.bluishColor,
            onSecondary: Colors.white),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: lightBluishColor, foregroundColor: creamishColor),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          color: Colors.black,
          centerTitle: true,
          elevation: 0.0,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      );
}
