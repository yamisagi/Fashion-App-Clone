import 'package:fashion_app/constant/constant.dart';
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
      padding: Constant.headerCardPadding,
      child: CircleAvatar(
        foregroundImage: AssetImage(headerList[index].imagePath),
        radius: Constant.circleAvatarRadius,
        backgroundColor: Colors.white,
      ),
    );
  }

  Positioned _positionedAvatar(int index) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: CircleAvatar(
        radius: Constant.circleAvatarLittleRadius,
        backgroundImage: AssetImage(headerList[index].littleImagePath),
      ),
    );
  }

  InkWell _card(int index, BuildContext context) {
    return InkWell(
      onTap: (() => showDialog(
          context: context, builder: ((context) => _dialog(index, context)))),
      child: Card(
        margin: Constant.headerCardMargin,
        child: Padding(
          padding: Constant.headerCardPadding,
          child: Text(
            headerList[index].title,
            style: Constant.headerFontStyle,
          ),
        ),
      ),
    );
  }

  _dialog(int index, BuildContext context) {
    return AlertDialog(
      title: Text('${headerList[index].title}ed',
          textAlign: TextAlign.center,
          style: Constant.followButtonHeaderFontStyle),
      content: Text(
        headerList[index].description,
        style: Constant.followButtonDescriptionFontStyle,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Follow'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
