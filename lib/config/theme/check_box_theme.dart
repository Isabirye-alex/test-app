import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((state) {
      if (state.contains((WidgetState.selected))) {
        return TColors.colorWhite;
      } else {
        return TColors.colorBlack;
      }
    }),

    fillColor: WidgetStateColor.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return TColors.primaryColorBlue;
      } else {
        return TColors.colorBlack;
      }
    }),
  );

  static CheckboxThemeData darkCheckBoxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((state) {
      if (state.contains((WidgetState.selected))) {
        return TColors.colorWhite;
      } else {
        return TColors.primaryColorBlue;
      }
    }),

    fillColor: WidgetStateColor.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return TColors.colorWhite;
      } else {
        return TColors.primaryColorBlue;
      }
    }),
  );
}
