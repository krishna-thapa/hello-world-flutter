import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String rating;
  final List<LocationFact> facts;

  Location(
      {this.id,
      this.name,
      this.imagePath,
      this.userItinerarySummary,
      this.rating,
      this.facts});

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: 'Phewa Lake',
          imagePath: 'assets/images/Pokhara_lake.jpg',
          userItinerarySummary: 'Day 1: 12am - 6pm',
          rating: '4 out 5',
          facts: [
            LocationFact('Summary',
                'Phewa Lake is a freshwater lake in Nepal formerly called Baidam Tal located in the south of the Pokhara Valley that includes Pokhara city.'),
            LocationFact(
                'Interesting fact',
                'It is the second largest lake in Nepal; the largest in Gandaki Pradesh after the Rara lake in the comparison to Nepal.'
                    's water bodies.')
          ]),
      Location(
          id: 2,
          name: 'Sarangkot Sunrise',
          imagePath: 'assets/images/Pokhara_mountain.jpg',
          userItinerarySummary: 'Day 1: 5am - 10am',
          rating: '5 out of 5',
          facts: [
            LocationFact('Summary',
                'Sarankot is very important to Pokhara from tourist viewpoint as Nagarkot is to Kathmandu. Positioned west north to Pokhara, Sarankot is one of the major tourist destination of the district. Nowadays, it has been famous for paragliding as well.'),
            LocationFact(
                'Interesting fact',
                'The massive peaks like Machhapuchhre, Dhaulagiri, Ganesh, Manaslu and Annapurna are seen towering towards the sky.'
                    's water bodies.')
          ]),
    ];
  }

  static Location fetchByID(int locationID) {
    // fetch all locations, iterate them and get the location that match
    // the location id

    List<Location> locations = Location.fetchAll();
    // TODO: refactor by using map and write test cases
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
