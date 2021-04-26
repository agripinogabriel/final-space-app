import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/characters.dart';
import '../../shared/mock/quotes.dart';
import '../../shared/widget/container_background_image.dart';
import '../../shared/widget/network_image_with_progress.dart';

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
            child: Container(),
          ),
        ],
      ),
    );
  }
}
