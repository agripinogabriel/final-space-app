import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/mock/episodes.dart';

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
    return Container();
  }
}
