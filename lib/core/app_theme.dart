import 'package:flutter/material.dart';

import 'app_string.dart';
import 'app_style.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF09141A);
  static ThemeData darkAppTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: primaryColor, centerTitle: true),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF09141A),
      primary: primaryColor,
      onPrimary: Colors.white,
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: primaryColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        border: inputBorder),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    fontFamily: AppString.appFont,
    textTheme: const TextTheme(
      labelSmall: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black54,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
        ),
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.grey, width: 2),
      ),
      dialHandColor: primaryColor,
      hourMinuteColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? primaryColor
            : Colors.black12,
      ),
      hourMinuteTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? Colors.black54
            : Colors.grey,
      ),
      dayPeriodBorderSide: const BorderSide(color: Colors.grey),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      dayPeriodColor: Colors.transparent,
      dayPeriodTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? primaryColor
            : Colors.black12,
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black12),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
}
