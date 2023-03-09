import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/service/apis/app_exception.dart';

class NetworkService {
  Future getRequest(String url, Map<String, String> header, context) async {
    dynamic responseJson;
    try {
      http.Response response = await http
          .get(Uri.parse(url), headers: header)
          .timeout(const Duration(seconds: 20));
      print(response.body);
      responseJson = returnResponse(response, context);
    } on SocketException catch (_) {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  Future postRequest(
      String url, Map<String, String> header, Object body, context) async {
    dynamic responseJson;
    try {
      http.Response response = await http
          .post(Uri.parse(url), headers: header, body: jsonEncode(body))
          .timeout(const Duration(seconds: 20));
      print(jsonEncode(body));
      print(response.body);
      responseJson = returnResponse(response, context);
    } on SocketException catch (_) {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  @visibleForTesting
  dynamic returnResponse(http.Response response, context) {
    var responseData = jsonDecode(response.body);
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = responseData;
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        showSnack(context, "08", responseData["responseMessage"]);
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communicating with server with status code : ${response.statusCode}');
    }
  }
}
