import 'package:flutter/material.dart';

class ShadowedTex extends StatelessWidget {
  final String text;
  final double fontSize;
  final int? maxLines;

  const ShadowedTex(
    this.text,
    this.fontSize, {
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(
            blurRadius: 5,
            color: Colors.black87,
            offset: Offset(3, 3),
          ),
        ],
        fontSize: fontSize,
      ),
    );
  }
}
