// ignore: unused_import
import 'package:dev_login/Screens/Welcome/Components/background.dart';
// ignore: unused_import
import 'package:dev_login/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

// ignore: unused_import
import '../../Components/rounded_button.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return  Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("About Developers99",
          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.purple[800],
             ),
           ),
        ]
      )
    )
  );
  

          
  }
}
