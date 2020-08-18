import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;

  // Constructor that takes the parameter and assign to the final variable
  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: _color),
      child: Text('data'),
    );
  }
}
