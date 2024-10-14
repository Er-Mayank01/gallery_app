import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.teal,
    appBarTheme: const AppBarTheme(
      color: Color.fromRGBO(0, 150, 136, 1),
      centerTitle: true,
      elevation: 10,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
      headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );

  static BoxDecoration pageBackgroundGradient() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.tealAccent[100]!, Colors.teal[400]!],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
}
