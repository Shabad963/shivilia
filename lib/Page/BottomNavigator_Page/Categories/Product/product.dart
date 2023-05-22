// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ui/Components/DrawerButton/drawer_button.dart';
import 'package:ui/Page/BottomNavigator_Page/Categories/Product/Shedular/sheduler.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Widget BottomSheet() {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 2.7,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(
              child: Text(
                "ADD",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (ctx) => const PaymentsScreen()));
              },
              child: const ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
                title: Text(
                  "List an item",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (ctx) => const AddAddress(
                //               title: '',
                //             )));
              },
              child: const ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
                title: Text(
                  "Go live",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const ShedulerScreen(
                              title: "",
                            )));
              },
              child: const ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
                title: Text(
                  "Create a post",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const DrawerButton()));
            },
            icon: const Icon(Icons.menu)),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(Icons.store),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 12.0,
            ),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (builder) => BottomSheet());
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/image 30.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ninga Turtle',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/image 35.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Fruit fuijon',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/image 30.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ninga Turtle',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/image 35.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Fruit Fuijon',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/image 30.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ninga Turtle',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'For You',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '|',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(172, 143, 168, 180),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text('Corals')),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(172, 143, 168, 180),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('Acropora'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(172, 143, 168, 180),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('saltwater'),
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
                        backgroundImage: AssetImage('assets/images/user.png'),
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
                        backgroundImage: AssetImage('assets/images/user.png'),
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
                        backgroundImage: AssetImage('assets/images/user.png'),
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
                        backgroundImage: AssetImage('assets/images/user.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Stella Ehiseo')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
