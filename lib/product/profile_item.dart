import 'package:flutter/material.dart';

class ColumnItems extends StatelessWidget {
  final String count;
  final String text;

  const ColumnItems({
    Key? key,
    required this.text,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
