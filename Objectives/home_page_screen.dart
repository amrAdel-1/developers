import 'package:dev_login/Objectives/Components/side_menu.dart';
import 'package:flutter/material.dart';
class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SideMenu(),);
  }
}