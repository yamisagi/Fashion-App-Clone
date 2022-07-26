import 'package:fashion_app/model/item_model.dart';
import 'package:fashion_app/product/item_card.dart';
import 'package:fashion_app/product/item_listtile.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ItemListBuilder extends StatelessWidget {
  final List<ItemModel> itemList;
  const ItemListBuilder({Key? key, required this.itemList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: Constant.headerCardRadius,
      itemBuilder: ((context, index) {
        return Card(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ItemListTile(itemList: itemList, index: index),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ItemCard(
                    itemImagePath: itemList[index].cardImage,
                  ),
                ],
              )
            ],
          ),
        );
      }),
      itemCount: itemList.length,
    );
  }
}
