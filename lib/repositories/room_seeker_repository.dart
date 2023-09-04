import 'dart:convert';

import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';

class RoomSeekerRepository extends NetworkService with BaseHeaders, BaseURL {
  UserSecureStorage storages = UserSecureStorage();
  Future getSeekerCards(context, String page) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var response = await getRequest(seekerCards(page), header_, context);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future getSeekerCardById(context, String id) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var response = await getRequest(seekerCardById(id), header_, context);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future sendOwnerRequestRepo(context, String id) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var response =
          await noBodyPutRequest(seekerRequestUrl(id), header_, context);
      print(response);
      return response;
    } catch (e) {
      return null;
    }
  }
}
