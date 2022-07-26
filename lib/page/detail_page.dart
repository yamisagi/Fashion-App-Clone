import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/model/item_model.dart';
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
      resizeDuration: const Duration(milliseconds: 5),
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
          Positioned(
              bottom: 15,
              left: 15,
              right: 15,
              child: Container(
                height: 225,
                width: MediaQuery.of(context).size.width - 30,
                decoration: Constant.positionedDecoration,
                child: Column(
                  children: [
                    textRow(),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    bottomRow(context)
                  ],
                ),
              )),
        ],
      ),
    ));
  }

  Row bottomRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.itemList[widget.index].dressPrice,
          style: const TextStyle(
              fontFamily: Constant.fontFamily,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {
              Navigator.canPop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            )),
      ],
    );
  }

  Row textRow() {
    return Row(
      children: [
        dressCard(),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Text(
                widget.itemList[widget.index].dressTitle,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                widget.itemList[widget.index].dressSubtitle,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.itemList[widget.index].dressDescription,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
            ],
          ),
        )
      ],
    );
  }

  Padding dressCard() {
    return Padding(
      padding: Constant.headerCardPadding,
      child: Container(
        margin: Constant.headerCardMargin,
        padding: Constant.headerCardMargin,
        height: 120,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              widget.itemList[widget.index].dress,
            ),
          ),
        ),
      ),
    );
  }
}
