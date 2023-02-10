import 'package:elearn/theme.dart';
import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 26),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Let's boost your\nbrain power",
              style: TextStyle(
                color: fontColor,
                fontWeight: FontWeight.w800,
                fontSize: 26,
              ),
            ),
            TextSpan(
              text: '✨',
              style: TextStyle(
                fontSize: 26,
              ),
            )
          ],
        ),
      ),
    );
  }
}
