import 'package:elearn/theme.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String leftText;
  final String rightText;
  Category(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: fontColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              color: fontLightColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
