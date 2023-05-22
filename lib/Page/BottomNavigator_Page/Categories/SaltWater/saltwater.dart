import 'package:flutter/material.dart';
import 'package:ui/Page/BottomNavigator_Page/Categories/SaltWater/LiveSession/livesession.dart';

class SaltWater extends StatefulWidget {
  const SaltWater({super.key});

  @override
  State<SaltWater> createState() => _SaltWaterState();
}

class _SaltWaterState extends State<SaltWater> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text('SaltWater'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.add_road),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          // color: const Color.fromARGB(172, 143, 168, 180),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(child: Text('Sort')),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          //color: const Color.fromARGB(172, 143, 168, 180),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text('Signles'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Categories',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const LiveSession()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3.8,
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/image 41.png',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.visibility_sharp,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Icon(
                                    Icons.save,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            const Positioned(
                                top: 140,
                                left: 10,
                                child: Text(
                                  'Coral Morning!\n Acropora',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))
                          ]),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/image 41.png',
                              fit: BoxFit.cover,
                              height: 300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  Icons.visibility_sharp,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.save,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                              top: 140,
                              left: 10,
                              child: Text(
                                'Coral Morning!\n Acropora',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Stella Ehiseo')
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Stella Ehiseo')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/image 41.png',
                              fit: BoxFit.cover,
                              height: 300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  Icons.visibility_sharp,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.save,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                              top: 140,
                              left: 10,
                              child: Text(
                                'Coral Morning!\n Acropora',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ]),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/image 41.png',
                              fit: BoxFit.cover,
                              height: 300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  Icons.visibility_sharp,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.save,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                              top: 140,
                              left: 10,
                              child: Text(
                                'Coral Morning!\n Acropora',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Stella Ehiseo')
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Stella Ehiseo')
                        ],
                      ),
                    ],
                  ),
                  // BottomNavigator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
