import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) =>const DetailsPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: Column(
            children: [
              Expanded(child: child!), // The current route's page
              Container(
                height: 50,
                color: Colors.blueAccent,
                child: const Center(
                  child: Text('Footer Widget'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.go('/details');
        },
        child:const Text('Go to Details Page'),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Details Page'),
    );
  }
}
