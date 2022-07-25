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
                  Padding(
                    padding: Constant.headerCardPadding,
                    child: CircleAvatar(
                      radius: Constant.circleAvatarRadius,
                      backgroundImage: AssetImage(headerList[index].imagePath),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: Constant.circleAvatarLittleRadius,
                      backgroundImage:
                          AssetImage(headerList[index].littleImagePath),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: Constant.headerCardMargin,
              child: Padding(
                padding: Constant.headerCardPadding,
                child: Text(
                  headerList[index].title,
                  style: Constant.headerFontStyle,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
