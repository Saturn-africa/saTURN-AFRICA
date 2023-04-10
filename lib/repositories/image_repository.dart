import 'dart:convert';

import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:saturn/models/image_model/file_response.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:http/http.dart' as http;

class ImageRepository extends NetworkService with BaseURL, BaseHeaders {
  Future<dynamic> uploadResponse(XFile image, fileName, context) async {
    final mimeTypeData =
        lookupMimeType(image.path, headerBytes: [0xFF, 0xD8])?.split('/');

    // Intilize the multipart request
    final imageUploadRequest =
        http.MultipartRequest("POST", Uri.parse(uploadImage));

    // Attach the file in the request
    final file = await http.MultipartFile.fromPath(fileName, image.path,
        filename: "${mimeTypeData![0]}.${mimeTypeData[1]}");

    String auth = await getAuthToken(context);
    imageUploadRequest.headers['accept'] = "*/*";
    imageUploadRequest.headers['authorization'] = 'Bearer $auth';

    // imageUploadRequest.
    imageUploadRequest.files.add(file);

    try {
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        FileUploadResponse fileUploadResp =
            FileUploadResponse.fromJson(responseData);

        if (fileUploadResp.error == false) {
          return fileUploadResp.data![0];
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
