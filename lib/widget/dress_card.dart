import 'package:fashion_app/constant/product_values.dart';
import 'package:flutter/material.dart';

class DressCard extends StatelessWidget {
  final String imagePath;
  const DressCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProductValues.headerCardPadding,
      child: Container(
        margin: ProductValues.itemPadding,
        padding: ProductValues.itemPadding,
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
              imagePath,
            ),
          ),
        ),
      ),
    );
  }
}
