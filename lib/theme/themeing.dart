import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

String robotoFontFamily = "Roboto";

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: AppColors.background2,
  fontFamily: robotoFontFamily,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColors.background,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.background,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    iconTheme: IconThemeData(color: AppColors.background),
    titleTextStyle: TextStyle(
      color: AppColors.background,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.primary,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w700,
      fontSize: 30,
    ),
    headlineMedium: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    titleMedium: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w300,
      fontSize: 14,
    ),
  ),
);
