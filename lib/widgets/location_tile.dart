import 'package:flutter/material.dart';
import 'package:visit_pokhara_flutter/shared/rating.dart';
import '../shared/heart.dart';
import '../models/location.dart';
import '../style.dart';

const LocationTileHeight = 100.0;

class LocationTile extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  LocationTile({this.location, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: LocationTileHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              location.name.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: textColor),
            ),
            subtitle: Text(
              location.userItinerarySummary.toUpperCase(),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: HeartLike(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10,0,2,2),
          child: Rating(location.rating),)
        ],
      ),
    );
  }
}
