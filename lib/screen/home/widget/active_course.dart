import 'package:elearn/screen/home/widget/category_title.dart';
import 'package:elearn/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Category('Currently active', 'view all'),
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: fontLightColor.withOpacity(0.1),
              border:
                  Border.all(color: fontLightColor.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child:
                          Image.asset('assets/images/progress.png', width: 60),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Symetry theory',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: fontColor),
                        ),
                        Text(
                          '2 lessons left',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: fontLightColor),
                        )
                      ],
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 35.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: Text(
                    '61%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  progressColor: accentColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
