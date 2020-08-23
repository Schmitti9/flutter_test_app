import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/Screens/locations/top_bar_image_icon.dart';
import 'package:flutter_test_app/routes.dart';

class TopAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TopAppBar();
  }
}

class _TopAppBar extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Align(
          child: Text("Locations"),
          alignment: Alignment.centerLeft,
        ),
        Spacer(),
        Row(
          children: <Widget>[
            TopBarImageIcon('assets/images/joystick.png',(context) {Routes.onTapJoystick1(context);}),
            TopBarImageIcon('assets/images/joystick.png',(context) {Routes.onTapJoystick2(context);}),
            TopBarImageIcon('assets/images/joystick.png',(context) {Routes.onTapJoystick3(context);}),

          ],
        )
      ],
    );
  }
}
