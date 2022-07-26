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
      cardImage: cardItemImage
    ),
    ItemModel(
      modelName: 'Sarah',
      modelDescription: '10 min ago',
      modelImage: 'assets/ic_model1.jpeg',
      time: '10 min ago',
      cardImage: cardItemImage2
    ),
    ItemModel(
      modelName: 'Emmet',
      modelDescription: '25 min ago',
      modelImage: 'assets/ic_model2.jpeg',
      time: '25 min ago',
      cardImage: cardItemImage3
    ),
    ItemModel(
      modelName: 'Jane',
      modelDescription: '32 min ago',
      modelImage: 'assets/ic_model3.jpeg',
      time: '32 min ago',
      cardImage: cardItemImage
    ),
    ItemModel(
      modelName: 'Angelina',
      modelDescription: '40 min ago',
      modelImage: 'assets/ic_model4.jpg',
      time: '40 min ago',
      cardImage: cardItemImage2
    ),
    ItemModel(
      modelName: 'Kira',
      modelDescription: '55 min ago',
      modelImage: 'assets/ic_model6.jpg',
      time: '55 min ago',
      cardImage: cardItemImage3
    ),
  ];
}
