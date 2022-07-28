import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/product_values.dart';
import 'package:flutter/material.dart';

class PositionedToolTip extends StatelessWidget {
  final String message;
  const PositionedToolTip({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.4,
      left: MediaQuery.of(context).size.width / 2 - 175,
      child: Container(
        width: ProductValues.positionedToolTipWidth,
        height: ProductValues.positionedToolTipHeight,
        decoration: ProductValues.positionedBoxDecoration,
        child: Tooltip(
          //triggerMode: TooltipTriggerMode.tap,
          message: message,
          decoration: ProductValues.positionedTootipDecoration,
          padding: ProductValues.headerCardPadding,
          textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: Constant.fontFamily,
                fontWeight: FontWeight.bold,
                color: ProductColors.white,
              ),
          showDuration: Constant.toolTipShowDuration,
          waitDuration: Constant.toolTipWaitDuration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: ProductValues.headerCardPadding,
                child: Text(
                  Constant.detailsHeader,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: ProductValues.positionedToolTipTextSize,
                        color: ProductColors.detailToolTipBackground,
                        fontFamily: Constant.fontFamily,
                      ),
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
                color: ProductColors.detailToolTipBackground,
                size: ProductValues.positionedToolTipIconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
