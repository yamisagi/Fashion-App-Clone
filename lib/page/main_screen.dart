// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fashion_app/constant/asset_constants.dart';
import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/page/home_screen.dart';
import 'package:fashion_app/page/profile_page.dart';
import 'package:fashion_app/product/product_appbar.dart';
import 'package:fashion_app/theme/theme.dart';
import 'package:fashion_app/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _darkTheme = false;
  int _currentIndex = 0;

  final pageList = [
    HomeScreen(),
    ProfilePage(
      itemList: AssetConstant.itemList,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:_darkTheme ? ProductTheme.darkTheme : ProductTheme.lightTheme,
      home: Scaffold(
        bottomNavigationBar: ProductNavBar(
          currentIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          fixedColor: _darkTheme
              ? ProductColors.darkThemeIconColor
              : ProductColors.lightThemeIconColor,
        ),
        appBar: ProductAppBar(
          func: () {
            setState(() {
              _darkTheme = !_darkTheme;
            });
          },
          isDarkTheme: _darkTheme,
        ),
        body: pageList[_currentIndex],
      ),
    );
  }
}
