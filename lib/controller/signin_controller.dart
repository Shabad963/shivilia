import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/common/common_widgets.dart';
import 'package:ui/config/constant.dart';
import 'package:ui/model/signin_model.dart';
import 'package:ui/service/signin_service.dart';



class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool nullData = true.obs;
  final List<SignInModel> signInDetail = [];

  List<SignInModel> get signInDetails {
    return [...signInDetail];
  }

  Future getSignInData() async {
    SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

    try {
      var data = await SignInService.getSignInService(
          username: emailController.text, password: passwordController.text);

      if (data != null) {
        if(data.success == false){
          toaster(data.message);
        }else{
         sharedPreferences.setString(Constants.authToken, data.data!.token ?? "");
        signInDetail.clear;
        signInDetail.add(data);
        nullData(false);}
      } else {
        nullData(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
