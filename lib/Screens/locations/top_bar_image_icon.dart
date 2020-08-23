import 'package:flutter/material.dart';

class TopBarImageIcon extends StatefulWidget {
  final String path;
  final Function routing;

  TopBarImageIcon(this.path, this.routing);

  @override
  State<StatefulWidget> createState() {
    return _TopBarImageIcon();
  }

}

class _TopBarImageIcon extends State<TopBarImageIcon> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: () {
          widget.routing(context);
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Image.asset(widget.path),
          width: 25,
          height: 25,
        )
    );
  }

}