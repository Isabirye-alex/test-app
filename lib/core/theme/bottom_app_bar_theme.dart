import 'package:flutter/material.dart';
import 'package:test_app/core/theme/colors.dart';

class TBottomAppBarTheme {
  TBottomAppBarTheme._();

  static final lightBottomAppBarTheme = BottomAppBarThemeData(
    elevation: 80,
    color: TColors.backgroundColorOffWhite,
    height: 100,
    surfaceTintColor: TColors.colorBlack,
    shadowColor: TColors.disabledColorGray,
  );
  static final darkBottomAppBarTheme = BottomAppBarThemeData(
    elevation: 80,
    color: TColors.colorBlack,
    height: 100,
    surfaceTintColor: TColors.textColorCharcoal,
    shadowColor: TColors.colorBlack,
  );
}
