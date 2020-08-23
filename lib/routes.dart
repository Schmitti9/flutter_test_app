import 'package:flutter/material.dart';
import 'package:flutter_test_app/Screens/status_screens/robo_manual_control.dart';
import 'package:flutter_test_app/Screens/status_screens/robo_status.dart';

import 'Screens/location/location_detail.dart';
import 'Screens/locations/locations.dart';
import 'Screens/settings/settings.dart';
import 'Screens/status_screens/robo_commands.dart';
import 'Screens/status_screens/robo_manual_control.dart';
import 'Screens/status_screens/robo_status.dart';


class Routes {

  _Routes(){}


  static const LocationsRoute = '/';
  static const LocationDetailRoute = '/location_detail';
  static const SettingsRoute = '/settings';
  static const JoyStick1Route = "/joystick1";
  static const JoyStick2Route = "/joystick2";
  static const JoyStick3Route = "/joystick3";




  static void onTapToSettings(BuildContext context) {
    Navigator.pushNamed(context,SettingsRoute);
  }

  static void onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, Routes.LocationDetailRoute,
        arguments: {"id": locationID});
  }

  static void onTapJoystick1(BuildContext context) {
    Navigator.pushNamed(context,JoyStick1Route);
  }

  static void onTapJoystick2(BuildContext context) {
    Navigator.pushNamed(context,JoyStick2Route);
  }

  static void onTapJoystick3(BuildContext context) {
    Navigator.pushNamed(context,JoyStick3Route);
  }

  static RouteFactory routes()
  {

    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name)
      {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        case SettingsRoute:
          screen = Settings();
          break;
        case JoyStick1Route:
          screen = RoboStatus();
          break;
        case JoyStick2Route:
          screen = RoboCommands();
          break;
        case JoyStick3Route:
          screen = RoboManualControl();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }


}