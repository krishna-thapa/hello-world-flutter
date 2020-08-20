import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double _locationID;

  Rating(this._locationID);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: _locationID,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
      itemSize: 20,
    );
  }
}
