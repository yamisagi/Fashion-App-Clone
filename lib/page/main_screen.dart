// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/widget/header.dart';
import 'package:fashion_app/widget/item_builder.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final headerList = Constant.modelList;
  final itemList = Constant.itemList;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 1,
        child: AvatarList(
          headerList: headerList,
        ),
      ),
      Expanded(
          flex: 2,
          child: ItemListBuilder(
            itemList: itemList,
          ))
    ]);
  }
}
