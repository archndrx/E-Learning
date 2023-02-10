import 'package:elearn/screen/detail/widget/course_module.dart';
import 'package:elearn/theme.dart';
import 'package:flutter/material.dart';

import '../../../model/module.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.generateModule();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "The Progress",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: fontColor,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/grid.png',
                    width: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/icons/list.png',
                    width: 25,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ...moduleList.map((e) => CourseModule(e)).toList()
          //CourseModule(moduleList[0]),
        ],
      ),
    );
  }
}
