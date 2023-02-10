import 'package:elearn/model/course.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                course.authorImg,
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                course.author,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  color: fontLightColor,
                  shape: BoxShape.circle,
                ),
              ),
              Icon(
                Icons.access_time_filled,
                size: 20,
                color: accentColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "1hr 35min",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: fontLightColor),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            course.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: fontColor,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "How we developed speech and how it\nbecame such a powerfull tool, let's see",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                wordSpacing: 2,
                color: fontLightColor),
          ),
        ],
      ),
    );
  }
}
