import 'package:fashion_app/constant/constant.dart';
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
              imagePath,
            ),
          ),
        ),
      ),
    );
  }
}
