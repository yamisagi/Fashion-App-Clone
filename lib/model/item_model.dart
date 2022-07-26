class ItemModel {
  String modelName;
  String modelDescription;
  String modelImage;
  String time;
  String cardImage;
  bool likeState = false;
  String commentCount;
  String replyCount;
  String secondImage;
  String thirdImage;
  String uniqueId;
  String uniqueId2;
  String uniqueId3;
  List<String> ids;

  ItemModel({
    required this.modelName,
    required this.modelDescription,
    required this.modelImage,
    required this.time,
    required this.cardImage,
    this.likeState = false,
    required this.commentCount,
    required this.replyCount,
    required this.secondImage,
    required this.thirdImage,
    required this.uniqueId,
    required this.uniqueId2,
    required this.uniqueId3,
    required this.ids,
  });
}
