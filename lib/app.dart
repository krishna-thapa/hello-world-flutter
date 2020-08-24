import 'package:flutter/material.dart';
import 'package:visit_pokhara_flutter/main.dart';
import 'package:visit_pokhara_flutter/shared/global.dart';
import 'screens/local_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import './shared/globals.dart' as globals;
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      //home: Locations(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case globals.LocationsRoute:
          getIt<Global>().showHeart = false;
          screen = Locations();
          break;
        case globals.LocationDetailRoute:
          getIt<Global>().showHeart = true;
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
        ),
        textTheme: TextTheme(
            headline6: TitleTextStyle,
            subtitle2: SubTitleTextStyle,
            caption: CaptionTextStyle,
            bodyText2: Body1TextStyle));
  }
}
