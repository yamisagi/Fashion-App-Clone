import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/product_values.dart';
import 'package:flutter/material.dart';

class ColumnItems extends StatelessWidget {
  final String count;
  final String text;

  const ColumnItems({
    Key? key,
    required this.text,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: Constant.fontFamily,
              ),
        ),
       ProductValues.spacer,
        Text(
          text,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w300,
                fontFamily: Constant.fontFamily,
              ),
        ),
      ],
    );
  }
}
