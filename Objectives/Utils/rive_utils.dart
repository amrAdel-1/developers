// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveUtils {
  static StateMachineController? getRiveController (Artboard artboard ,
  {stateMachineName = "State Machine 1"}) {
  late  StateMachineController? controller = 
    StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(controller!);
    return controller;
  }
}