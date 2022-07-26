// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/widget/header.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final headerList = Constant.modelList;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Expanded(
        flex: 1,
        child: AvatarList(
          headerList: headerList,
        ),
      ),
      Expanded(
          flex: 2,
          child: Padding(
            padding: Constant.headerCardRadius,
            child: Card(
              child: Container(),
            ),
          ))
    ]);
  }
}
