import 'package:final_space/app/shared/colors.dart';
import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Space API',
      theme: ThemeData(
        primarySwatch: primaryColor,
        accentColor: accentColor,
      ),
      home: HomePage(),
    );
  }
}
