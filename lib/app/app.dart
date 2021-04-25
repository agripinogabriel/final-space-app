import 'package:flutter/material.dart';

import 'route_generator.dart';
import 'shared/colors.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Space API',
      theme: ThemeData(
        primarySwatch: primaryColor,
        accentColor: accentColor,
        fontFamily: 'MesloLGS',
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: secondaryLigthColor.withAlpha(40),
        ),
        splashFactory: null,
      ),
      initialRoute: RouteGenerator.initialRoute,
      // routes: RouteGenerator.routes,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
