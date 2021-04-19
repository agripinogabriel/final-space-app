import 'package:final_space/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static final initialRoute = "/";

  static get routes {
    return {
      initialRoute: (BuildContext context) => HomePage(),
    };
  }
}
