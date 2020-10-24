import 'dart:convert';
import 'package:getx_modelo/app/data/base_url.dart';
import 'package:getx_modelo/app/data/model/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
    
  Future<List<User>> getUsers() async {    
    
    var response = await http.get(BASE_URL+"users");    

    if (response.statusCode == 200) {
      Iterable users = jsonDecode(response.body);           
      return users.map((user) => User.fromJson(user)).toList();
    } else {
      print("erro -get" + response.body);
    }
    return null;
  }
}