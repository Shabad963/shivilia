import 'package:flutter/material.dart';
import 'package:ui/Page/MarketPlace/ProductDetails/product_details.dart';

class MarketPLace extends StatefulWidget {
  const MarketPLace({super.key});

  @override
  State<MarketPLace> createState() => _MarketPLaceState();
}

class _MarketPLaceState extends State<MarketPLace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(child: Text('Marketplace')),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 209, 208, 207),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    hintText: 'Search Marketplace',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
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
                  const Icon(Icons.add_road_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text('Short')),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Category',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
                      child: Text('Singles'),
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
                              builder: (ctx) => const ProductDetails()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.3,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 215, 215, 214),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/images/image 41.png',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Padding(
                                padding: EdgeInsets.only(left: 128.0, top: 5),
                                child: Icon(
                                  Icons.save,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 115,
                                left: 60,
                                child: Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Stella Ehiseo',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ))
                          ]),
                          const Text(
                            'Corals Acropora',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                            child: Text(
                              'Best quality product for you and this is very good products aswell',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                            ),
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(left: 8.0, top: 10),
                            child: Text('US\$168.00'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.3,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 215, 214),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image 41.png',
                                fit: BoxFit.cover,
                                height: 150,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: EdgeInsets.only(left: 128.0, top: 5),
                              child: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 115,
                              left: 60,
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Stella Ehiseo',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ))
                        ]),
                        const Text(
                          'Corals Acropora',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                          child: Text(
                            'Best quality product for you and this is very good products aswell',
                            style: TextStyle(fontSize: 8, color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 10),
                          child: Text('US\$168.00'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Row(
              //   children: [
              //     Row(
              //       children: const [
              //         CircleAvatar(
              //           radius: 20,
              //           backgroundImage: AssetImage('assets/images/user.png'),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Text('Stella Ehiseo')
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 40,
              //     ),
              //     Row(
              //       children: const [
              //         CircleAvatar(
              //           radius: 20,
              //           backgroundImage: AssetImage('assets/images/user.png'),
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Text('Stella Ehiseo')
              //       ],
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3.3,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 215, 214),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image 41.png',
                                fit: BoxFit.cover,
                                height: 150,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: EdgeInsets.only(left: 128.0, top: 5),
                              child: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 115,
                              left: 60,
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Stella Ehiseo',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ))
                        ]),
                        const Text(
                          'Corals Acropora',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                          child: Text(
                            'Best quality product for you and this is very good products aswell',
                            style: TextStyle(fontSize: 8, color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 10),
                          child: Text('US\$168.00'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.3,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 215, 214),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image 41.png',
                                fit: BoxFit.cover,
                                height: 150,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: EdgeInsets.only(left: 128.0, top: 5),
                              child: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 115,
                              left: 60,
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Stella Ehiseo',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ))
                        ]),
                        const Text(
                          'Corals Acropora',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                          child: Text(
                            'Best quality product for you and this is very good products aswell',
                            style: TextStyle(fontSize: 8, color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 10),
                          child: Text('US\$168.00'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
