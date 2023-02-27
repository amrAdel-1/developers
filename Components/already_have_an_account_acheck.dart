// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;
  const AlreadyHaveAnAccountCheck({
    Key? key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
      Text(
       login ? "Don`t Have an Account ? " : "Already Have an Account ? ",
        style:  TextStyle(
          color: Colors.purple[900],
          ),
      ),
      GestureDetector(
        onTap: press,
        child:  Text(
          login ? " Sign Up " : "Sign In",
          style:  TextStyle(
            color: Colors.purple[900],
            fontWeight: FontWeight.bold,
            ),
        ),
      )
    ],);
  }
}

