import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:gdg/routes/router.dart";
import "package:gdg/screens/screens.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:gdg/BLoC/blocs.dart";

void main() {
  group("Testing GoRouter", () {
    testWidgets("tests the go router", (WidgetTester tester) async {
      // pump MaterialApp.router into WidgetTester
      await tester.pumpWidget(
        BlocProvider(
          create: (BuildContext context) => IndexBloc(),
          child: MaterialApp.router(routerConfig: routerConfig()),
        ),
      );

      // set up await time
      await tester.pump(const Duration(seconds: 2));
      // find the details of the widget using a Finder
      final Finder text = find.text("Setting you up ...");
      // match the expect with another actual occurance using a Matcher
      expect(text, findsOneWidget);
      // expect(find.byType(Spacer), findsWidgets);
      expect(find.byType(Spacer), findsNWidgets(2));

      // Step: Rebuild after navigation
      await tester
          .pumpAndSettle(); // Wait for the navigation animation to complete
      expect(find.byIcon(Icons.home), findsAny);

      // // Step: Navigate back to the previous page by simulating back navigation
      // routerConfig().go(Routes.splash); // if there is back navigation configured
      // await tester
      //     .pumpAndSettle(); //Wait for the navigation animation to complete
      // // expect(find.byIcon(Icons.home), findsOneWidget);
      expect(find.byType(NavScreen), findsNWidgets(1));
    });
  });
}


// import "package:flutter/material.dart";
// import "package:flutter_test/flutter_test.dart";
// import "package:gdg/routes/router.dart";
// import "package:gdg/routes/routes.dart";
// import "package:gdg/screens/screens.dart";

// void main() {
//   group("testing the screen as a group", () {
//     testWidgets("tests the go router", (WidgetTester tester) async {
//       // build and render the widget with WidgetTester
//       await tester.pumpWidget(
//         MaterialApp.router(
//           routerConfig: routerConfig(),
//           // home: const SplashScreen(),
//         ),
//       );

//       // set up await time
//       await tester.pump(const Duration(seconds: 2));
//       // find the details of the widget using a Finder
//       final Finder text = find.text("Setting you up ...");
//       // match a the expectations with another actual occurance using a Matcher
//       expect(text, findsOneWidget);
//       // expect(find.byType(Spacer), findsWidgets);
//       expect(find.byType(Spacer), findsNWidgets(2));

//       // Step: Rebuild after navigation
//       await tester
//           .pumpAndSettle(); // Wait for the navigation animation to complete
//       expect(find.byIcon(Icons.home), findsAny);

//       // Step: Navigate back to the previous page by simulating back navigation
//       routerConfig().go(Routes.nav);
//       await tester
//           .pumpAndSettle(); //Wait for the navigation animation to complete
//       expect(find.byIcon(Icons.home), findsOneWidget);
//     });
//   });
// }
