import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Objectives/Components/background.dart';
import 'package:dev_login/entry_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
             Text(
              "How Much Coding",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900],
              ),
              ),
              const SizedBox(height: 12),
                 Text(
              "Experiance You",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[900],
              ),
              ),
              const SizedBox(height: 12),
              Text(
              "Have ? ",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900],
              ),
              ),
              SizedBox(height: 12,),
               RoundedButton(
                text:"I`m Totally New At Coding",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const EnteyPoint ();
                }));
                }, onPressed: () {  }, child: null,
             ),
                           SizedBox(height: 12,),

              RoundedButton(
                text:"I Know A Litle About Coding",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const EnteyPoint ();
                }));
                }, onPressed: () {  }, child: null,
             ),
                           SizedBox(height: 12,),

              RoundedButton(
                text:"I Know Alot About Coding",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const EnteyPoint();
                }));
                }, onPressed: () {  }, child: null,
             ),
             SizedBox(height: 12),
             //SvgPicture.asset("assets/icons/onboarding_image_2.png.svg",
             //height: size.height * 0355,
             //)
               ],
              ), 
              
             ),
           );
  }
}