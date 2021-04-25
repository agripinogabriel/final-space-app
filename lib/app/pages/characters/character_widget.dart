import 'package:final_space/app/shared/colors.dart';
import 'package:final_space/app/shared/widget/shadowed_text.dart';
import 'package:flutter/material.dart';

class Character extends StatelessWidget {
  final Map<String, dynamic> character;

  Character(this.character);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage('assets/images/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
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
                        ShadowedTex(character["name"], 22),
                        ShadowedTex("Status: ${character["status"]}", 16),
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
                  ShadowedTex("Species: ${character["species"]}", 16),
                  SizedBox(height: 22),
                  ShadowedTex("Gender: ${character["gender"]}", 16),
                  SizedBox(height: 22),
                  ShadowedTex("Hair: ${character["hair"]}", 16),
                  SizedBox(height: 22),
                  ShadowedTex("Origin: ${character["origin"]}", 16),
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

    return ShadowedTex("$label: [$result]", 16);
  }
}
