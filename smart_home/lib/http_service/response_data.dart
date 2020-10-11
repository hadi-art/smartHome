import 'package:http/http.dart' as http;
import 'dart:convert';


class ResponseData {

    data_response(http.Response response) {
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
      case 404:
//        throw UnauthorisedException(response.body.toString());
        print("404");
        return false;
      case 500:

      default:
        print("unknown");
        return false;
    }
  }

}
