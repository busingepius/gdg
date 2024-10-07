import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  const CustomImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.network(
        image,
        fit: BoxFit.cover,
        errorBuilder: (
          BuildContext context,
          Object child,
          StackTrace? stackTrace,
        ) {
          return Image.asset("../../assets/images/logo.png");
        },
        loadingBuilder: (
          BuildContext context,
          Widget? child,
          ImageChunkEvent? loadingProgress,
        ) {
          if (loadingProgress == null) return child!;
          return CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          );
        },
      ),
    );
  }
}
