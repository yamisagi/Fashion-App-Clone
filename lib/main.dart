import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/constant/asset_constants.dart';
import 'package:fashion_app/page/profile_page.dart';
import 'package:fashion_app/theme/theme.dart';
import 'package:fashion_app/page/main_screen.dart';
import 'package:fashion_app/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'product/product_appbar.dart';

void main() => runApp(const FashionApp());

class FashionApp extends StatefulWidget {
  const FashionApp({Key? key}) : super(key: key);

  @override
  State<FashionApp> createState() => _FashionAppState();
}

class _FashionAppState extends State<FashionApp> {
  bool _darkTheme = false;
  int _currentIndex = 0;

  List<Widget> pages = [
    MainScreen(),
    ProfilePage(
      itemList: AssetConstant.itemList,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _darkTheme ? ProductTheme.darkTheme : ProductTheme.lightTheme,
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
        body: pages[_currentIndex],
      ),
    );
  }
}
