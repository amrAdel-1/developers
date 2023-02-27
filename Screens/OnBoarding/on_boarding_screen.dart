// ignore_for_file: avoid_print

// ignore: unused_import
import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/Login/login_screen.dart';
import 'package:dev_login/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: use_key_in_widget_constructors
class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  // ignore: unused_field
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildpageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.red : Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                    colors: [
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.orangeAccent,
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    //child: TextButton(
                    //onPressed:() {Navigator.push(
                    //context,
                    //MaterialPageRoute(
                    //builder: (context){
                    //return LoginScreen();
                    //},
                    //),
                    //);},
                    //child:Text(
                    //'Skip',
                    //style:  TextStyle(
                    //color: Colors.purple[900],
                    //fontSize: 20,
                    //fontWeight: FontWeight.bold
                    //),
                    //)
                    //)
                  ),
                  Container(
                    height: 600,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image.asset(
                                  "assets/images/7040859.jpg",
                                  height: 300,
                                  width: 300,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Web Development ",
                                style: TextStyle(
                                  fontFamily: 'CM Sans Serif',
                                  color: Colors.purple[900],
                                  fontSize: 25,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                  "The field of web development enables you to design pages and data storage",
                                  style: TextStyle(
                                    fontFamily: 'CM Sans Serif',
                                    fontSize: 20,
                                    height: 1.5,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image.asset(
                                  "assets/images/4861083.jpg",
                                  height: 300,
                                  width: 300,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Mobile Application ",
                                style: TextStyle(
                                  fontFamily: 'CM Sans Serif',
                                  color: Colors.purple[900],
                                  fontSize: 25,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                  "The field of mobile application makes you able to design various applications.",
                                  style: TextStyle(
                                    fontFamily: 'CM Sans Serif',
                                    fontSize: 20,
                                    height: 1.5,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image.asset(
                                  "assets/images/7462215.jpg",
                                  height: 300,
                                  width: 300,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Developers 99",
                                style: TextStyle(
                                  fontFamily: 'CM Sans Serif',
                                  color: Colors.purple[900],
                                  fontSize: 25,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                  "It makes you able to achieve your ambitions in the future and makes you a sophisticated programmer.",
                                  style: TextStyle(
                                    fontFamily: 'CM Sans Serif',
                                    fontSize: 20,
                                    height: 1.5,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildpageIndicator()),
                  _currentPage != _numPages - 1
                      ? Expanded(
                          child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text("Next",
                                    style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ))
                      : const Text('')
                ],
              ),
            ),
          ),
        ),
        bottomSheet: _currentPage == _numPages - 1
            ? Container(
                height: 100,
                width: double.infinity,
                color: Colors.orange[300],
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomeScreen();
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        'Get Start',
                        style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : const Text(''));
  }
}
