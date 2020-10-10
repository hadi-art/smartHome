import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'dart:async';

class ApiProvider {
  final String _baseUrl = "https://api.chucknorris.io/";

  Future<void> deletePost(int id) async {
    var responseJson;
    final response = await http.post("$_baseUrl/$id");
  }

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(_baseUrl + url);
      responseJson = _response(response);
    } on SocketException {
//      throw FetchDataException('No Internet connection');
      print("no internet");
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        print("400");
        return false;
//        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
//        throw UnauthorisedException(response.body.toString());
        print("403");
        return false;
      case 500:

      default:
        print("unknown");
    }
  }
}