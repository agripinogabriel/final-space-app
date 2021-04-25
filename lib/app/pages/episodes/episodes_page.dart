import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/characters.dart';
import '../../shared/mock/episodes.dart';
import '../../shared/widget/shadowed_text.dart';
import '../characters/character_widget.dart';

class EpisodesPage extends StatefulWidget {
  @override
  _EpisodesPageState createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 4,
        title: Hero(
          tag: "episodes-hero",
          child:
              Text("Episodes", style: TextStyle(fontWeight: FontWeight.bold)),
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
            itemCount: EPISODES.length,
            itemBuilder: _buildListItem,
            padding: const EdgeInsets.all(12),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    final episode = EPISODES[index];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(2.0),
        color: secondaryLigthColor.withAlpha(40),
        child: Column(
          children: [
            _buildEpisodeFolder(episode),
            _buildEpisodeStaff(episode),
            _buildCharacters(episode["characters"] as List),
          ],
        ),
      ),
    );
  }

  Widget _buildEpisodeFolder(Map<String, Object> episode) {
    return Stack(
      children: [
        _buildEpisodeFolderImage(episode["img_url"] as String),
        _buildEpisodeName(episode),
        _buildEpisodeDate(episode),
      ],
    );
  }

  Widget _buildEpisodeFolderImage(String imgUrl) {
    return Image.network(
      imgUrl,
      loadingBuilder: (BuildContext context, Widget widget,
          ImageChunkEvent? imageChunckEvent) {
        if (imageChunckEvent == null) return widget;
        return SizedBox(
          height: 250,
          child: Center(
            child: CircularProgressIndicator(
              value: imageChunckEvent.expectedTotalBytes != null
                  ? imageChunckEvent.cumulativeBytesLoaded /
                      imageChunckEvent.expectedTotalBytes!
                  : null,
            ),
          ),
        );
      },
    );
  }

  Widget _buildEpisodeDate(Map<String, Object> episode) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black87.withAlpha(120),
        child: ShadowedText(
          episode["air_date"] as String,
          16,
        ),
      ),
    );
  }

  Widget _buildEpisodeName(Map<String, Object> episode) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black87.withAlpha(120),
        child: ShadowedText(
          episode["name"] as String,
          22,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildEpisodeStaff(Map<String, Object> episode) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ShadowedText(
                    "Director: ${episode["director"] as String}",
                    16,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ShadowedText(
                    "Writer: ${episode["writer"] as String}",
                    16,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCharacters(List characters) {
    return GridView.count(
      padding: const EdgeInsets.all(8),
      crossAxisCount: 11,
      mainAxisSpacing: 4,
      crossAxisSpacing: 8,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: characters
          .map(
            (id) => InkWell(
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (_) => Character(
                  _getCharacter(id: id),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.network(
                  _getCharacterImageUrlById(id),
                  loadingBuilder: (BuildContext context, Widget widget,
                      ImageChunkEvent? imageChunckEvent) {
                    if (imageChunckEvent == null) return widget;
                    return Center(
                      child: CircularProgressIndicator(
                        value: imageChunckEvent.expectedTotalBytes != null
                            ? imageChunckEvent.cumulativeBytesLoaded /
                                imageChunckEvent.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Map<String, Object> _getCharacter({required int id}) {
    final character = CHARACTERS.firstWhere((map) => map["id"] == id);
    return character;
  }

  String _getCharacterImageUrlById(int id) {
    final character = _getCharacter(id: id);
    return character["img_url"] as String;
  }
}
