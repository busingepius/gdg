import "package:flutter_test/flutter_test.dart";
import "package:gdg/api/random_picture.dart";
import "package:gdg/errors/errors.dart";
import "package:gdg/models/models.dart";
import "package:mocktail/mocktail.dart";
import "package:http/http.dart" as http;

class MockClient extends Mock implements http.Client {}

class FakeUri extends Fake implements Uri {}

void main() {
  group("test API call for get random picture", () {
    late MockClient mockClient;

    setUpAll(() => registerFallbackValue(FakeUri()));
    setUp(() => mockClient = MockClient());

    test("test get success call to random picture method", () async {
      const String mockResponse = '{"file": "https://example.com/picture.jpg"}';

      when(() => mockClient.get(any()))
          .thenAnswer((invocation) async => http.Response(mockResponse, 200));

      final result = await getRandomPicture(mockClient);

      expect(result, isA<Picture>());
    });

    // test("test the 404 of the random picture method", () async {
    //   when(() => mockClient.get(any())).thenAnswer(
    //       (invocation) async => http.Response("Not found any", 404));

    //   expect(() => getRandomPicture(mockClient), (isA<Picture>()));
    // });

    test("test the failure of the random picture call", () async {
      when(() => mockClient.get(any()))
          .thenThrow(Exception("An exception occurred"));

      expect(() => getRandomPicture(mockClient), throwsA(isA<Exception>()));
    });
  });
}
