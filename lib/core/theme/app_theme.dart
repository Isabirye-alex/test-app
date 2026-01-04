import "package:flutter/material.dart";
import "package:test_app/core/theme/app_bar_theme.dart";
import "package:test_app/core/theme/bottom_app_bar_theme.dart";
import "package:test_app/core/theme/bottom_navigation_bar-theme.dart";
import "package:test_app/core/theme/card_theme.dart";
import "package:test_app/core/theme/carousel_slider_theme.dart";
import "package:test_app/core/theme/check_box_theme.dart";
import "package:test_app/core/theme/chip_mode_theme.dart";
import "package:test_app/core/theme/elevated_button_theme.dart";
import "package:test_app/core/theme/input_decoration_theme.dart";
import "package:test_app/core/theme/text_theme.dart";

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.lightButtonTheme,
    inputDecorationTheme: TInputDecorationButton.lightInputDecoration,
    bottomAppBarTheme: TBottomAppBarTheme.lightBottomAppBarTheme,
    cardTheme: TCardTheme.lightCardTheme,
    chipTheme: TChipModeTheme.lightChipModeTheme,
    carouselViewTheme: TCarouselSliderTheme.lightThemeCarouselSliderTheme,
    bottomNavigationBarTheme:
        TBottomNavigationBarTheme.lightBottomNavigationBarTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.darkButtonTheme,
    inputDecorationTheme: TInputDecorationButton.darkInputDecoration,
    bottomAppBarTheme: TBottomAppBarTheme.darkBottomAppBarTheme,
    cardTheme: TCardTheme.darkCardTheme,
    chipTheme: TChipModeTheme.darkChipModeTheme,
    carouselViewTheme: TCarouselSliderTheme.darkThemeCarouselSliderTheme,
    bottomNavigationBarTheme:
        TBottomNavigationBarTheme.darkBottomNavigationBarTheme,
  );
}
