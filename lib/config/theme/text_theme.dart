import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: TColors.colorBlack,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: TColors.colorBlack,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: TColors.colorBlack,
    ),

    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: TColors.colorBlack,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: TColors.colorBlack,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: TColors.colorBlack,
    ),
    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.colorBlack,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.colorBlack,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.colorBlack,
    ),

    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.colorBlack,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.colorBlack,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: TColors.colorWhite,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: TColors.colorWhite,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: TColors.colorWhite,
    ),
    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: TColors.colorWhite,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: TColors.colorWhite,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: TColors.colorWhite,
    ),
    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TColors.colorWhite,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TColors.colorWhite,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.colorWhite,
    ),

    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.colorWhite,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: TColors.colorWhite,
    ),
  );
}
