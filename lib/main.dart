import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/theme/theme.dart';
import 'package:fashion_app/page/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const FashionApp());

class FashionApp extends StatefulWidget {
  const FashionApp({Key? key}) : super(key: key);

  @override
  State<FashionApp> createState() => _FashionAppState();
}

class _FashionAppState extends State<FashionApp> {
  ThemeData theme = ProductTheme.darkTheme;
  bool _darkTheme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _darkTheme
          ? theme = ProductTheme.darkTheme
          : theme = ProductTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: _darkTheme
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark,
          title: Constant.appBarTitle,
          actions: [
            IconButton(
              icon: const Icon(Icons.brightness_6),
              onPressed: () {
                setState(() {
                  _darkTheme = !_darkTheme;
                });
              },
            ),
          ],
        ),
        body: const MainScreen(),
      ),
    );
  }
}
