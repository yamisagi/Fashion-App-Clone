import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    Key? key,
    required this.itemList,
    required this.index,
  }) : super(key: key);

  final List<ItemModel> itemList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
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
    );
  }
}
