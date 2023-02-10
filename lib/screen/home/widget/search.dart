import 'package:elearn/theme.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: fontLightColor.withOpacity(0.3),
                width: 2,
              ),
            ),
            child: TextField(
              cursorColor: fontLightColor,
              decoration: InputDecoration(
                fillColor: fontLightColor.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search something',
                hintStyle: TextStyle(color: fontLightColor),
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: 35,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/icons/search.png',
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
