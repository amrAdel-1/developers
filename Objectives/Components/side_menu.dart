import 'package:dev_login/Objectives/Components/info_card.dart';
import 'package:dev_login/Objectives/Components/side_menu_title.dart';
import 'package:dev_login/Objectives/Models/rive.dart';
// ignore: unused_import
import 'package:dev_login/Objectives/Utils/rive_utils.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
   const SideMenu({super.key});

 
  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  RiveAsset selectedMenu = sideMenus.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF17203A),
      body: SafeArea(
        child: Container(
          width: 288,
          height: double.infinity,
          color:const Color(0xFF17203A),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
            const InfoCard(
              name: "User Name",
              profession: "Sub Name",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24 , top: 32 , bottom: 16),
              child: Text(
                'BROWSER', 
              style: Theme.of(context)
              .textTheme.
              titleMedium!
              .copyWith(color: Colors.white70)
              ),
            ),
            ...sideMenus.map(
              (menu) => SideMenuTiltle(
                menu: menu,
                riveonInit: (artboard){
                //StateMachineController controller =
                //RiveUtils.getRiveController(artboard,
                 //stateMachineName: menu.stateMachineName);

                 //menu.input = controller.findSMI("active") as SMIBool;
                },
                press: (){
                  //menu.input!.change(true);
                  //Future.delayed(const Duration(seconds: 1),(){
                    //menu.input!.change(false);
                  //});
                  setState(() {
                    selectedMenu = menu;
                  });
                },
                isActive: selectedMenu == menu,
              ),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 24 , top: 32 , bottom: 16),
              child: Text(
                'History', 
              style: Theme.of(context)
              .textTheme.
              titleMedium!
              .copyWith(color: Colors.white70)
              ),
            ),
             ...sideMenu2.map(
              (menu) => SideMenuTiltle(
                menu: menu,
                riveonInit: (artboard){
                //StateMachineController controller =
                //RiveUtils.getRiveController(artboard,
                 //stateMachineName: menu.stateMachineName);

                 //menu.input = controller.findSMI("active") as SMIBool;
                },
                press: (){
                  //menu.input!.change(true);
                  //Future.delayed(const Duration(seconds: 1),(){
                    //menu.input!.change(false);
                  //});
                  setState(() {
                    selectedMenu = menu;
                  });
                },
                isActive: selectedMenu == menu,
              ),
              ),
          ]),
        ),
      ),
    );
  }
}



