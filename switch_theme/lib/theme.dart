import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light(  useMaterial3: true).copyWith(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue, brightness: Brightness.light)
  );
  static final ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark)
  ,
  );
}