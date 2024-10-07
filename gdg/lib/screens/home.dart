import "package:flutter/material.dart";

import "../widgets/widgets.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isLandscape =
    //   MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(title: Text("View Image")),
      body: Center(
        child: CustomImage(
          "https://res.cloudinary.com/seros/image/upload/v1728123455/pexels-fauxels-3184418_icyhkq.jpg",
        ),
      ),
    );
  }
}
