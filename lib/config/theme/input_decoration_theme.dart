import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class TInputDecorationButton {
  TInputDecorationButton._();

static InputDecorationTheme lightInputDecoration = InputDecorationTheme(
    filled: true,
    fillColor: TColors.backgroundColorOffWhite,

    contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

    hintStyle: const TextStyle(
      color: TColors.disabledColorGray,
      fontSize: 14,
    ),

    labelStyle: const TextStyle(
      color: TColors.colorBlack,
      fontSize: 14,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.primaryColorBlue),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.primaryColorBlue, width: 2),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.saleTagColorRed),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.saleTagColorRed, width: 2),
    ),
  );

  static InputDecorationTheme darkInputDecoration = InputDecorationTheme(
    filled: true,
    fillColor: TColors.disabledColorGray,

    contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

    hintStyle: const TextStyle(
      color: TColors.disabledColorGray,
      fontSize: 14,
    ),

    labelStyle: const TextStyle(
      color: TColors.backgroundColorOffWhite,
      fontSize: 14,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.infoColorRoyalBlue),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.infoColorRoyalBlue, width: 2),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.saleTagColorRed),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: TColors.saleTagColorRed, width: 2),
    ),
  );

}
