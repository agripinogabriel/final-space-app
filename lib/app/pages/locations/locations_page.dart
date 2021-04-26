import 'package:final_space/app/shared/colors.dart';
import 'package:final_space/app/shared/widget/container_background_image.dart';
import 'package:flutter/material.dart';

class LocationsPage extends StatefulWidget {
  @override
  _LocationsPageState createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 4,
        title: Hero(
          tag: "locations-hero",
          child: Text(
            "Locations",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(
        children: [
          ContainerBackgroundImage(),
          SafeArea(child: Container()),
        ],
      ),
    );
  }
}
