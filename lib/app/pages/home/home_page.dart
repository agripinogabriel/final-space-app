import 'package:final_space/app/shared/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/header.jpg"),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          new ExactAssetImage('assets/images/background.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gary Goodspeed is a boisterous yet inept astronaut who, in the midst of working off the last few days of his five-year sentence aboard the prison spacecraft Galaxy One, encounters a mysterious planet-destroying alien. He befriends the alien, naming him Mooncake, and then discovers that Mooncake is wanted by the forces of a powerful telekinetic creature known as the Lord Commander. Gary and Mooncake embark on a quest to save the universe, together with the ship's computer HUE, an army of similar but unfalteringly loyal robots, and a growing crew of new shipmates—all while trying to uncover the mystery of what \"Final Space\" really is.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: secondaryLigthColor),
                        ),
                        SizedBox(height: 12),
                        _buildSectionwidget(
                          image: "assets/images/mooncake.png",
                          text: "Characters",
                        ),
                        SizedBox(height: 6),
                        _buildSectionwidget(
                            image: "assets/images/avocato.png",
                            text: "Episodes",
                            imageSide: _ImageSide.left),
                        SizedBox(height: 6),
                        _buildSectionwidget(
                          image: "assets/images/gary.png",
                          text: "Locations",
                        ),
                        SizedBox(height: 6),
                        _buildSectionwidget(
                            image: "assets/images/lord-commander.png",
                            text: "Quotes",
                            imageSide: _ImageSide.left),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionwidget({
    required String image,
    required String text,
    _ImageSide imageSide = _ImageSide.right,
  }) {
    return Card(
      elevation: 6,
      color: secondaryColor.withAlpha(40),
      child: Row(
        children: [
          if (imageSide == _ImageSide.left) _characterImage(image),
          Spacer(),
          _bigTextWithShadow(text),
          Spacer(),
          if (imageSide == _ImageSide.right) _characterImage(image),
        ],
      ),
    );
  }

  Image _characterImage(String image) {
    return Image.asset(
      image,
      height: 90,
    );
  }

  Text _bigTextWithShadow(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: secondaryColor,
        shadows: [
          Shadow(
            blurRadius: 5,
            color: Colors.black87,
            offset: Offset(6, 6),
          ),
        ],
        fontSize: 36,
      ),
    );
  }
}

enum _ImageSide { left, right }
