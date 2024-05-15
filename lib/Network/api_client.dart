import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> postClient(
  String url, {
  required Map<String, dynamic> body,
}) async {
  var client = http.Client();
  http.Response response;
  dynamic decodedResponse;
  try {
    // print("url $url");
    // print("body $body");

    response = await client.post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: {
        "Accept": "*/*",
        "Content-Type": "application/json",
      },
    );

    // print("response statusCode ${response.statusCode}");

    decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
    // var uri = Uri.parse(decodedResponse['uri'] as String);
    // print("response decodedResponse user ${decodedResponse["data"]["user"]["email"]}");
    // print("response decodedResponse user ${decodedResponse["data"]["user"]["nam"]}");
    // print("response decodedResponse user ${decodedResponse["data"]["user"]["is_active"]}");
    // print("response decodedResponse token ${decodedResponse["data"]["token"]}");
  } finally {
    client.close();
  }

  return decodedResponse;
}
