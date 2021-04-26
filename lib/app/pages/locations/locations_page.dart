import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/locations.dart';
import '../../shared/widget/container_background_image.dart';
import '../../shared/widget/network_image_with_progress.dart';
import '../../shared/widget/shadowed_text.dart';

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
          SafeArea(
            child: ListView.builder(
              itemCount: LOCATIONS.length,
              itemBuilder: _buildListItem,
              padding: const EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    final episode = LOCATIONS[index];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(2.0),
        color: secondaryLigthColor.withAlpha(40),
        child: Column(
          children: [
            NetworkImageWithProgress(url: episode["img_url"] as String),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ShadowedText(episode["name"] as String, 22),
                  ShadowedText(episode["type"] as String, 16),
                ],
              ),
            ),
            _buildInhabitants(episode["inhabitants"] as List),
          ],
        ),
      ),
    );
  }

  Widget _buildInhabitants(List inhabitants) {
    String result = "-";

    if (inhabitants.length > 0) {
      result = inhabitants
          .reduce((value, element) => "${value.trim()}, ${element.trim()}");
      result = "[$result]";
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      child: ShadowedText("Inhabitants: $result", 16),
    );
  }
}
