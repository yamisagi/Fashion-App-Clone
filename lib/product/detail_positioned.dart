import 'package:fashion_app/constant/constant.dart';
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
      bottom: 15,
      left: 15,
      right: 15,
      child: Container(
        height: 225,
        width: MediaQuery.of(context).size.width - 30,
        decoration: Constant.positionedDecoration,
        child: Column(
          children: children,
        ),
      ),
    );
  }
}