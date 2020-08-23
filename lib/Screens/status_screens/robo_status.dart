import 'package:flutter/material.dart';
import 'package:flutter_test_app/Screens/status_screens/label.dart';

class RoboStatus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RoboStatusState();
  }
}

class _RoboStatusState extends State<RoboStatus> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RoboStatusState"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Label("RoboName", Text("Robob")),
          Label("IP", Text("192.168.2.4")),
          Label("Status", Text("Connected")),
          Label("Room", Text("Living Room")),
          Label("Controller", Text("PS4")),
          Label("Recipient", Text("Herr Bocklet")),
          Label("Message", Text("Subject")),
        ],
      ),
    );
  }
}
