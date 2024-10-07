import "package:flutter_test/flutter_test.dart";
import "package:flutter/material.dart";
import "package:gdg/widgets/widgets.dart";
import "package:mocktail/mocktail.dart"; // provides a fall back value

void main() {
  group("testing SplashImage widget", () {
    // not needed for now exactly
    setUpAll(() {
      registerFallbackValue(const ImageChunkEvent(
          cumulativeBytesLoaded: 100, expectedTotalBytes: 200));
    });
    testWidgets("test the image in class", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SplashImage(image: "assets/images/logo.png"),
        ),
      );

      await tester.pumpAndSettle();
      final Finder networkImageFinder = find.byWidgetPredicate((widget) =>
          widget is Image &&
          widget.image is AssetImage &&
          (widget.image as AssetImage).assetName == "assets/images/logo.png");

      expect(networkImageFinder, findsOneWidget);
    });
  });
}
