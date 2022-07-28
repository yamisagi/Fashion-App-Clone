import 'package:fashion_app/constant/product_values.dart';
import 'package:flutter/material.dart';

class DetailPositioned extends StatelessWidget {
  final List<Widget> children;
  const DetailPositioned({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ProductValues.positionValue,
      left: ProductValues.positionValue,
      right: ProductValues.positionValue,
      child: Container(
        height: ProductValues.positionedContainerHeight,
        width: MediaQuery.of(context).size.width - 30,
        decoration: ProductValues.positionedDecoration,
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
