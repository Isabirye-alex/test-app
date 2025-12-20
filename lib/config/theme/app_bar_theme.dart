import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    toolbarHeight: 100,
    elevation: 70,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: TColors.colorWhite,
    surfaceTintColor: TColors.colorWhite,
    iconTheme: IconThemeData(color: TColors.colorBlack, size: 24),
    actionsIconTheme: IconThemeData(color: TColors.colorBlack, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColors.colorBlack,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    toolbarHeight: 100,
    elevation: 70,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: TColors.colorBlack,
    surfaceTintColor: TColors.colorBlack,
    iconTheme: IconThemeData(color: TColors.colorWhite, size: 24),
    actionsIconTheme: IconThemeData(color: TColors.colorWhite, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColors.colorWhite,
    ),
  );
}
