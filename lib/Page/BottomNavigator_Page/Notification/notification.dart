import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(right: 58.0),
            child: Center(child: Text("Notifications")),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 12, right: 12),
          child: ListView(
            children: [
              const Text('Sept 9,2021'),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 209, 209),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/Subtract.png'),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 209, 209),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/Subtract.png'),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Sept 1,2021'),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 209, 209),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/Subtract.png'),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 209, 209),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/Subtract.png'),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 193, 193),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.check_box,
                    color: Colors.red,
                  ),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Sept 9,2021'),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 209, 209),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/Subtract.png'),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 209, 209),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/Subtract.png'),
                ),
                title: const Text(
                    'You have matched 1 product maybe\n you are interested in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
