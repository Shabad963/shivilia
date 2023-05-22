// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ui/Page/BottomNavigator_Page/Categories/SaltWater/LiveSession/Add_Address/add_address.dart';
import 'package:ui/Page/BottomNavigator_Page/Categories/SaltWater/LiveSession/PaymentsScreen/payment_page.dart';

class LiveSession extends StatefulWidget {
  const LiveSession({super.key});

  @override
  State<LiveSession> createState() => _LiveSessionState();
}

class _LiveSessionState extends State<LiveSession> {
  Widget BottomSheet() {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Payment Info",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              "We rquire this information in order for you \nto make a purchase ",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const PaymentsScreen()));
              },
              child: const ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 18,
                ),
                title: Text(
                  "Payment Method",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const AddAddress(
                              title: '',
                            )));
              },
              child: const ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 18,
                ),
                title: Text(
                  "Shipping Address",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
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
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Image.asset(
            'assets/images/image 41.png',
            color: const Color.fromARGB(112, 116, 115, 115),
            colorBlendMode: BlendMode.darken,
            height: 830,
            width: 400,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.amber,
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  'Name Here',
                  style: TextStyle(color: Colors.white),
                ),
                ButtonTheme(
                  minWidth: 170.0,
                  height: 70.0,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {},
                    child: const Text(
                      "Follow",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Icon(
                  Icons.visibility_sharp,
                  color: Colors.white,
                ),
                const Text(
                  '35',
                  style: TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280.0, left: 290),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Report",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.speaker_sharp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Mute",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Share",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.payment,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pay",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.store,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "\$180",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430.0),
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.amber),
                  title: Text(
                    'Name here',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Plz check us quality',
                    style: TextStyle(color: Color.fromARGB(255, 195, 194, 194)),
                  ),
                ),
                const ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.amber),
                  title: Text(
                    'Name here',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Plz check us quality',
                    style: TextStyle(color: Color.fromARGB(255, 195, 194, 194)),
                  ),
                ),
                const ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.amber),
                  title: Text(
                    'Name here',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Plz check us quality',
                    style: TextStyle(color: Color.fromARGB(255, 195, 194, 194)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Custom',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (builder) => BottomSheet());
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
