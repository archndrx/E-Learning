import 'package:elearn/model/course.dart';
import 'package:elearn/screen/home/widget/active_course.dart';
import 'package:elearn/screen/home/widget/category_title.dart';
import 'package:elearn/screen/home/widget/course_item.dart';
import 'package:elearn/screen/home/widget/emoji_text.dart';
import 'package:elearn/screen/home/widget/feature_course.dart';
import 'package:elearn/screen/home/widget/search.dart';
import 'package:flutter/material.dart';
import 'package:elearn/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Container(
            padding: EdgeInsets.only(
              bottom: 5,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: accentColor,
                  width: 2,
                ),
              ),
            ),
            child: Text(
              "Home",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'calendar',
          icon: Image.asset(
            'assets/icons/calendar.png',
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'bookmark',
          icon: Image.asset(
            'assets/icons/bookmark.png',
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset(
            'assets/icons/user.png',
            width: 20,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Hello User!!',
          style: TextStyle(
            color: fontLightColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 25),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: fontLightColor.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: accentColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
