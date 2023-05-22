import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/homescreen.dart';
import 'package:ui/Page/Onbording_Screen/InterestedScreen/interested.dart';
import 'package:ui/common/common_widgets.dart';
import 'package:ui/config/constant.dart';
import 'package:ui/model/signup_model.dart';
import 'package:ui/service/signup_service.dart';

class SignUpController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> firstNamekey = GlobalKey<FormState>();
  final GlobalKey<FormState> lastNamekey = GlobalKey<FormState>();
  final GlobalKey<FormState> emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> mobilekey = GlobalKey<FormState>();
  final GlobalKey<FormState> passwordkey = GlobalKey<FormState>();

  RxBool nullData = true.obs;
  final List<SignUpModel> signUpDetail = [];

  List<SignUpModel> get signUpDetails {
    return [...signUpDetail];
  }

  Future signUpData() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      var data = await SignUpService.getSignUpService(
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          email: emailController.text,
          mobile: int.parse(mobileController.text),
          password: passwordController.text,
          photo: "photo.jpeg");

      if (data != null) {
        sharedPreferences.setString(
            Constants.authToken, data.data!.token ?? "");

        signUpDetail.clear();
        signUpDetail.add(data);
        nullData(false);
      } else {
        nullData(false);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future signUp(context) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    emailkey.currentState!.validate();
    mobilekey.currentState!.validate();

    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        mobileController.text.isEmpty ||
        passwordController.text.isEmpty) {
      toaster("Please enter all fields");
    } else if (!emailkey.currentState!.validate() ||
        !mobilekey.currentState!.validate() ||
        !passwordkey.currentState!.validate()) {
      emailkey.currentState!.validate();
      mobilekey.currentState!.validate();
      passwordkey.currentState!.validate();
    } else {
      if (connectivityResult == ConnectivityResult.none) {
        toaster("No internet connection");
      } else {
        loadingBar(context);
        await signUpData();
        if (signUpDetail[0].success == false) {
          Get.back();
          toaster(signUpDetail[0].message);
        } else {
          Get.back();
          Get.offAll(() => const InterestedScreen(),
              transition: Transition.rightToLeft);
        }
      }
    }
  }
}
