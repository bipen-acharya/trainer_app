import 'dart:convert';
import 'dart:developer';

import 'package:get_storage/get_storage.dart';
import 'package:trainer_app/models/users.dart';


class StorageKeys {
  static const String USER = "user";
  static const String ACCESS_TOKEN = "accessToken";
}

class StorageHelper {

    static getToken() {
    try {
      final box = GetStorage();
      String token = box.read(StorageKeys.ACCESS_TOKEN);
      return token;
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      return null;
    }
  }
  static User? getUser() {
    log("Fetching user");
    try {
      final box = GetStorage();
      log("${box.read(StorageKeys.USER)}");
      User user = User.fromJson(json.decode(box.read(StorageKeys.USER)));

      return user;
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      return null;
    }
  }
}
