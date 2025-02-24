import 'package:eonify/assets/colors/colors.dart';
import 'package:eonify/assets/fonts/fonts.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData.light().copyWith(
  primaryColor: Primary.t600,
  scaffoldBackgroundColor: backgroundColor,
  colorScheme: ColorScheme.light().copyWith(
    primary: Primary.t600,
    secondary: Primary.t500,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 38.0,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    displayLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
    ),
  ).apply(fontFamily: defaultFont),
  dividerTheme: DividerThemeData(color: Grey.t200),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      overlayColor: Grey.t300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Grey.t50,
      padding: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      side: BorderSide.none,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Primary.t500,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      side: BorderSide.none,
      shadowColor: Primary.t500.withAlpha(150),
      elevation: 15.0,
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: defaultFont,
        fontSize: 16.0,
      ),
      foregroundColor: Grey.white,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    side: BorderSide.none,
    fillColor: WidgetStatePropertyAll(Grey.t50),
    checkColor: WidgetStatePropertyAll(Grey.t800),
    overlayColor: WidgetStatePropertyAll(Grey.t200),
  ),
);
