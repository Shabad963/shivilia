// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:ui/Page/OTP_Screen/otp_screen.dart';
import 'package:ui/common/common_widgets.dart';
import 'package:ui/controller/signin_controller.dart';
import 'package:ui/controller/signup_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool validation = false;
  String radoi = 'Radio';

  SignUpController controller = Get.put(SignUpController());

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
                    "We're glad to\n   have you!",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: controller.firstNamekey,
                    child: TextFormField(
                      controller: controller.firstNameController,
                      onSaved: (value) {
                        controller.firstNameController.text;
                      },
                      decoration: InputDecoration(
                        // suffixIcon: const Icon(
                        //   Icons.check,
                        //   size: 20,
                        //   //color: Colors.black,
                        // ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'First name',
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
                          return 'Enter First name';
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
                    key: controller.lastNamekey,
                    child: TextFormField(
                      controller: controller.lastNameController,
                      onSaved: (value) {
                        controller.lastNameController.text;
                      },
                      decoration: InputDecoration(
                        // suffixIcon: const Icon(
                        //   Icons.check,
                        //   size: 20,
                        //   //color: Colors.black,
                        // ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Last name',
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
                          return 'Enter Last name';
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
                    key: controller.emailkey,
                    child: TextFormField(
                      controller: controller.emailController,
                      onSaved: (value) {
                        controller.emailController.text;
                      },
                      decoration: InputDecoration(
                        // suffixIcon: const Icon(
                        //   Icons.visibility_off_sharp,
                        //   size: 20,
                        //   //color: Colors.black,
                        // ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);
                        if (!emailValid) {
                          return 'Enter valid email';
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
                    key: controller.mobilekey,
                    child: TextFormField(
                      controller: controller.mobileController,
                      onSaved: (value) {
                        controller.mobileController.text;
                      },
                      decoration: InputDecoration(
                        // suffixIcon: const Icon(
                        //   Icons.visibility_off_sharp,
                        //   size: 20,
                        //   //color: Colors.black,
                        // ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                        isDense: true,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 207, 206, 206),
                        hintText: 'Mobile',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.length != 10) {
                          return 'Enter 10 digits only';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: controller.passwordkey,
                    child: TextFormField(
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
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    validator: (value) {
                        if (value!.length < 6) {
                          return 'Min 6 characters';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 10,
                      child: Radio(
                        value:
                            'I agree with the Terms of Service & Privacy Policy',
                        groupValue: radoi,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          //value may be true or false
                          setState(() {
                            radoi = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      'I agree with the Terms of Service & Privacy Policy',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ]),
                  SignUpButton(
                    title: 'Sign Up',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      if (radoi == "Radio") {
                        toaster("Please accept terms and conditions");
                      } else {
                        controller.signUp(context);
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Have an account? Log in",
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
}
