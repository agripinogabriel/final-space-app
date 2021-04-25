import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/episodes.dart';
import '../../shared/widget/shadowed_text.dart';

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
            Stack(
              children: [
                Image.network(episode["img_url"] as String),
                Positioned(
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
                ),
                Positioned(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
