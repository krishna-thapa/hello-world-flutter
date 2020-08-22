import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double _locationID;

  Rating(this._locationID);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: RatingBar(
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
        ),
        duration: Duration(seconds: 1),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (BuildContext context, double _val, Widget child) {
          return Opacity(
              opacity: _val,
              child: Padding(
                  padding: EdgeInsets.only(left: _val * 10), child: child));
        });
  }
}
