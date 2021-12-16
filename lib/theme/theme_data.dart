import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyTheme {
  static final themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    textTheme: const TextTheme(
      caption: TextStyle(color: AppColors.white),
      headline1: TextStyle(color: AppColors.white),
      bodyText1: TextStyle(color: AppColors.white),
      bodyText2: TextStyle(color: AppColors.white),
      subtitle1: TextStyle(color: AppColors.white),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
            vertical: 10,
          )),
          backgroundColor: MaterialStateProperty.all(
            AppColors.blue,
          ),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
    ),
    primaryIconTheme: const IconThemeData(color: AppColors.green, size: 14),
    iconTheme: const IconThemeData(
      color: AppColors.green,
      size: 14,
    ),
    cardTheme: CardTheme(
      color: AppColors.black,
      elevation: 1,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.green),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.white)),
    ),
  );
}
