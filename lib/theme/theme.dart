import 'package:fashion_app/constant/constant.dart';
import 'package:flutter/material.dart';

class ProductTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    cardTheme: CardTheme(
      elevation: 2,
      color: Colors.purple[200],
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0,
      centerTitle: false,
      elevation: 0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: Constant.fontFamily,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    cardTheme: CardTheme(
      elevation: 2,
      color: Colors.orange[100],
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      centerTitle: false,
      elevation: 0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.grey[700],
        fontSize: 30,
        fontFamily: Constant.fontFamily,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
