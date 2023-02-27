import 'package:dev_login/Components/text_field_container.dart';
// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key, 
    required this.hintText, 
    this.icon = Icons.email, 
    required this.onChanged, required bool obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
          icon, 
          color: Colors.purple[900],
          ),
          hintText: 
          hintText,
          border: InputBorder.none
          ),
          ),
          );
  }
}



