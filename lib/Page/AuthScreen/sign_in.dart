import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/homescreen.dart';
import 'package:ui/Page/Onbording_Screen/InterestedScreen/interested.dart';
import 'package:ui/common/common_widgets.dart';
import 'package:ui/controller/signin_controller.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool validation = false;
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();

  SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Welcome back\n     friends!',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _emailkey,
                    child: TextFormField(
                      controller:  controller.emailController,
                      onSaved: (value) {
                         controller.emailController.text;
                      },
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.check,
                          size: 20,
                          //color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Enter Your Email',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Email';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _passwordkey,
                    child: TextFormField(
                      obscureText: true,
                      controller: controller.passwordController,
                      onSaved: (value) {
                        controller.passwordController.text;
                      },
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.visibility_off_sharp,
                          size: 20,
                          //color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Enter Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignUpButton(
                    title: 'Login',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      signIn(context);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Forgot password',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 280,
                  ),
                  const Text(
                    "Dont't have an account? Join us",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signIn(context) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    bool email = false;
    bool password = false;

    if (!_emailkey.currentState!.validate() ||
        !_passwordkey.currentState!.validate()) {
      email = false;
      password = false;
      toaster("Enter valid details");
    } else {
      if (connectivityResult == ConnectivityResult.none) {
        toaster("No internet connection");
      } else {
        loadingBar(context);
        await controller.getSignInData();
        Get.back();
        if(controller.signInDetail[0].success ==false){
           toaster(controller.signInDetail[0].message);
        }else{
        Get.to(()=>HomeScreen(), transition: Transition.rightToLeft);
        }
      }
    }
  }
}
