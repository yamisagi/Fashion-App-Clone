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
          width: 200,
          child: Column(
            children: [
              customText(
                  text: dressTitle, fontSize: 20, textColor: Colors.black),
              customText(
                text: dressSubTitle,
              ),
              const SizedBox(
                height: 10,
              ),
              customText(
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
  }) {
    return Text(
      text,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}
