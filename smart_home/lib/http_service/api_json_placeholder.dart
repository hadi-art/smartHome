import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'response_data.dart';




const baseUrl = "https://jsonplaceholder.typicode.com";

class API {

  static getUsers() async {
    var url = baseUrl + "/users";
    var responseJson;
    try {
      final response = await http.get(url).timeout(const Duration(seconds: 5));
      responseJson = ResponseData().data_response(response);
      print('ssssss');
      print(responseJson);
      if(responseJson != false){
        return response;
      }
      else{
        print('failed to get data');
        return false;
      }

    } on SocketException {
//      throw FetchDataException('No Internet connection');
      print("no internet");
    }
  }



  static Future getUsers2() {
    var url = baseUrl + "/users";
    print("ok tak");
    final response =  http.get(url);
    return http.get(url);
  }
}



