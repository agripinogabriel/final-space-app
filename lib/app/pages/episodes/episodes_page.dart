import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/characters.dart';
import '../../shared/mock/episodes.dart';
import '../../shared/widget/container_background_image.dart';
import '../../shared/widget/network_image_with_progress.dart';
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
          child: Text(
            "Episodes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(
        children: [
          ContainerBackgroundImage(),
          SafeArea(
            child: ListView.builder(
              itemCount: EPISODES.length,
              itemBuilder: _buildListItem,
              padding: const EdgeInsets.all(12),
            ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildEpisodeFolder(episode),
            _buildEpisodeStaff(
                director: episode["director"] as String,
                writer: episode["writer"] as String),
            _buildCharacters(episode["characters"] as List),
          ],
        ),
      ),
    );
  }

  Widget _buildEpisodeFolder(Map<String, Object> episode) {
    return Stack(
      children: [
        NetworkImageWithProgress(url: episode["img_url"] as String),
        _buildEpisodeName(episode["name"] as String),
        _buildEpisodeDate(episode["air_date"] as String),
      ],
    );
  }

  Widget _buildEpisodeDate(String date) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black87.withAlpha(120),
        child: ShadowedText(date, 16),
      ),
    );
  }

  Widget _buildEpisodeName(String name) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black87.withAlpha(120),
        child: ShadowedText(name, 22, textAlign: TextAlign.center),
      ),
    );
  }

  Widget _buildEpisodeStaff(
      {required String director, required String writer}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ShadowedText("Director: $director", 16),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ShadowedText("Writer: $writer", 16),
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
      children: characters.map((id) => _buildCharacterImage(id)).toList(),
    );
  }

  InkWell _buildCharacterImage(id) {
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
}
