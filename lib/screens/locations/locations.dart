import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(title: Text('Locations in Pokhara')),
        body: ListView(
          children: locations
              .map((location) => GestureDetector(
                child: Text(location.name),
                onTap: () => _onLocationTap(context, location.id)))
              .toList(),
        ));
  }

  // leave out void if it is not returning anything
  _onLocationTap(BuildContext context, int locationID) {
    
  }
}
