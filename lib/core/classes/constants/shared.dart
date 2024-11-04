import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  static Future<bool> isLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isLogin') ?? false;
  }

  static Future<bool> isRegister() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isRegister') ?? false;
  }

  static Future<bool> isOnboardingCompleted() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isOnboardingCompleted') ?? false;
  }

  static Future<bool> isLogOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isLogOut') ?? false;
  }
}
