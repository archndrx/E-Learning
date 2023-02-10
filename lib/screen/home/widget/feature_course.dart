import 'package:elearn/model/course.dart';
import 'package:elearn/screen/home/widget/category_title.dart';
import 'package:elearn/screen/home/widget/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Category('Top of the week', 'view all'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              itemCount: courseList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CourseItem(
                courseList[index],
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
