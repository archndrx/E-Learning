import 'package:elearn/theme.dart';
import 'package:flutter/material.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module(
      this.buttonColor,
      this.buttonFont,
      this.desc,
      this.icon,
      this.iconBg,
      this.iconBorder,
      this.iconColor,
      this.lesson,
      this.moduleBg,
      this.moduleBorder,
      this.time,
      this.title);

  static List<Module> generateModule() {
    return [
      Module(
          primaryColor,
          primaryDarkColor,
          "How it all  started\nExplaination.",
          Icons.play_arrow_rounded,
          accentColor,
          accentColor,
          Colors.white,
          '2 lessons',
          primaryLightColor,
          primaryLightColor,
          '22 min',
          'MODULE 1'),
      Module(
          Colors.grey.withOpacity(0.2),
          Colors.grey,
          "What we didn't know about catastrophe",
          Icons.lock_outline_rounded,
          Colors.white,
          fontLightColor.withOpacity(0.3),
          fontLightColor.withOpacity(0.7),
          '2 lessons',
          Colors.white,
          primaryLightColor,
          '12 min',
          'MODULE 2'),
    ];
  }
}
