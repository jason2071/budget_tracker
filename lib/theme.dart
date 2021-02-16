import 'package:budget_tracker/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    fontFamily: "Itim",
    appBarTheme: AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      centerTitle: true,
      brightness: Brightness.dark,
    ),
    primaryColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    canvasColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
