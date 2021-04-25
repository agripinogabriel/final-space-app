
import 'package:flutter/material.dart';

import 'pages/characters/characters_page.dart';
import 'pages/home/home_page.dart';

class RouteGenerator {
  static const initialRoute = "/";
  static const characters = "/character";
  static const character = "/character/:id";

  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      initialRoute: (context) => HomePage(),
      characters: (context) => CharactersPage(),
      // character: (context) => CharacterPage(settings.arguments),
    };
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final Map<String, WidgetBuilder> _routes = {
      initialRoute: (context) => HomePage(),
      characters: (context) => CharactersPage()
    };

    WidgetBuilder? builder = _routes[settings.name];
    if (builder == null) return null;
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}
