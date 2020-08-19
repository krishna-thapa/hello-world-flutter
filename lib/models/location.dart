import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Phewa Lake', 'assets/images/Pokhara_lake.jpg', [
        LocationFact('Summary',
            'Phewa Lake is a freshwater lake in Nepal formerly called Baidam Tal located in the south of the Pokhara Valley that includes Pokhara city.'),
        LocationFact(
            'Interesting fact',
            'It is the second largest lake in Nepal; the largest in Gandaki Pradesh after the Rara lake in the comparison to Nepal'
                's water bodies.')
      ]),
      Location(2, 'Sarangkot Sunrise', 'assets/images/Pokhara_mountain.jpg', [
        LocationFact('Summary',
            'Sarankot is very important to Pokhara from tourist viewpoint as Nagarkot is to Kathmandu. Positioned west north to Pokhara, Sarankot is one of the major tourist destination of the district. Nowadays, it has been famous for paragliding as well.'),
        LocationFact('Interesting fact',
            'The massive peaks like Machhapuchhre, Dhaulagiri, Ganesh, Manaslu and Annapurna are seen towering towards the sky.')
      ]),
      Location(1, 'Thakali khana', 'assets/images/Pokhara_khana.jpg', [
        LocationFact('Summary',
            'Thakali food basically comprises dal-bhat-tharkari − lentils, rice and vegetables, with masu (meat) for non-vegetarians. However, modern thakali restaurants also offer mo-mos (meat dumplings) and thukpa (noodle soup).'),
        LocationFact('Interesting fact',
            'The Thakali are the people originated from the Thak Khola region of the Mustang District in Nepal. Thakali meal consists of locally grown buckwheat, barley, millet, rice, maize and dal.')
      ])
    ];
  }
}
