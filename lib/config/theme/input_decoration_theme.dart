import 'package:flutter/material.dart';

class TInputDecorationButton {
  TInputDecorationButton._();

static InputDecorationTheme lightInputDecoration = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade100,

    contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

    hintStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 14,
    ),

    labelStyle: const TextStyle(
      color: Colors.black87,
      fontSize: 14,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.blue),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
  );

  static InputDecorationTheme darkInputDecoration = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade900,

    contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

    hintStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 14,
    ),

    labelStyle: const TextStyle(
      color: Colors.white70,
      fontSize: 14,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.lightBlueAccent),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.lightBlueAccent, width: 2),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.redAccent),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.redAccent, width: 2),
    ),
  );

}
