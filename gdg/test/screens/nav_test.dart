import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gdg/BLoC/blocs.dart';
import 'package:gdg/screens/screens.dart';

void main() {
  final IndexBloc indexBloc = IndexBloc();
  // create a testWidgets test
  // build the widget using the WidgetTester
   testWidgets("test nav screen", (WidgetTester tester) async {
    // pump MaterialApp with the desired Widget into WidgetTester
    await tester.pumpWidget(
      BlocProvider<IndexBloc>(
        create: (context) => indexBloc,
        child: MaterialApp( 
          home: const NavScreen(),
        ),
      ),
    );

    // find the details of the Widget using a Finder
    final Finder icon = find.byIcon(Icons.home);
    // Match the expect with an actual occurance using a Matcher
    expect(find.byType(NavScreen), findsOne);
    expect(icon, findsAny);

    await tester.tap(find.byIcon(Icons.favorite_outlined));
    await tester.pumpAndSettle();
    expect(indexBloc.state, 1); // Assuming the favorite icon is at index 1
    expect(find.text("Account"), findsAny);
  });
}
