import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class TCardTheme {
  TCardTheme._();

  static final lightCardTheme = CardThemeData(
    color: TColors.colorWhite,
    elevation: 20,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    surfaceTintColor: Colors.black,
  );

  static final darkCardTheme = CardThemeData(
    color: Colors.white,
    elevation: 20,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    surfaceTintColor: Colors.black,
  );
}
