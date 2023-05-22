import 'package:flutter/material.dart';
import 'package:ui/Components/Auth_Button/sign_in_button.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:ui/Components/BottomNavigation/bottomnavigate.dart';

class SelectInterest extends StatefulWidget {
  const SelectInterest({super.key});

  @override
  State<SelectInterest> createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
  bool iscolor = false;
  bool iscolor2 = false;
  bool iscolor3 = false;
  bool iscolor4 = false;
  bool iscolor5 = false;
  bool iscolor6 = false;
  bool iscolor7 = false;
  bool iscolor8 = false;
  bool iscolor9 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 15, right: 15),
            child: Column(
              children: [
                const Text("Tell us a \nbit more.",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "This will help us create the best\n   experience just for you!",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor = !iscolor;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                          color: iscolor ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Fish tank"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor2 = !iscolor2;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                          color: iscolor2 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Salt water"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor3 = !iscolor3;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                          color: iscolor3 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Aquarium"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor4 = !iscolor4;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                          color: iscolor4 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Coral"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor5 = !iscolor5;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          color: iscolor5 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Salt water"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor6 = !iscolor6;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          color: iscolor6 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Aquarium"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor7 = !iscolor7;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 85,
                        decoration: BoxDecoration(
                          color: iscolor7 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Overall"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor8 = !iscolor8;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 90,
                        decoration: BoxDecoration(
                          color: iscolor8 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Overall"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          iscolor9 = !iscolor9;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          color: iscolor9 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text("Ninja Turtle"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SignInButton(
                      Height: MediaQuery.of(context).size.height / 15,
                      Width: MediaQuery.of(context).size.width / 2.7,
                      title: 'Back',
                      Onpress: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (ctx) => const SignIn()));
                      },
                    ),
                    SignUpButton(
                      Height: MediaQuery.of(context).size.height / 15,
                      Width: MediaQuery.of(context).size.width / 2.7,
                      title: 'Next',
                      Onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const BottomNavigator()));
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
