import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.cyan,
  buttonColor: Colors.cyan,
  brightness: Brightness.light,
  accentColor: Colors.cyan[600],
  appBarTheme: AppBarTheme(
    color: Colors.cyan,
  ),
);

final ThemeData appThemeDataDark = ThemeData(
  primaryColor: Colors.grey[400],
  buttonColor: Colors.black,
  brightness: Brightness.dark,
  accentColor: Colors.grey[500],
  appBarTheme: AppBarTheme(
    color: Colors.grey[600],
  ),
);
