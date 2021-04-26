import 'package:flutter/material.dart';

class ContainerBackgroundImage extends Container {
  final Widget? child;

  ContainerBackgroundImage({this.child}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage('assets/images/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
