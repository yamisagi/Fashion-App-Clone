import 'package:fashion_app/model/header_model.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:flutter/material.dart';

class Constant {
  ///-----------------STRINGS-----------------///
  static const fontFamily = 'Montserrat';
  static const appBarTitle = Text('Fashion App');
  static const avatarImage = 'assets/ic_model5.jpeg';
  static const cardItemImage = 'assets/ic_modelgrid1.jpeg';
  static const cardItemImage2 = 'assets/ic_modelgrid2.jpeg';
  static const cardItemImage3 = 'assets/ic_modelgrid3.jpeg';

  ///-----------------STYLE-----------------///
  static const headerFontStyle = TextStyle(
      fontSize: 18, fontFamily: fontFamily, fontWeight: FontWeight.bold);
  static const followButtonHeaderFontStyle =
      TextStyle(fontWeight: FontWeight.bold, fontFamily: Constant.fontFamily);
  static const followButtonDescriptionFontStyle =
      TextStyle(fontWeight: FontWeight.w600, fontFamily: Constant.fontFamily);

  ///-----------------COLOR-----------------///
  static final lightThemeIconColor = Colors.orange[400];
  static final darkThemeIconColor = Colors.purple[500];

  ///-----------------RADIUS&PADDING-----------------///
  static const headerCardMargin = EdgeInsets.all(12);
  static const headerCardPadding = EdgeInsets.all(5.0);
  static const circleAvatarRadius = 50.0;
  static const circleAvatarLittleRadius = 15.0;
  static const circleAvatarMinRadius = 30.0;
  static const headerCardRadius =
      EdgeInsets.only(bottom: 20, left: 10, right: 10);
  static const itemPadding = EdgeInsets.all(12);

  ///-----------------MODEL LIST-----------------///
  static final modelList = [
    HeaderModel(
        imagePath: 'assets/ic_model1.jpeg',
        title: 'Follow',
        littleImagePath: 'assets/ic_chanellogo.jpg',
        description: 'Lorem Ipsum'),
    HeaderModel(
        imagePath: 'assets/ic_model2.jpeg',
        title: 'Follow',
        littleImagePath: 'assets/ic_louisvuitton.jpg',
        description: 'Lorem Pretty Lore'),
    HeaderModel(
        imagePath: 'assets/ic_model3.jpeg',
        title: 'Follow',
        littleImagePath: 'assets/ic_louisvuitton.jpg',
        description: 'Model is pretty sure what she is doing'),
    HeaderModel(
        imagePath: 'assets/ic_model4.jpg',
        title: 'Follow',
        littleImagePath: 'assets/ic_chanellogo.jpg',
        description: 'Icon of fashion '),
    HeaderModel(
        imagePath: 'assets/ic_model5.jpeg',
        title: 'Follow',
        littleImagePath: 'assets/ic_louisvuitton.jpg',
        description: 'Absolutely perfect '),
    HeaderModel(
        imagePath: 'assets/ic_model6.jpg',
        title: 'Follow',
        littleImagePath: 'assets/ic_chanellogo.jpg',
        description: 'Lorem Ipsum')
  ];
  static final itemList = [
    ItemModel(
      modelName: 'Scarlett',
      modelDescription: '5 min ago',
      modelImage: 'assets/ic_model5.jpeg',
      time: '5 min ago',
      cardImage: cardItemImage,
      commentCount: '435',
      replyCount: '1.8K',
      secondImage: cardItemImage2,
      thirdImage: cardItemImage3,
      uniqueId: '1',
      uniqueId2: 'a',
      uniqueId3: 'aa',
      ids: ['1', 'a', 'aa'],
    ),
    ItemModel(
      modelName: 'Sarah',
      modelDescription: '10 min ago',
      modelImage: 'assets/ic_model1.jpeg',
      time: '10 min ago',
      cardImage: cardItemImage2,
      commentCount: '644',
      replyCount: '10K',
      secondImage: cardItemImage3,
      thirdImage: cardItemImage,
      uniqueId: '2',
      uniqueId2: 'b',
      uniqueId3: 'bb',
      ids: ['2', 'b', 'bb'],
    ),
    ItemModel(
      modelName: 'Emmet',
      modelDescription: '25 min ago',
      modelImage: 'assets/ic_model2.jpeg',
      time: '25 min ago',
      cardImage: cardItemImage3,
      commentCount: '876',
      replyCount: '5K',
      secondImage: cardItemImage,
      thirdImage: cardItemImage2,
      uniqueId: '3',
      uniqueId2: 'c',
      uniqueId3: 'cc',
      ids: ['3', 'c', 'cc'],
    ),
    ItemModel(
      modelName: 'Jane',
      modelDescription: '32 min ago',
      modelImage: 'assets/ic_model3.jpeg',
      time: '32 min ago',
      cardImage: cardItemImage,
      commentCount: '455',
      replyCount: '2K',
      secondImage: cardItemImage2,
      thirdImage: cardItemImage3,
      uniqueId: '4',
      uniqueId2: 'd',
      uniqueId3: 'dd',
      ids: ['4', 'd', 'dd'],
    ),
    ItemModel(
      modelName: 'Angelina',
      modelDescription: '40 min ago',
      modelImage: 'assets/ic_model4.jpg',
      time: '40 min ago',
      cardImage: cardItemImage2,
      commentCount: '543',
      replyCount: '1K',
      secondImage: cardItemImage3,
      thirdImage: cardItemImage2,
      uniqueId: '5',
      uniqueId2: 'e',
      uniqueId3: 'ee',
      ids: ['5', 'e', 'ee'],
    ),
    ItemModel(
      modelName: 'Kira',
      modelDescription: '55 min ago',
      modelImage: 'assets/ic_model6.jpg',
      time: '55 min ago',
      cardImage: cardItemImage3,
      commentCount: '5453',
      replyCount: '12k',
      secondImage: cardItemImage,
      thirdImage: cardItemImage3,
      uniqueId: '6',
      uniqueId2: 'f',
      uniqueId3: 'ff',
      ids: ['6', 'f', 'ff'],
    ),
  ];
}
