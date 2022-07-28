import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/product_values.dart';
import 'package:fashion_app/widget/dress_card.dart';
import 'package:flutter/material.dart';

class DetailPageBottom extends StatelessWidget {
  final String imagePath;
  final String dressTitle;
  final String dressSubTitle;
  final String dressDescription;
  const DetailPageBottom({
    Key? key,
    required this.imagePath,
    required this.dressTitle,
    required this.dressSubTitle,
    required this.dressDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DressCard(imagePath: imagePath),
        SizedBox(
          width: ProductValues.dressCardWidth,
          child: Column(
            children: [
              customText(
                context: context,
                text: dressTitle,
                fontSize: 20,
                textColor: Colors.black,
              ),
              customText(
                context: context,
                text: dressSubTitle,
              ),
              ProductValues.textSpacer,
              customText(
                context: context,
                text: dressDescription,
              ),
            ],
          ),
        )
      ],
    );
  }

  Text customText({
    required String text,
    double fontSize = 15,
    Color? textColor = Colors.grey,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          fontFamily: Constant.fontFamily,
          color: textColor,
          overflow: TextOverflow.ellipsis),
    );
  }
}
