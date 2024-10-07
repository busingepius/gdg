import "package:flutter_test/flutter_test.dart";
import "package:flutter/material.dart";
import "package:gdg/screens/screens.dart";

void main() {
  group("Test the Home screen", () {
    testWidgets("test the whole widget", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: const HomeScreen()));
      expect(find.text("View Image"),findsAtLeast(1));
    });
  });
}
