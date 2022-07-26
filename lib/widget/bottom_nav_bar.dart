import 'package:flutter/material.dart';

class ProductNavBar extends StatefulWidget {
  final Color? fixedColor;
  const ProductNavBar({super.key, required this.fixedColor});

  @override
  State<ProductNavBar> createState() => ProductNavBarState();
}

class ProductNavBarState extends State<ProductNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      unselectedIconTheme: IconThemeData(color: widget.fixedColor),
      fixedColor: widget.fixedColor,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex: _currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
