import 'package:flutter/material.dart';
import 'package:test_app/core/theme/colors.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.colorWhite,
      backgroundColor: TColors.primaryColorBlue,
      disabledBackgroundColor: TColors.disabledColorGray,
      side: BorderSide(color: TColors.primaryColorBlue),
      padding: EdgeInsets.all(8),
      textStyle: TextStyle(fontSize: 16, color: TColors.colorWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))
    )
  );
    static final darkButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.colorWhite,
      backgroundColor: TColors.primaryColorBlue,
      disabledBackgroundColor: TColors.disabledColorGray,
      side: BorderSide(color: TColors.primaryColorBlue),
      padding: EdgeInsets.all(8),
      textStyle: TextStyle(fontSize: 16, color: TColors.colorWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))
    )
  );
}
