import 'package:fashion_app/constant/color_constant.dart';
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
    return AppBar(
      systemOverlayStyle: widget.isDarkTheme
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      title: Constant.appBarTitle,
      actions: [
        IconButton(
          icon: iconSet(),
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

  iconSet() {
    if (widget.isDarkTheme) {
      return ProductColors.lightIcon;
    } else {
      return ProductColors.darkIcon;
    }
  }
}
