import 'package:fashion_app/constant/constant.dart';
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
          style: TextStyle(
              fontFamily: Constant.fontFamily,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            )),
      ],
    );
  }
}
