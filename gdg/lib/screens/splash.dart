import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../widgets/widgets.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    nextScreen(context: context);
    return Scaffold(
      body: Center(child: Column(
        children: [
          const Spacer(),
          SplashImage(image: "assets/images/logo.png"),
          const Spacer(),
          const Text("Setting you up ..."),
        ],
      )),
    );
  }
}

Future<void> nextScreen({required BuildContext context}) async {
  await Future.delayed(const Duration(seconds: 2));
  if (!context.mounted) return;
  context.go("/nav");
}
