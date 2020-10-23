import 'dart:convert';
import 'package:http/http.dart' as http;

class UserProvider {
  final httpClient = new http.Client();

  Future<Map<String, dynamic>> getUser(id) async {
    var response = await  http.get("https://jsonplaceholder.typicode.com/users/$id");

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print("erro -get" + response.body);
    }
    return null;
  }
}