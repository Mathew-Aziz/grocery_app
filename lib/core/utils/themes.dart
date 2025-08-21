import 'package:flutter/material.dart';
import 'package:grocery_app_week2/core/utils/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: AppColors.greyUnderline,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.greyUnderline),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.greyUnderline),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.greyUnderline),
      ),
    ),
  );
}
