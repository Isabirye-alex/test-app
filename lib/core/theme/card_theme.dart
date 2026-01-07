import 'package:flutter/material.dart';
// import 'package:test_app/core/theme/colors.dart';

class TCardTheme {
  TCardTheme._();

  static final lightCardTheme = CardThemeData(
    // color: TColors.colorWhite,
    elevation: 20,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    surfaceTintColor: Colors.black,
  );

  static final darkCardTheme = CardThemeData(
    // color: Color,
    elevation: 20,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    surfaceTintColor: Colors.black,
  );
}
