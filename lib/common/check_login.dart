import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/config/constant.dart';

class CheckLogin {
  Future checkLogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token;
    token = sharedPreferences.getString(Constants.authToken);

    return token;
  }
}