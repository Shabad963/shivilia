import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:ui/common/common_widgets.dart';
import 'package:ui/config/urls.dart';
import 'package:ui/model/signup_model.dart';

class SignUpService {
  static Future<SignUpModel?> getSignUpService({
    required String firstName,
    required String lastName,
    required String email,
    required int mobile,
    required String password,
    required String photo,
  }) async {
    Map data = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "mobile": mobile,
      "password": password,
      "photo": photo
    };
    log('-ssssss---$data');
    try {
      http.Response response = await http
          .post(Uri.parse(Urls.signUp), body: json.encode(data), headers: {
        'Content-Type': 'application/json',
      });
      if (response.statusCode == 200) {
        log(response.body);
        return SignUpModel.fromJson(jsonDecode(response.body.toString()));
      } else {
        log(response.body);
        toaster("Some error occured,try again later");
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }
}
