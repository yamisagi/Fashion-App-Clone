import 'package:fashion_app/constant/constant.dart';
import 'package:flutter/material.dart';

class ProductTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: Constant.fontFamily,
      ),
    ),
  );
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      elevation: 0,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontFamily: Constant.fontFamily,
      ),
    ),
  );
}
