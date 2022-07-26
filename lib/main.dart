import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/theme/theme.dart';
import 'package:fashion_app/page/main_screen.dart';
import 'package:fashion_app/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const FashionApp());

class FashionApp extends StatefulWidget {
  const FashionApp({Key? key}) : super(key: key);

  @override
  State<FashionApp> createState() => _FashionAppState();
}

class _FashionAppState extends State<FashionApp> {
  Icon darkIcon = const Icon(Icons.dark_mode);
  Icon lightIcon = const Icon(Icons.light_mode);
  bool _darkTheme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _darkTheme ? ProductTheme.darkTheme : ProductTheme.lightTheme,
      home: Scaffold(
        bottomNavigationBar: ProductNavBar(
          fixedColor: _darkTheme
              ? Constant.darkThemeIconColor
              : Constant.lightThemeIconColor,
        ),
        appBar: AppBar(
          systemOverlayStyle: _darkTheme
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark,
          title: Constant.appBarTitle,
          actions: [
            IconButton(
              icon: _darkTheme ? lightIcon : darkIcon,
              onPressed: () {
                setState(() {
                  _darkTheme = !_darkTheme;
                });
              },
            ),
          ],
        ),
        body: MainScreen(),
      ),
    );
  }
}
