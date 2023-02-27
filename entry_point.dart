import 'package:dev_login/Objectives/Components/side_menu.dart';
import 'package:dev_login/Objectives/Models/rive.dart';
// ignore: unused_import
import 'package:dev_login/Objectives/Utils/rive_utils.dart';
import 'package:dev_login/Screens/Home/home_screen.dart';
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'Objectives/Components/animated_bar.dart';
import 'Objectives/Models/menu_btn.dart';
 
 class EnteyPoint extends StatefulWidget {
   const EnteyPoint({super.key});

  @override
  State<EnteyPoint> createState() => _EnteyPointState();
}

class _EnteyPointState extends State<EnteyPoint> {

RiveAsset selectedBottomNavs = bottomNavs.first;
late SMIBool isSideBarClosed;
bool isSideMenuClosed = true;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orange[100],
      body:Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width:288,
            left: isSideMenuClosed ? -288: 0,
            height: MediaQuery.of(context).size.height,
            child: const SideMenu()),
          Transform.translate(
            offset:  Offset( isSideMenuClosed? 0: 288,0),
            child: Transform.scale(
              scale: isSideMenuClosed ? 1 : 0.8,
              child:const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child:  HomeScreen()
                ),
              ),
              ),
          MenuBtn(
            riveonInit: (artboard){
            //StateMachineController? controller = RiveUtils.getRiveController(
              //artboard,
              //stateMachineName: "State Machine 1 ");
              //isSideBarClosed = controller!.findSMI("isOpen") as SMIBool;
            }, 
            press: () {
              isSideBarClosed.value = isSideBarClosed.value;
              setState(() {
              isSideMenuClosed = isSideBarClosed.value;
              });
            },
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: backgroundColor2.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
            ...List.generate(bottomNavs.length, (index) =>   
            GestureDetector(
              onTap: (){
                bottomNavs[index].input?.change(true);
                if (bottomNavs[index] != selectedBottomNavs){
                  setState(() {
                    selectedBottomNavs = bottomNavs[index];
                  });
                }
                Future.delayed(const Duration(seconds: 1), (){
                bottomNavs[index].input?.change(false);

                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedBar(isActive: bottomNavs[index] == selectedBottomNavs),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: Opacity(
                      opacity: bottomNavs[index] == selectedBottomNavs ? 1 : 0.5,
                      child: RiveAnimation.asset(
                       bottomNavs.first.src,
                      artboard: bottomNavs[index].artboard,
                      onInit: (artboard){
                        // ignore: unused_local_variable
                        //StateMachineController? controller = 
                        //RiveUtils.getRiveController(artboard,
                        //stateMachineName: "HOME_Interactivity");
                        //searchTigger = controller?.findSMI("active") as SMIBool;
                      },
                      ),
                    )),
                ],
              ),
            ))
          
          ],),
          ),
      ),
     );
   }
}



