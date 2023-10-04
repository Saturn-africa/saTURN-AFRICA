import 'dart:convert';

import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';

abstract class RoomOwnerRepository extends NetworkService
    with BaseHeaders, BaseURL {
  UserSecureStorage storages = UserSecureStorage();
  Future getOwnerCards(context, String page) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var response = await getRequest(ownerCards(page), header_, context);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future getOwnerCardById(context, String id) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var response = await getRequest(ownerCardById(id), header_, context);
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
          await putRequest(ownerSendRequest(id), header_, jsonEncode(null), context);
      return response;
    } catch (e) {
      return null;
    }
  }
}
