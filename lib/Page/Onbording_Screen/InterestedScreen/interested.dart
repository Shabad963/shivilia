import 'package:flutter/material.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:ui/Page/Onbording_Screen/InterestedScreen/select_inerest.dart';

class InterestedScreen extends StatefulWidget {
  const InterestedScreen({super.key});

  @override
  State<InterestedScreen> createState() => _InterestedScreenState();
}

class _InterestedScreenState extends State<InterestedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "Let's find what \n interests you",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Pick a couple to get startd",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 30.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Ninja turtle',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 35.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 30.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Ninja turtle',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 35.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 30.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Ninja turtle',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 35.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 35.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 35.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 30.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Ninja turtle',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 44,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            const AssetImage('assets/images/image 27.png'),
                        child: Container(
                          height: 20,
                          color: const Color.fromARGB(157, 158, 158, 158),
                          child: const Center(
                            child: Text(
                              'Fish Tank',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SignUpButton(
                    title: 'Next',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const SelectInterest()));
                    },
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
