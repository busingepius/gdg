import "package:gdg/routes/routes.dart";
import "package:go_router/go_router.dart";
import "package:flutter/material.dart";
import "../screens/screens.dart";

GoRouter routerConfig([String? initialLocation]) {
  return GoRouter(
    initialLocation: initialLocation ?? Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (BuildContext context, state) {
          return SplashScreen();
        },
      ),
      GoRoute(
          path: Routes.nav,
          builder: (BuildContext context, state) {
            return const NavScreen();
          }),
    ],
  );
}
