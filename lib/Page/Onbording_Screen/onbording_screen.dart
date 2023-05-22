// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:ui/Components/Auth_Button/sign_in_button.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:ui/Components/Social_Button/facebook_button.dart';
import 'package:ui/Components/Social_Button/google_button.dart';
import 'package:ui/Page/AuthScreen/sign_in.dart';
import 'package:ui/Page/AuthScreen/sign_up.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/homescreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 80,
                ),
                CarouselSlider(
                    items: [
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/log.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                        height: 180,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.8)),
                //Image.asset('assets/images/logo.png'),
                // ImageViewer.showImageSlider(
                //   context,
                //   images,
                //   initalIndex:1,
                //   on
                // ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'The best place to\nbuy,sell,and go live',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                FacebookButton(
                    title: 'Continue with Facebook',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const HomeScreen()),
                          (route) => false);
                    }),
                GoogleButton(
                    title: 'Continue with Google',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      // Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(builder: (ctx) => const SignUp()),
                      //     (route) => false);
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SignInButton(
                      Height: MediaQuery.of(context).size.height / 15,
                      Width: MediaQuery.of(context).size.width / 2.7,
                      title: 'Sign In',
                      Onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const SignIn()));
                      },
                    ),
                    SignUpButton(
                      Height: MediaQuery.of(context).size.height / 15,
                      Width: MediaQuery.of(context).size.width / 2.7,
                      title: 'Sign Up',
                      Onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const SignUp()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
