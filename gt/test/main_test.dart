import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:gt/main.dart';

void main() {
  testWidgets('Navigation and builder widget structure test',
      (WidgetTester tester) async {
    // Define the GoRouter to be used in the test
    final GoRouter testRouter = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) =>const  HomePage(),
        ),
        GoRoute(
          path: '/details',
          builder: (context, state) => const DetailsPage(),
        ),
      ],
    );

    // Build the app with the test router
    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: testRouter,
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
      ),
    );

    // Verify AppBar and Footer are present on the home page
    expect(find.text('My App'), findsOneWidget);
    expect(find.text('Footer Widget'), findsOneWidget);

    // Verify HomePage content is present
    expect(find.text('Go to Details Page'), findsOneWidget);

    // Tap on the button to navigate to the details page
    await tester.tap(find.text('Go to Details Page'));
    await tester.pumpAndSettle(); // Wait for the navigation animation to finish

    // Verify we're now on the DetailsPage
    expect(find.text('Details Page'), findsOneWidget);

    // Verify AppBar and Footer are still present on the details page
    expect(find.text('My App'), findsOneWidget);
    expect(find.text('Footer Widget'), findsOneWidget);
  });
}
