import "package:flutter/material.dart";
import "package:gdg/constants/constant.dart";
import "routes/router.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "BLoC/blocs.dart";

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (BuildContext context) => CounterBloc(),
        ),
        BlocProvider<IndexBloc>(
          create: (BuildContext contetxt) => IndexBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // debugShowMaterialGrid: true,
      // showPerformanceOverlay: true,
      // checkerboardRasterCacheImages: true,
      // checkerboardOffscreenLayers: true,
      // showSemanticsDebugger: true,
      // debugShowCheckedModeBanner: true,
      theme: themeData,
      themeMode: ThemeMode.system,
      routerConfig: routerConfig(),
    );
  }
}
