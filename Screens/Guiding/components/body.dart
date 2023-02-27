import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Objectives/Components/background.dart';
import 'package:dev_login/Screens/Login/login_screen.dart';
import 'package:dev_login/Screens/Questionaire/questionaire_screen.dart';
import 'package:dev_login/entry_point.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return  Background(
        child: Stack(
          children: <Widget>[
            Background(child: Image.asset("assets/images/Background.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Center(
                    child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.8,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 30),
            onPressed: () { },
            child: RoundedButton(
                text:"Select Course",
                press: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return LoginScreen();
                          },
                        ),
                      );
           }, onPressed: () {}, child: null,  
         ),
                    ),
        
        )
        ),
                  ),
         Center(
           child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 30),
              onPressed: () { },
              child: RoundedButton(
                  text:"Guide Me",
                  press: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return const QuestionaireScreen();
                          },
                        ),
                      );
             }, onPressed: () {}, child: null,  
           ),
                    ),
        
        )
        ),
         ),
        ],
        ),
              ],
            )
        );
  }
}