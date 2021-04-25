import 'package:final_space/app/route_generator.dart';
import 'package:final_space/app/shared/mock/characters.dart';
import 'package:final_space/app/shared/widget/shadowed_text.dart';
import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import 'character_widget.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 4,
        title: Hero(
          tag: "character-hero",
          child:
              Text("Characters", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new ExactAssetImage('assets/images/background.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: CHARACTERS.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (_) => Character(
                    CHARACTERS[index],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: secondaryLigthColor.withAlpha(40),
                      child: Row(
                        children: [
                          _characterImage(CHARACTERS[index]),
                          SizedBox(width: 24),
                          Expanded(child: _characterData(CHARACTERS[index])),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _characterImage(Map<String, dynamic> character) {
    return Hero(
      tag: character["id"],
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
        child: Image.network(
          character["img_url"] as String,
          height: 100,
        ),
      ),
    );
  }

  Widget _characterData(Map<String, dynamic> character) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShadowedTex(
          "Name: ${character["name"] as String? ?? "Unknown"}",
          16,
          maxLines: 1,
        ),
        SizedBox(height: 4),
        ShadowedTex(
          "Species: ${character["species"] as String? ?? "Unknown"}",
          16,
          maxLines: 1,
        ),
        SizedBox(height: 4),
        ShadowedTex(
          "Status: ${character["status"] as String? ?? "Unknown"}",
          16,
          maxLines: 1,
        ),
      ],
    );
  }
}
