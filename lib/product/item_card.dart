import 'package:fashion_app/constant/constant.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.itemImagePath,
    required this.boxHeight,
    required this.boxWidth,
  }) : super(key: key);
  final String itemImagePath;
  final double boxHeight;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeight,
      width: boxWidth,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        borderOnForeground: true,
        margin: Constant.itemPadding,
        child: Image.asset(
          itemImagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
