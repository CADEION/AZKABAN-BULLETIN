import 'package:auto_route/auto_route.dart';
import 'package:azkaban_bulletin/presentation/routers/router_import.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Future<void> manipulateLogin(context) async {
    var token = await getAccessToken();
    if (token != null) {
      AutoRouter.of(context).push(const GeneralRoute());
    } else {
      AutoRouter.of(context).push(const OnboardRoute());
    }
  }

  static Future<void> saveTokens(String accessToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', accessToken);
  }

  static Future<String?> getAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  static Future<void> clearAllSavedData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
