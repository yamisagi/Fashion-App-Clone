import 'package:fashion_app/constant/product_values.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:fashion_app/page/detail_page.dart';
import 'package:fashion_app/product/item_card.dart';
import 'package:fashion_app/product/item_listtile.dart';
import 'package:flutter/material.dart';

class ItemListBuilder extends StatefulWidget {
  final List<ItemModel> itemList;
  const ItemListBuilder({
    Key? key,
    required this.itemList,
  }) : super(key: key);

  @override
  State<ItemListBuilder> createState() => _ItemListBuilderState();
}

class _ItemListBuilderState extends State<ItemListBuilder> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: ProductValues.headerCardRadius,
      itemBuilder: ((context, index) {
        return Card(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ItemListTile(
                item: widget.itemList[index],
              ),
              Row(
                children: [
                  inkWell(context, index),
                  Column(
                    children: [
                      inkWellLittle(context, index,
                          heroTag: widget.itemList[index].uniqueId2,
                          imagePath: widget.itemList[index].secondImage),
                      inkWellLittle(context, index,
                          heroTag: widget.itemList[index].uniqueId3,
                          imagePath: widget.itemList[index].thirdImage),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textButton(
                    index: index,
                    label: widget.itemList[index].replyCount,
                    icon: Icons.reply,
                  ),
                  textButton(
                    index: index,
                    label: widget.itemList[index].commentCount,
                    icon: Icons.comment_bank_outlined,
                  ),
                  const Spacer(flex: 1),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                        widget.itemList[index].likeState = isLiked;
                      });
                    },
                    icon: Icon(
                        widget.itemList[index].likeState
                            ? Icons.favorite_border
                            : Icons.favorite,
                        color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        );
      }),
      itemCount: widget.itemList.length,
    );
  }

  InkWell inkWellLittle(
    BuildContext context,
    int index, {
    required String heroTag,
    required String imagePath,
  }) {
    return InkWell(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    itemList: widget.itemList,
                    index: index,
                    heroTag: heroTag,
                    imagePath: imagePath,
                  )),
        );
      }),
      child: Hero(
        tag: heroTag,
        child: ItemCard(
            boxHeight: 125,
            boxWidth: MediaQuery.of(context).size.width / 2.5,
            itemImagePath: imagePath),
      ),
    );
  }

  InkWell inkWell(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    itemList: widget.itemList,
                    index: index,
                    heroTag: widget.itemList[index].uniqueId,
                    imagePath: widget.itemList[index].cardImage,
                  )),
        );
      },
      child: Hero(
        tag: widget.itemList[index].uniqueId,
        child: ItemCard(
          boxHeight: 250,
          boxWidth: MediaQuery.of(context).size.width / 2,
          itemImagePath: widget.itemList[index].cardImage,
        ),
      ),
    );
  }

  TextButton textButton({
    required int index,
    required String label,
    required IconData icon,
  }) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Theme.of(context).iconTheme.color),
      label: Text(
        label,
        style: TextStyle(color: Theme.of(context).iconTheme.color),
      ),
    );
  }
}
