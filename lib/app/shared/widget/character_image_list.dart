
import 'package:flutter/material.dart';

import '../../pages/characters/character_widget.dart';
import '../mock/characters.dart';
import 'network_image_with_progress.dart';
import 'shadowed_text.dart';

class CharacterImageList extends StatelessWidget {
  final List characters;

  const CharacterImageList({Key? key, required this.characters})
      : super(key: key);

  InkWell _buildCharacterImage(BuildContext context, id) {
    var imageUrl = getCharacterImageUrlById(id);

    return InkWell(
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (_) => Character(
          getCharacter(id: id),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: NetworkImageWithProgress(url: imageUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (characters.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: ShadowedText("Notable Residents: - ", 16),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShadowedText("Notable Residents:", 16),
          GridView.count(
            padding: const EdgeInsets.all(8),
            crossAxisCount: 11,
            mainAxisSpacing: 4,
            crossAxisSpacing: 8,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: characters
                .map((id) => _buildCharacterImage(context, id))
                .toList(),
          ),
        ],
      ),
    );
  }
}