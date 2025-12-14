import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((state) {
      if (state.contains((WidgetState.selected))) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),

    fillColor: WidgetStateColor.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.blue;
      } else {
        return Colors.black;
      }
    }),
  );

  static CheckboxThemeData darkCheckBoxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((state) {
      if (state.contains((WidgetState.selected))) {
        return Colors.white;
      } else {
        return Colors.blue;
      }
    }),

    fillColor: WidgetStateColor.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.blue;
      }
    }),
  );
}
