import 'package:fashion_app/constant/asset_constants.dart';
import 'package:fashion_app/widget/header.dart';
import 'package:fashion_app/widget/item_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final headerList = AssetConstant.modelList;
  final itemList = AssetConstant.itemList;
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
