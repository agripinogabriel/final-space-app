import 'package:flutter/material.dart';

import '../../route_generator.dart';
import '../../shared/colors.dart';
import '../../shared/widget/container_background_image.dart';

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
                ContainerBackgroundImage(),
                SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Gary Goodspeed is a boisterous yet inept astronaut who, in the midst of working off the last few days of his five-year sentence aboard the prison spacecraft Galaxy One, encounters a mysterious planet-destroying alien. He befriends the alien, naming him Mooncake, and then discovers that Mooncake is wanted by the forces of a powerful telekinetic creature known as the Lord Commander. Gary and Mooncake embark on a quest to save the universe, together with the ship's computer HUE, an army of similar but unfalteringly loyal robots, and a growing crew of new shipmates—all while trying to uncover the mystery of what \"Final Space\" really is.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: secondaryLigthColor),
                          ),
                        ),
                        _buildSectionwidget(
                          image: "assets/images/mooncake.png",
                          text: "Characters",
                          tag: "character-hero",
                          callback: () => Navigator.of(context)
                              .pushNamed(RouteGenerator.characters),
                        ),
                        SizedBox(height: 6),
                        _buildSectionwidget(
                          image: "assets/images/avocato.png",
                          text: "Episodes",
                          tag: "episodes-hero",
                          imageSide: _ImageSide.left,
                          callback: () => Navigator.of(context)
                              .pushNamed(RouteGenerator.episodes),
                        ),
                        SizedBox(height: 6),
                        _buildSectionwidget(
                          image: "assets/images/gary.png",
                          text: "Locations",
                          tag: "locations-hero",
                          callback: () => Navigator.of(context)
                              .pushNamed(RouteGenerator.locations),
                        ),
                        SizedBox(height: 6),
                        _buildSectionwidget(
                          image: "assets/images/lord-commander.png",
                          text: "Quotes",
                          tag: "quotes-hero",
                          imageSide: _ImageSide.left,
                          callback: () {},
                        ),
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
    required String tag,
    required void Function()? callback,
    _ImageSide imageSide = _ImageSide.right,
  }) {
    final leftMargin = (imageSide == _ImageSide.left) ? 0.0 : 32.0;
    final rightMargin = (imageSide == _ImageSide.left) ? 32.0 : 0.0;

    return InkWell(
      onTap: callback,
      child: Padding(
        padding: EdgeInsets.only(left: leftMargin, right: rightMargin),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(leftMargin),
            bottomLeft: Radius.circular(leftMargin),
            topRight: Radius.circular(rightMargin),
            bottomRight: Radius.circular(rightMargin),
          ),
          child: Container(
            color: secondaryColor.withAlpha(40),
            child: Row(
              children: [
                if (imageSide == _ImageSide.left) _characterImage(image),
                Spacer(),
                _bigTextWithShadow(text, tag),
                Spacer(),
                if (imageSide == _ImageSide.right) _characterImage(image),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _characterImage(String image) {
    return Image.asset(
      image,
      height: 90,
    );
  }

  Widget _bigTextWithShadow(String text, String tag) {
    return Hero(
      tag: tag,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 5,
              color: Colors.black87,
              offset: Offset(6, 6),
            ),
          ],
          fontSize: 36,
        ),
      ),
    );
  }
}

enum _ImageSide { left, right }
