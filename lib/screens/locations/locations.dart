import 'package:flutter/material.dart';
import 'tile_overlay.dart';
import '../../models/location.dart';
import '../../shared/globals.dart' as globals;
import '../../widgets/image_banner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(title: Text('Locations in Pokhara')),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _itemBuilder(context, locations[index]),
        ));
  }

  // leave out void if it is not returning anything
  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, globals.LocationDetailRoute,
        arguments: {"id": locationID});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(
                imageID: location.id,
                assertPath: location.imagePath,
                height: 245.0),
            TileOverlay(location)
          ],
        ),
      ),
    );
  }
}
