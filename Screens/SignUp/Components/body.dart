// ignore: unused_import
import 'package:dev_login/Components/already_have_an_account_acheck.dart';
import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Components/rounded_input_filed.dart';
import 'package:dev_login/Components/rounded_password_field.dart';
import 'package:dev_login/Screens/Guiding/guide_me_screen.dart';
import 'package:dev_login/Screens/Login/login_screen.dart';
import 'package:dev_login/Screens/SignUp/Components/background.dart';
import 'package:dev_login/Screens/SignUp/Components/or_driver.dart';
// ignore: unused_import
import 'package:dev_login/Screens/SignUp/Components/social_icon.dart';
// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  final Widget child;

  const Body({
  super.key, 
  required this.child});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool terms = false;

    @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // ignore: sized_box_for_whitespace
    return Background(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           Text(
            "Create Your Account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.purple[900],
              fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.05,),
            RoundedInputField(
              hintText: "First Name",
              icon: Icons.person,
              onChanged: (value){}, obscureText: false,
              ),
              SizedBox(height: size.height * 0.02,),
              RoundedInputField(
              hintText: "Last Name",
              icon: Icons.person,
              onChanged: (value){}, obscureText: false,
              ),
              SizedBox(height: size.height * 0.02,),
              RoundedInputField(
              hintText: "Email",
              icon: Icons.email,
              onChanged: (value){}, obscureText: false,
              ),
              SizedBox(height: size.height * 0.02,),
              RoundedPasswordFiled(
              onChanged: (value){}, 
              ),
              SizedBox(height: size.height * 0.02,),
              RoundedButton(
              text: "Register",
              press: () {
                showDialog(
                  context: context, builder: (context) {
                  return  AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return const GuideMeScreen();
                        },
                        ),
                        );
                        // ignore: avoid_print
                          print('ok');
                          },
                          child:const Text('Ok',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple

                          ),),
                          ),
                    ],
                    backgroundColor:KPrimaryLightColor,
                    title: const Text(
                      'Title',
                      ),
                      titleTextStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[900]
                      ),
                    content: const Text('Successfully registered'),
                    contentTextStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900]
                    ),
                    
                  );

                }
                );
                }, onPressed: () {}, child: null,
              ),
              SizedBox(height: size.height * 0.02,),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                        },
                        ),
                        );
                        },
                ),
                OrDriver(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                  IconButton(
                    icon: SvgPicture.asset("assets/icons/iconmonstr-github-1 (1).svg",
                    height: 90,
                    width: 80,
                    ), 
                    onPressed: () { },
                  ),
                  SizedBox(width: size.width * 0.1,),
                   IconButton(
                    icon: SvgPicture.asset("assets/icons/icons8-gmail-logo.svg",
                    height: 80,
                    width: 80,
                    ), 
                    onPressed: () { },
                   )
                   
                
                ],)
            ],
            ),
        ),
      ),
    );
  }
}

