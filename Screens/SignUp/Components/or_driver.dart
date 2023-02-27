// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OrDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children:  <Widget> [
        buildDriver(),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or Sign Up With", 
            style: TextStyle(
              color: Colors.purple[900],
              fontWeight: FontWeight.w600,
          ),
          ),
        ),
        buildDriver(),
      ]),
      );
  }

  Expanded buildDriver() {
    return const Expanded(child: Divider(color: Color(0xFFD9D9D9),
      height: 1.5,
      ),
      );
  }
}

