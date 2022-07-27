import 'package:flutter/material.dart';

class ProfileGrid extends StatelessWidget {
  final int itemCount;
  final String imagePath;
  final int indexC;
  const ProfileGrid({
    Key? key,
    required this.itemCount,
    required this.imagePath,
    required this.indexC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 250.0, crossAxisCount: 3),
      itemBuilder: (context, indexC) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      itemCount: itemCount,
    );
  }
}
