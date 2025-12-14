import 'package:flutter/material.dart';

class TCardTheme {
  TCardTheme._();

  static final lightCardTheme = CardThemeData(
    color: Colors.blue,
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
