import 'package:fashion_app/constant/product_values.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:flutter/material.dart';

class ProfileGrid extends StatelessWidget {
  final int itemCount;
  final List<ItemModel> imagePath;
  const ProfileGrid({
    Key? key,
    required this.itemCount,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: ProductValues.gridExtendValue,
        crossAxisCount: ProductValues.gridCrossAxisCount,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: ProductValues.headerCardPadding,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: ProductValues.profileItemRadius,
              image: DecorationImage(
                image: AssetImage(imagePath[index].cardImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      itemCount: itemCount,
    );
  }
}
