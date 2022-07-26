import 'package:fashion_app/model/item_model.dart';
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
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: Constant.circleAvatarMinRadius,
                  backgroundImage: AssetImage(itemList[index].modelImage),
                ),
                title: Text(
                  itemList[index].modelName,
                  style: Constant.followButtonHeaderFontStyle,
                ),
                subtitle: Text(
                  itemList[index].modelDescription,
                  style: Constant.followButtonDescriptionFontStyle,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              const Placeholder(
                fallbackHeight: 300,
              )
            ],
          ),
        );
      }),
      itemCount: itemList.length,
    );
  }
}
