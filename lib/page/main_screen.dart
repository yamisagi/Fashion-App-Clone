// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fashion_app/model/header_model.dart';
import 'package:fashion_app/widget/header.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
   const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final headerList;
  @override
  void initState() {
    super.initState();
    headerList = [
      HeaderModel(
          imagePath: 'assets/ic_model1.jpeg',
          title: 'Follow',
          littleImagePath: 'assets/ic_chanellogo.jpg'),
      HeaderModel(
          imagePath: 'assets/ic_model2.jpeg',
          title: 'Follow',
          littleImagePath: 'assets/ic_louisvuitton.jpg'),
      HeaderModel(
          imagePath: 'assets/ic_model3.jpeg',
          title: 'Follow',
          littleImagePath: 'assets/ic_louisvuitton.jpg'),
      HeaderModel(
          imagePath: 'assets/ic_model4.jpg',
          title: 'Follow',
          littleImagePath: 'assets/ic_chanellogo.jpg'),
      HeaderModel(
          imagePath: 'assets/ic_model5.jpeg',
          title: 'Follow',
          littleImagePath: 'assets/ic_louisvuitton.jpg'),
      HeaderModel(
          imagePath: 'assets/ic_model6.jpg',
          title: 'Follow',
          littleImagePath: 'assets/ic_chanellogo.jpg')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AvatarList(
      headerList: headerList,
    );
  }
}
