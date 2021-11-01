import 'package:flutter_getx_ithome/utils/static_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDefault {
  static UserDefault instance = UserDefault._internal();
  factory UserDefault() => instance;

  UserDefault._internal();
  late SharedPreferences _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get accessToken => _prefs.getString(ACCESS_TOKEN) ?? "";
  set accessToken(String? value) {
    if (value != null) {
      _prefs.setString(ACCESS_TOKEN, value);
    }
  }

  set userName(String name) => _prefs.setString(USER_NAME, name);
  String get userName => _prefs.getString(USER_NAME) ?? "";

}