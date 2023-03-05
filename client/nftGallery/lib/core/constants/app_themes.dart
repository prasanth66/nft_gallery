import 'package:final_template/core/constants/app_values.dart';
import 'package:flutter/material.dart';
//============================================================================

class AppThemes {
  static final darkTheme = ThemeData(
    fontFamily: "Inter",
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark(),
    textTheme: const TextTheme(
      // Titles
      headline6: TextStyle(
        fontSize: 25,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      // Header with grey
      headline1: TextStyle(
        fontSize: 25,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      // Header with white
      headline2: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      // Sub header wit grey
      subtitle1: TextStyle(
        fontSize: 20,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      // Sub header with white
      subtitle2: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      // Text on all the button types
      button: TextStyle(
        fontSize: 16,
        color: Colors.red,
        fontWeight: FontWeight.normal,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppValues.ACTION_BUTTON_CORNERRAIUS),
        ),
      ),
    ),
  );

  static final ligtTheme = ThemeData(
    fontFamily: "Inter",
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark(),
    textTheme: const TextTheme(
      // Titles
      headline6: TextStyle(
        fontSize: 25,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      // Header with grey
      headline1: TextStyle(
        fontSize: 25,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      // Header with white
      headline2: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      // Sub header wit grey
      subtitle1: TextStyle(
        fontSize: 20,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      // Sub header with white
      subtitle2: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      // Text on all the button types
      button: TextStyle(
        fontSize: 16,
        color: Colors.red,
        fontWeight: FontWeight.normal,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppValues.ACTION_BUTTON_CORNERRAIUS),
        ),
      ),
    ),
  );
}
