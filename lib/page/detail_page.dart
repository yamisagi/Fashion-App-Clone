import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int index;
  final String heroTag;

  final String imagePath;
  const DetailPage({
    Key? key,
    required this.heroTag,
    required this.imagePath,
    required this.index,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Dismissible(
      resizeDuration: const Duration(milliseconds: 5),
      behavior: HitTestBehavior.translucent,
      direction: DismissDirection.down,
      onDismissed: (direction) {
        Navigator.pop(context);
      },
      key: Key(widget.heroTag),
      child: Hero(
        tag: widget.heroTag,
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.imagePath,
                  ),
                ),
              ),
            )),
      ),
    ));
  }
}
