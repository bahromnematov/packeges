import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static setApi(String api) async {
    final storage = FlutterSecureStorage();
    await storage.write(key: "api", value: api);
  }

  static getApi() async {
    final storage = FlutterSecureStorage();
    String? api = await storage.read(key: "api");
    return api;
  }

  static Future<void> removeApi() async {
    final storage = FlutterSecureStorage();
    await storage.delete(key: "api");
  }
}
