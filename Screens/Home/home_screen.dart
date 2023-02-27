// ignore: unnecessary_import
// ignore_for_file: non_constant_identifier_names

// ignore: unnecessary_import
import 'dart:ui';

import 'package:dev_login/Screens/Home/components/course_card.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

import '../../Objectives/Models/courses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Courses",
                  style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black,
                  fontWeight: FontWeight.w600
                  ),
                  ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [...Courses.map((course) => Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CourseCard(course: course,),
                )).toList()
              ],),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Recent",
                style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              // ignore: avoid_types_as_parameter_names
              ...recentCourses.map((Course) => Padding(
                padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 20),
                child: SecondaryCourseCard(course: Course,),
              ))
               //SvgPicture.asset("assets/icons/ios.svg")
                ]),
        ),
      ),
          ); 
  }
}

class SecondaryCourseCard extends StatelessWidget {
  const SecondaryCourseCard({
    Key? key, 
    required this.course,
  }) : super(key: key);
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 20),
      decoration:  BoxDecoration(
        color: course.byColor,
      borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        children: [
        Expanded(
          child: Column(
            children: [
              Text(course.title,
              style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white,
              fontWeight: FontWeight.w600
              ),
              ),
              const Text(
                "Watch Video - 20 mins", 
                style: TextStyle(color: Colors.white60,
                fontSize: 16
                ),)
            ],
            ),
            ),
            const SizedBox(
              height: 40,
              ),
            const SizedBox(
              width: 8,)

        ]
                ),
            );
  }
}




