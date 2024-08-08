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


}
