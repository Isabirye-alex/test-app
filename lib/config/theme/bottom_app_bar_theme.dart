import 'package:flutter/material.dart';

class TBottomAppBarTheme {
  TBottomAppBarTheme._();

  static final lightBottomAppBarTheme = BottomAppBarThemeData(
    elevation: 80,
    color: Colors.white10,
    height: 100,
    surfaceTintColor: Colors.white24,
    shadowColor: Colors.transparent,
  );
  static final darkBottomAppBarTheme = BottomAppBarThemeData(
    elevation: 80,
    color: Colors.transparent,
    height: 100,
    surfaceTintColor: Colors.black12,
    shadowColor: Colors.transparent,
  );
}
