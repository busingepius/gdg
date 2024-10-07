import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:gdg/screens/screens.dart";

void main() {
  group("test the SavedImages screen", () {
    testWidgets("testing the whole screen", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SavedScreen()));
      expect(find.text("Saved Images"), findsAtLeast(1));
    });
  });
}
