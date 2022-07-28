import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/product_values.dart';
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
        backgroundColor: ProductColors.circleAvatarBackground,
        radius: ProductValues.circleAvatarMinRadius,
        backgroundImage: AssetImage(itemList[index].modelImage),
      ),
      title: Text(
        itemList[index].modelName,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: Constant.fontFamily,
            ),
      ),
      subtitle: Text(
        itemList[index].modelDescription,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              fontFamily: Constant.fontFamily,
            ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () {},
      ),
    );
  }
}
