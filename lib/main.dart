import 'package:flutter/material.dart';
import 'package:flutter_test_app/Screens/location/location_detail.dart';
import 'package:flutter_test_app/models/location.dart';
import 'package:flutter_test_app/style.dart';
import 'Screens/locations/locations.dart';
import 'Screens/settings/settings.dart';
import 'routes.dart';

void main() => runApp(MyApp());

typedef Abc = int Function(int i, int y);

class MyApp extends StatelessWidget {




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.routes(),
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title:  AppBarTextStyle),
        ),
        textTheme: TextTheme(
        title: TitleTextStyle,
        body1: BodyTextStyle,
        )
      ),
      home: Locations(),

    );
  }


}
