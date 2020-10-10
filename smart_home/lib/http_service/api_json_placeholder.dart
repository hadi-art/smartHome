import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';




const baseUrl = "https://jsonplaceholder.typicode.com";

class API {

  static Future<dynamic> getUsers() async {
    var url = baseUrl + "/users";
    var responseJson;
    final response = await http.get(url);
    responseJson = json.decode(response.body.toString());
    print('aaa');
    return responseJson;
  }



  static Future getUsers2() {
    var url = baseUrl + "/users";
    print("ok tak");
    final response =  http.get(url);
    return http.get(url);
  }
}



