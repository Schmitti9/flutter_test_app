import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_area.dart';
import 'package:flutter_test_app/models/location.dart';


class LocationDetail extends StatefulWidget
{
  final int ID;

  LocationDetail(this.ID);

  @override
  State<StatefulWidget> createState() {

    return new _LocationDetailState(ID);
  }
}

class _LocationDetailState extends State<LocationDetail>
{

  int _locationID;
  Location location;

  _LocationDetailState(int _locationID)
  {
    this._locationID = _locationID;
   location = Location.fetchByID(_locationID);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              ImageBanner(location.imagePath),
            ]..addAll(textSections(location))));
  }

  List<Widget> textSections(Location location)
  {
    return location.facts.map((fact) => TextArea(Colors.black,fact.title,fact.text)).toList();
  }
}