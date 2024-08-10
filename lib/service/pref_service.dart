import 'dart:convert';

import 'package:packages/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static setName(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("email", email);
  }

  static Future<String?> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("email");
  }

  static Future<bool> removeName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("email");
  }

  //Object local stroge saqlash

  static setUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    await prefs.setString("user", stringUser);
  }

  static Future<User?> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString("user");
    if (stringUser == null || stringUser.isEmpty) {
      return null;
    } else {
      Map<String, dynamic> map = jsonDecode(stringUser);
      return User.fromJson(map);
    }
  }

  static Future<bool> removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
}
