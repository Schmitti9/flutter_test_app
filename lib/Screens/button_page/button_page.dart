import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return new _ButtonPageState() ;
  }

}

class _ButtonPageState extends State<ButtonPage>
{

  _ButtonPageState();



  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
            children: [
              Text("Hi"),
              Text("Heieiei"),
              Text("Bye"),
          ]
      )
    );
  }

}
