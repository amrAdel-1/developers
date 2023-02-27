import 'dart:convert';
import 'dart:ffi';

import 'package:dev_login/Screens/Login/Components/body.dart';
import 'package:dev_login/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ignore: sized_box_for_whitespace
      body: Body(),
    );
  }
}

//class User {
  //final String email;
  //final String password;
  //User({required this.email, required this.password});
//}

//class Loginpage extends StatefulWidget {
  //const Loginpage({super.key});
//@override
  //State<Loginpage> createState() => _LoginpageState();
//}

//class _LoginpageState extends State<Loginpage> {
  //Future<List<User>> postrequest() async {
    //String Url = "http://139.59.209.91:1337/api/auth/local";
    //final Response = await http.post(Uri.parse(Url),
        //headers: <String, String>{},
        //body: jsonEncode({"identifier": '', "password": ''}));
    //var responsedata = json.decode(Response.body);

    //return 
  //}

  //@override
  //Widget build(BuildContext context) {
    //return Body();
  //}
//}
