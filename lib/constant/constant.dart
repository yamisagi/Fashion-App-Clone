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
  static const cardItemImage4 = 'assets/ic_modelgrid4.jpeg';
  static const cardItemImage5 = 'assets/ic_modelgrid5.jpeg';
  static const cardItemImage6 = 'assets/ic_modelgrid6.jpeg';
  static const cardItemImage7 = 'assets/ic_modelgrid7.jpeg';
  static const cardItemImage8 = 'assets/ic_modelgrid8.jpeg';
  static const cardItemImage9 = 'assets/ic_modelgrid9.jpeg';
  static const cardItemImage10 = 'assets/ic_modelgrid10.jpeg';
  static const cardItemImage11 = 'assets/ic_modelgrid11.jpeg';
  static const cardItemImage12 = 'assets/ic_modelgrid12.jpeg';
  static const cardItemImage13 = 'assets/ic_modelgrid13.jpeg';
  static const cardItemImage14 = 'assets/ic_modelgrid14.jpeg';
  static const cardItemImage15 = 'assets/ic_modelgrid15.jpeg';
  static const cardItemImage16 = 'assets/ic_modelgrid16.jpeg';
  static const cardItemImage17 = 'assets/ic_modelgrid17.jpeg';
  static const cardItemImage18 = 'assets/ic_modelgrid18.jpeg';
  static const dress = 'assets/ic_dress1.jpg';
  static const dress2 = 'assets/ic_dress2.jpg';
  static const dress3 = 'assets/ic_dress3.jpg';
  static const dress4 = 'assets/ic_dress4.jpg';
  static const dress5 = 'assets/ic_dress5.jpg';
  static const dress6 = 'assets/ic_dress6.jpg';

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
  static final positionedDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );

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
        dress: dress,
        dressTitle: 'Jeans',
        dressPrice: '\$100',
        dressSubtitle: 'Lorem Ipsum',
        dressDescription:
            'Jeans are a very popular style of clothing in the United States and many other countries. '),
    ItemModel(
      modelName: 'Sarah',
      modelDescription: '10 min ago',
      modelImage: 'assets/ic_model1.jpeg',
      time: '10 min ago',
      cardImage: cardItemImage4,
      commentCount: '644',
      replyCount: '10K',
      secondImage: cardItemImage5,
      thirdImage: cardItemImage6,
      uniqueId: '2',
      uniqueId2: 'b',
      uniqueId3: 'bb',
      dress: dress2,
      dressTitle: 'Black Hat',
      dressDescription:
          'Hat is a piece of clothing worn by an individual to cover the head. ',
      dressPrice: '\$10',
      dressSubtitle: 'Lorem Ipsum',
    ),
    ItemModel(
      modelName: 'Emmet',
      modelDescription: '25 min ago',
      modelImage: 'assets/ic_model2.jpeg',
      time: '25 min ago',
      cardImage: cardItemImage7,
      commentCount: '876',
      replyCount: '5K',
      secondImage: cardItemImage8,
      thirdImage: cardItemImage9,
      uniqueId: '3',
      uniqueId2: 'c',
      uniqueId3: 'cc',
      dress: dress3,
      dressTitle: 'Pink T-Shirt',
      dressDescription:
          'T-shirt is a style of fabric shirt that is made with a single color.  ',
      dressPrice: '\$20',
      dressSubtitle: 'Lorem Ipsum',
    ),
    ItemModel(
      modelName: 'Jane',
      modelDescription: '32 min ago',
      modelImage: 'assets/ic_model3.jpeg',
      time: '32 min ago',
      cardImage: cardItemImage10,
      commentCount: '455',
      replyCount: '2K',
      secondImage: cardItemImage11,
      thirdImage: cardItemImage12,
      uniqueId: '4',
      uniqueId2: 'd',
      uniqueId3: 'dd',
      dress: dress4,
      dressTitle: 'Yellow Sweatpants',
      dressDescription:
          'Sweatpants are a style of clothing that is made from a flexible fabric. It is typically made of a cotton or polyester fiber. ',
      dressPrice: '\$50',
      dressSubtitle: 'Lorem Ipsum',
    ),
    ItemModel(
      modelName: 'Angelina',
      modelDescription: '40 min ago',
      modelImage: 'assets/ic_model4.jpg',
      time: '40 min ago',
      cardImage: cardItemImage13,
      commentCount: '543',
      replyCount: '1K',
      secondImage: cardItemImage14,
      thirdImage: cardItemImage15,
      uniqueId: '5',
      uniqueId2: 'e',
      uniqueId3: 'ee',
      dress: dress5,
      dressTitle: 'White Jacket',
      dressDescription:
          'Jacket is a piece of clothing worn by an individual to cover the body. ',
      dressPrice: '\$200',
      dressSubtitle: 'Lorem Ipsum',
    ),
    ItemModel(
      modelName: 'Kira',
      modelDescription: '55 min ago',
      modelImage: 'assets/ic_model6.jpg',
      time: '55 min ago',
      cardImage: cardItemImage16,
      commentCount: '5453',
      replyCount: '12k',
      secondImage: cardItemImage17,
      thirdImage: cardItemImage18,
      uniqueId: '6',
      uniqueId2: 'f',
      uniqueId3: 'ff',
      dress: dress6,
      dressTitle: 'White Shirt',
      dressDescription:
          'Shirt is a style of clothing that is made from a flexible material. ',
      dressPrice: '\$200',
      dressSubtitle: 'Lorem Ipsum',
    ),
  ];
}
