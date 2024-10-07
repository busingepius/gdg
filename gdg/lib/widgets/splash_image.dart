import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  final String image;
  const SplashImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0,
      child: Image.asset(
        image,
      ),
    );
  }
}
