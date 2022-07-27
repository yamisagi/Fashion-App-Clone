import 'package:fashion_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class ProductAppBar extends StatefulWidget implements PreferredSizeWidget {
  ProductAppBar({Key? key, required this.isDarkTheme, this.func})
      : super(key: key);
  Function? func;
  bool isDarkTheme;

  @override
  State<ProductAppBar> createState() => _ProductAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ProductAppBarState extends State<ProductAppBar> {
  @override
  Widget build(BuildContext context) {
    Icon darkIcon = const Icon(Icons.dark_mode);
    Icon lightIcon = const Icon(Icons.light_mode);
    return AppBar(
      systemOverlayStyle: widget.isDarkTheme
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      title: Constant.appBarTitle,
      actions: [
        IconButton(
          icon: widget.isDarkTheme ? lightIcon : darkIcon,
          onPressed: () {
            setState(() {
              widget.isDarkTheme = !widget.isDarkTheme;
              widget.func?.call();
            });
          },
        ),
      ],
    );
  }
}
