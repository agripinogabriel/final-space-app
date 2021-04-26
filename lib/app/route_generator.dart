import 'package:flutter/material.dart';

import 'pages/characters/characters_page.dart';
import 'pages/episodes/episodes_page.dart';
import 'pages/home/home_page.dart';
import 'pages/locations/locations_page.dart';

class RouteGenerator {
  static const initialRoute = "/";
  static const characters = "/character";
  static const episodes = "/episodes";
  static const locations = "/locations";

  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      initialRoute: (context) => HomePage(),
      characters: (context) => CharactersPage(),
      episodes: (context) => EpisodesPage(),
      locations: (context) => LocationsPage(),
    };
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final Map<String, WidgetBuilder> _routes = {
      initialRoute: (context) => HomePage(),
      characters: (context) => CharactersPage(),
      episodes: (context) => EpisodesPage(),
      locations: (context) => LocationsPage(),
    };

    WidgetBuilder? builder = _routes[settings.name];
    if (builder == null) return null;
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}
