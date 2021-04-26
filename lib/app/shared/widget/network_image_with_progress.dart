import 'package:flutter/material.dart';

class NetworkImageWithProgress extends StatelessWidget {
  const NetworkImageWithProgress({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
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
    );
  }
}
