import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:ui/common/common_widgets.dart';
import 'package:ui/config/urls.dart';
import 'package:ui/model/signin_model.dart';


class SignInService {
  static Future<SignInModel?> getSignInService({
    required String username,
     required String password,
  }) async {
    Map data = {
    "username": username,
    "password": password
};
    log('-ssssss---$data');
    try {
      http.Response response = await http
          .post(Uri.parse(Urls.signIn), body: json.encode(data), headers: {
        'Content-Type': 'application/json',
      });
      if (response.statusCode == 200) {
        log(response.body);
        return SignInModel.fromJson(jsonDecode(response.body.toString()));
      } else {
        toaster("Some error occured,try again later");
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }
}
