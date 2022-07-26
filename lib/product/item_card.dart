import 'package:fashion_app/constant/constant.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.itemImagePath,
  }) : super(key: key);
  final String itemImagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width / 2,
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
