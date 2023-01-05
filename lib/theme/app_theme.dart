import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryLigth = Color.fromARGB(255, 2, 22, 57);
  static const Color primaryDark = Colors.black;

  static final ThemeData ligthThema = ThemeData.light().copyWith(
      primaryColor: primaryLigth,
      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primaryLigth, elevation: 33),
      //FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryLigth, elevation: 6),

      // Textbutton theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.indigoAccent)),

      // Elevation button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 6),
      ),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primaryLigth),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryLigth),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));

  static final ThemeData darkThema = ThemeData.dark().copyWith(
      primaryColor: primaryDark,
      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primaryDark, elevation: 33),
      //Scaffol background Color
      scaffoldBackgroundColor: const Color.fromRGBO(0, 22, 58, 1));
}
