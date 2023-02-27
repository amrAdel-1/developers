// ignore: unused_import
import 'package:dev_login/Objectives/Components/side_menu.dart';
import 'package:dev_login/Screens/Guiding/guide_me_screen.dart';
// ignore: unused_import
import 'package:dev_login/Screens/OnBoarding/on_boarding_screen.dart';
// ignore: unused_import
import 'package:dev_login/Screens/SignUp/Components/background.dart';
// ignore: unused_import
import 'package:dev_login/Screens/Welcome/welcome_screen.dart';
import 'package:dev_login/const.dart';
// ignore: unused_import
import 'package:dev_login/entry_point.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developers 99',
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      home:   OnBoardingScreen()
    
    );
  }
}

