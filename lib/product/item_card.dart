import 'package:fashion_app/constant/product_values.dart';
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
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: ProductValues.profileItemRadius,
        ),
        borderOnForeground: true,
        margin: ProductValues.itemPadding,
        child: Image.asset(
          itemImagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
