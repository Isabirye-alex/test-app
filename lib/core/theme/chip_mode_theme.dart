import 'package:flutter/material.dart';

class TChipModeTheme {
  TChipModeTheme._();

  static final lightChipModeTheme = ChipThemeData(
    backgroundColor: Colors.white60,
    deleteIconColor: Colors.red,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    shadowColor: Colors.blueGrey,
    showCheckmark: true,
    surfaceTintColor: Colors.amber,
    selectedShadowColor: Colors.green,
    labelPadding: EdgeInsets.all(12)
  );

    static final darkChipModeTheme = ChipThemeData(
    backgroundColor: Colors.white60,
    deleteIconColor: Colors.red,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    shadowColor: Colors.blueGrey,
    showCheckmark: true,
    surfaceTintColor: Colors.amber,
    selectedShadowColor: Colors.green,
    labelPadding: EdgeInsets.all(12)
  );
}
