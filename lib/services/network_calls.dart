import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class NetworkCalls {
  Future getRequest(String url, Map<String, String> header) async {
    try {
      http.Response response = await http.get(Uri.parse(url), headers: header);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(response.reasonPhrase);
      }
    } on SocketException catch (_) {
      throw Exception("");
    }
  }

  Future postRequest(
      String url, Map<String, String> header, Object body) async {
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: header, body: jsonEncode(body));
      print(response.body);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(response.reasonPhrase);
      }
    } on SocketException catch (_) {
      throw Exception("");
    } catch (e) {
      return Error();
    }
  }
}
