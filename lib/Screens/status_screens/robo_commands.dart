import 'package:flutter/material.dart';

class RoboCommands extends StatefulWidget
{
  final int language = 0;



  @override
  State<StatefulWidget> createState() {

    return _RoboCommandsState();
  }

}

class _RoboCommandsState extends State<RoboCommands>
{

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(RoboCommandsL.TRoboCommands[0]) ),
    );
  }

}

class RoboCommandsL
{
  static const List<String> TRoboCommands = ["Roboterbefehle","Robotcommands"];
}