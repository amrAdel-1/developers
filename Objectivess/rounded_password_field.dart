import 'package:dev_login/Components/text_field_container.dart';
// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
class RoundedPasswordFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordFiled({
    Key? key, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.purple[900],
            ),
            suffixIcon: const Icon(
              Icons.visibility
              ),
            border: InputBorder.none,
            ),
            ), 
            );
  }
}

