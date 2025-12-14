import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: Colors.blue),
      padding: EdgeInsets.symmetric(vertical: 10),
      textStyle: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))
    )
  );
    static final darkButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide(color: Colors.blue),
      padding: EdgeInsets.symmetric(vertical: 10),
      textStyle: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))
    )
  );
}
