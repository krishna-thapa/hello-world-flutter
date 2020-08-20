import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assertPath; //private variable
  final double height;

  // Constructor that takes the parameter and assign to the final variable
  ImageBanner({@required this.assertPath, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: height),
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(assertPath, fit: BoxFit.cover));
  }
}
