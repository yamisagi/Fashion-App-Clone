import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:fashion_app/product/detail_page_bottom.dart';
import 'package:fashion_app/product/detail_page_button.dart';
import 'package:fashion_app/product/detail_positioned.dart';
import 'package:fashion_app/product/product_tooltip.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int index;
  final String heroTag;
  final List<ItemModel> itemList;
  final String imagePath;
  const DetailPage({
    Key? key,
    required this.heroTag,
    required this.imagePath,
    required this.index,
    required this.itemList,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Dismissible(
      resizeDuration: Constant.dismissDuration,
      behavior: HitTestBehavior.translucent,
      direction: DismissDirection.down,
      onDismissed: (direction) {
        Navigator.pop(context);
      },
      key: Key(widget.heroTag),
      child: Stack(
        children: [
          Hero(
            tag: widget.heroTag,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        widget.imagePath,
                      ),
                    ),
                  ),
                )),
          ),
          DetailPositioned(
            children: [
              DetailPageBottom(
                imagePath: widget.imagePath,
                dressDescription:
                    widget.itemList[widget.index].dressDescription,
                dressTitle: widget.itemList[widget.index].dressTitle,
                dressSubTitle: widget.itemList[widget.index].dressSubtitle,
              ),
              const Divider(
                color: ProductColors.profileDividerColor,
              ),
              DetailPageButton(
                dressPrice: widget.itemList[widget.index].dressPrice,
              ),
            ],
          ),
          PositionedToolTip(
            message: widget.itemList[widget.index].dressDescription,
          )
        ],
      ),
    ));
  }
}
