import 'package:flutter/material.dart';

class TBottomNavigationBarTheme {
  TBottomNavigationBarTheme._();

  static final lightBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
    elevation: 90.0,
    selectedLabelStyle: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
    ),
    showUnselectedLabels: true,
    showSelectedLabels: true,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black,
    unselectedLabelStyle: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w100,
      fontFamily: 'Poppins',
      color: Colors.black,
    ),
    enableFeedback: false,
    selectedIconTheme: IconThemeData(size: 30),
  );

  static final darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    enableFeedback: false,
    unselectedItemColor: Colors.white,
    elevation: 90.0,
    backgroundColor: Colors.black,
    selectedLabelStyle: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
    ),
    selectedIconTheme: IconThemeData(size: 30),
    showUnselectedLabels: true,
    showSelectedLabels: true,
    selectedItemColor: Colors.white,
    unselectedLabelStyle: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w100,
      fontFamily: 'Poppins',
      color: Colors.white,
    ),
  );
}
