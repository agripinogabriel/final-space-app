import 'package:final_space/app/route_generator.dart';
import 'package:final_space/app/shared/colors.dart';
import 'package:flutter/material.dart';

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
      ),
      initialRoute: RouteGenerator.initialRoute,
      // routes: RouteGenerator.routes,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
