
import 'package:flutter/material.dart';
import 'package:flutter_test_app/Screens/settings/settings_button.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
          alignment: Alignment.bottomCenter,
          child: ListView(
            children: <Widget>[SettingsButton.withBasicActivationFunc(false,"Setting1"),
              SettingsButton.withBasicActivationFunc(true,"Engine"),
              SettingsButton.withBasicActivationFunc(true,"WindowsDown")

            ],
          )),
    );
  }
}
