import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/service/apis/app_exception.dart';

class NetworkService {
  Future getNoResponseRequest(String url, Map<String, String> header, context,
      {int seconds = 100}) async {
    try {
      http.Response response = await http
          .get(Uri.parse(url), headers: header)
          .timeout(Duration(seconds: seconds));
      print("status code ===>> ${response.statusCode}");
      print("response body ==>> ${response.body}");
      return response.statusCode;
    } on SocketException catch (_) {
      throw FetchDataException("No Internet Connection");
    }
  }

  Future getRequest(String url, Map<String, String> header, context,
      {int seconds = 100}) async {
    dynamic responseJson;
    try {
      print("url ===>> $url");
      print("header ===>> $header");
      http.Response response = await http
          .get(Uri.parse(url), headers: header)
          .timeout(Duration(seconds: seconds));
      print(response.body);
      // print(header);
      responseJson = returnResponse(response, context);
    } on SocketException catch (_) {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  Future putRequest(
      String url, Map<String, String> header, Object body, context,
      {int seconds = 100}) async {
    print("url ===>> $url");
    print("header ===>> $header");
    print("body====>> $body");
    dynamic responseJson;
    try {
      http.Response response = await http
          .put(Uri.parse(url), headers: header, body: jsonEncode(body))
          .timeout(Duration(seconds: seconds));
      print(response.statusCode);
      // print(jsonEncode(body));
      print(response.body);
      responseJson = returnResponse(response, context);
    } on SocketException catch (_) {
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
  }

  Future postRequest(
      String url, Map<String, String> header, Object body, context,
      {int seconds = 100}) async {
    print("url ===>> $url");
    print("header ===>> $header");
    print("body====>> $body");
    dynamic responseJson;
    try {
      http.Response response = await http
          .post(Uri.parse(url), headers: header, body: jsonEncode(body))
          .timeout(Duration(seconds: seconds));
      print(response.statusCode);
      // print(jsonEncode(body));
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
        dynamic responseJson = responseData;
        return responseJson;
      case 400:
        showSnack(context, "08", responseData["msg"]);
        throw BadRequestException(response.body.toString());
      case 401:
        showSnack(context, "08", responseData["msg"]);
        throw UnauthorisedException(response.body.toString());
      case 403:
        throw BadRequestException(response.body.toString());
      case 404:
        showSnack(context, "08", responseData["msg"]);
        throw UnauthorisedException(response.body.toString());
      case 500:
        print(responseData);
        showSnack(context, "08", responseData["msg"]);
        throw BadRequestException(response.body.toString());
      default:
        showSnack(context, "08", responseData["msg"]);
        throw FetchDataException(
            'Error occured while communicating with server with status code : ${response.statusCode}');
    }
  }
}
