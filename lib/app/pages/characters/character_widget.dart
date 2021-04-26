import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/widget/container_background_image.dart';
import '../../shared/widget/shadowed_text.dart';

class Character extends StatelessWidget {
  final Map<String, dynamic> character;

  Character(this.character);

  @override
  Widget build(BuildContext context) {
    return ContainerBackgroundImage(
      child: Container(
        color: secondaryLigthColor.withAlpha(40),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                children: [
                  Hero(
                    tag: character["id"],
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      child: Image.network(
                        character["img_url"] as String,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        ShadowedText(character["name"], 22),
                        ShadowedText("Status: ${character["status"]}", 16),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
              ListView(
                padding: EdgeInsets.all(12),
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ShadowedText("Species: ${character["species"]}", 16),
                  SizedBox(height: 22),
                  ShadowedText("Gender: ${character["gender"]}", 16),
                  SizedBox(height: 22),
                  ShadowedText("Hair: ${character["hair"]}", 16),
                  SizedBox(height: 22),
                  ShadowedText("Origin: ${character["origin"]}", 16),
                  SizedBox(height: 22),
                  if (_propertyExists("abilities")) ...[
                    _buildPropertyList("abilities", "abilities"),
                    SizedBox(height: 22),
                  ],
                  if (_propertyExists("alias")) ...[
                    _buildPropertyList("aka.", "alias"),
                    SizedBox(height: 22),
                  ],
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  bool _propertyExists(String property) {
    final properties = character[property] as List?;
    return (properties != null && properties.length > 0);
  }

  Widget _buildPropertyList(String label, String property) {
    final properties = character[property] as List?;

    var result = properties!
        .reduce((value, element) => "${value.trim()}, ${element.trim()}");

    return ShadowedText("$label: [$result]", 16);
  }
}
