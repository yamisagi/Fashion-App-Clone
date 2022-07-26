// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/widget/header.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final headerList = Constant.modelList;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: AvatarList(
          headerList: headerList,
        ),
      )
    ]);
  }
}
