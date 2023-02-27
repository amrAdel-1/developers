import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    required this.text, 
    this.press, 
    this.color = KPrimaryColor, 
    this.textColor = Colors.white, required Null Function() onPressed, required child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 40),
        color: Colors.orange[400],        
        onPressed: press, 
        child: Text(
          text, 
        style:  TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.purple[900],
          ),
          ),
          ),
      ),
    );
  }
}

