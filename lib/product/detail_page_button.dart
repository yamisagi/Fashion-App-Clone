import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/product_values.dart';
import 'package:flutter/material.dart';

class DetailPageButton extends StatelessWidget {
  final String dressPrice;

  const DetailPageButton({
    Key? key,
    required this.dressPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          dressPrice,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: Constant.fontFamily,
              ),
        ),
        ProductValues.spacer,
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: ProductColors.bottomButtonColor,
            )),
      ],
    );
  }
}
