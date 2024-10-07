import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_test/flutter_test.dart";
import "package:gdg/BLoC/blocs.dart";
import "package:gdg/screens/account.dart";

void main() {
  group("test the Account screen", () {
    testWidgets("test the account screen", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const Account(),
      ));

      final Finder text = find.text("David");

      expect(text, findsAny);
    });

      testWidgets("test pressing button", (WidgetTester tester) async {
      final IndexBloc indexBloc = IndexBloc();
      await tester.pumpWidget( 
        BlocProvider(
          create: (BuildContext context) => indexBloc,
          child: MaterialApp(home: const Account()),
        ),
      );
      await tester.tap(find.text("Pending"));
      await tester.pumpAndSettle();
      expect(indexBloc.state,1);
    });
  });
}
