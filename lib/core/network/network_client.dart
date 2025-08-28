import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class HttpClientInterface {
  Future<dynamic> get(String url);
  Future<dynamic> put(String url, {Map<String, dynamic>? body});
}

class NetworkClient implements HttpClientInterface {
  final http.Client client = http.Client();

  @override
  Future<dynamic> get(String url) async {
    final response = await http.get(
      Uri.parse(url),
      headers: {'Accept': 'application/json', 'User-Agent': 'Dart/Flutter App'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Future<dynamic> put(String url,  {Map<String, dynamic>? body}) async {
    final response = await http.put(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'User-Agent': 'Dart/Flutter App'
      },
      body: jsonEncode(body),
    );


    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return jsonResponse;
    }else{
      throw Exception('PUT request failed with status: ${response.statusCode}');
    }
  }
}
