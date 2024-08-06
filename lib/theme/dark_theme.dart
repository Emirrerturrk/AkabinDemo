import 'package:flutter/material.dart';

class DarkTheme extends CustomColors with _CustomBorderRadius {
  late ThemeData theme;
  DarkTheme() {
    theme = ThemeData(
      primaryColor: mainGreen,
      primaryColorDark: mainGreen,
      textTheme: TextTheme(
          titleMedium: TextStyle(
        color: white,
      )),
      appBarTheme: AppBarTheme(
          color: mainGreen,
          centerTitle: true,
          titleTextStyle: TextStyle(color: white, fontSize: 30),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          iconTheme: IconThemeData(color: white),
          actionsIconTheme: IconThemeData(color: white)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: white,
              onPrimary: white,
              textStyle: TextStyle(color: white),
              shape: RoundedRectangleBorder(borderRadius: _rounded),
              backgroundColor: mainGreen)),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: mainGreen.withOpacity(0.7),
          border: const OutlineInputBorder(),
          labelStyle: const TextStyle(
              color: Colors.black26, fontSize: 20, fontWeight: FontWeight.bold),
          prefixIconColor: Colors.white,
          suffixIconColor: white),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: white,
          selectionColor: white,
          selectionHandleColor: white),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              primary: mainGreen, foregroundColor: mainGreen.withOpacity(0.4))),
      useMaterial3: true,
    );
  }
}

class CustomColors {
  final Color mainGreen = const Color(0xFF008000);
  final Color white = Colors.white;
}

mixin _CustomBorderRadius {
  final BorderRadius _rounded = BorderRadius.circular(25);
}
