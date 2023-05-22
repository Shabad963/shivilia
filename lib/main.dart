import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/Page/Splash_Page/splash_screen.dart';
import 'package:ui/common/check_login.dart';

Future<void> main()async {
 WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
   token = await CheckLogin().checkLogin();
  runApp( MyApp(prefs: prefs,));
}


late String? token;

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
   MyApp({super.key, required this.prefs});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(token: token, prefs: prefs),
      debugShowCheckedModeBanner: false,
    );
  }
}
