import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),

    side: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return const BorderSide(color: Colors.grey, width: 1);
      }
      if (states.contains(WidgetState.pressed)) {
        return const BorderSide(color: Colors.blue, width: 1.5);
      }
      return const BorderSide(color: Colors.blue, width: 1);
    }),

    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return Colors.grey;
      return TColors.primaryColorBlue;
    }),

    overlayColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.pressed)) {
        return Colors.blue.withAlpha(100);
      }
      if (states.contains(WidgetState.hovered)) {
        return Colors.blue.withAlpha(70);
      }
      return TColors.colorBlack;
    }),

    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    ),

    textStyle: WidgetStateProperty.all(
      const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
);


static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),

    side: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return const BorderSide(color: TColors.disabledColorGray, width: 1);
      }
      if (states.contains(WidgetState.pressed)) {
        return const BorderSide(color: TColors.lifestyleColorSereneBlue, width: 1.5);
      }
      return const BorderSide(color: TColors.lifestyleColorSereneBlue, width: 1);
    }),

    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return Colors.grey;
      return Colors.lightBlueAccent;
    }),

    overlayColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.pressed)) {
        return Colors.lightBlueAccent.withAlpha(100);
      }
      if (states.contains(WidgetState.hovered)) {
        return Colors.lightBlueAccent.withAlpha(70);
      }
      return Colors.transparent;
    }),

    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    ),

    textStyle: WidgetStateProperty.all(
      const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
);

}
