import 'package:flutter/material.dart';

class SheduleLive extends StatefulWidget {
  const SheduleLive({super.key});

  @override
  State<SheduleLive> createState() => _SheduleLiveState();
}

class _SheduleLiveState extends State<SheduleLive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Image.asset(
            'assets/images/image 41.png',
            color: const Color.fromARGB(109, 35, 35, 35),
            colorBlendMode: BlendMode.darken,
            height: 830,
            width: 400,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.amber,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Name Here',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 258.0),
                  child: Row(
                    children: const [
                      Text(
                        "Flash off",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.flash_off,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 270.0),
                  child: Row(
                    children: const [
                      Text(
                        "Rotate",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.camera_enhance_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 608.0, right: 20),
            child: Column(
              children: [
                const Text(
                  "Tap to add discription",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (ctx) => const SheduleLive()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'GO LIVE',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
