import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/characters.dart';
import '../../shared/mock/quotes.dart';
import '../../shared/widget/container_background_image.dart';
import '../../shared/widget/network_image_with_progress.dart';
import '../../shared/widget/shadowed_text.dart';

class QuotesPage extends StatefulWidget {
  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  late Map<int, List<String>> quotesByCharacter;

  @override
  void initState() {
    super.initState();

    quotesByCharacter = Map<int, List<String>>();
    QUOTES.forEach((quote) {
      final characterId = quote["character"] as int;

      if (quotesByCharacter[characterId] == null) {
        quotesByCharacter[characterId] = [];
      }

      quotesByCharacter[characterId]!.add(quote["quote"] as String);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 4,
        title: Hero(
          tag: "quotes-hero",
          child: Text(
            "Quotes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(
        children: [
          ContainerBackgroundImage(),
          SafeArea(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: quotesByCharacter.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildListItem(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildListItem(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          color: secondaryLigthColor.withAlpha(40),
          padding: const EdgeInsets.all(12.0),
          child: _buildCharacterData(index),
        ),
      ),
    );
  }

  Row _buildCharacterData(int index) {
    final characterId = quotesByCharacter.keys.elementAt(index);
    final character = getCharacter(id: characterId);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _characterImage(character["img_url"] as String),
        _buildCharacterQuotes(index),
      ],
    );
  }

  Expanded _buildCharacterQuotes(int index) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...quotesByCharacter.values
              .elementAt(index)
              .map((e) => _buildQuotes(e))
              .toList()
        ],
      ),
    );
  }

  Padding _buildQuotes(String e) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
      child: ShadowedText(e, 16),
    );
  }

  Widget _characterImage(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      child: NetworkImageWithProgress(
        url: imageUrl,
        height: 100,
      ),
    );
  }
}
