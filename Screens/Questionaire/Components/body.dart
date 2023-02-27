import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Objectives/Components/background.dart';
import 'package:dev_login/Screens/MobileScreen/mobile_screen.dart';
import 'package:dev_login/Screens/WebsiteScreen/website_screen.dart';
import 'package:dev_login/const.dart';
import 'package:dev_login/entry_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;

    return  Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>  [
            Text(
              "WHAT DO YOU WANT",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900],
              ),
              ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Text(
              "TO CREATE ? ",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[900],
              ),
              ),
               ),
               SizedBox(height: size.height * 0.05,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             RoundedButton(
                text:"Website",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const WebsiteScreen();
                }));
                }, onPressed: () {  }, child: null,
             ),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: const Text("Understood" , 
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                        ),))
                      ],
                      titlePadding: const EdgeInsets.only(top: 20 , left: 20),
                      contentPadding: const EdgeInsets.all(20),
                      title: const Text("Website",
                      style: TextStyle(
                          fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                      ),),
                      content: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    );
                  });
                }, icon: const Icon(Icons.question_mark_rounded , 
                size: 50,))
             
           ],
         ),
         SizedBox(height: size.height * 0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                text:"Mobile Application",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const MobileApplicationScreen();
                }));
                }, onPressed: () {},
                child: null,
              ),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: const Text("Understood" , 
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                        ),))
                      ],
                      titlePadding: const EdgeInsets.only(top: 20 , left: 20),
                      contentPadding: const EdgeInsets.all(20),
                      title: const Text("Mobile Application",
                      style: TextStyle(
                          fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                      ),),
                      content: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    );
                  });
                }, icon: const Icon(Icons.question_mark_rounded , 
                size: 50,))
             ],
            ),
            SizedBox(height: size.height * 0.05,),
            SvgPicture.asset("assets/icons/onboarding_image_4.png.svg")
          ],
        ) ,)
      );
  }
}