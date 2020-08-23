import 'location_fact.dart';


class Location
{
  final int id;

  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id,this.name, this.imagePath,this.facts);

  static List<Location> fetchAll()
  {
    return [
      Location(1,'Arashiyama Bamboo Grove','assets/images/EselJiayue.png',
        [
          LocationFact('Summary',"afksjdfljaösjdfklöajsöfdjakösljdfölkjasökfdjakösjdfköjasöfd"),
          LocationFact('Result', 'Bla Bla Bla Bla Bla')
        ]),
      Location(2,'Koelner Dom','assets/images/koelndom.jpg',
          [
            LocationFact('Summary',"afksjdfljaösjdfklöajsöfdjakösljdfölkjasökfdjakösjdfköjasöfd"),
            LocationFact('Result', 'Bla Bla Bla Bla Bla')
          ]),
      Location(3,'Berliner Fernsehturm','assets/images/berliner_fernsehturm.jpg',
          [
            LocationFact('Summary',"afksjdfljaösjdfklöajsöfdjakösljdfölkjasökfdjakösjdfköjasöfd"),
            LocationFact('Result', 'Bla Bla Bla Bla Bla')
          ]),

    ];
  }

  static Location fetchByID(int locationID)
  {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++)
    {
      if(locations[i].id == locationID)
      {
        return locations[i];
      }
    }

    return new Location(583924, "nothing here", "assets/images/EselJiayue.png",
        [new LocationFact("title", "text"), new LocationFact("title", "text")]);
  }

}