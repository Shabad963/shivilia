import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/Page/AuthScreen/sign_in.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/homescreen.dart';
import 'package:ui/Page/Onbording_Screen/onbording_screen.dart';



class SplashScreen extends StatefulWidget {
  final SharedPreferences prefs;
  final String? token;

 const SplashScreen({super.key, required this.prefs, required this.token});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                widget.token == null ? const OnbordingScreen() : const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Image.asset('assets/images/logo.png'),
      )),
    );
  }
}