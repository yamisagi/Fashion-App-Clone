import 'package:fashion_app/constant/constant.dart';
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
        width: Constant.positionedContainerWidth,
        height: Constant.positionedContainerHeight,
        decoration: Constant.positionedBoxDecoration,
        child: Tooltip(
          //triggerMode: TooltipTriggerMode.tap,
          message: message,
          decoration: Constant.positionedTootipDecoration,
          padding: Constant.headerCardPadding,
          textStyle: Constant.positionedToolTipTextStyle,
          showDuration: const Duration(seconds: 2),
          waitDuration: const Duration(seconds: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Padding(
                padding: Constant.headerCardPadding,
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: Constant.fontFamily,
                    fontSize: 18,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
