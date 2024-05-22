import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> postClient(
  String url, {
  required Map<String, dynamic> body,
  String token = "",
}) async {
  var client = http.Client();
  http.Response response;
  dynamic decodedResponse;
  try {
    response = await client.post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: {
        "Accept": "*/*",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
  } finally {
    client.close();
  }
  return decodedResponse;
}

Future<dynamic> getClient(
  String url, {
  String token = "",
}) async {
  var client = http.Client();
  http.Response response;
  dynamic decodedResponse;
  try {
    response = await client.get(
      Uri.parse(url),
      headers: {
        "Accept": "*/*",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
  } finally {
    client.close();
  }
  return decodedResponse;
}

Future<dynamic> putClient(
  String url, {
  required Map<String, dynamic> body,
  String token = "",
}) async {
  var client = http.Client();
  http.Response response;
  dynamic decodedResponse;
  try {
    response = await client.put(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: {
        "Accept": "*/*",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
  } finally {
    client.close();
  }
  return decodedResponse;
}

Future<dynamic> deleteClient(
  String url, {
  required Map<String, dynamic> body,
  String token = "",
}) async {
  var client = http.Client();
  http.Response response;
  dynamic decodedResponse;
  try {
    response = await client.delete(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: {
        "Accept": "*/*",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
  } finally {
    client.close();
  }
  return decodedResponse;
}

Future<dynamic> patchClient(
  String url, {
  required Map<String, dynamic> body,
  String token = "",
}) async {
  var client = http.Client();
  http.Response response;
  dynamic decodedResponse;
  try {
    response = await client.patch(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: {
        "Accept": "*/*",
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
  } finally {
    client.close();
  }
  return decodedResponse;
}
