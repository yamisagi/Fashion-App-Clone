import 'package:flutter/material.dart';

class ProductNavBar extends StatefulWidget {
  final Color? fixedColor;
  final ValueChanged<int>? onItemSelected;
  int currentIndex;
  ProductNavBar({
    super.key,
    required this.fixedColor,
    required this.onItemSelected,
    required this.currentIndex,
  });

  @override
  State<ProductNavBar> createState() => ProductNavBarState();
}

class ProductNavBarState extends State<ProductNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.shifting,
      unselectedIconTheme: IconThemeData(color: widget.fixedColor),
      fixedColor: widget.fixedColor,
      onTap: widget.onItemSelected,
      currentIndex: widget.currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
