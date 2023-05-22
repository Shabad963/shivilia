import 'package:flutter/material.dart';
import 'package:ui/Page/BottomNavigator_Page/Categories/SaltWater/LiveSession/livesession.dart';

class Magic extends StatefulWidget {
  const Magic({super.key});

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const LiveSession()));
              },
              child: Container(
                height: 200,
                width: 155,
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
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const LiveSession()));
              },
              child: Container(
                height: 200,
                width: 155,
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
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: 155,
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
              height: 200,
              width: 155,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}
