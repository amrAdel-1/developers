import 'package:flutter/material.dart';

class Course {
  final String  title, description, iconSrc;
  final Color byColor;

  Course(
    {required this.title, 
     this.description ="We can guide you to be a proffessional developer", 
     this.iconSrc ="SvgPicture.asset('assets/icons/ios.svg", 
     this.byColor = const Color(0xFF7553F6),
     }
     );
}
// ignore: non_constant_identifier_names
List<Course> Courses = [
Course(title: "Web Development"),
Course(
  title: "The Used Languages",
  iconSrc: "SvgPicture.asset('assets/icons/ios.svg",
  byColor: const Color(0xFF80A4FF),
)
];

List<Course> recentCourses = [
  Course(title: "React Js"),
Course(
  title: "Type Script",
  iconSrc: "SvgPicture.asset('assets/icons/ios.svg",
  byColor: const Color(0xFF80A4FF),
),
 Course(title: "Dart"),
Course(
  title: "Mobile Application",
  iconSrc: "SvgPicture.asset('assets/icons/ios.svg",
  byColor: const Color(0xFF80A4FF),
),
];