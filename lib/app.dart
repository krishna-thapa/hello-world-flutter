import 'package:flutter/material.dart';
import 'screens/local_detail/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(caption: AppBarTextStyle),
          ),
          textTheme: TextTheme(headline6: TitleTextStyle, bodyText2: Body1TextStyle)),
    );
  }
}
