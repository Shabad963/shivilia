import 'package:flutter/material.dart';
import 'package:ui/Page/BottomNavigator_Page/Categories/Product/Shedular/Sheduler2/LiveSession/livesession.dart';

class Sheduler2 extends StatefulWidget {
  const Sheduler2({super.key});

  @override
  State<Sheduler2> createState() => _Sheduler2State();
}

class _Sheduler2State extends State<Sheduler2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(child: Text('Listing detail')),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'Price',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 138, 138)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'Quantity',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 138, 138)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'Shipping Profile',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 138, 138)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
              ),
              const SizedBox(height: 280),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const SheduleLive()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'SHEDULE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
