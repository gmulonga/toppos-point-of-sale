import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/logo.png'),
      height: height,
      width: width,
    );
  }
}
