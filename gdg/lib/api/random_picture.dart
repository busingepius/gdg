import "dart:convert";

import "package:http/http.dart" as http;

import "../errors/errors.dart";
import "../models/models.dart";

Future<Picture> getRandomPicture(http.Client client) async {
  try {
    final http.Response response = await client
        .get(Uri.parse("https://coffee.alexflipnote.dev/random.json"));

    // var responses = await Future.wait([
    //   client.get(Uri.parse("https://coffee.alexflipnote.dev/random.json")),
    //   client.get(Uri.parse("https://coffee.alexflipnote.dev/random.json")),
    // ]);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Picture(file: data["file"]);
    } else {
      throw CustomError(message: "No data available now");
    }
  } catch (e) {
    throw Exception([e]);
  }
}
