import 'package:flutter/material.dart';
import 'package:flutter_test_app/Screens/locations/top_app_bar.dart';
import '../../main.dart';
import '../../models/location.dart';
import 'package:flutter_test_app/routes.dart';

class Locations extends StatelessWidget {
  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TopAppBar()
        ),
        body: Column(children: [
          Container(
              child: Column(
            children: locations
                .map((location) => GestureDetector(
                      child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
                        child: Text(location.name),
                      ),
                      onTap: () => Routes.onLocationTap(context, location.id),
                    ))
                .toList(),
          )),
          RaisedButton(
            onPressed: () {
              Routes.onTapToSettings(context);
            },
            child: Text("Settings"),
          ),
        ]));
  }
}
