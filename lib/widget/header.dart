import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/product_values.dart';
import 'package:fashion_app/model/header_model.dart';
import 'package:flutter/material.dart';

class AvatarList extends StatelessWidget {
  final List<HeaderModel> headerList;

  const AvatarList({
    Key? key,
    required this.headerList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: headerList.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            FittedBox(
              child: Stack(
                children: [
                  _mainAvatar(index),
                  _positionedAvatar(index),
                ],
              ),
            ),
            _card(index, context),
          ],
        );
      }),
    );
  }

  Padding _mainAvatar(int index) {
    return Padding(
      padding: ProductValues.headerCardPadding,
      child: CircleAvatar(
        foregroundImage: AssetImage(headerList[index].imagePath),
        radius: ProductValues.circleAvatarRadius,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Positioned _positionedAvatar(int index) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: CircleAvatar(
        radius: ProductValues.circleAvatarLittleRadius,
        backgroundImage: AssetImage(headerList[index].littleImagePath),
      ),
    );
  }

  InkWell _card(int index, BuildContext context) {
    return InkWell(
      onTap: (() => showDialog(
          context: context, builder: ((context) => _dialog(index, context)))),
      child: Card(
        elevation: 0,
        margin: ProductValues.itemPadding,
        child: Padding(
          padding: ProductValues.headerCardPadding,
          child: Text(
            headerList[index].title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontFamily: Constant.fontFamily,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }

  _dialog(int index, BuildContext context) {
    return AlertDialog(
      title: Text(
        '${headerList[index].title}ed',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: Constant.fontFamily,
            ),
      ),
      content: Text(
        headerList[index].description,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              fontFamily: Constant.fontFamily,
            ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(Constant.close),
        ),
      ],
    );
  }
}
